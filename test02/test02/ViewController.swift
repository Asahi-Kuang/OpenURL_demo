//
//  ViewController.swift
//  test02
//
//  Created by Kxx.xxQ 一生相伴 on 16/4/9.
//  Copyright © 2016年 Asahi_Kuang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    let identifier: String = "cellIdentifier"
    var itemTableView: UITableView?
    let items: Array<String> = ["OpenURL ---> Telephone", "OpenURL ---> SMS", "OpenURL ---> Mail",
                                "OpenURL ---> Safari", "OpenURL ---> AppStroe", "OpenURL ---> Map",
                                "OpenURL ---> Music", "OpenURL ---> Setting", "OpenURL ---> 新的应用"]
    let openURLHandleUrls: Array<String> = ["telprompt://18780267225", "sms://18780267225", "mailto://asahikuang@yahoo.com",
                                            "https://www.baidu.com", "itms-apps://itunes.apple.com/cn/app/id414478124?mt=8",
                                            "http://map.baidu.com", "music://", "prefs:root=WIFI", "MyURLSchemes://"]
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setUpTableView()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setUpTableView()
    {
        itemTableView = UITableView.init(frame: self.view.bounds, style: .Plain)
        itemTableView!.tableFooterView = UIView()
        itemTableView!.delegate = self
        itemTableView!.dataSource = self
        view.addSubview(itemTableView!)
    }
    
    // MARK: UITableViewDelegate && DataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return items.count }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier(identifier)
        if cell == nil {
            cell = UITableViewCell.init(style: .Default, reuseIdentifier: identifier)
        }
        return cell!
    }
    
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        cell.textLabel!.text = items[indexPath.row] as String
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        let urlDesString = openURLHandleUrls[indexPath.row]
        let openUrlVC = OpenURLController()
        openUrlVC.url = NSURL(string: urlDesString)
        navigationController!.pushViewController(openUrlVC, animated: true)
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat { return 55 }
}

