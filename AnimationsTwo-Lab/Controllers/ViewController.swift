//
//  ViewController.swift
//  AnimationsTwo-Lab
//
//  Created by Angela Garrovillas on 10/14/19.
//  Copyright © 2019 Angela Garrovillas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var linearBall = BallImage()
    var easeInBall = BallImage()
    var easeOutBall = BallImage()
    var easeInOutBall = BallImage()
    
    var linearButton: UIButton = {
        let button = UIButton()
        button.setTitle("Linear", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var easeInButton: UIButton = {
        let button = UIButton()
        button.setTitle("EaseIn", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var easeOutButton: UIButton = {
        let button = UIButton()
        button.setTitle("EaseOut", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var easeInOutButton: UIButton = {
        let button = UIButton()
        button.setTitle("EaseInOut", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var resetButton: UIButton = {
        let button = UIButton()
        button.setTitle("Reset", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var animateButton: UIButton = {
        let button = UIButton()
        button.setTitle("Animate", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

