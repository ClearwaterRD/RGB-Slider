//
//  ViewController.swift
//  RGB Slider
//
//  Created by Roman Dubovskoi on 7/8/24.
//

import UIKit

final class ViewController: UIViewController {
//    MARK: - IB Outlets
    @IBOutlet weak var redColorLabel: UILabel!
    @IBOutlet weak var greenColorLabel: UILabel!
    @IBOutlet weak var blueColorLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
   
    @IBOutlet weak var rgbColorView: UIView!
    
    // MARK: - Private Properties
    private var redColorValue: CGFloat {
        CGFloat(redSlider.value)
    }
    
    private var greenColorValue: CGFloat {
        CGFloat(greenSlider.value)
    }
    
    private var blueColorValue: CGFloat {
        CGFloat(blueSlider.value)
    }

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rgbColorView.layer.cornerRadius = 10
        
        applyRgbColorToTheView(
            withColors: redColorValue,
            green: greenColorValue,
            blue: blueColorValue
        )
    }

    //MARK: - IB Actions
    @IBAction func redSliderAction() {
        redColorLabel.text = String(format: "%.2f", redSlider.value)
        applyRgbColorToTheView(
            withColors: redColorValue,
            green: greenColorValue,
            blue: blueColorValue
        )
    }
    
    @IBAction func greenSliderAction() {
        greenColorLabel.text = String(format: "%.2f", greenSlider.value)
        applyRgbColorToTheView(
            withColors: redColorValue,
            green: greenColorValue,
            blue: blueColorValue
        )
    }
    
    @IBAction func blueSliderAction() {
        blueColorLabel.text = String(format: "%.2f", blueSlider.value)
        applyRgbColorToTheView(
            withColors: redColorValue,
            green: greenColorValue,
            blue: blueColorValue
        )
    }
    
    // MARK: - Private Methods
    private func applyRgbColorToTheView(
        withColors red: CGFloat,
        green: CGFloat,
        blue: CGFloat
    ) {
        rgbColorView.backgroundColor = UIColor(
            red: red,
            green: green,
            blue: blue,
            alpha: 1.0
        )
    }
}

