//
//  HIEventCell.swift
//  HackIllinois
//
//  Created by Rauhul Varma on 11/21/17.
//  Copyright © 2017 HackIllinois. All rights reserved.
//

import Foundation
import UIKit

class HIEventCell: UITableViewCell {

    static let IDENTIFIER = "HIEventCell"

    private var detailDisclosureImage = UIImage(named: "DisclosureIndicator")

    @IBOutlet weak var favoritedButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var locationsStackView: UIStackView!


    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        accessoryView = UIImageView(image: detailDisclosureImage)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        accessoryView = UIImageView(image: detailDisclosureImage)
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        titleLabel.text = nil
        locationsStackView.arrangedSubviews.forEach { (view) in
            if view != titleLabel {
                locationsStackView.removeArrangedSubview(view)
            }
        }
    }

    static func <- (lhs: HIEventCell, rhs: Event) {
        lhs.titleLabel.text = rhs.name
        rhs.locations.forEach { (location) in
            if let location = location as? Location {
                let label = UILabel()
                label.text = location.name
            }
        }
    }

}