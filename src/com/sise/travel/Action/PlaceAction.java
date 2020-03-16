package com.sise.travel.Action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.sise.travel.po.Place;
import com.sise.travel.service.PlaceService;
import com.sise.travel.service.UserService;

@Controller("placeAction")
@Scope("prototype")
public class PlaceAction extends ActionSupport {
	@Resource private PlaceService placeService;
	private List<Place> places;
	private Place place;
	public PlaceAction(){}
	public List<Place> getPlaces() {
		return places;
	}
	public Place getPlace() {
		return place;
	}
	public void setPlaces(List<Place> places) {
		this.places = places;
	}
	public void setPlace(Place place) {
		this.place = place;
	}
	public String list (){
		places = placeService.FindPlace();
		return "list";
	}
}
