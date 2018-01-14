//
//  BlinkingSquare.swift
//  CaptureByRepeatedAnimation
//
//  Created by Vsevolod Mashinson on 14.01.18.
//  Copyright © 2018 Vsevolod Mashinson. All rights reserved.
//

import Foundation
import UIKit

class BlinkingSquareView: UIView {
    
    init() {
        super.init(frame: CGRect.zero)
        setupViews()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        addSubview(square)
        square.backgroundColor = UIColor.red
    }
    
    func updateWithData(data: Any?) {
        UIView.animate(
            withDuration: 0.5,
            delay: 0,
            options: [.repeat, .autoreverse],
            animations: {
                self.square.alpha = 0
            },
            completion: { finished in

            }
        )
    }
    
    open override func willMove(toWindow newWindow: UIWindow?) {
        super.willMove(toWindow: newWindow)
        print(#function)
        if newWindow != nil {
            updateWithData(data: nil)
        }
    }
    
    func setupConstraints() {
        let linearSize: CGFloat = 200
        square.translatesAutoresizingMaskIntoConstraints = false
        square.centerInContainer(withSize: CGSize(width: linearSize, height: linearSize), container: self)
    }
    
    private let square = UIView()
    
}
