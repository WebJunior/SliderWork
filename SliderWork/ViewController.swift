//
//  ViewController.swift
//  SliderWork
//
//  Created by Глеб Mr on 21.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorArea: UIView!
    
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorArea.layer.cornerRadius = 15
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        
        redValueLabel.text = String(redSlider.value)
        greenValueLabel.text = String(greenSlider.value)
        blueValueLabel.text = String(blueSlider.value)
        
        changeColor(
                    red: CGFloat(redSlider.value),
                    green: CGFloat(greenSlider.value),
                    blue: CGFloat(blueSlider.value)
        )
    }
    
    @IBAction func redSliderChange() {
        let roundedValue = getRoundedValue(redSlider.value)
        redValueLabel.text = String(roundedValue)
        changeColor(
                    red: CGFloat(redSlider.value),
                    green: CGFloat(greenSlider.value),
                    blue: CGFloat(blueSlider.value)
        )
    }
    
    @IBAction func greenSliderChange() {
        let roundedValue = getRoundedValue(greenSlider.value)
        greenValueLabel.text = String(roundedValue)
        changeColor(
                    red: CGFloat(redSlider.value),
                    green: CGFloat(greenSlider.value),
                    blue: CGFloat(blueSlider.value)
        )
    }
    
    
    @IBAction func blueSliderChange() {
        let roundedValue = getRoundedValue(blueSlider.value)
        blueValueLabel.text = String(roundedValue)
        changeColor(
                    red: CGFloat(redSlider.value),
                    green: CGFloat(greenSlider.value),
                    blue: CGFloat(blueSlider.value)
        )
    }
}


extension ViewController {
    private func changeColor(red: CGFloat, green: CGFloat, blue: CGFloat) {
        colorArea.backgroundColor = UIColor(
            red: red,
            green: green,
            blue: blue,
            alpha: 1
        )
    }
    
    private func getRoundedValue(_ value: Float) -> Float {
        roundf(value * 100) / 100
    }
}
