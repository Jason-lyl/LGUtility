//
//  BaseViewController.swift
//  Bonday
//
//  Created by bonday012 on 2017/5/17.
//  Copyright © 2017年 bonday012. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
        if (UserDefaults.standard.string(forKey: "token") != nil) {
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
      view.backgroundColor = UIColor.white
        
        
        // Do any additional setup after loading the view.
    }

    func getTheVipAuthAndVipFlag() {
//        if UserDefaults.standard.string(forKey: ) {
//            <#code#>
//        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
