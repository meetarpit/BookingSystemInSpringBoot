package com.dynamisch.booking.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dynamisch.booking.model.Offer;
import com.dynamisch.booking.repository.OfferRepository;

@Controller
public class OfferController {
	
	@Autowired
	OfferRepository offerRepository;
	
	@GetMapping("/offer")
	public String offer() {
		return "offer.jsp";
		
	}
	@PostMapping("/makeOffers")
	@ResponseBody
	public Offer createOffer(@RequestBody Offer offer) throws ParseException {
			Date date=new Date();
			SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");  
		    String strDate= formatter.format(date);  
			offer.setCreateDate(strDate);
			String sdate=offer.getStartDate();
			String edate=offer.getEndDate();
			String start=new SimpleDateFormat("MM-dd-yyyy").format(new SimpleDateFormat("yyyy-MM-dd").parse(sdate));
			String end=new SimpleDateFormat("MM-dd-yyyy").format(new SimpleDateFormat("yyyy-MM-dd").parse(edate));
			offer.setStartDate(start);
			offer.setEndDate(end);
		Offer response=offerRepository.save(offer);
		return response;		
	}
	
	@GetMapping("/offerList")
	@ResponseBody
	public List<Offer> getAllOffers(){
		List<Offer>list_response=offerRepository.findAll();
		return list_response;
	}
	@PutMapping("/editOffers/{offerId}")
	@ResponseBody
	public Offer editOffer(@PathVariable("offerId") int id,@RequestBody Offer offer) throws ParseException {
		Offer offerid=offerRepository.findById(id).orElse(new Offer());
		offerid.setOfferName(offer.getOfferName());
		offerid.setPrice(offer.getPrice());
		offerid.setStartDate(offer.getStartDate());
		offerid.setEndDate(offer.getEndDate());
		offerid.setDescription(offer.getDescription());
		offerid.setPrice(offer.getPrice());
		Date date=new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");  
	    String strDate1= formatter.format(date);  
	    offerid.setDateUpdated(strDate1);
	    
	    String sdate=offer.getStartDate();
		String edate=offer.getEndDate();
		String start=new SimpleDateFormat("MM-dd-yyyy").format(new SimpleDateFormat("yyyy-MM-dd").parse(sdate));
		String end=new SimpleDateFormat("MM-dd-yyyy").format(new SimpleDateFormat("yyyy-MM-dd").parse(edate));
		System.out.println("sdate:"+sdate);
		System.out.println("edateinsert"+edate);
		System.out.println("end"+end);
		offerid.setStartDate(start);
		offerid.setStartDate(end);
		 Offer response =offerRepository.save(offerid);	
		return response;		
	}
	
	@DeleteMapping("/delete/{offerId}")
	@ResponseBody
	public void delete(@PathVariable("offerId")int id,Offer offer) {
		offerRepository.delete(offer);
	}

	@GetMapping("/post/{offerId}")
	@ResponseBody
	public Offer post(@PathVariable("offerId")int id, Offer offer) throws ParseException {
		Offer offer1=offerRepository.findById(id).orElse(new Offer());
		offer1.setIsActive(true);
		Offer offer2=offerRepository.save(offer1);
		String edate=offer1.getEndDate();
		System.out.println("edate"+edate);
		String end=new SimpleDateFormat("MM-dd-yyyy").format(new SimpleDateFormat("MM-dd-yyyy").parse(edate));
		System.out.println("EndDate:"+end);
		Date date=new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("MM-dd-yyyy");  
	    String cdate= formatter.format(date);  
		System.out.println("cdate:"+cdate);
		if(edate.compareTo(cdate)<0){
			offer1.setIsExpired(true);
			offer2=offerRepository.save(offer1);
		}
				return offer2;	
		}
	
	@GetMapping("/offerUserList")
	public String offerlist() {
		return "offerListUser";		
	}
	
	
	@GetMapping("/userOfferList")
	@ResponseBody
	public List<Offer> userOfferList(){
		List<Offer>response=offerRepository.findByExpired();
		return response;
		
	}
	@GetMapping("/pages")
    String jspPage(Model model,@RequestParam String name) {
        model.addAttribute("name", name);
        return "jsp/";
    
    }
    //mapping class for implementing thymeleaf functionalities with jsp page
    @GetMapping("/thymeleaf")
    String thymeleafPage(Model model,@RequestParam String name) {
    	System.out.println("/////");
        model.addAttribute("name", name);
        return "thymeleaf/";
    }
    @GetMapping("/pay/{offerId}")
    @ResponseBody
    public Offer showone(@PathVariable("offerId")int id) {
    	Offer offer=offerRepository.findById(id).orElse(new Offer());
		return offer;
    	
    }
}
