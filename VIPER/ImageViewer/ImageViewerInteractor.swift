//
//  ImageViewerInteractor.swift
//  Super easy dev
//
//  Created by Vitalii Homoniuk on 21.11.2022
//
import UIKit

protocol ImageViewerInteractorProtocol: AnyObject {
    func getImageForCurrentTemperature() -> UIImage?
}

class ImageViewerInteractor: ImageViewerInteractorProtocol {
    weak var presenter: ImageViewerPresenterProtocol?
    let temperature: Int
    
    init(temperature: Int) {
        self.temperature = temperature
    }
    
    func getImageForCurrentTemperature() -> UIImage? {
        if temperature < 0 {
            return UIImage(systemName: "snowflake")?.withTintColor(.blue,
                                                                   renderingMode: .alwaysOriginal)
        } else if temperature >= 0 && temperature < 10 {
            return UIImage(systemName: "cloud.fill")?.withTintColor(.lightGray,
                                                                    renderingMode: .alwaysOriginal)
        } else {
            return UIImage(systemName: "sun.min.fill")?.withTintColor(.orange,
                                                                      renderingMode: .alwaysOriginal)
        }
    }
}
