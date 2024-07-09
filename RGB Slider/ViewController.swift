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
   
    @IBOutlet weak var rgbColorView: UIView!
    
    private var redColorValue: CGFloat {
        CGFloat(redSlider.value)
    }
    
    private var greenColorValue: CGFloat {
        CGFloat(greenSlider.value)
    }
    
    private var blueColorValue: CGFloat {
        CGFloat(blueSlider.value)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        rgbColorView.layer.borderWidth = 2.0
        rgbColorView.layer.borderColor = UIColor.white.cgColor
        rgbColorView.layer.cornerRadius = 10
    }

    @IBAction func redSliderAction() {
        redColorLabel.text = String(format: "%.2f", redSlider.value)
        getRgbColor(
            with: redColorValue,
            green: greenColorValue,
            blue: blueColorValue
        )
    }
    
    @IBAction func greenSliderAction() {
        greenColorLabel.text = String(format: "%.2f", greenSlider.value)
        getRgbColor(
            with: redColorValue,
            green: greenColorValue,
            blue: blueColorValue
        )
    }
    
    @IBAction func blueSliderAction() {
        blueColorLabel.text = String(format: "%.2f", blueSlider.value)
        getRgbColor(
            with: redColorValue,
            green: greenColorValue,
            blue: blueColorValue
        )
    }
    
    
    private func getRgbColor(with red: CGFloat, green: CGFloat, blue: CGFloat) {
        rgbColorView.backgroundColor = UIColor(
            red: red,
            green: green,
            blue: blue,
            alpha: 1.0
        )
    }
}

