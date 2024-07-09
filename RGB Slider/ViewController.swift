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
   
    @IBOutlet weak var showRgbColorView: UIView!
    
    private var redColorValue: CGFloat = 0.0
    private var greenColorValue: CGFloat = 0.0
    private var blueColorValue: CGFloat = 0.0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        showRgbColorView.layer.cornerRadius = 10
        
        
    }

    @IBAction func redSliderAction() {
        redColorLabel.text = String(format: "%.2f", redSlider.value)
    }
    
    @IBAction func greenSliderAction() {
        greenColorLabel.text = String(format: "%.2f", greenSlider.value)
    }
    
    @IBAction func blueSliderAction() {
        blueColorLabel.text = String(format: "%.2f", blueSlider.value)
    }
}

