//
//  PhotoViewController.swift
//  ShowPhotos
//
//  Created by Valerio Ferrucci on 22/10/14.
//  Copyright (c) 2014 Valerio Ferrucci. All rights reserved.
//

import UIKit

class PhotoViewController : UIViewController {
    
    //MARK: PUBLIC
    var image : UIImage? {
        didSet {
            updateBackground()
        }
    }
    
    //MARK: PRIVATE
    @IBOutlet private weak var backgrounImageView: UIImageView!
    private func updateBackground() {
        
        if let _backgrounImageView = backgrounImageView {
            if let _image = image {
                _backgrounImageView.image = _image
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBackground()
    }
}

