//
//  LikeControl.swift
//  Vkontakte
//
//  Created by Nastya Kazakova on 30.06.22.
//

import UIKit

class LikeControl: UIControl {

    @IBOutlet var likePicture: UIImageView!
    var isLike: Bool = false
    
    override func awakeFromNib() {
        
        likePicture.backgroundColor = .clear
        likePicture.tintColor = .red
        
    }
}
