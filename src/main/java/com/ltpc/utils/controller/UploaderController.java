package com.ltpc.utils.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 百度uploader的示例
 * Created by jackieliu on 16/9/16.
 */
@Controller
@RequestMapping("/uploader")
public class UploaderController {

    /**
     * 显示页面
     * @return
     */
    @RequestMapping("/view")
    public String showDemoView(){
        return "/uploaderDemo";
    }
}
