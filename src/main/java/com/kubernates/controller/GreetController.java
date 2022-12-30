package com.kubernates.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping(path = "/simple-kubernetes")
@RestController
public class GreetController {

  @GetMapping("/greet")
  public String getData() {
    return "Hello Kubernetes";
  }

}