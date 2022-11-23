//
//  DateService.swift
//  VIPER
//
//  Created by Vitalii Homoniuk on 21.11.2022.
//

import Foundation

class DateService {
    func getDate(completion: @escaping (Date) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            completion(Date())
        }
    }
}
