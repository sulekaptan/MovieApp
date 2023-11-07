//
//  ViewController.swift
//  MovieApp
//
//  Created by Şule Kaptan on 6.11.2023.
//

import UIKit

class HomepageVC: UIViewController {
    
    let navigationBar : UINavigationBar = {
       let navigationBar = UINavigationBar()
        navigationBar.translatesAutoresizingMaskIntoConstraints = false
        navigationBar.barTintColor = UIColor(named: "backgroundColor")
        navigationBar.tintColor = .black
        navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        navigationBar.isTranslucent = false
        return navigationBar
    }()
    
    let searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchBar.searchBarStyle = .minimal
        searchBar.searchTextField.backgroundColor = .white
        searchBar.placeholder = "Batman"
        searchBar.layer.cornerRadius = 100
        searchBar.searchTextField.backgroundColor = .white
        return searchBar
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    func setupViews(){
        view.backgroundColor = UIColor(named: "backgroundColor")
        addViews()

        NSLayoutConstraint.activate([
            navigationBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            navigationBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navigationBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            searchBar.topAnchor.constraint(equalTo: navigationBar.bottomAnchor, constant: 10),
            searchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            searchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
        ])
       
        
        let navigationItem = UINavigationItem(title: "Movie App")
        let bookmarks = UIBarButtonItem(barButtonSystemItem: .bookmarks, target: self, action: #selector(bookmarksButtonClicked))
        navigationItem.rightBarButtonItem = bookmarks
        navigationBar.setItems([navigationItem], animated: false)
        
    }
    
    func addViews() {
        view.addSubview(navigationBar)
        view.addSubview(searchBar)
    }
    
    @objc func bookmarksButtonClicked() {
       
    }

}
