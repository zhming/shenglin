package com.shenglin.mvc;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.web.context.WebApplicationContext;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.webAppContextSetup;

/**
 * Created with IntelliJ IDEA.
 * User: Zhiming Qian
 * Date: 14-5-21
 * Time: 下午1:56
 * To change this template use File | Settings | File Templates.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration("file:src/main/webapp/WEB-INF/mvc-dispatcher-servlet.xml")
public class ProductControllerTests {
    private MockMvc mockMvc;
    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    protected WebApplicationContext wac;

    @Before
    public void setup() {
        this.mockMvc = webAppContextSetup(this.wac).build();
    }

    @Test
    public void getProductByIdTest() throws Exception {
        mockMvc.perform(get("/product.html?ID=10000045"))
                .andExpect(status().isOk())
                .andExpect(view().name("product"));
    }



    @Test
    public void getProductsByCategoryTest() throws Exception {
        mockMvc.perform(get("/productListForCategory.html?TYPE=01&dpage=1"))
                .andExpect(status().isOk())
                .andExpect(view().name("productListForCategory"));
    }

    @Test
    public void addProductTest() throws Exception {
        mockMvc.perform(post("/addProduct.html?").param("name", "test1").param("type", "01").param("dpage", "1"))
                .andExpect(status().is(302))
                .andExpect(view().name("redirect:/productManage.html"));
    }

	@Test
	public void getProductAllTest() throws Exception {
		mockMvc.perform(get("/productList.html?dpage=1"))
				.andExpect(status().isOk())
				.andExpect(view().name("productList"));
	}

	@Test
	public void getProductByNameTest() throws Exception {
		mockMvc.perform(get("/getProductByName.html?NAME=D&dpage=1"))
				.andExpect(status().isOk())
				.andExpect(view().name("productListByName"));
	}
}
