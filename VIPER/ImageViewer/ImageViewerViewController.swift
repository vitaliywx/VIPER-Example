//
//  ImageViewerViewController.swift
//  Super easy dev
//
//  Created by Vitalii Homoniuk on 21.11.2022
//

import UIKit

protocol ImageViewerViewProtocol: AnyObject {
    func showImage(image: UIImage?)
}

class ImageViewerViewController: UIViewController {
    
    // MARK: - Properties
    
    @IBOutlet weak var imageView: UIImageView!
    
    // MARK: - Public
    
    var presenter: ImageViewerPresenterProtocol?

    // MARK: - View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoaded()
        initialize()
    }
}

// MARK: - Private functions

private extension ImageViewerViewController {
    func initialize() {
        
    }
}

// MARK: - ImageViewerViewProtocol

extension ImageViewerViewController: ImageViewerViewProtocol {
    func showImage(image: UIImage?) {
        DispatchQueue.main.async {
            self.imageView.image = image
        }
    }

}
