//
//  AddThoughtVC.swift
//  RNDM
//
//  Created by YOSUKE on 2019/05/19.
//  Copyright © 2019 YOSUKE. All rights reserved.
//

import UIKit

class AddThoughtVC: UIViewController, UITextViewDelegate {

    @IBOutlet weak var segmentCategory:UISegmentedControl!
    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var thoughtText: UITextView!
    @IBOutlet weak var postBtn:UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        postBtn.layer.cornerRadius = 4
        thoughtText.layer.cornerRadius = 4
        thoughtText.text = "My random thought..."
        thoughtText.textColor = UIColor.lightGray
        thoughtText.delegate = self
        
    }
    
    @IBAction func postBtnTapped(_ sender: Any) {
        
    }
    
    @IBAction func categoryChanged(_ sender: Any) {
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = ""
        textView.textColor = UIColor.lightGray
    }
}
