//
//  ActorcellTableViewCell.swift
//  Jsonparse
//
//  Created by vikas srivastava on 29/06/18.
//  Copyright © 2018 vikas srivastava. All rights reserved.
//

import UIKit

class ActorcellTableViewCell: UITableViewCell {

    @IBOutlet weak var actorDescription: UILabel!
    @IBOutlet weak var actorCountry: UILabel!
    @IBOutlet weak var actorName: UILabel!
    @IBOutlet weak var actorImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
