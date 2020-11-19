//
//  MessageCell.swift
//  TeleChat
//
//  Created by Owner on 2020/11/07.
//

import UIKit

class MessageCell: UITableViewCell {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var label: UILabel!
    
    
    //viewdidload
    override func awakeFromNib() {
        super.awakeFromNib()
        
        rightImageView.layer.cornerRadius = 25.0
        leftImageView.layer.cornerRadius = 25.0
        backView.layer.cornerRadius = 17.0
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
