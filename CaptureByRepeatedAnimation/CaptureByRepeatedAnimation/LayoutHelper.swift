//
//  LayoutHelper.swift
//  CaptureByRepeatedAnimation
//
//  Created by Vsevolod Mashinson on 14.01.18.
//  Copyright © 2018 Vsevolod Mashinson. All rights reserved.
//

import UIKit

extension UIView {
    func centerInContainer(withSize size: CGSize, container: UIView) {
        self.centerXAnchor.constraint(equalTo: container.centerXAnchor).isActive = true
        self.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true
        self.widthAnchor.constraint(equalToConstant: size.width).isActive = true
        self.heightAnchor.constraint(equalToConstant: size.height).isActive = true
    }
}
