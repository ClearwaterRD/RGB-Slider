//
//  ViewController.swift
//  RGB Slider
//
//  Created by Roman Dubovskoi on 7/8/24.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var redColorLabel: UILabel!
    @IBOutlet weak var greenColorLabel: UILabel!
    @IBOutlet weak var blueColorLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
   
    @IBOutlet weak var colorView: UIView!
    
    private let redColorValue: CGFloat = 0
    private let greenColorValue: CGFloat = 0
    private let blueColorValue: CGFloat = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 10
    }


}

