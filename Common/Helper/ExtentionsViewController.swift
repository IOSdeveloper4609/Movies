//
//  ExtentionsViewController.swift
//  Movies
//
//  Created by Азат Киракосян on 01.01.2021.
//

import  UIKit

// MARK: - UITableViewDataSours

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        Constants.models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Identifier, for: indexPath) as! CustomCell
        cell.setupWithModel(model: Constants.models[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = DetailViewController(movie: Constants.models[indexPath.row])
        navigationController?.pushViewController(detailVC, animated: true)
    
    }
}

// MARK: - UITableViewDelegate

extension ViewController: UITableViewDelegate { }



