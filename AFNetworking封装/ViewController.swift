//
//  ViewController.swift
//  AFNetworking封装
//
//  Created by weiguang on 2017/3/5.
//  Copyright © 2017年 weiguang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
       
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       
        // 测试网络返回情况可以用这个地址 http://httpbin.org
        NetworkTools.shareInstance.request(methodType: .GET, urlString: "http://httpbin.org/get", parameters: ["name":"why", "age":18]) { (result, error) in
            if error != nil {
                print(error!)
                return
            }
            
            print(result!)
        }
  
        // 访问mac自带的服务器地址
//        NetworkTools.shareInstance.request(methodType: .GET, urlString: "http://127.0.0.1/test", parameters: ["name":"why"]) { (result, error) in
//            
//            if error != nil {
//                print(error!)
//                return
//            }
//            
//            print(result!)
//        }
        
    }

}

