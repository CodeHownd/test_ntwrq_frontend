//
//  ViewController.swift
//  test
//
//  Created by Yashgur, David on 10/1/19.
//  Copyright © 2019 Yashgur, David. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    
    @IBOutlet weak var loginStackView: UIStackView!
    @IBOutlet weak var signUpStackView: UIStackView!
    @IBOutlet weak var buttonStackView: UIStackView!
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        email.isHidden = true
        email.alpha = 0
        password.isHidden = true
        password.alpha = 0
        // Do any additional setup after loading the view.
        loginButton.layer.cornerRadius = 4
        signUpButton.layer.cornerRadius = 4
    }
    
    @IBAction func loginButton(_ sender: Any) {
        (sender as? UIButton)?.isEnabled = false
        UIView.animateKeyframes(withDuration: 2, delay: 0, options: [.calculationModeCubic], animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1.0/4.0, animations: {
                self.signUpStackView.alpha = 0.0
            })
            UIView.addKeyframe(withRelativeStartTime: 1.0/4.0, relativeDuration: 1.0/4.0, animations: {
                self.signUpStackView.isHidden = true
                self.buttonStackView.layoutIfNeeded()
            })
            
            UIView.addKeyframe(withRelativeStartTime: 2.0/4.0, relativeDuration: 1.0/4.0, animations: {
                self.email.isHidden = false
                self.email.alpha = 1.0
            })
            
            UIView.addKeyframe(withRelativeStartTime: 3.0/4.0, relativeDuration: 1.0/4.0, animations: {
                self.password.isHidden = false
                self.password.alpha = 1
            })
            
            
        }, completion: {_ in print("Done")}
    )
    }

    @IBAction func signUpButton(_ sender: Any) {
        (sender as? UIButton)?.isEnabled = false
        UIView.animateKeyframes(withDuration: 2, delay: 0, options: [.calculationModeCubic], animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.5/4.0, animations: {
                self.loginStackView.alpha = 0
                self.view.layoutIfNeeded()
            })
            
            UIView.addKeyframe(withRelativeStartTime: 1.0/4.0, relativeDuration: 0.5/4.0, animations: {
                self.loginStackView.isHidden = true
                self.view.layoutIfNeeded()
            })
            
            
            UIView.addKeyframe(withRelativeStartTime: 2.0/4.0, relativeDuration: 1.5/4.0, animations: {
                self.email.isHidden = false
                self.email.alpha = 1.0
            })
            
            UIView.addKeyframe(withRelativeStartTime: 3.0/4.0, relativeDuration: 1.5/4.0, animations: {
                self.password.isHidden = false
                self.password.alpha = 1
            })
        }, completion: {_ in print("Done")}
        )
        
    }
    
}

