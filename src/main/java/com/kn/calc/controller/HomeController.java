package com.kn.calc.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView test(@RequestParam(value = "hello", required = false) String hello,
            @RequestParam(value = "a", required = false) String a,
            @RequestParam(value = "b", required = false) String b,
            @RequestParam(value = "operator", required = false) String operator,
            HttpServletResponse response) throws IOException {

        int _a = a == null ? 0 : Integer.parseInt(a);
        int _b = b == null ? 0 : Integer.parseInt(b);
        int _c = 0;
        int _operator = operator == null ? 0 : Integer.parseInt(operator);

        switch (_operator) {
            case 1:
                _c = _a + _b;
                break;
            case 2:
                _c = _a - _b;
                break;
            case 3:
                _c = _a * _b;
                break;
            case 4:
                _c = _a / _b;
                break;
            default:
                _c = _a + _b;
                break;
        }

        ModelAndView m = new ModelAndView("home");
        m.addObject("hello", hello == null ? "hello frinends" : hello);
        m.addObject("a", _a);
        m.addObject("b", _b);
        m.addObject("c", _c);
        m.addObject("operator", _operator);
        return m;
    }
}
