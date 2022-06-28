//
//  CommunityCell.swift
//  Vkontakte
//
//  Created by Nastya Kazakova on 27.06.22.
//

import UIKit

class CommunityCell: UITableViewCell {

    @IBOutlet weak var ImageCommunity: UIImageView!
    @IBOutlet weak var CommunityLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        ImageCommunity.layer.cornerRadius = ImageCommunity.bounds.width / 2
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
