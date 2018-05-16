//
//  ViewController.swift
//  UberEats
//
//  Created by CRM on 15/05/18.
//  Copyright © 2018 CRM. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let cellIdentifier = "cell"
    var mainTable:UITableView!
    var rows = 5
    let sizeCells:CGFloat = 300
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainTable = UITableView(frame: UIScreen.main.bounds)
        mainTable.delegate = self
        mainTable.dataSource = self
        mainTable.register( UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        
        self.view.addSubview(mainTable)
        self.view.backgroundColor = .white
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return sizeCells
    }
    
    
}

