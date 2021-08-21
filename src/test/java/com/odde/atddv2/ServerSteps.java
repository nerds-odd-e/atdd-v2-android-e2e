package com.odde.atddv2;

import com.fasterxml.jackson.databind.ObjectMapper;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.zh_cn.假如;
import io.cucumber.java.zh_cn.当;
import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

public class ServerSteps {

    private static Map<String, List<Map<String, String>>> allProducts = new HashMap<>();
    @Autowired
    MockServer mockServer;
    private ObjectMapper objectMapper = new ObjectMapper();

    @SneakyThrows
    @假如("存在商品类别")
    public void 存在商品类别(DataTable dataTable) {
        String response = objectMapper.writeValueAsString(dataTable.asMaps());
        mockServer.getJson("/product-categories", response);
    }

    @SneakyThrows
    @当("启动服务器")
    public void 启动服务器() {
        TimeUnit.DAYS.sleep(2);
    }

    @SneakyThrows
    @假如("存在{string}电器")
    public void 存在电器(String category, DataTable dataTable) {
        allProducts.put(category, dataTable.asMaps());
        mockServer.getJson("/products", objectMapper.writeValueAsString(allProducts));
    }
}
