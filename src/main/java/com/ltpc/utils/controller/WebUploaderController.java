package com.ltpc.utils.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

/**
 * 百度uploader的示例
 * Created by jackieliu on 16/9/16.
 */
@Controller
@RequestMapping("/webUploader")
public class WebUploaderController {

    /**
     * 显示页面
     * @return
     */
    @RequestMapping("/fileUpView")
    public String showDemoView(){
        System.out.println("fileUpView method");
        return "webUploader/upFileDemo";
    }

    /**
     * 显示图片上传页面
     * @return
     */
    @RequestMapping("/imageUpView")
    public String showUpImageView(){
        System.out.println("imageUpView method");
        return "webUploader/upImageDemo";
    }



}
