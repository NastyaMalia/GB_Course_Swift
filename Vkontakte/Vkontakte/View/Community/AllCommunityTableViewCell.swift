//
//  AllCityTableViewCell.swift
//  Vkontakte
//
//  Created by Nastya Kazakova on 28.06.22.
//

import UIKit

class AllCommunityTableViewCell: UITableViewCell {

    
    @IBOutlet weak var AllCommynityImage: UIImageView!
    
    @IBOutlet weak var AllCommunityName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
