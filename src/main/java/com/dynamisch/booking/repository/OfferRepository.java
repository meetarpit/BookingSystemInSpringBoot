package com.dynamisch.booking.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.dynamisch.booking.model.Offer;

public interface OfferRepository extends JpaRepository<Offer, Integer>{

	@Query(value = "SELECT * FROM tbl_offer where is_Active=1 and is_Expired=0",
            nativeQuery=true
    )
    public List<Offer> findByExpired();
	
	

	
}
