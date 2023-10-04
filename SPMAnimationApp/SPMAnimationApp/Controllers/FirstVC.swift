//
//  ViewController.swift
//  SPMAnimationApp
//
//  Created by Sofa on 5.10.23.
//

import UIKit

class FirstVC: BaseViewController {
    
    
    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView! {
        didSet {
            activityIndicatorView.isHidden = true
        }
    }
    
    @IBAction func startBtnAction() {
        activityIndicatorView.isHidden = false
        activityIndicatorView.startAnimating()
        startAnimation(message: "Hello", type: .ballBeat, color: .blue)
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) { [weak self] in
            self?.activityIndicatorView.isHidden = true
            self?.stopAnimation()
        }
    }
}

