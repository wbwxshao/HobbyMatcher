//
//  SignUpDetailViewController.swift
//  HobbyMatcher
//
//  Created by godlikeMini on 3/15/19.
//  Copyright © 2019 godlikeMini. All rights reserved.
//

import UIKit

class SignUpDetailViewController: UIViewController {

    @IBOutlet weak var ChooseDate: UITextField!
    let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showDatePicker()
        // Do any additional setup after loading the view.
    }
    
    func showDatePicker(){
        //Formate Date
        datePicker.datePickerMode = .date
        
        //ToolBar
        let toolbar = UIToolbar();
        toolbar.sizeToFit()
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(donedatePicker));
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelDatePicker));
        
        toolbar.setItems([doneButton,spaceButton,cancelButton], animated: false)
        
        ChooseDate.inputAccessoryView = toolbar
        ChooseDate.inputView = datePicker
        
    }
    
    @objc func donedatePicker(){
        
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        ChooseDate.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    
    @objc func cancelDatePicker(){
        self.view.endEditing(true)
    }
}


