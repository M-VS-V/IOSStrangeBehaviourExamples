

//
//  MainViewController.swift
//  CaptureByRepeatedAnimation
//
//  Created by Vsevolod Mashinson on 14.01.18.
//  Copyright © 2018 Vsevolod Mashinson. All rights reserved.
//

import Foundation
import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        view.backgroundColor = UIColor.white
    }
    
    func setupViews() {
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerInContainer(withSize: CGSize(width: 150, height: 150), container: view)
        button.addTarget(self, action: #selector(presentController), for: UIControlEvents.touchUpInside)
        button.setTitle("Present", for: .normal)
        button.titleLabel?.textColor = UIColor.black
        button.backgroundColor = UIColor.gray
    }
    
    @objc func presentController() {
        let blinkingController = BlinkingController()
        blinkingController.preferredContentSize = CGSize(width: 300, height: 600)
        blinkingController.modalPresentationStyle = .formSheet
        self.present(blinkingController, animated: true, completion: nil)
    }
    
    let button =  UIButton()
}
