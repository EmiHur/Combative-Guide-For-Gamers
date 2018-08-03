//
//  ViewController.swift
//  Combative Guide
//
//  Created by Girls Who Code on 7/27/18.
//  Copyright © 2018 Girls Who Code. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func Discord(_ sender: Any) {
        UIApplication.shared.open(URL (string: "https://discord.gg/BYz2qsn")! as URL, options: [:], completionHandler: nil)
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

