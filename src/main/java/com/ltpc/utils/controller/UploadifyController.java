package com.ltpc.utils.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by liutong on 16/10/20.
 */
@Controller
@RequestMapping("/uploadify")
public class UploadifyController {

    /**
     * 显示上传页面
     * @return
     */
    @RequestMapping(value = "/img",method = RequestMethod.GET)
    public String uploadView(){
        return "uploadify/upImageDemo";
    }


}
