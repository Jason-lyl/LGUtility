//
//  MyTabBarViewController.swift
//  Bonday
//
//  Created by bonday012 on 2017/5/17.
//  Copyright © 2017年 bonday012. All rights reserved.
//

import UIKit

class MyTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let tabBar = UITabBar.appearance()
        tabBar.tintColor = UIColorWithRGBA(r: 245, g: 90, b: 93, a: 1)
        addChildViewControllers()

        // Do any additional setup after loading the view.
    }
    
    /**
     * 添加子控制器
     */
    private func addChildViewControllers() {
        addChildViewController(childController: CourseViewController(), title: "开课", imageName: "tabbar_shouye")
        addChildViewController(childController: AskQuestionViewController(), title: "提问", imageName: "tabbar_wenda")
        addChildViewController(childController: ApplyViewController(), title: "申请", imageName: "tabbar_application")
        addChildViewController(childController: ActivityViewController(), title: "活动", imageName: "tabbar_pingdao")
        addChildViewController(childController: MeViewController(), title: "我的", imageName: "tabbar_More")
    }

    /**
     # 初始化子控制器
     
     - parameter childControllerName: 需要初始化的控制器
     - parameter title:               标题
     - parameter imageName:           图片名称
     */
    private func addChildViewController(childController: UIViewController, title: String, imageName: String) {
        childController.tabBarItem.image = UIImage(named: imageName)
        childController.tabBarItem.selectedImage = UIImage(named: imageName + "_hl")
        childController.title = title
        let navC = MyNavigationViewController(rootViewController: childController)
        addChildViewController(navC)
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
