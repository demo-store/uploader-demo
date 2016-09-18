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
@RequestMapping("/uploader")
public class UploaderController {

    /**
     * 显示页面
     * @return
     */
    @RequestMapping("/fileUpView")
    public String showDemoView(){
        System.out.println("fileUpView method");
        return "uploader/upFileDemo";
    }

    /**
     * 显示图片上传页面
     * @return
     */
    @RequestMapping("/imageUpView")
    public String showUpImageView(){
        System.out.println("imageUpView method");
        return "uploader/upImageDemo";
    }


    @RequestMapping("/upfile")
    @ResponseBody
    public String upFile(MultipartFile file){
        System.out.println("fileName:"+file.getOriginalFilename()+",fileSize:"+file.getSize());
        return "up success:"+file.getOriginalFilename();
    }
}
