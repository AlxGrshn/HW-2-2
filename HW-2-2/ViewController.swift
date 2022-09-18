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
        trafficLightColorYellow.alpha = 0.3
        trafficLightColorGreen.alpha = 0.3
        
    }

    @IBAction func trafficLightButtonDidTapped() {
    }
    
    
}

