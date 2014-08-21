package com.shenglin.mvc;


import com.shenglin.beans.entity.ProductEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;

@Controller
public class UserController {

    @RequestMapping(value = "/fileUpload.html", method = RequestMethod.GET)
    public ModelAndView addProduct1() {
        return new ModelAndView("FileUpload", "command", new ProductEntity());

    }

    // 处理文件上传二
    @RequestMapping(value = "/fileUpload2.html", method = RequestMethod.POST)
    public String fileUpload2(HttpServletRequest request, @ModelAttribute("SpringWeb") ProductEntity productEntity, ModelMap model)
            throws IllegalStateException, IOException {
        // 设置上下方文
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
                request.getSession().getServletContext());
        System.out.println("Name: " + productEntity.getName());
        // 检查form是否有enctype="multipart/form-data"
        if (multipartResolver.isMultipart(request)) {
            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;

            Iterator<String> iter = multiRequest.getFileNames();
            while (iter.hasNext()) {

                // 由CommonsMultipartFile继承而来,拥有上面的方法.
                MultipartFile file = multiRequest.getFile(iter.next());
                if (file != null) {
                    String fileName = "demoUpload" + file.getOriginalFilename();
                    String path = "D:/" + fileName;

                    File localFile = new File(path);
                    file.transferTo(localFile);
                } else {
                    System.out.println("test: " + file.getName());
                }

            }
        }
        model.addAttribute("message", productEntity.getDescription());
        return "hello";
    }
}