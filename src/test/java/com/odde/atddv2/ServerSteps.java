package com.odde.atddv2;

import com.fasterxml.jackson.databind.ObjectMapper;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.zh_cn.假如;
import io.cucumber.java.zh_cn.当;
import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.concurrent.TimeUnit;

public class ServerSteps {

    @Autowired
    MockServer mockServer;

    ObjectMapper objectMapper = new ObjectMapper();

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
}
