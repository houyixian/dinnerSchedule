//
//  ViewController.swift
//  dinnerSchedule
//
//  Created by 侯逸仙 on 2018/5/15.
//  Copyright © 2018 侯逸仙. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {


    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

//        guard let url = URL.init(string: "https://m.baidu.com/?from=844b&vit=fps") else {
//            return
//        }
        guard let url = URL.init(string: "http://newlife.newaircloud.com:8087/amucsite/act/applyApp.jsp?actid=100&tc=uc&from=singlemessage&isappinstalled=0") else {
            return
        }
        let urlRequest = URLRequest.init(url: url)
        
        webView.loadRequest(urlRequest)
        webView.reload()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

