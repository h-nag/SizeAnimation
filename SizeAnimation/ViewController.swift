//
//  ViewController.swift
//  SizeAnimation
//
//  Created by Hilarion on 2016/07/10.
//  Copyright © 2016年 Klockwerks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let animation = CASpringAnimation(keyPath: "bounds.size")
    
    @IBOutlet weak var animationView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // animation start
        animationView.layer.cornerRadius = 120
        startAnimation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func startAnimation(){
        animation.mass = 1.0
        animation.damping = 12.0
        animation.stiffness = 240.0
        
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
        animation.fromValue = NSValue(CGSize: CGSizeMake(0, 0))
        animation.toValue = NSValue(CGSize: CGSizeMake(240, 240))
        
        animation.removedOnCompletion = true
        animation.fillMode = kCAFillModeForwards
        animation.duration = 2.5
        
        animation.delegate = self
        
        animationView.layer.addAnimation(animation, forKey: "animation")
    }
}

