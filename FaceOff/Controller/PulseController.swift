//
//  PulseController.swift
//  FaceOff
//
//  Created by Andika Leonardo on 26/05/19.
//  Copyright © 2019 Made by Windmill. All rights reserved.
//

import UIKit

class PulseController: UIViewController {

    @IBOutlet weak var buttonView: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
   
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(PulseController.addPulse))
        
        tapGestureRecognizer.numberOfTapsRequired = 1
        buttonView.addGestureRecognizer(tapGestureRecognizer)
        
    }
    
    
    @objc func addPulse() {
        let pulse =  Pulsing(numberOfPulses: 1, radius: 180, position: buttonView.center)
        pulse.animationDuration = 0.8
        pulse.backgroundColor = UIColor.green.cgColor
        self.view.layer.insertSublayer(pulse, below: buttonView.layer)
        
        // TODO: Add Button action after pulse
        print("Add Button action after pulse ")
    }
    
    
}
