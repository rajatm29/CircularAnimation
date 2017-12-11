//
//  ViewController.swift
//  CircularLoaderBTA
//
//  Created by Rajat Monga on 12/9/17.
//  Copyright © 2017 Rajat Monga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let shapeLayer = CAShapeLayer()
    let shapeLayer2 = CAShapeLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let center = view.center
        let trackLayer = CAShapeLayer()
        let trackLayer2 = CAShapeLayer()
        
        let circularPath = UIBezierPath(arcCenter: center, radius: 100, startAngle: -CGFloat.pi/2, endAngle: 2*CGFloat.pi, clockwise: true)
        trackLayer.path = circularPath.cgPath

        trackLayer.strokeColor = UIColor.lightGray.cgColor
        trackLayer.lineWidth = 10
        trackLayer.fillColor = UIColor.clear.cgColor
        trackLayer.lineCap = kCALineCapRound
        view.layer.addSublayer(trackLayer)
        shapeLayer.path = circularPath.cgPath
        shapeLayer.strokeColor = UIColor.red.cgColor
        shapeLayer.lineWidth = 10
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineCap = kCALineCapRound
        shapeLayer.strokeEnd = 0
        view.layer.addSublayer(shapeLayer)
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action:  #selector(handleTap)))
        
        let circularPath2 = UIBezierPath(arcCenter: center, radius: 80, startAngle: -CGFloat.pi/2, endAngle: 2*CGFloat.pi, clockwise: true)
        let circularPath3 = UIBezierPath(arcCenter: center, radius: 80, startAngle: -CGFloat.pi/2, endAngle: CGFloat.pi, clockwise: true)
        
        trackLayer2.path = circularPath2.cgPath
        trackLayer2.strokeColor = UIColor.lightGray.cgColor
        trackLayer2.lineWidth = 10
        trackLayer2.fillColor = UIColor.clear.cgColor
        trackLayer2.lineCap = kCALineCapRound
        view.layer.addSublayer(trackLayer2)
        shapeLayer2.path = circularPath3.cgPath
        shapeLayer2.strokeColor = UIColor.blue.cgColor
        shapeLayer2.lineWidth = 10
        shapeLayer2.fillColor = UIColor.clear.cgColor
        shapeLayer2.lineCap = kCALineCapRound
        shapeLayer2.strokeEnd = 0
        view.layer.addSublayer(shapeLayer2)
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action:  #selector(handleTap)))
        
        
        
        
        
    
    }

    @objc private func handleTap() {
        print("attempting to animate stroke");
        
        let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
        basicAnimation.toValue = 1
        basicAnimation.duration = 2;
        
        let basicAnimation2 = CABasicAnimation(keyPath: "strokeEnd")
        basicAnimation2.toValue = 1
        basicAnimation2.duration = 3

        
        basicAnimation.fillMode = kCAFillModeForwards
        basicAnimation.isRemovedOnCompletion = false;
        
        
        basicAnimation2.fillMode = kCAFillModeForwards
        basicAnimation2.isRemovedOnCompletion = false
        
        
        shapeLayer.add(basicAnimation, forKey: "urSoBasic")
        shapeLayer2.add(basicAnimation2, forKey: "urSobasicagain")
        
    }
}

