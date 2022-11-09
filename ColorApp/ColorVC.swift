//
//  ColorVC.swift
//  ColorApp
//
//  Created by Никита Швец on 08.11.2022.
//

import UIKit

class ColorVC: UIViewController {
    
    var cellColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let cellColor = cellColor {
            view.backgroundColor = cellColor
        }
        
    }
}
