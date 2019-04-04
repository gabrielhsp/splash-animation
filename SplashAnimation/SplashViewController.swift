//
//  SplashViewController.swift
//  SplashAnimation
//
//  Created by Gabriel Henrique Santos Pereira on 04/04/19.
//  Copyright © 2019 Gabriel Henrique Santos Pereira. All rights reserved.
//

import UIKit
import Lottie

class SplashViewController: UIViewController {
    @IBOutlet weak var splashAnimation: LOTAnimatedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupAnimation()
    }
    
    func setupAnimation() {
        splashAnimation.animationView.setAnimation(named: "splashLogo")
        splashAnimation.animationView.play(fromFrame: 8, toFrame: 170, withCompletion: nil)
    }
}
