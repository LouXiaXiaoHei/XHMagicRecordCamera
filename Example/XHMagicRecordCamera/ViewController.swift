//
//  ViewController.swift
//  XHMagicRecordCamera
//
//  Created by mr_supergift@163.com on 07/04/2017.
//  Copyright (c) 2017 mr_supergift@163.com. All rights reserved.
//

import UIKit
import XHMagicRecordCamera
import AVFoundation
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let cameraObj = XHMagicRecordCamera.init(sessionPreset: AVCaptureSessionPreset1280x720, showView: self.view);
        cameraObj.startCapture();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

