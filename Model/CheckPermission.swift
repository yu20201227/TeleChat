//
//  CheckPermission.swift
//  TeleChat
//
//  Created by Owner on 2020/11/06.
//

import Foundation
import Photos

class CheckPermission{
    
    
    func showCheckPermission(){
        PHPhotoLibrary.requestAuthorization { (status) in
            
            switch (status){
            
            case .authorized:
                print("許可されています")
            case .denied:
                print("拒否されました")
            case .notDetermined:
                print("notDetermined")
            case .restricted:
                print("restricted")
            case .limited:
                print("limited")
            default:
                break
            }
        }
    }
    
    
    
}
