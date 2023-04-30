//
//  MyCollectionViewCell.swift
//  Compositional3
//
//  Created by Дмитрий Лоренц on 28.04.2023.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    static let id = "MyCollectionViewCell"
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        let images: [UIImage] = [
        UIImage(named: "Image1"),
        UIImage(named: "Image2"),
        UIImage(named: "Image3"),
        UIImage(named: "Image4"),
        UIImage(named: "Image5"),
        UIImage(named: "Image6")
        ].compactMap({$0})
        imageView.image = images.randomElement()
        contentView.clipsToBounds = true
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.systemRed.cgColor
        imageView.layer.cornerRadius = 10
        self.layer.cornerRadius = 10
        self.contentView.clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
    }
}
