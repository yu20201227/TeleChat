//
//  IndicatorView.swift
//  TeleChat
//
//  Created by Owner on 2020/11/09.
//

import Foundation
import UIKit
import ViewAnimator


    
class IndicatorViewController:UIViewController {
    
    var indicator = UIActivityIndicatorView()
    
    func IndicatorAnimation(){
    
    indicator.center = view.center
    indicator.style = .medium
    indicator.color = UIColor(red: 225/225, green: 0/255, blue: 0/255, alpha: 1)
    view.addSubview(indicator)
    
        
    }
    
    
}

