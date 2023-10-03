package com.jspiders.cardekho_case_study_mvc.pojo;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity
public class AdminPOJO {
@Id
private String userName;
private String password;
}
