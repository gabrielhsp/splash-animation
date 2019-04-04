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
    @IBOutlet weak var holderView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupAnimation()
    }
    
    func setupAnimation() {
        splashAnimation.animationView.setAnimation(named: "splashLogo")
        splashAnimation.animationView.play(fromFrame: 8, toFrame: 170, withCompletion: { finished in
            let home = HomeViewController(nibName: "HomeViewController", bundle: nil)
            self.holderView.addSubview(home.view)
            
            home.view.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            
            UIView.animate(withDuration: 0.3, animations: {
                self.splashAnimation.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
                self.splashAnimation.alpha = 0
                
                home.view.frame = self.view.frame
            })
        })
    }
}
