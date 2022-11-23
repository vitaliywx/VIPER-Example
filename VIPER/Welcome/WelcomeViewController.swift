//
//  ViewController.swift
//  VIPER
//
//  Created by Vitalii Homoniuk on 21.11.2022.
//

import UIKit

protocol WelcomeViewProtocol: AnyObject {
    func showDate(date: String)
    func showWeather(weather: String)
}

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var weatherLabel: UILabel!
    
    var presenter: WelcomePresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter?.viewDidLoaded()
    }
    
    @IBAction func didTapImageButton(_ sender: UIButton) {
        presenter?.didTapImageButton()
    }
    
}

extension WelcomeViewController: WelcomeViewProtocol {
    func showDate(date: String) {
        DispatchQueue.main.async {
            self.dateLabel.text = date
        }
    }
    
    func showWeather(weather: String) {
        DispatchQueue.main.async {
            self.weatherLabel.text = weather
        }
    }
}
