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
    
    private var lightOfSection: colorOfLight = .red
    
    enum colorOfLight {
        case red
        case yellow
        case green
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        redSection.alpha = 0.3
        yellowSection.alpha = 0.3
        greenSection.alpha = 0.3
        
        redSection.layer.cornerRadius = redSection.frame.height / 2
        yellowSection.layer.cornerRadius = yellowSection.frame.height / 2
        greenSection.layer.cornerRadius = greenSection.frame.height / 2
        
        lightChangeButton.layer.cornerRadius = 12
    }
    
    @IBAction func lightChangeButtonDidTaped() {
        lightChangeButton.setTitle("NEXT", for: .normal)
        
        switch lightOfSection {
        case .red:
            redSection.alpha = 1
            yellowSection.alpha = 0.3
            greenSection.alpha = 0.3
            lightOfSection = .yellow
        case .yellow:
            redSection.alpha = 0.3
            yellowSection.alpha = 1
            greenSection.alpha = 0.3
            lightOfSection = .green
        case .green:
            redSection.alpha = 0.3
            yellowSection.alpha = 0.3
            greenSection.alpha = 1
            lightOfSection = .red
        }
    }
}
