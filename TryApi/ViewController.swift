//
//  ViewController.swift
//  TryApi
//
//  Created by konomi_ban on 2017/03/08.
//  Copyright © 2017年 jote. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let volumes = Volumes()
        volumes.get(query: "花")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

