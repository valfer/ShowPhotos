//
//  ViewController.swift
//  ShowPhotos
//
//  Created by Valerio Ferrucci on 22/10/14.
//  Copyright (c) 2014 Valerio Ferrucci. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: PRIVATE
    var mediator : Mediator!

    override func viewDidLoad() {
        let delegate = UIApplication.sharedApplication().delegate as AppDelegate
        mediator = delegate.mediator
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        mediator.prepareForSegue(segue)
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        
    }


}

