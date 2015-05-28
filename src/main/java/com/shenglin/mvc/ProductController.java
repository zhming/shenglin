package com.shenglin.mvc;

import com.shenglin.base.Page;
import com.shenglin.beans.entity.ProductEntity;
import com.shenglin.service.ProductService;
import com.shenglin.service.ProductTypeService;
import com.shenglin.util.StaticValue;
import org.apache.ibatis.session.RowBounds;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;
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
import java.text.SimpleDateFormat;
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
        return "product";
    }

    /**
     * 产品列表
     *
     * @param dpage
     * @param model
     * @return
     */
    @RequestMapping(value = "/productList.html", method = RequestMethod.GET)
    public String getProductAll(@RequestParam("dpage") int dpage, ModelMap model) {
        int pagesize = Page.FIFTEEN_PAGE_SIZE;

        int count = productService.countProductAll();

        Page page = new Page(dpage, pagesize);

        page.setRecords(count);

        List<ProductEntity> list = productService.getProductAll(page.getStartRecord(), page.getPageSize());

        TreeMap<String, String> types = productTypeService.getProductTypeAll();

        model.addAttribute("count", count);

        model.addAttribute("products", list);

        model.addAttribute("types", types);

        model.addAttribute("dpage", dpage);

        model.addAttribute("pagesize", pagesize);

        model.addAttribute("page", page);

        return "productList";
    }

    /**
     * 产品管理页面
     *
     * @param dpage
     * @param model
     * @return qwerty456*[]\
     */
    @RequestMapping(value = "/productManage.html", method = RequestMethod.GET)
    public String getProductAllManage(@RequestParam("dpage") int dpage, ModelMap model) {

        int pagesize = Page.FIFTEEN_PAGE_SIZE;

        int count = productService.countProductAll();

        Page page = new Page(dpage, pagesize);

        page.setRecords(count);

        List<ProductEntity> list = productService.getProductAll(page.getStartRecord(), page.getPageSize());

        TreeMap<String, String> types = productTypeService.getProductTypeAll();

        model.addAttribute("count", count);

        model.addAttribute("products", list);

        model.addAttribute("types", types);

        model.addAttribute("pagesize", pagesize);

        model.addAttribute("dpage", dpage);

        model.addAttribute("page", page);


        return "productManage";
    }


    /**
     * 产品信息录入
     *
     * @return
     */
    @RequestMapping(value = "/newProduct.html", method = RequestMethod.GET)
    public ModelAndView addProduct1() {
        return new ModelAndView("newProduct", "command", new ProductEntity());
    }

    /**
     * 新增产品信息
     *
     * @param request
     * @param productEntity
     * @param model
     * @return
     */
    @RequestMapping(value = "/addProduct.html", method = RequestMethod.POST)
    public String addProduct(HttpServletRequest request, @ModelAttribute("SpringWeb") ProductEntity productEntity, ModelMap model) {
        logger.info("addProduct");
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
        productEntity.setPicture("/pic/" + fileName);
        int ret = productService.addProduct(productEntity);
        if (ret == 1) {
            return "redirect:/productManage.html?dpage=1";
        }
        model.addAttribute("message", this.getClass() + " / method: " + "addProduct()");
        return "err/error";
    }

    /**
     * 修改产品信息
     *
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "/updateProduct.html", method = RequestMethod.GET)
    public String updateProductView(@RequestParam("ID") String id, ModelMap model) {
        DateTimeFormatter formatter = DateTimeFormat.forPattern("yyyy-MM-dd");
        ProductEntity productEntity = productService.getProductById(id);
        model.addAttribute("name", productEntity.getName());
        model.addAttribute("type", productEntity.getType());
        model.addAttribute("description", productEntity.getDescription());
        model.addAttribute("cs", productEntity.getCs());
        model.addAttribute("cdate", formatter.print(productEntity.getCdate().getTime()));
        return "updateProduct";
    }

    /**
     * 删除产品
     *
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "/productDelete.html", method = RequestMethod.GET)
    public ModelAndView deleteProduct(@RequestParam("ID") String id, ModelMap model) {
        int ret = productService.deleteProduct(id);
        model.addAttribute("result", "ok");
        model.addAttribute("dpage", 1);
        return new ModelAndView("redirect:/productManage.html");
    }

    /**
     * 通过产品类型代码查询产品
     *
     * @param type  产品类型
     * @param dpage 页数
     * @param model
     * @return
     */
    @RequestMapping(value = "/productListForCategory.html", method = RequestMethod.GET)
    public String getProductsByCategory(@RequestParam("TYPE") String type,
                                        @RequestParam("dpage") int dpage,
                                        ModelMap model) {
        int pagesize = Page.FIFTEEN_PAGE_SIZE;

        int count = productService.countProductByType(type);

        Page page = new Page(dpage, pagesize);

        page.setRecords(count);

        List<ProductEntity> list = productService.getProductsByType(page.getStartRecord(), page.getPageSize(), type);

        TreeMap<String, String> types = productTypeService.getProductTypeAll();


        model.addAttribute("count", count);

        model.addAttribute("products", list);

        model.addAttribute("types", types);

        model.addAttribute("dpage", dpage);

        model.addAttribute("page", page);

        model.addAttribute("cType", type);

        model.addAttribute("pagesize", pagesize);

        model.addAttribute("cTypeName", types.get(type));

        return "productListForCategory";

    }

    /**
     * 通过产品名称模糊查询产品信息
     *
     * @param name
     * @param dpage
     * @param model
     * @return
     */
    @RequestMapping(value = "/getProductByName.html", method = RequestMethod.GET)
    public String getProductByName(@RequestParam("NAME") String name,
                                   @RequestParam("dpage") int dpage,
                                   ModelMap model) {
        int pagesize = Page.FIFTEEN_PAGE_SIZE;

        ProductEntity product = new ProductEntity();

        product.setName(name);

        int count = productService.countByVo(product);

        Page page = new Page(dpage, pagesize);

        page.setRecords(count);

        List<ProductEntity> list = productService.queryByVo(page.getStartRecord(), page.getPageSize(), product);

        TreeMap<String, String> types = productTypeService.getProductTypeAll();

        model.addAttribute("count", count);

        model.addAttribute("products", list);

        model.addAttribute("types", types);

        model.addAttribute("name", name);

        model.addAttribute("dpage", dpage);

        model.addAttribute("pagesize", pagesize);

        model.addAttribute("page", page);


        return "productListByName";
    }

}
