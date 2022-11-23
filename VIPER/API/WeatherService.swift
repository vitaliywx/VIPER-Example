//
//  WheatherService.swift
//  VIPER
//
//  Created by Vitalii Homoniuk on 21.11.2022.
//

import Foundation

class WeatherService {
    func getWeather(completion: @escaping (Int) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            let temperature = Int.random(in: -30...30)
            completion(temperature)
        }
    }
}
