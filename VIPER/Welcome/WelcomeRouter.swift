//
//  WelcomeRouter.swift
//  VIPER
//
//  Created by Vitalii Homoniuk on 21.11.2022.
//

import Foundation

protocol WelcomeRouterProtocol: AnyObject {
    func openImage(for temperature: Int)
}

class WelcomeRouter: WelcomeRouterProtocol {
    weak var viewController: WelcomeViewController?
    
    func openImage(for temperature: Int) {
        let vc = ImageViewerModuleBuilder.build(temperature: temperature)
        viewController?.present(vc, animated: true )
    }
}

