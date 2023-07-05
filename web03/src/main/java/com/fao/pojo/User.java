package com.fao.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.jar.JarEntry;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
    private int userId;
    private String password;
    private String name;
    private String sex;
    private String tel;
    private String address;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private String birth;
    private String mail;
    private String photo;
    private int type;
}
