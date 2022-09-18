//
//  ViewController.swift
//  HW-2-2
//
//  Created by Alexander Grishin on 18.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var trafficLightColorRed: UIView!
    @IBOutlet var trafficLightColorYellow: UIView!
    @IBOutlet var trafficLightColorGreen: UIView!
    @IBOutlet var trafficLightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trafficLightColorRed.layer.cornerRadius = 65
        trafficLightColorYellow.layer.cornerRadius = 65
        trafficLightColorGreen.layer.cornerRadius = 65
        trafficLightButton.layer.cornerRadius = 10
    }
    
    @IBAction func trafficLightButtonDidTapped() {
        trafficLightButton.setTitle("NEXT", for: .normal)
        trafficLightSwitchColor()
    }
    
    private func trafficLightSwitchColor() {
        if trafficLightColorRed.alpha == 1 {
            trafficLightColorRed.alpha = 0.3
            trafficLightColorYellow.alpha = 1
        } else if trafficLightColorYellow.alpha == 1 {
            trafficLightColorYellow.alpha = 0.3
            trafficLightColorGreen.alpha = 1
        } else {
            trafficLightColorRed.alpha = 1
            trafficLightColorYellow.alpha = 0.3
            trafficLightColorGreen.alpha = 0.3
        }
    }
}
    

