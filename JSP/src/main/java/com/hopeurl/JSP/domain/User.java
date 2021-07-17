package com.hopeurl.JSP.domain;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @Author hopeurl(2453332538 @ qq.com)
 * @Date 2021/4/2  21:04
 * @Version 1.0
 */
public class User {
    private String username;
    private String password;
    private int age;
    private Date birthday;


    public User(String username, String password, int age, Date birthday) {
        this.username = username;
        this.password = password;
        this.age = age;
        this.birthday = birthday;
    }

    @Override
    public String toString() {
        return "User{" +
                "username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", age=" + age +
                ", birthday=" + birthday +
                '}';
    }

    public User() {
    }

    public String getUsername() {
        return username;
    }

    public String getBirth() {

        if(birthday != null){
            //1.格式化日期对象
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒");
            //2.返回字符串即可
            return sdf.format(birthday);

        }else{
            return "";
        }
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }
}
