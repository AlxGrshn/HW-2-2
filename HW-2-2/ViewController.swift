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
        trafficLightButton.layer.cornerRadius = 10
    }
    
    override func viewWillLayoutSubviews() {
        trafficLightColorRed.layer.cornerRadius = trafficLightColorRed.frame.width / 2
        trafficLightColorYellow.layer.cornerRadius = trafficLightColorYellow.frame.width / 2
        trafficLightColorGreen.layer.cornerRadius = trafficLightColorGreen.frame.width / 2
    }
    
    @IBAction func trafficLightButtonDidTapped() {
        if trafficLightButton.currentTitle == "START" {
            trafficLightButton.setTitle("NEXT", for: .normal)
        }
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
    

