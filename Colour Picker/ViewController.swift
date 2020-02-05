//
//  ViewController.swift
//  Colour Picker
//
//  Created by Isuru Wijesinghe on 2/5/20.
//  Copyright © 2020 Isuru Wijesinghe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var RedLabel: UILabel!
    @IBOutlet weak var GreenLabel: UILabel!
    @IBOutlet weak var BlueLabel: UILabel!
    @IBOutlet weak var RedSlider: UISlider!
    @IBOutlet weak var GreenSlider: UISlider!
    @IBOutlet weak var BlueSlider: UISlider!
    @IBOutlet weak var ColourDisplayLablel: UILabel!
    
    var RedColour : Float = 0
    var GreenColour : Float = 0
    var BlueColour : Float = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func RedSliderAction(_ sender: UISlider) {
        ChangeColour()
    }
    
    @IBAction func GreenSliderAction(_ sender: UISlider) {
        ChangeColour()
    }
    
    @IBAction func BlueSliderAction(_ sender: UISlider) {
        ChangeColour()
    }
    
    func DisplayColour(){
        
        ColourDisplayLablel.backgroundColor = UIColor(red: CGFloat(RedColour), green: CGFloat(GreenColour), blue: CGFloat(BlueColour), alpha: 1.0)
        
        ChangeLabel()
        
    }
    
    func ChangeColour(){
        
        RedColour = RedSlider.value
        GreenColour = GreenSlider.value
        BlueColour = BlueSlider.value
        DisplayColour()
        
    }
    
    func ChangeLabel(){
        
        let RedColourValue = String(format: "%0.0f", (RedColour))
        let GreenColourValue = String(format: "%0.0f", (GreenColour))
        let BlueColourValue = String(format: "%0.0f", (BlueColour))
        
        RedLabel.text = RedColourValue
        GreenLabel.text = GreenColourValue
        BlueLabel.text = BlueColourValue
        
    }
    
}

