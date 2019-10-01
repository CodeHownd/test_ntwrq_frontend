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
    @IBOutlet weak var equalwidth: NSLayoutConstraint!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginLeading: NSLayoutConstraint!
    @IBOutlet weak var loginTop: NSLayoutConstraint!
    @IBOutlet weak var signupTrailing: NSLayoutConstraint!
    @IBOutlet weak var signupBassline: NSLayoutConstraint!
    
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
        UIButton.animateKeyframes(withDuration: 3, delay: 0, options: [.calculationModeCubic], animations: {
            
            UIButton.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1.0/4.0, animations: {
                self.signUpButton.alpha = 0.0
            })
            UIButton.addKeyframe(withRelativeStartTime: 1.0/4.0, relativeDuration: 1.0/4.0, animations: {
                self.equalwidth.isActive = false
                self.signupBassline.isActive = false
                self.signupTrailing.isActive = false
                self.signUpButton.isHidden = true
            })
            
            UIButton.addKeyframe(withRelativeStartTime: 2.0/4.0, relativeDuration: 1.0/4.0, animations: {                self.loginButton.widthAnchor.constraint(equalToConstant: self.view.frame.width - 20).isActive = true
                self.email.isHidden = false
                self.email.alpha = 1.0
            })
            
            UIButton.addKeyframe(withRelativeStartTime: 3.0/4.0, relativeDuration: 1.0/4.0, animations: {
                self.password.isHidden = false
                self.password.alpha = 1
            })
            
            
        }, completion: {_ in print("Done")}
    )
    }

    @IBAction func signUpButton(_ sender: Any) {
        (sender as? UIButton)?.isEnabled = false
        UIButton.animateKeyframes(withDuration: 3, delay: 0, options: [.calculationModeCubic], animations: {
            
            UIButton.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1.0/4.0, animations: {
                self.loginButton.alpha = 0
                self.
            })
            
            UIButton.addKeyframe(withRelativeStartTime: 1.0/4.0, relativeDuration: 1.0/4.0, animations: {
            })
        }, completion: {_ in print("Done")}
        )
        
    }
    
}

