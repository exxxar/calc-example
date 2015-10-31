package com.kn.calc.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
    
    
    @RequestMapping(value = "/rocket", method = RequestMethod.GET)
    public ModelAndView getRocket(HttpServletResponse response) {
        return new ModelAndView("rocket");
    }
    
    @ResponseBody
    @RequestMapping(value = "/testRoket", method = RequestMethod.POST)
    public String rocketStart(
            @RequestParam(value = "rocket_mass", required = false) String rocket_mass,
            @RequestParam(value = "fuel_mass", required = false) String fuel_mass,
            @RequestParam(value = "weight_mass", required = false) String weight_mass,
            HttpServletResponse response) throws IOException {
        
        int _p1 = Integer.parseInt(rocket_mass);
        int _p2 = Integer.parseInt(fuel_mass);
        int _p3 = Integer.parseInt(weight_mass);
        
        if (_p2+_p3 > (_p1*0.3))
            return "bad";
     
        return "ok";
    }
    
    @RequestMapping(value = "/getdog")
    public String getDog(){
        return "dogWorld";        
    }
    
    @RequestMapping(value = "/gettestrocket")
    public String getTestRocket(){
        return "rocketTest";        
    }
    
    @ResponseBody
    @RequestMapping(value = "/rotateDog", method = RequestMethod.POST)
    public String rotateDog(
            @RequestParam(value = "_left", required = false) String _left,
            @RequestParam(value = "_top", required = false) String _top,
          
            HttpServletResponse response) throws IOException {
        
            System.out.println("coords:"+_left+":"+_top);
            return "ok";            
    }
    
     @ResponseBody
    @RequestMapping(value = "/startTrees", method = RequestMethod.POST)
    public String startTrees(
            @RequestParam(value = "x", required = false) String x,
            @RequestParam(value = "y", required = false) String y,
          
            HttpServletResponse response) throws IOException {
            double _x = Double.parseDouble(x);
            double _y = Double.parseDouble(y);
            double deg = Math.sin(_x/_y);
            return ""+(int)(deg*100);            
    }
}
