//: Playground - noun: a place where people can play

import UIKit
//隐士可选型
var  errorMessage: String! = nil
//必须赋值
errorMessage = "not found"
"the messge is " + errorMessage

// 主要应用在类的成员变量的初始化上
class City{

	let cityName: String
	unowned var country: Country
	init( cityName: String , country: Country){
		self.cityName = cityName
		self.country = country
	}
}

class Country{

	let countryName: String
	var capitalCity: City!

	init( countryName: String , capitalCity: String ){

		self.countryName = countryName

		self.capitalCity = City(cityName: capitalCity, country: self)
	}

	func showInfo(){
		print("This is \(countryName).")
		print("The capital is \(capitalCity.cityName).")
	}
}

let china = Country(countryName: "China", capitalCity: "Beijing")
china.showInfo()
