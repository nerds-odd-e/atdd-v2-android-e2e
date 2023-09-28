package com.odde.atddv2;

import com.odde.atddv2.page.android.HomePage;
import com.odde.atddv2.page.android.OrderPage;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.After;
import io.cucumber.java.zh_cn.当;
import io.cucumber.java.zh_cn.那么;
import org.springframework.beans.factory.annotation.Autowired;

public class AndroidSteps {

    @Autowired
    HomePage homePage;

    @Autowired
    OrderPage orderPage;

    @Autowired
    App app;

    @After
    public void closeApp() {
        app.closeApp();
    }

    @当("以用户名为{string}和密码为{string}手机登录时")
    public void 以用户名为和密码为手机登录时(String username, String password) {
        homePage.open();
        homePage.login(username, password);
    }

    @那么("登录失败的错误信息是{string}")
    public void 登录失败的错误信息是(String errorMessage) {
        app.shouldHaveText(errorMessage);
    }

    @当("查询订单时")
    public void 查询订单时() {
        orderPage.showOrders();
    }

    @那么("显示如下订单")
    public void 显示如下订单(DataTable table) {
        table.asList().forEach(app::shouldHaveText);
    }

    @当("用如下数据录入订单:")
    public void 用如下数据录入订单(DataTable table) {
       orderPage.addOrder(table.asMaps().get(0));
    }

    @那么("{string}手机登录成功")
    public void 手机登录成功(String userName) {
        app.shouldHaveText("Welcome: " + userName);
    }
}
