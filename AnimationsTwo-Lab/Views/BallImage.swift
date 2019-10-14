//
//  BallImage.swift
//  AnimationsTwo-Lab
//
//  Created by Angela Garrovillas on 10/14/19.
//  Copyright © 2019 Angela Garrovillas. All rights reserved.
//

import UIKit

class BallImage: UIView {

    let imageView = UIImageView()
    func setImage() {
        self.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = #imageLiteral(resourceName: "rainbowBall")
        imageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }

    override init(frame: CGRect) {
        super.init(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.cornerRadius = self.frame.height / 2
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
