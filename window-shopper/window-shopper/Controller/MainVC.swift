//
//  ViewController.swift
//  window-shopper
//
//  Created by ioannis giannakidis on 26/03/2018.
//  Copyright © 2018 ioannis giannakidis. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet var wageTxt: CurrencyTxtField!
    @IBOutlet var priceTxt: CurrencyTxtField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9991201723, green: 0.6713581466, blue: 0.08265561369, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for:.touchUpInside)
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
    }

    @objc func calculate() {
        print("we got here")
    }


}

