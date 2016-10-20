package com.ltpc.utils.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

/**
 * Created by jackieliu on 16/9/22.
 */
@Controller
@RequestMapping("/uploader")
public class UpLoaderController {

    @RequestMapping("/upfile")
    @ResponseBody
    public String upFile(MultipartFile file){
        System.out.println("fileName:"+file.getOriginalFilename()+",fileSize:"+file.getSize());
        return "up success:"+file.getOriginalFilename();
    }
}
