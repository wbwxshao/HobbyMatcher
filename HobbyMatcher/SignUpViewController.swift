//
//  SignUpViewController.swift
//  HobbyMatcher
//
//  Created by godlikeMini on 3/14/19.
//  Copyright © 2019 godlikeMini. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var ActivationButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func SendActivation(_ sender: Any) {
        let alert = UIAlertController(title: "Sent!", message: "We have sent you an activation code. Please check your email.", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
