package com.odde.atddv2.page.android;

import com.odde.atddv2.App;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Map;

@Component
public class OrderPage {

    @Autowired
    App app;

    public void showOrders() {
        app.clickByText("Welcome j");
    }

    public void addOrder(Map<String, String> order) {
        app.clickByText("录入订单");
        order.forEach((placeholder, text) -> {
            if (!placeholder.equals("状态")) {
                app.inputTextByHint(placeholder, text);
            }
        });
        app.selectTextByHint("请选择状态", order.get("状态"));
        app.clickByText("提交");
        app.shouldNotHaveText("提交");
    }
}
