package com.fao.controller;

import com.fao.pojo.User;
import com.fao.service.UserService;
import com.fao.service.UserServiceImpl;
import com.sun.xml.internal.bind.v2.runtime.Name;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.*;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    @Qualifier("userService")
    UserServiceImpl userService;

    @RequestMapping("/topersonalCenter")
    public String topersonalCenter() {
//        User user = userService.querUserByName(name);
//        model.addAttribute("user", user);
        return "personalCenter";
    }

    @RequestMapping("/toindex")
    public String toindex() {
        return "index";
    }


    @RequestMapping("/tologin")
    public String toLogin() {
        return "login";
    }

    @RequestMapping("/to1")
    public String to1() {
        return "1";
    }

    @RequestMapping("/to2")
    public String to2() {
        return "2";
    }

    @RequestMapping("/to3")
    public String to3() {
        return "3";
    }

    @RequestMapping("/toupdateUser")
    public String toupdateUser() {
        return "updateUser";
    }


    @RequestMapping("/updateUser")
    public String updateUser(User user, HttpSession session) {
        System.out.println("user:" + user);
        User olderUser = (User) session.getAttribute("user");
        System.out.println("olderUser" + olderUser);
        user.setUserId(olderUser.getUserId());
        int result = userService.updateUser(user);
        if (result > 0) {
            session.setAttribute("user", user);
        }
        return "redirect:/user/topersonalCenter";
    }

    @RequestMapping("/addUser")
    public String addUser(User user, Model model) {
        int num = userService.addUser(user);
        if (num > 0) {
            model.addAttribute("msg", "注册成功");
            return "login";
        }
        model.addAttribute("msg", "注册有误，请检查后重新注册！！");
        return "login";
    }

    @RequestMapping("/login")
    public String login(String name, String password, HttpSession session, Model model) {
        System.out.println("login:" + name + ":" + password);
        if (name == null || name.isEmpty() || password == null || password.isEmpty()) {
            model.addAttribute("msg", "登陆失败，请检查用户名和密码是否正确！！");
            return "login";
        }

        User user = userService.querUserByName(name);
        System.out.println("login:" + user);
        if (user == null || !user.getPassword().equals(password)) {
            model.addAttribute("msg", "登陆失败，请检查用户名和密码是否正确！！");
            return "login";
        }

        session.setAttribute("user", user);
        model.addAttribute("msg", "登陆成功");
        return "personalCenter";
    }


    @RequestMapping("loginOut")
    public String loginOut(HttpSession session,User user){
        System.out.println("user:"+user);
        session.setAttribute("user",null);
        return "redirect:/user/toindex";
    }

    @RequestMapping("register")
    public String register(@RequestParam("photo") CommonsMultipartFile file, HttpServletRequest request) throws IOException {
        if (!upload(file, request)) {
            request.setAttribute("msg", "文件上传失败");
            return "login";
        }
        User user = new User();
        user.setPassword(request.getParameter("password"));
        user.setName(request.getParameter("name"));
        user.setSex(request.getParameter("sex"));
        user.setTel(request.getParameter("tel"));
        user.setAddress(request.getParameter("address"));
        user.setBirth(request.getParameter("birth"));
        user.setMail(request.getParameter("mail"));
        user.setPhoto(request.getParameter("photo"));

        int addResult = userService.addUser(user);
        if (addResult > 0) {
            request.setAttribute("msg", "注册成功");
            System.out.println("注册成功");
            return "login";
        }
        request.setAttribute("msg", "注册失败");
        return "login";
    }

    public boolean upload(CommonsMultipartFile file, HttpServletRequest request) throws IOException {
        //获取文件名 : file.getOriginalFilename();
        String uploadFileName = file.getOriginalFilename();
        //如果文件名为空，直接回到首页！
        if ("".equals(uploadFileName)) {
            return false;
        }
        System.out.println("上传文件名 : " + uploadFileName);
        //上传路径保存设置
        String path = request.getServletContext().getRealPath("/upload");
        //如果路径不存在，创建一个
        File realPath = new File(path);
        if (!realPath.exists()) {
            realPath.mkdir();
        }
        System.out.println("上传文件保存地址：" + realPath);
        InputStream is = file.getInputStream(); //文件输入流
        OutputStream os = new FileOutputStream(new File(realPath, uploadFileName)); //文件输出流
        //读取写出
        int len = 0;
        byte[] buffer = new byte[1024];
        while ((len = is.read(buffer)) != -1) {
            os.write(buffer, 0, len);
            os.flush();
        }
        os.close();
        is.close();
        return true;
    }
}

