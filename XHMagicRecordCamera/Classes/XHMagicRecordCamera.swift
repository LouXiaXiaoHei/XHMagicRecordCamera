//
//  XHMagicRecordCamera.swift
//  Pods
//
//  Created by 邓小涛 on 2017/7/5.
//
//

import Foundation
import AVFoundation

open class XHMagicRecordCamera {
    let camera:Camera;
    let renderView:RenderView;
    let basicOperation:BasicOperation;
    
    public init(sessionPreset:String,showView:UIView) {
        camera = try! Camera.init(sessionPreset: sessionPreset, cameraDevice: nil, location: .backFacing, captureAsYUV: true);
        basicOperation = Halftone();
        renderView = RenderView(frame:showView.bounds);
        showView.addSubview(renderView)
        camera-->basicOperation-->renderView;
    }
    
    public func startCapture(){
        camera.startCapture();
    }
    
    public func stopCapture(){
        camera.stopCapture();
    }
}
