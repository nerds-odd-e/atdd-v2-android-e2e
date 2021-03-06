package com.odde.atddv2;

import com.fasterxml.jackson.databind.ObjectMapper;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.zh_cn.假如;
import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ServerSteps {

    private static Map<String, List<Map<String, String>>> allElectronics = new HashMap<>();
    private static Map<String, List<Map<String, String>>> allFurniture = new HashMap<>();
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
    @假如("存在{string}电器")
    public void 存在电器(String category, DataTable dataTable) {
        allElectronics.put(category, dataTable.asMaps());
        mockServer.getJson("/products",
                request -> request.withQueryStringParameter("category", "0"),
                objectMapper.writeValueAsString(allElectronics));
    }

    @SneakyThrows
    @假如("存在{string}家具")
    public void 存在家具(String category, DataTable dataTable) {
        allFurniture.put(category, dataTable.asMaps());
        mockServer.getJson("/products",
                request -> request.withQueryStringParameter("category", "1"),
                objectMapper.writeValueAsString(allFurniture));
    }
}
