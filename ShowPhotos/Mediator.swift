//
//  Mediator.swift
//  ShowPhotos
//
//  Created by Valerio Ferrucci on 22/10/14.
//  Copyright (c) 2014 Valerio Ferrucci. All rights reserved.
//

import UIKit

enum AppSegues: String {
    case showPanoramaSegue = "showPanorama"
    case showFlowersSegue = "showFlowers"
}

class Mediator {
    
    //MARK: PUBLIC
    func prepareForSegue(segue: UIStoryboardSegue) {
        
        let destinationViewController = segue.destinationViewController as PhotoViewController
        
        if let _identifier = AppSegues(rawValue: segue.identifier!) {
            
            switch _identifier {
                
            case .showPanoramaSegue:
                destinationViewController.image = UIImage(named: "panorama")
                
            case .showFlowersSegue:
                destinationViewController.image = UIImage(named: "flowers")
                
            }
        }
    }
}
