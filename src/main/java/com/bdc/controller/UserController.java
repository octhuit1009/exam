package com.bdc.controller;

import com.bdc.model.User;
import com.bdc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2015/12/20.
 */
@Controller
@RequestMapping("/user")
public class UserController extends BaseController {

    @Autowired
    private UserService userService;

    @RequestMapping("/login")
    private String login(User user) {
        user = userService.login(user);
        if (user != null) {
            getSession().setAttribute("user", user);
            return "word/index";
        } else {
            getRequest().setAttribute("message", "invalid username or password.");
            return "default";
        }
    }

    @RequestMapping("/logout")
    private String logout() {
        getSession().invalidate();
        return "default";
    }
}
