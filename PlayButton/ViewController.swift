//
//  ViewController.swift
//  PlayButton
//
//  Created by weifans on 2018/12/11.
//  Copyright © 2018 weifans. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var bluePlayButton: CAPlayButton!
    private var redPlayButton: CAPlayButton!
    private var yellowPlayButton: CAPlayButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        initPlayButton()
    }

    func initPlayButton() {
        bluePlayButton = CAPlayButton(frame: CGRect(x: 150, y: 100, width: 100, height: 100))
        bluePlayButton.addTarget(self, action: #selector(caPlayButtonPressed), for: .touchUpInside)
        bluePlayButton.setTintColor(bluePlayButton.tintColor)
        view.addSubview(bluePlayButton)
        
        redPlayButton = CAPlayButton(frame: CGRect(x: 150, y: 250, width: 100, height: 100))
        redPlayButton.addTarget(self, action: #selector(caPlayButtonPressed), for: .touchUpInside)
        redPlayButton.setTintColor(UIColor.redColor)
        view.addSubview(redPlayButton)
        
        yellowPlayButton = CAPlayButton(frame: CGRect(x: 150, y: 400, width: 100, height: 100))
        yellowPlayButton.addTarget(self, action: #selector(caPlayButtonPressed), for: .touchUpInside)
        yellowPlayButton.setTintColor(UIColor.yellowColor)
        view.addSubview(yellowPlayButton)
    }
    
    // MARK: -
    // MARK: Methods
    
    @objc func caPlayButtonPressed(_ sender: CAPlayButton) {
        if sender.buttonState == .Playing {
            sender.setButtonState(.Paused, animated: true)
        } else {
            sender.setButtonState(.Playing, animated: true)
        }
    }
}

