//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Aleksandr F. on 04.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var stageСolor: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stageСolor.layer.cornerRadius = 15
        
        redSlider.value = 0.05
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .red
        redLabel.text = String(redSlider.value)
        
        greenSlider.value = 0.27
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .green
        greenLabel.text = String(greenSlider.value)
        
        blueSlider.value = 0.49
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .blue
        blueLabel.text = String(blueSlider.value)
    }
    
    func changeColor() {
        stageСolor.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
    @IBAction func SliderAction() {
        changeColor()
        redLabel.text = String(round(redSlider.value * 100) / 100)
        blueLabel.text = String(round(blueSlider.value * 100) / 100)
        greenLabel.text = String(round(greenSlider.value * 100) / 100)
    }
}

