//
//  TVC_Row.swift
//  Custom Cell Xib
//
//  Created by Alperen Çerkez on 8.11.2024.
//

import UIKit

class TVC_Row: UITableViewCell {

    @IBOutlet weak var lblText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
