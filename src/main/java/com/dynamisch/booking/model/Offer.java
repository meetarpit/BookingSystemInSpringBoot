package com.dynamisch.booking.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


//This model class is used to map all below defined fields with table tbl_offer
@Entity
@Table(name="tbl_offer")
public class Offer {
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int offerId;
public enum Currency {
    EUR, USD;
}
private Currency currency;
private String stripeEmail;
private String stripeToken;
private String offerName;
private String description;
@Column(name = "created", nullable = false, updatable=false)
private String createDate;
private String dateUpdated;
private String startDate;
private boolean isExpired;
private String expiryDate;
private String endDate;
private boolean isActive;
private int price;

public boolean getIsExpired() {
	return isExpired;
}
public void setIsExpired(boolean isExpired) {
	this.isExpired = isExpired;
}
public String getExpiryDate() {
	return expiryDate;
}
public void setExpiryDate(String expiryDate) {
	this.expiryDate = expiryDate;
}
public String getDateUpdated() {
	return dateUpdated;
}
public void setDateUpdated(String dateUpdated) {
	this.dateUpdated = dateUpdated;
}

public Currency getCurrency() {
	return currency;
}
public void setCurrency(Currency currency) {
	this.currency = currency;
}
public String getStripeEmail() {
	return stripeEmail;
}
public void setStripeEmail(String stripeEmail) {
	this.stripeEmail = stripeEmail;
}
public String getStripeToken() {
	return stripeToken;
}
public void setStripeToken(String stripeToken) {
	this.stripeToken = stripeToken;
}

public String getStartDate() {
	return startDate;
}
public void setStartDate(String startDate) {
	this.startDate = startDate;
}
public String getEndDate() {
	return endDate;
}
public void setEndDate(String endDate) {
	this.endDate = endDate;
}
public boolean getIsActive() {
	return isActive;
}
public void setIsActive(boolean isActive) {
	this.isActive = isActive;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
public int getOfferId() {
	return offerId;
}
public void setOfferId(int offerId) {
	this.offerId = offerId;
}
public String getOfferName() {
	return offerName;
}
public void setOfferName(String offerName) {
	this.offerName = offerName;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public String getCreateDate() {
	return createDate;
}
public void setCreateDate(String createDate) {
	this.createDate = createDate;
}

@Override
public String toString() {
	return "Offer [offerId=" + offerId + ", offerName=" + offerName + ", description=" + description + ", createDate="
			+ createDate + ", startDate=" + startDate + ", endDate=" + endDate + ", isActive=" + isActive + ", price="
			+ price + "]";
}

}
