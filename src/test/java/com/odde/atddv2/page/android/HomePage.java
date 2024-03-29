package com.odde.atddv2.page.android;

import com.odde.atddv2.App;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class HomePage {

    @Autowired
    App app;

    public void login(String username, String password) {
        app.inputTextByHint("用户名", username);
        app.inputTextByHint("密码", password);
        app.clickByText("登录");
    }
}
