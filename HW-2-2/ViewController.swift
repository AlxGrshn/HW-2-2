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
        trafficLightColorRed.layer.cornerRadius = trafficLightColorRed.frame.height / 2.0
        trafficLightColorRed.clipsToBounds = true
        trafficLightColorYellow.layer.cornerRadius = trafficLightColorYellow.frame.height / 2.0
        trafficLightColorYellow.clipsToBounds = true
        trafficLightColorGreen.layer.cornerRadius = trafficLightColorGreen.frame.height / 2.0
        trafficLightColorGreen.clipsToBounds = true
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
    

