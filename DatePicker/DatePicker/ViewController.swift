//
//  ViewController.swift
//  DatePicker
//
//  Created by 後F on 2016/10/24.
//  Copyright © 2016年 後F. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var showBirthDayLabel: UILabel!

    let formatter = DateFormatter()
    
    @IBAction func chooseBirthday(_ sender: UIDatePicker) {
        
        formatter.dateFormat = "yyyy/MM/dd" //ex: 2016/10/26
        
        showBirthDayLabel.text = formatter.string(from: sender.date)

    }
    
    
    @IBAction func attack(_ sender: UIButton) {
        
        if showBirthDayLabel.text == "2016/10/10"{
            
            //結果為true，即showBirthDayLabel上文字為2016/10/10
            showBirthDayLabel.text = "啊～時間怪獸被擊敗了！"
            
        }else{
         
            //結果為false，即showBirthDayLabel上文字不為2016/10/10
            showBirthDayLabel.text = "哈哈～再攻擊一次！"
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

