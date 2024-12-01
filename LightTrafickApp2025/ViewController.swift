//
//  ViewController.swift
//  LightTrafickApp2025
//
//  Created by Yurii Luka on 01.12.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var lightChangeButton: UIButton!
    
    private var lightTurned: colorOfLight = .red
    
    enum colorOfLight {
        case red
        case yellow
        case green
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.layer.cornerRadius = redView.frame.height / 2
        yellowView.layer.cornerRadius = yellowView.frame.height / 2
        greenView.layer.cornerRadius = greenView.frame.height / 2
        
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
        lightChangeButton.layer.cornerRadius = 12
        
        lightTurned = .red
        
    }
    
    @IBAction func lightChangeButtonDidTaped() {
        lightChangeButton.setTitle("NEXT", for: .normal)
        
        switch lightTurned {
        case .red:
            redView.alpha = 1
            yellowView.alpha = 0.3
            greenView.alpha = 0.3
            
            lightTurned = .yellow
        case .yellow:
            redView.alpha = 0.3
            yellowView.alpha = 1
            greenView.alpha = 0.3
            
            lightTurned = .green
        case .green:
            redView.alpha = 0.3
            yellowView.alpha = 0.3
            greenView.alpha = 1
            
            lightTurned = .red
        }
    }
}
