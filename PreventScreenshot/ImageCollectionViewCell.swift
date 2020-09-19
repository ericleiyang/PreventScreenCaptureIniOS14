//
//  ImageCollectionViewCell.swift
//  PreventScreenshot
//
//  Created by Eric Yang on 19/9/20.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    let imageView = UIImageView()
    private var image: UIImage!

    static let reuseIdentifier = "image-cell-reuse-identifier"

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }

    required init?(coder: NSCoder) {
        fatalError("not implemnted")
    }

    func setupUI() {
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(imageView)
        let inset = CGFloat(10)
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: inset),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -inset),
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: inset),
            imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -inset)
        ])
    }
}

extension ImageCollectionViewCell {
    func configure(image: UIImage) {
        self.image = image
        imageView.image = image
    }
}

