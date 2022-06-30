//
//  Friends.swift
//  Vkontakte
//
//  Created by Nastya Kazakova on 27.06.22.
//

import Foundation
import UIKit

struct Friend {
    let name: String
    let image: UIImage?
    
    let photos: [ProfilePhoto]
    
}

struct ProfilePhoto {
    
    let image: UIImage?
}


let monkeyprofilePhpto = [
    ProfilePhoto(image: UIImage(named: "monkey")),
    ProfilePhoto(image: UIImage(named: "monkey2")),
    ProfilePhoto(image: UIImage(named: "monkey3")),
    ProfilePhoto(image: UIImage(named: "monkey4")),
    ProfilePhoto(image: UIImage(named: "monkey5")),
    ProfilePhoto(image: UIImage(named: "monkey6")),
    ProfilePhoto(image: UIImage(named: "monkey7")),
    ProfilePhoto(image: UIImage(named: "monkey8")),
    ProfilePhoto(image: UIImage(named: "monkey9")),
]

let chikenprofilePhpto = [
    ProfilePhoto(image: UIImage(named: "chiken")),
    ProfilePhoto(image: UIImage(named: "chiken2")),
    ProfilePhoto(image: UIImage(named: "chiken3")),
]


//class Friends {
//    let name: String
//    let image: UIImage?
//
//    init(name: String, image: UIImage? = nil){
//        self.name = name
//        self.image = image
//
//    }
//
//}
