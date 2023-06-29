package com.odde.atddv2;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;
import com.odde.atddv2.entity.Order;
import com.odde.atddv2.entity.User;
import com.odde.atddv2.repo.OrderRepo;
import com.odde.atddv2.repo.UserRepo;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.Before;
import io.cucumber.java.zh_cn.假如;
import io.cucumber.spring.CucumberContextConfiguration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootContextLoader;
import org.springframework.test.context.ContextConfiguration;

@ContextConfiguration(classes = {CucumberConfiguration.class}, loader = SpringBootContextLoader.class)
@CucumberContextConfiguration
public class ApplicationSteps {

    @Autowired
    private UserRepo userRepo;

    @假如("存在用户名为{string}和密码为{string}的用户")
    public void 存在用户名为和密码为的用户(String userName, String password) {
        userRepo.save(new User().setUserName(userName).setPassword(password));
    }

    @Before(order = 1)
    public void clearDB() {
        userRepo.deleteAll();
        orderRepo.deleteAll();
    }

    @Autowired
    AndroidSteps androidSteps;

    @Autowired
    OrderRepo orderRepo;

    @Before("@ui-login")
    public void uiLogin() {
        存在用户名为和密码为的用户("j", "j");
        androidSteps.以用户名为和密码为手机登录时("j", "j");
        androidSteps.手机登录成功();
    }

    @假如("存在如下订单:")
    public void 存在如下订单(DataTable table) {
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.registerModule(new JavaTimeModule());
        table.asMaps().forEach(map -> orderRepo.save(objectMapper.convertValue(map, Order.class)));
    }

}
