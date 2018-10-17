//
//  ViewController.swift
//  tabheight
//
//  Created by AFFIXUS IMAC1 on 9/6/18.
//  Copyright © 2018 AFFIXUS IMAC1. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var tblHeighConst: NSLayoutConstraint!
    @IBOutlet weak var vwConstant: NSLayoutConstraint!
    
    
    var names = ["Neymar", "Messi", "Salah", "Lukaku", "Modric", "Cavani", "Benzema", "Pogba", "Benzema", "Pogba", "Messi", "Salah", "Lukaku", "Modric", "Cavani", "Benzema", "Pogba", "Benzema", "Pogba"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.reloadData()
        
        tblHeighConst.constant =  CGFloat(names.count * 80)
        vwConstant.constant = CGFloat(names.count * 80) + 100
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Cell1
        cell.lbl1.text = names[indexPath.row]
        cell.lbl2.text = names[indexPath.row]
        return cell
    }


}

