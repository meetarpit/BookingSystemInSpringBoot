package com.dynamisch.booking.service.impl;

import com.dynamisch.booking.model.Offer;
import com.stripe.Stripe;
import com.stripe.exception.APIConnectionException;
import com.stripe.exception.APIException;
import com.stripe.exception.AuthenticationException;
import com.stripe.exception.CardException;
import com.stripe.exception.InvalidRequestException;
import com.stripe.model.Charge;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

//this is the service class for stripe payment access
@Service
public class StripeService {

    @Value("sk_test_Lq6u3HsNgosLQJgSyHpSaN3g") // secret key generated from devloper account in stripe
    String secretKey;

    @PostConstruct 
    public void init() {
        Stripe.apiKey = secretKey;
    }

    public Charge charge(Offer chargeRequest) //this is prefined class provided from stripe used to create all parameters as per devloper need
            throws AuthenticationException, InvalidRequestException, APIConnectionException, CardException, APIException {//all parameters send to result.html
        Map<String, Object> chargeParams = new HashMap<>();
        chargeParams.put("amount", 320000);
        chargeParams.put("currency", chargeRequest.getCurrency());
        chargeParams.put("source", chargeRequest.getStripeToken());
        return Charge.create(chargeParams);
    }
}