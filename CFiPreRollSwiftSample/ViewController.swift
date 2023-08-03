//
//  ViewController.swift
//  CFiPreRollSwiftSample
//
//  Created by Charles on 2017/9/12.
//  Copyright © 2017年 clickforce. All rights reserved.
//

import UIKit
import iMFAD

class ViewController: UIViewController {
    
    @IBOutlet var prerollView: UIView!
    var preroll:MFPreRollView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        preroll = MFPreRollView.init(frame: self.prerollView.frame);
        preroll?.getView(self);
        preroll?.setPreRollZoneID("4397");
        preroll?.delegate = self;
        preroll?.setPreRollPlayer();
        self.view.addSubview(preroll!);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController:MFPreRollDelegate{
    
    func readyPlayVideo() {
        
        print("PreRoll廣告結束，可進行後續動作...");
    }
    func onFailedToVast() {
        print("PreRoll廣告失敗")
    }
}
