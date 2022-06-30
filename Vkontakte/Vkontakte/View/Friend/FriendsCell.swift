//
//  FriendsTableViewCell.swift
//  Vkontakte
//
//  Created by Nastya Kazakova on 27.06.22.
//

import UIKit

class FriendsCell: UITableViewCell {
    
    @IBOutlet weak var ImageFriends: UIImageView!
    @IBOutlet weak var LabelFriends: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        ImageFriends.layer.cornerRadius = ImageFriends.bounds.width / 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
 

