//
//  TVC_Row.swift
//  Firebase
//
//  Created by Alperen Çerkez on 18.11.2024.
//

import UIKit

class TVC_Row: UITableViewCell {
    @IBOutlet weak var lblNameSurname: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
