//
//  TableViewCell.swift
//  onMap
//
//  Created by Marvellous Dirisu on 01/06/2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var mapIcon: UIImageView!
    @IBOutlet weak var firstName: UILabel!
    @IBOutlet weak var lastName: UILabel!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
