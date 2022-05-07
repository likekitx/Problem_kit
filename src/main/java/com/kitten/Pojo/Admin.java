package com.kitten.Pojo;

import org.apache.ibatis.type.Alias;

/**
 * @author 27213
 */
@Alias("admin")
public class Admin {

  private String account;
  private String password;
  private String name;

  public Admin() {}

  public Admin(String account, String password, String name) {
    this.account = account;
    this.password = password;
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


  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  @Override
  public String toString() {
    return "Admin{" +
            "account='" + account + '\'' +
            ", password='" + password + '\'' +
            ", name='" + name + '\'' +
            '}';
  }
}
