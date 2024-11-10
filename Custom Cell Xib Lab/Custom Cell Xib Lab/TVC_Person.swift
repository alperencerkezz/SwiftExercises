//
//  TVC_Person.swift
//  Custom Cell Xib Lab
//
//  Created by Alperen Çerkez on 10.11.2024.
//

import UIKit

class TVC_Person: UITableViewCell {

    @IBOutlet weak var ivGender: UIImageView!
    @IBOutlet weak var lblNameSurname: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
