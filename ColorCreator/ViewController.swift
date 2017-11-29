//
//  ViewController.swift
//  ColorCreator
//
//  Created by Admin on 20/11/2017.
//  Copyright © 2017 patisonek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var selectedColor: UIColor!
    
    @IBOutlet var previewContainer: UIView!
    
    @IBAction func actionRandomButton(_ sender: Any) {
        
        var r : CGFloat = 0
        var g : CGFloat = 0
        var b : CGFloat = 0
        var a : CGFloat = 0
        
        
        UIColor.randomColor().getRed(&r, green: &g, blue: &b, alpha: &a)
        
        redSlider.value = Float(r)
        greenSlider.value = Float(g)
        blueSlider.value = Float(b)
        
        updateInterface()
        
        
    }
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    @IBAction func actionSliderChanged(_ sender: UISlider) {
    
        updateInterface()
    }
    
    
    
    func updateInterface(){
        
        
        let selectedRed = CGFloat(redSlider.value)
        let selectedGreen = CGFloat(greenSlider.value)
        let selectedBlue = CGFloat(blueSlider.value)
        
        
        selectedColor = UIColor(red: selectedRed, green: selectedGreen, blue: selectedBlue, alpha: 1.0)
        
        previewContainer.backgroundColor = selectedColor
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

