//
//  FrienfProfileCollectionViewCell.swift
//  Vkontakte
//
//  Created by Nastya Kazakova on 27.06.22.
//

import UIKit

class FriendProfileCollectionViewCell: UICollectionViewCell {
   
    
    @IBOutlet weak var ProfilePhoto: UIImageView!
    @IBOutlet var likeControl: LikeControl!
    @IBOutlet var container: UIView!
    
    override func awakeFromNib() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(hendleTap))
        tap.numberOfTapsRequired = 2
        container.addGestureRecognizer(tap)
        
    }
    
    @objc func hendleTap (_: UITapGestureRecognizer){
        likeControl.isLike.toggle()
        
        if likeControl.isLike {
            likeControl.likePicture.image = UIImage(systemName: "suit.heart.fill")
        } else {
            likeControl.likePicture.image = UIImage(systemName: "heart")
        }
    }
    
}
