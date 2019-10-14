//
//  ViewController.swift
//  AnimationsTwo-Lab
//
//  Created by Angela Garrovillas on 10/14/19.
//  Copyright © 2019 Angela Garrovillas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - Properties
    lazy var linearBall = BallImage()
    lazy var easeInBall = BallImage()
    lazy var easeOutBall = BallImage()
    lazy var easeInOutBall = BallImage()
    
    lazy var linearButton: UIButton = {
        let button = UIButton()
        button.setTitle("Linear", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    lazy var easeInButton: UIButton = {
        let button = UIButton()
        button.setTitle("EaseIn", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    lazy var easeOutButton: UIButton = {
        let button = UIButton()
        button.setTitle("EaseOut", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    lazy var easeInOutButton: UIButton = {
        let button = UIButton()
        button.setTitle("EaseInOut", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    lazy var resetButton: UIButton = {
        let button = UIButton()
        button.setTitle("Reset", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    lazy var animateButton: UIButton = {
        let button = UIButton()
        button.setTitle("Animate", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    //MARK: - Constraint Functions
    private func setupUI() {
        setupLinearButton()
        setupEaseInButton()
        setupEaseOutButton()
        setupEaseInOutButton()
        setUp(ball: linearBall, to: linearButton)
        setUp(ball: easeInBall, to: easeInButton)
        setUp(ball: easeOutBall, to: easeOutButton)
        setUp(ball: easeInOutBall, to: easeInOutButton)
    }
    private func setupLinearButton() {
        view.addSubview(linearButton)
        linearButton.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor,constant: 20).isActive = true
        linearButton.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor,constant: 50).isActive = true
    }
    private func setupEaseInButton() {
        view.addSubview(easeInButton)
        easeInButton.leadingAnchor.constraint(equalTo: linearButton.trailingAnchor, constant: 40).isActive = true
        easeInButton.topAnchor.constraint(equalTo: linearButton.topAnchor).isActive = true
    }
    private func setupEaseOutButton() {
        view.addSubview(easeOutButton)
        easeOutButton.leadingAnchor.constraint(equalTo: easeInButton.trailingAnchor, constant: 40).isActive = true
        easeOutButton.topAnchor.constraint(equalTo: linearButton.topAnchor).isActive = true
    }
    private func setupEaseInOutButton() {
        view.addSubview(easeInOutButton)
        easeInOutButton.leadingAnchor.constraint(equalTo: easeOutButton.trailingAnchor, constant: 40).isActive = true
        easeInOutButton.topAnchor.constraint(equalTo: linearButton.topAnchor).isActive = true
    }
    
    private func setUp(ball: UIView, to button: UIButton) {
        view.addSubview(ball)
        ball.centerXAnchor.constraint(equalTo: button.centerXAnchor).isActive = true
        ball.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 20).isActive = true
        ball.heightAnchor.constraint(equalToConstant: ball.frame.height).isActive = true
        ball.widthAnchor.constraint(equalToConstant: ball.frame.width).isActive = true
    }

    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        print(linearBall.imageView.bounds)
    }


}

