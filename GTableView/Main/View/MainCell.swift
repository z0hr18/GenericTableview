//
//  MainCell.swift
//  GTableView
//
//  Created by Nahit Habibov on 04.09.25.
//

import UIKit

final class MainCell: BaseCell<Users> {
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let ageLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    override func setupView() {
        super.setupView()
        
        contentView.addSubview(nameLabel)
        contentView.addSubview(ageLabel)
        
        NSLayoutConstraint.activate([
            
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            nameLabel.heightAnchor.constraint(equalToConstant: 20),
            
            ageLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            ageLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            ageLabel.heightAnchor.constraint(equalToConstant: 16)
        ])
    }
    
    override func config(item: Users) {
        nameLabel.text = item.name
        ageLabel.text = "\(item.age)"
    }
}
