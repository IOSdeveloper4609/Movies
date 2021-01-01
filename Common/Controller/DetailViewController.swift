//
//  DetailViewController.swift
//  Movies
//
//  Created by Азат Киракосян on 01.01.2021.
//

import UIKit

// MARK: - DetailViewController

class DetailViewController: UIViewController {

// MARK: - Public properties

let myImageView = UIImageView()
let starImageView = UIImageView()
var titleLabel = UILabel()
var descriptionLabel = UILabel()
var rateLabel = UILabel()
var relisLabel = UILabel()
let myButton = UIButton()
let movie: Movie

init(movie: Movie) {
    self.movie = movie
    
    super.init(nibName: nil, bundle: nil)
    
    myImageView.image = movie.avatarImage
    titleLabel.text = movie.titleMovie
    descriptionLabel.text = movie.descreptionMovie
    rateLabel.text = movie.rateMovie
    relisLabel.text = movie.relisMovie
    starImageView.image = movie.starImage
}

required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
}

// MARK: - Override methods

override func viewDidLoad() {
    super.viewDidLoad()
    
    methodImage()
    createTitleLabel()
    createDescriptionLabel()
    view.backgroundColor = .white
    createStarImageView()
    createRelisLabel()
    createRateLabel()
    setupLayout()
    setupAutoresizingMask()
    urlButton()
    setupNavController()
}

// MARK: - Private methods

private func setupNavController() {
    navigationController?.navigationBar.prefersLargeTitles = false
    navigationItem.title = "Описание"
}

private func urlButton() {
    myButton.translatesAutoresizingMaskIntoConstraints = false
    myButton.setTitle("Перейти", for: .normal)
    myButton.setTitleColor(.white, for: .normal)
    myButton.backgroundColor = .systemBlue
    myButton.layer.cornerRadius = 15
    myButton.layer.masksToBounds = true
    myButton.addTarget(self, action: #selector(urlTransition(sender:)), for: .touchUpInside)
    view.addSubview(myButton)
    
    NSLayoutConstraint.activate([
        myButton.topAnchor.constraint(equalTo: relisLabel.bottomAnchor, constant: 35),
        myButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        myButton.heightAnchor.constraint(equalToConstant: 35),
        myButton.widthAnchor.constraint(equalToConstant: 150)
    ])
}
    
private func createStarImageView() {
    starImageView.contentMode = .scaleAspectFit
    self.view.addSubview(starImageView)
    
}

private func createRelisLabel() {
    relisLabel.font = relisLabel.font.withSize(20)
    relisLabel.numberOfLines = 0
    relisLabel.textColor = .red
    self.view.addSubview(relisLabel)
    
}

private func createRateLabel() {
    rateLabel.font = rateLabel.font.withSize(20)
    rateLabel.numberOfLines = 0
    rateLabel.textColor = .black
    self.view.addSubview(rateLabel)
}

private func createDescriptionLabel() {
    descriptionLabel.font = descriptionLabel.font.withSize(15)
    descriptionLabel.numberOfLines = 0
    self.view.addSubview(descriptionLabel)
}

private func createTitleLabel() {
    titleLabel.font = titleLabel.font.withSize(30)
    titleLabel.shadowColor = .lightGray
    titleLabel.shadowOffset = CGSize(width: -2, height: -2)
    titleLabel.textColor = .black
    self.view.addSubview(titleLabel)
}

private func methodImage() {
    myImageView.contentMode = .scaleAspectFit
    self.view.addSubview(myImageView)
}

// MARK: - Selectors

@objc func urlTransition(sender: UIButton) {
  let trailerVC = TrailerViewController(movie: movie)
    navigationController?.pushViewController(trailerVC, animated: true)
}
}


// MARK: - DetailViewController

extension DetailViewController {

// MARK: - Private methods

private func setupAutoresizingMask() {
    myImageView.translatesAutoresizingMaskIntoConstraints = false
    titleLabel.translatesAutoresizingMaskIntoConstraints = false
    descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
    rateLabel.translatesAutoresizingMaskIntoConstraints = false
    relisLabel.translatesAutoresizingMaskIntoConstraints = false
    starImageView.translatesAutoresizingMaskIntoConstraints = false
}

private func setupLayout() {
    
    NSLayoutConstraint.activate([
        starImageView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 13),
        starImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 250),
        starImageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30),
        starImageView.heightAnchor.constraint(equalToConstant: 25)
    ])
    
    
    NSLayoutConstraint.activate([
        relisLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 15),
        relisLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
        relisLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -200)
        
    ])
    
 
    NSLayoutConstraint.activate([
        rateLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 15),
        rateLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 340),
        rateLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10)
        
    ])
    
    
    NSLayoutConstraint.activate([
        descriptionLabel.topAnchor.constraint(equalTo: myImageView.bottomAnchor, constant: 15),
        descriptionLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
        descriptionLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20)
    ])
    
 
    NSLayoutConstraint.activate([
        titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        
    ])
    
    NSLayoutConstraint.activate([
        myImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
        myImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
        myImageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30),
        myImageView.heightAnchor.constraint(equalToConstant: 300)
        
    ])
    
}
}
