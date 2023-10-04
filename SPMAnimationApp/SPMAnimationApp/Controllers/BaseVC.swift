//
//  BaseVC.swift
//  SPMAnimationApp
//
//  Created by Sofa on 5.10.23.
//

import UIKit
import NVActivityIndicatorView
import NVActivityIndicatorViewExtended

class BaseViewController: UIViewController, NVActivityIndicatorViewable {
    
    func startAnimation(message: String, type: NVActivityIndicatorType, color: UIColor) {
        startAnimating(message: message, type: type, color: color)
    }
    func stopAnimation() {
        stopAnimating()
    }
}
