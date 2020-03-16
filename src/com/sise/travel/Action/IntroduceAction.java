package com.sise.travel.Action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.sise.travel.po.City;
import com.sise.travel.po.Introduce;
import com.sise.travel.po.Place;
import com.sise.travel.service.CityService;
import com.sise.travel.service.IntroduceService;
import com.sise.travel.service.PlaceService;

@Controller("introduceAction")
@Scope("prototype")
public class IntroduceAction  extends ActionSupport{
	@Resource private IntroduceService introduceService;
	@Resource private CityService cityService;
	@Resource private PlaceService placeService;
	private String cityName;
	private City city;
	private List<City> cities;
	private List<Introduce> introduces;
	private Introduce introduce;
	private Place place;
	private List<Place> places;
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public City getCity() {
		return city;
	}
	public void setCity(City city) {
		this.city = city;
	}
	public List<City> getCities() {
		return cities;
	}
	public Place getPlace() {
		return place;
	}
	public List<Place> getPlaces() {
		return places;
	}
	public void setPlace(Place place) {
		this.place = place;
	}
	public void setPlaces(List<Place> places) {
		this.places = places;
	}
	public void setCities(List<City> cities) {
		this.cities = cities;
	}
	public List<Introduce> getIntroduces() {
		return introduces;
	}
	public Introduce getIntroduce() {
		return introduce;
	}
	public void setIntroduces(List<Introduce> introduces) {
		this.introduces = introduces;
	}
	public void setIntroduce(Introduce introduce) {
		this.introduce = introduce;
	}
	public String Route(){
		if(city.getCityName()==null||city.getCityName().equals("")){
			introduces = introduceService.AllRoute();
			places = placeService.FindPlace();
			return "all";
		}
		cities = cityService.FindCityID(city.getCityName());
		if(cities.isEmpty()){return "empty";}
		introduces = introduceService.FindRoute(cities.get(0).getCid());
		places = placeService.FindPlace();
		return "route";
	}
	public String Detail(){
		introduces = introduceService.findIntroduce(introduce.getTid());
		places = placeService.FindPlace();
		return "detail";
	}
}
