//
//  OpenURLController.swift
//  test02
//
//  Created by Kxx.xxQ 一生相伴 on 16/4/9.
//  Copyright © 2016年 Asahi_Kuang. All rights reserved.
//

import UIKit

class OpenURLController: UIViewController
{
    
    var url: NSURL?

    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.whiteColor()
        openUrl(url!)
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func openUrl(url: NSURL)
    {
        let result = UIApplication.sharedApplication().canOpenURL(url)
        if result {
            print("yeah,can open url")
            UIApplication.sharedApplication().openURL(url)
        }
        else {
            print("can't open url")
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
