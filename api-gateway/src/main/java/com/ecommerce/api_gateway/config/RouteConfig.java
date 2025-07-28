package com.ecommerce.api_gateway.config;

import org.springframework.cloud.gateway.route.RouteLocator;
import org.springframework.cloud.gateway.route.builder.RouteLocatorBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class RouteConfig {

    @Bean
    public RouteLocator routes(RouteLocatorBuilder builder) {
        return builder.routes()
                .route("auth-login",
                        r->r.path("/login")
                                .filters(
                                        f->f.rewritePath("/login", "/auth/login")
                                )
                                .uri("lb://AUTH-SERVICE"))
                .build();
    }
}
