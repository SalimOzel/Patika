//
//  PhotoTableViewCell.swift
//  Flickr Client App
//
//  Created by Salim Özel on 25.07.2023.
//

import UIKit

class PhotoTableViewCell: UITableViewCell {
    @IBOutlet var ownerImageView: UIImageView!
    @IBOutlet var ownerNameLabel: UILabel!
    @IBOutlet var photoImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        ownerImageView.layer.cornerRadius = 24.0
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
