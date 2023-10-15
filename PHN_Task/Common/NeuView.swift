//
//  NeuView.swift
//  PHN_Task
//
//  Created by Tushar Zade on 14/10/23.
//

import Foundation
import UIKit

class NeuView: UIView {
    private let darkShadow = CALayer()
    private let lightShadow = CALayer()
    
    private let gradientLayer = CAGradientLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() -> Void {

        // add sublayers
        self.layer.addSublayer(darkShadow)
        self.layer.addSublayer(lightShadow)
        self.layer.addSublayer(gradientLayer)

        darkShadow.shadowColor = UIColor.black.withAlphaComponent(0.2).cgColor
        darkShadow.shadowOffset = CGSize(width: 2, height: 2)
        darkShadow.shadowOpacity = 1
        darkShadow.shadowRadius = 2

        lightShadow.shadowColor = UIColor.white.withAlphaComponent(0.9).cgColor
        lightShadow.shadowOffset = CGSize(width: -2, height: -2)
        lightShadow.shadowOpacity = 1
        lightShadow.shadowRadius = 2

        // 45-degree gradient layer
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        
        
        self.layer.borderColor = UIColor.white.withAlphaComponent(0.5).cgColor
        layer.borderWidth = 2
        
        // very light gray background color
        let bkgColor = UIColor.shadow
        
        darkShadow.backgroundColor = bkgColor.cgColor
        lightShadow.backgroundColor = bkgColor.cgColor
        
        // set gradient colors from
        //  slightly darker than background to
        //  slightly lighter than background
        let c1 = UIColor.shadowColor1
        let c2 = UIColor.shadowColor2
        gradientLayer.colors = [c1.cgColor, c2.cgColor]
        
    }
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        
        // set all layers' frames to bounds
        darkShadow.frame = bounds
        lightShadow.frame = bounds
        gradientLayer.frame = bounds
        
        // set all layers' cornerRadius to one-half height
        let cr = CGFloat(10)
        darkShadow.cornerRadius = cr
        lightShadow.cornerRadius = cr
        gradientLayer.cornerRadius = cr
        layer.cornerRadius = cr
        
    }
    
}

