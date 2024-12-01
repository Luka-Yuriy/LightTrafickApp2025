//
//  ViewController.swift
//  LightTrafickApp2025
//
//  Created by Yurii Luka on 01.12.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redSection: UIView!
    @IBOutlet var yellowSection: UIView!
    @IBOutlet var greenSection: UIView!
    
    @IBOutlet var lightChangeButton: UIButton!
    
    private var currentLight: CurrentLight = .red
    private let lightOn: CGFloat = 1
    private let lightOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lightChangeButton.layer.cornerRadius = 12

        redSection.alpha = lightOff
        yellowSection.alpha = lightOff
        greenSection.alpha = lightOff
        
        redSection.layer.cornerRadius = redSection.frame.height / 2
        yellowSection.layer.cornerRadius = yellowSection.frame.height / 2
        greenSection.layer.cornerRadius = greenSection.frame.height / 2
    }
    
    @IBAction func lightChangeButtonDidTaped() {
        if lightChangeButton.currentTitle == "START" {
            lightChangeButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            redSection.alpha = lightOn
            greenSection.alpha = lightOff
            currentLight = .yellow
        case .yellow:
            redSection.alpha = lightOff
            yellowSection.alpha = lightOn
            currentLight = .green
        case .green:
            yellowSection.alpha = lightOff
            greenSection.alpha = lightOn
            currentLight = .red
        }
    }
}

// MARK: - CurrentLight
extension ViewController {
    private enum CurrentLight {
        case red
        case yellow
        case green
    }
}
