//
//  ViewController.swift
//  CaptureByRepeatedAnimation
//
//  Created by Vsevolod Mashinson on 14.01.18.
//  Copyright © 2018 Vsevolod Mashinson. All rights reserved.
//

import UIKit

class BlinkingController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        view.backgroundColor = UIColor.black
        print(#function)
        //blinkingSquareView.updateWithData(data: nil)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupViews() {
        view.addSubview(blinkingSquareView)
        blinkingSquareView.translatesAutoresizingMaskIntoConstraints = false
        view.leadingAnchor.constraint(equalTo: blinkingSquareView.leadingAnchor).isActive = true
        view.trailingAnchor.constraint(equalTo: blinkingSquareView.trailingAnchor).isActive = true
        view.topAnchor.constraint(equalTo: blinkingSquareView.topAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo: blinkingSquareView.bottomAnchor).isActive = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
       // super.viewWillAppear(true)
        
        print(#function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(#function)
        blinkingSquareView.updateWithData(data: nil)
    }
    
    let blinkingSquareView = BlinkingSquareView()

}

