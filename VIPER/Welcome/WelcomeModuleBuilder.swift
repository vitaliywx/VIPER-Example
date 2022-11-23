//
//  WelcomeModuleBuilder.swift
//  VIPER
//
//  Created by Vitalii Homoniuk on 21.11.2022.
//

import UIKit

class WelcomeModuleBuilder {
    static func build() -> WelcomeViewController {
        let interactor = WelcomeInteractor()
        let router = WelcomeRouter()
        let presenter = WelcomePresenter(interactot: interactor, router: router)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "Main") as! WelcomeViewController
        viewController.presenter = presenter
        presenter.view = viewController
        interactor.presenter = presenter
        router.viewController = viewController
        return viewController
    }
}
