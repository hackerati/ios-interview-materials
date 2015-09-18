//
//  TableViewCell.swift
//  HackeratiInterviewSwift
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var commentLabel: UILabel!
    
    func setUpWithImage(image: UIImage, comment: String) {
        self.imageView?.image = image
        self.textLabel?.text = comment
    }
}
