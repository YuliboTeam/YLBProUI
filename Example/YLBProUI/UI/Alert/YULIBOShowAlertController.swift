//
//  YULIBOShowAlertController.swift
//  YLBProUI_Example
//
//  Created by yulibo on 2020/4/14.
//  Copyright © 2020 余礼钵. All rights reserved.
//

import UIKit

class YULIBOShowAlertController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.white;
        setupSubviews();
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func setupSubviews() {
        let topButton = UIButton.init();
        topButton.frame = CGRect(x: 0, y: 0, width: 100, height: 50);
        topButton.center = CGPoint(x: self.view.frame.size.width/2.0, y: self.view.frame.size.height/2.0);
        topButton.setTitle("hello", for: .normal);
        topButton.setTitleColor(UIColor.cyan, for: .normal);
        self.view.addSubview(topButton);
    }

}
