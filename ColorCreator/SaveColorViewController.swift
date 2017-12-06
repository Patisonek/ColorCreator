//
//  SaveColorViewController.swift
//  ColorCreator
//
//  Created by Admin on 04/12/2017.
//  Copyright © 2017 patisonek. All rights reserved.
//

import UIKit

class SaveColorViewController: UITabBarController {
    
    var colorToSave : UIColor?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        if let color = colorToSave {
            view.backgroundColor = color
        }
    
    }


}
