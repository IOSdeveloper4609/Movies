//
//  CustomCell.swift
//  Movies
//
//  Created by Азат Киракосян on 01.01.2021.
//

import UIKit

// MARK: - CustomCell

class CustomCell: UITableViewCell {
    
    // MARK: - Private properties
    
    private var starImageView = UIImageView()
    private var avatarImageView = UIImageView()
    private let descriptionLabel = UILabel()
    private let titleLabel = UILabel()
    private let rateLabel = UILabel()
    private let realisLabel = UILabel()
    
    
    // MARK: - Override methods
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Public methods
    
    func setupWithModel(model: Movie) {
        avatarImageView.image = model.avatarImage
        starImageView.image = model.starImage
        descriptionLabel.text = model.descreptionMovie
        titleLabel.text = model.titleMovie
        rateLabel.text = model.rateMovie
        realisLabel.text = model.relisMovie
    }
}


// MARK: - CustomCell

extension CustomCell {
    
    // MARK: - Private methods
    
    private func setupViews() {
        
        addViews()
        setupLayout()
        setupLabels()
        setupAutoresizingMask()
        setupImageView()
    }
    
    private func addViews() {
        contentView.addSubview(avatarImageView)
        contentView.addSubview(starImageView)
        contentView.addSubview(descriptionLabel)
        contentView.addSubview(titleLabel)
        contentView.addSubview(rateLabel)
        contentView.addSubview(realisLabel)
    }
    
    private func setupAutoresizingMask() {
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        rateLabel.translatesAutoresizingMaskIntoConstraints = false
        realisLabel.translatesAutoresizingMaskIntoConstraints = false
        starImageView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setupLabels() {
        titleLabel.font = titleLabel.font.withSize(23)
        titleLabel.shadowColor = .lightGray
        titleLabel.shadowOffset = CGSize(width: -1.5, height: -1.5)
        titleLabel.textColor = .black
        
        descriptionLabel.font = descriptionLabel.font.withSize(15)
        descriptionLabel.numberOfLines = 5
        
        realisLabel.font = realisLabel.font.withSize(15)
        realisLabel.shadowColor = .lightGray
        realisLabel.shadowOffset = CGSize(width: -1, height: -1)
        realisLabel.textColor = .black
    }
    
    private func setupImageView() {
        avatarImageView.contentMode = .scaleToFill
        starImageView.contentMode = .scaleAspectFit
        
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            avatarImageView.widthAnchor.constraint(equalToConstant: 100),
            avatarImageView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 5),
            avatarImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            avatarImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5)
        ])
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            titleLabel.leftAnchor.constraint(equalTo: avatarImageView.leftAnchor, constant:  105),
            titleLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -50)
        ])
        
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 35 ),
            descriptionLabel.leftAnchor.constraint(equalTo: avatarImageView.leftAnchor, constant: 110),
            descriptionLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            rateLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 20),
            rateLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            starImageView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 17),
            starImageView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -60),
            starImageView.heightAnchor.constraint(equalToConstant: 25)
        ])
        
        NSLayoutConstraint.activate([
            realisLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 20),
            realisLabel.leftAnchor.constraint(equalTo: avatarImageView.leftAnchor, constant: 110),
            realisLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -100)
        ])
        
    }
}
