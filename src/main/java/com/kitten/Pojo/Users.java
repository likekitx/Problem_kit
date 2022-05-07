package com.kitten.Pojo;

import org.apache.ibatis.type.Alias;

@Alias("users")
public class Users {

  private long id;
  private String name;
  private String account;
  private String password;
  private String phone;
  private long grade;

  public Users() {
  }

  public Users(long id, String name, String account, String password, String phone, long grade) {
    this.id = id;
    this.name = name;
    this.account = account;
    this.password = password;
    this.phone = phone;
    this.grade = grade;
  }

  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }


  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public String getAccount() {
    return account;
  }

  public void setAccount(String account) {
    this.account = account;
  }


  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }


  public String getPhone() {
    return phone;
  }

  public void setPhone(String phone) {
    this.phone = phone;
  }


  public long getGrade() {
    return grade;
  }

  public void setGrade(long grade) {
    this.grade = grade;
  }

  @Override
  public String toString() {
    return "Users{" +
            "id=" + id +
            ", name='" + name + '\'' +
            ", account='" + account + '\'' +
            ", password='" + password + '\'' +
            ", phone='" + phone + '\'' +
            ", grade=" + grade +
            '}';
  }
}
