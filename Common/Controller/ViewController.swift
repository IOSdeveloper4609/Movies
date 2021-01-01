//
//  ViewController.swift
//  Movies
//
//  Created by Азат Киракосян on 01.01.2021.
//

import UIKit

// MARK: - ViewController

class ViewController: UIViewController {
    
    // MARK: - Public properties
    
    let Identifier = "MyTableViewCell"
    
    // MARK: - Private properties
    
    private let tableView = UITableView()
    
    // MARK: - Override methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greateTableView()
        setupNavController()
        view.backgroundColor = .white
    }
    
    // MARK: - Private methods
    
    private  func greateTableView() {
        tableView.rowHeight = 170
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(CustomCell.self, forCellReuseIdentifier: Identifier)
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
    }
    
    private func setupNavController() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Фильмы 2019"
    }
    
}


