//
//  Mediator.swift
//  ShowPhotos
//
//  Created by Valerio Ferrucci on 22/10/14.
//  Copyright (c) 2014 Valerio Ferrucci. All rights reserved.
//

import UIKit

class Mediator {
    
    //MARK: PUBLIC
    func prepareForSegue(segue: UIStoryboardSegue) {
        
        let destinationViewController = segue.destinationViewController as PhotoViewController
        
        if segue.identifier == "showPanorama" {
            
            destinationViewController.image = UIImage(named: "panorama")
            
        } else if segue.identifier == "showFlowers" {
            
            destinationViewController.image = UIImage(named: "flowers")
        }
    }

}
