//
//  ViewController.swift
//  TeleChat
//
//  Created by Owner on 2020/11/06.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "3")
        imageView.backgroundColor = .darkGray
        
        showAnimation()
      

        
    }
    
    func showAnimation(){
        
        let path = Bundle.main.path(forResource: "1", ofType: "json")
        
        let animationView = AnimationView(filePath: path!)
       // animationView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height)
        animationView.center = self.view.center
        animationView.loopMode = .loop
        animationView.contentMode = .scaleAspectFit
        animationView.animationSpeed = 1
        
        view.addSubview(animationView)
        animationView.play()
        
        
    }


}

