//
//  TrailerViewController.swift
//  Movies
//
//  Created by Азат Киракосян on 01.01.2021.
//

import UIKit
import WebKit

// MARK: - TrailerViewController

class TrailerViewController: UIViewController,WKUIDelegate {
    
    // MARK: - Private properties
    
    private var webView = WKWebView()
    private var movie: Movie
    private var url: String?
    
    // MARK: - init methods
    
    init(movie: Movie) {
        self.movie = movie
        super.init(nibName: nil, bundle: nil)
        
        url = movie.trailerMovie
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Override methods
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationItem.title =  movie.titleMovie
        guard let myURL = URL(string: url ?? "")  else { return }
        let myRequest = URLRequest(url: myURL)
        webView.load(myRequest)
        
    }
    
}
