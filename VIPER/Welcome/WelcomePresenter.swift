//
//  WelcomePresenter.swift
//  VIPER
//
//  Created by Vitalii Homoniuk on 21.11.2022.
//

import Foundation

protocol WelcomePresenterProtocol: AnyObject {
    func viewDidLoaded()
    func didTapImageButton()
    func didLoad(date: String?)
    func didLoad(weather: Int?)
}

class WelcomePresenter {
    weak var view: WelcomeViewProtocol?
    var router: WelcomeRouterProtocol
    var interactot: WelcomeInteractorProtocol
    
    init(interactot: WelcomeInteractorProtocol, router: WelcomeRouterProtocol) {
        self.interactot = interactot
        self.router = router
    }
}

extension WelcomePresenter: WelcomePresenterProtocol {
    func viewDidLoaded() {
        interactot.loadDate()
        interactot.loadWeather()
    }
    
    func didTapImageButton() {
        let temperature = interactot.temperature
        router.openImage(for: temperature)
    }
    
    func didLoad(date: String?) {
        view?.showDate(date: date ?? "No date")
    }
    
    func didLoad(weather: Int?) {
        let temperature = weather?.description
        view?.showWeather(weather: temperature ?? "No weather data")
    }
}
