//
//  UILoginController + extention.swift
//  Vkontakte
//
//  Created by Nastya Kazakova on 24.06.22.
//

import Foundation
import UIKit


extension LogInConroller{
    
    func show(message: String){
        let alertVS = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default)
        
        alertVS.addAction(okAction)
        present(alertVS, animated: true)
        
    }
    
}
