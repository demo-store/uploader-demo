package com.ltpc.utils.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by jackieliu on 16/9/22.
 */
@RequestMapping("/jqUpload")
@Controller
public class JQueryUploaderController {

    @RequestMapping("/upFileView")
    public String uploaderView(){
        return "/jqUploader/upFileDemo";
    }
}
