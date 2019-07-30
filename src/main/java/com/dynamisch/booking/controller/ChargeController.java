package com.dynamisch.booking.controller;

import lombok.extern.java.Log;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dynamisch.booking.model.Offer;
import com.dynamisch.booking.model.Offer.Currency;
import com.dynamisch.booking.service.impl.StripeService;
import com.stripe.exception.StripeException;
import com.stripe.model.Charge;

//Receives request for creating charge for stripe payment functionalities
@Log
@Controller
public class ChargeController {

    @Autowired
    StripeService paymentsService;

    @PostMapping("/charge")
    public String charge(Offer offer, Model model) throws StripeException {
        offer.setDescription("Example charge");
        offer.setCurrency(Currency.EUR);
        Charge charge = paymentsService.charge(offer);
        model.addAttribute("id", charge.getId());
        model.addAttribute("status", charge.getStatus());
        model.addAttribute("chargeId", charge.getId());
        model.addAttribute("balance_transaction", charge.getBalanceTransaction());
        return "thymeleaf/result";
    }

    @ExceptionHandler(StripeException.class)
    public String handleError(Model model, StripeException ex) {
        model.addAttribute("error", ex.getMessage());
        return "thymeleaf/result";
    }
    
   
}