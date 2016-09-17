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
    @RequestMapping("/view")
    public String showDemoView(){
        System.out.print("view method");
        return "uploader/uploaderDemo";
    }

    @RequestMapping("/upfile")
    @ResponseBody
    public String upFile(MultipartFile file){
        System.out.print("fileName:"+file.getOriginalFilename()+",fileSize:"+file.getSize());
        return "up success:"+file.getOriginalFilename();
    }
}
