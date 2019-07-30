package com.dynamisch.booking.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.dynamisch.booking.model.Offer;

//Receives request for stripe payments gatway
@Controller
public class CheckoutController {

    @Value("pk_test_wur0vCdLGVDD6LoLtRkSIosw")//public key generated from stripe developer account
    private String stripePublicKey;

    @RequestMapping("/checkout")
    public String checkout(Model model) {
        
        return "thymeleaf/login";
    }
}