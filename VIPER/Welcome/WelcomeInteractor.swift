//
//  WelcomeInteractor.swift
//  VIPER
//
//  Created by Vitalii Homoniuk on 21.11.2022.
//

import Foundation

protocol WelcomeInteractorProtocol: AnyObject {
    var temperature: Int { get }
    func loadDate()
    func loadWeather()
}

class WelcomeInteractor: WelcomeInteractorProtocol {
    weak var presenter: WelcomePresenterProtocol?
    let dateService = DateService()
    let weatherService = WeatherService()
    
    var temperature: Int = 0
    
    func loadDate() {
        dateService.getDate { [weak self] date in
            self?.presenter?.didLoad(date: date.description)
        }
    }
    
    func loadWeather() {
        weatherService.getWeather { [weak self] weather in
            self?.presenter?.didLoad(weather: weather)
            self?.temperature = weather
        }
    }
}
