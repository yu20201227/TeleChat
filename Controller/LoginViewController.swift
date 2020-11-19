//
//  LoginViewController.swift
//  TeleChat
//
//  Created by Owner on 2020/11/08.
//

import UIKit
import FirebaseAuth
import Firebase
import FirebaseStorage

class LoginViewController: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate{
    
    @IBOutlet weak var personImage: UIImageView!
    @IBOutlet weak var loginPassText:UITextField?
    @IBOutlet weak var loginEmailText:UITextField?
    @IBOutlet weak var backImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.delegate = self
        
        backImageView.image = UIImage(named: "1")
        backImageView.contentMode = .scaleAspectFill
        
        

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        loginPassText?.resignFirstResponder()
        loginEmailText?.resignFirstResponder()
    }
    
    
    @IBAction func loginButton(_ sender:Any){
        
        Auth.auth().signIn(withEmail: loginEmailText!.text!, password: loginPassText!.text!) { (user, error) in
            
            if error != nil{
                print(error.debugDescription)
                return
            }
            else{
                print("login succeed")
                self.performSegue(withIdentifier: "chat", sender: nil)
                
                
                
            }
            
        

        }
        
}
}
