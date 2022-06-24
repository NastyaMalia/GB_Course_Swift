//
//  ViewController.swift
//  Vkontakte
//
//  Created by Nastya Kazakova on 15.06.22.
//

import UIKit

class LogInConroller: UIViewController {

    @IBOutlet weak var textLogIn: UITextField!
    
    @IBOutlet weak var textPasword: UITextField!
    
    @IBOutlet weak var imgLogo: UIImageView!
    
    @IBOutlet weak var logInScrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       navigationController?.setNavigationBarHidden(true, animated: false)

    }

    
    @IBAction func logInButton(_ sender: Any) {

        
        guard let login = textLogIn.text,
              let password = textPasword.text,
              login == "",
              password == "" else {show(message: "Error password/login")
                  return}

        performSegue(withIdentifier: "Login", sender: nil)

    }
    
}

