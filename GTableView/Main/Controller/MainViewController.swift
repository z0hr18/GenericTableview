//
//  ViewController.swift
//  GTableView
//
//  Created by Nahit Habibov on 04.09.25.
//

import UIKit

class MainViewController: UIViewController {
    
    private var users: [Users] = [
        Users(name: "Hasan", age: 23),
        Users(name: "Aysu", age: 22),
        Users(name: "Orxan", age: 33)
    ]
    
    private var tablView: MainTableView = {
       let view = MainTableView()
        view.rowHeight = 70
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        tablView.createData(items: users)
        
        view.addSubview(tablView)
        tablView.frame = view.frame
    }
}

