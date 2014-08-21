package com.shenglin.mvc;

import com.shenglin.beans.entity.ProductEntity;
import com.shenglin.service.ProductService;
import com.shenglin.service.ProductTypeService;
import com.shenglin.util.StaticValue;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.TreeMap;

/**
 * Created with IntelliJ IDEA.
 * User: Zhiming Qian
 * Date: 14-5-21
 * Time: 上午10:28
 * To change this template use File | Settings | File Templates.
 */
@Controller
public class ProductController {
    private Logger logger = LoggerFactory.getLogger(ProductController.class);
    @Autowired
    private ProductService productService;
    @Autowired
    private ProductTypeService productTypeService;


    /**
     * 产品详细信息
     *
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "/product.html", method = RequestMethod.GET)
    public String getProductById(@RequestParam("ID") String id, ModelMap model) {
        ProductEntity product = productService.getProductById(id);

        TreeMap<String, String> types = productTypeService.getProductTypeAll();
        model.addAttribute("types", types);
        model.addAttribute("cType", product.getType());
        model.addAttribute("cTypeName", types.get(product.getType()));
        model.addAttribute("product", product);
        String ret = "操作系统^Linux~操作系统^Linux 的一款高端硬盘车载监控录像机。采用高速处理器和嵌入式操作系统，结合了IT领域各项最新技术，如音视频编解码技术、大容量硬盘存储技术、流媒体网络技术、视音频降噪技术、成熟的减震技术、宽电压设计，外观简洁，安装灵活方便，功能强大，系统安全可靠。~操作系统^Linux ~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux";
        model.addAttribute("productStr", ret);
        return "product";
    }

    @RequestMapping(value = "/productList.html", method = RequestMethod.GET)
    public String getProductAll(ModelMap modelMap) {
        List<ProductEntity> list = productService.getProductAll();
        TreeMap<String, String> types = productTypeService.getProductTypeAll();
        modelMap.addAttribute("products", list);
        modelMap.put("types", types);
        return "productList";
    }

    @RequestMapping(value = "/productManage.html", method = RequestMethod.GET)
    public String getProductAllManage(ModelMap modelMap) {
        List<ProductEntity> list = productService.getProductAll();
        TreeMap<String, String> types = productTypeService.getProductTypeAll();
        modelMap.addAttribute("products", list);
        modelMap.put("types", types);
        return "productManage";
    }

    @RequestMapping(value = "/newProduct.html", method = RequestMethod.GET)
    public ModelAndView addProduct1() {
        return new ModelAndView("newProduct", "command", new ProductEntity());
    }

    @RequestMapping(value = "/addProduct.html", method = RequestMethod.POST)
    public String addProduct(HttpServletRequest request, @ModelAttribute("SpringWeb") ProductEntity productEntity, ModelMap model) {
        String fileName = "";
        String path = StaticValue.DIR_PIC;
        // 设置上下方文
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
                request.getSession().getServletContext());

        // 检查form是否有enctype="multipart/form-data"
        if (multipartResolver.isMultipart(request)) {
            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;

            Iterator<String> iter = multiRequest.getFileNames();
            while (iter.hasNext()) {

                // 由CommonsMultipartFile继承而来,拥有上面的方法.
                MultipartFile file = multiRequest.getFile(iter.next());
                if (file != null) {
                    fileName = file.getOriginalFilename();
                    path += fileName;

                    File localFile = new File(path);
                    try {
                        file.transferTo(localFile);
                    } catch (IOException e) {
                        e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
                    }
                }

            }
        }
        productEntity.setPicture(fileName);


        model.addAttribute("name", productEntity.getName());
        model.addAttribute("type", productEntity.getType());
        model.addAttribute("description", productEntity.getDescription());
        model.addAttribute("cs", productEntity.getCs());

        model.addAttribute("cdate", productEntity.getCdate());
        int ret = productService.addProduct(productEntity);
        ret = 0;
        if (ret == 1) {
            return "redirect:/productManage.html";
        }
        model.addAttribute("message", this.getClass() + " / method: " + "addProduct()");
        return "err/error";
    }


    @RequestMapping(value = "/updateProduct.html", method = RequestMethod.GET)
    public String updateProductView(@RequestParam("ID") String id, ModelMap model) {
        ProductEntity productEntity = productService.getProductById(id);
        logger.info("product: ", productEntity.toString());
        model.addAttribute("name", productEntity.getName());
        model.addAttribute("name", productEntity.getName());
        model.addAttribute("type", productEntity.getType());
        model.addAttribute("description", productEntity.getDescription());
        model.addAttribute("cs", productEntity.getCs());
        model.addAttribute("cdate", productEntity.getCdate().toLocaleString());
        return "updateProduct";
    }

    @RequestMapping(value = "/productDelete.html", method = RequestMethod.GET)
    public ModelAndView deleteProduct(@RequestParam("ID") String id, ModelMap model) {
        int ret = productService.deleteProduct(id);
        model.addAttribute("result", "ok");
        return new ModelAndView("redirect:/productManage.html");
    }

    @RequestMapping(value = "/productListForCategory.html", method = RequestMethod.GET)
    public String getProductsByCategory(@RequestParam("TYPE") String type, ModelMap modelMap) {
        List<ProductEntity> list = productService.getProductsByType(type);
        TreeMap<String, String> types = productTypeService.getProductTypeAll();
        modelMap.addAttribute("products", list);
        modelMap.addAttribute("types", types);
        modelMap.addAttribute("cType", type);
        modelMap.addAttribute("cTypeName", types.get(type));
        return "productListForCategory";

    }


}
