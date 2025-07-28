package com.ecommerce.product_service.rest;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Mono;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/secure/products")
public class ProductController {

    @GetMapping
    public Mono<ResponseEntity<List<String>>> getProducts(){
        return Mono.just(ResponseEntity.ok().body(List.of("MacBook",
                "iPhone", "AirPods")));
    }
}
