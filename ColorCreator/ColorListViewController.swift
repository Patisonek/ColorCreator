//
//  ColorListViewController.swift
//  ColorCreator
//
//  Created by Admin on 04/12/2017.
//  Copyright © 2017 patisonek. All rights reserved.
//

import UIKit

class ColorListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var table: UITableView!
    
    var colors = [UIColor]()
    var colorNames = [String]()
    var colorNumbers = [Int]()
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        loadColors()
    }
    
    override func viewDidLoad() {
        table.tableFooterView = UIView(frame: CGRect.zero)
        table.allowsSelection = false
        
    }
    
    func loadColors(){
        
        colors.removeAll()
        colorNames.removeAll()
        colorNumbers.removeAll()
        
        if UserDefaults.standard.object(forKey: LAST_COLOR_NUMBER_KEY) != nil {
            
            let lastColorNumber = UserDefaults.standard.integer(forKey: LAST_COLOR_NUMBER_KEY)
            
            for i in 1...lastColorNumber {
                if let color = UserDefaults.standard.colorForKey(key: "Color_\(i)"){
                    let colorName = UserDefaults.standard.string(forKey: "Color_\(i)_Name")!
                    
                    colors.append(color)
                    colorNames.append(colorName)
                    colorNumbers.append(i)

                }
            }
        }
        //odswiezenie widoku tabeli
        table.reloadData()
        
    }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ColorCellTableViewCell
        
        cell.nameLabel.text = colorNames[colors.count - 1 - indexPath.row]
        cell.backgroundColor = colors[colors.count - 1 - indexPath.row]
        cell.valuesLabel.text = colors[colors.count - 1 - indexPath.row].rgbString()
        
        return cell
        
        
    }
    

    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            let colorNumber = colorNumbers[indexPath.row]
            UserDefaults.standard.removeObject(forKey: "Color_\(colorNumber)")
            UserDefaults.standard.removeObject(forKey:"Color_\(colorNumber)_Name")
            
            colors.remove(at:indexPath.row)
            colorNames.remove(at: indexPath.row)
            colorNumbers.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.fade)
        }
    }
    
    func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        return "Usuń"
    }
    
    
    
   

}
