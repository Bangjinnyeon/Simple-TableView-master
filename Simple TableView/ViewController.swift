//
//  ViewController.swift
//  Simple TableView
//dddd
//  Created by D7703_06 on 2018. 4. 30..
//  Copyright © 2018년 IceArrow. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var myTable: UITableView!
    var data = ["cat1","cat2","cat3","cat4","cat5"]
    var subdata = ["cat1","cat2","cat3","cat4","cat5"]
    var ani = ["cat.jpeg", "4.png", "aaaa.jpg", "ddd.jpg", "ssss.jpg"]
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.dataSource = self
        myTable.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
        //셀 갯수 지정
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let indentifier = "RE"
        //임시 저장소 셍성
        let cell = myTable.dequeueReusableCell(withIdentifier: indentifier, for: indexPath)
        
        cell.textLabel?.text = data[indexPath.row]
        cell.detailTextLabel?.text = subdata[indexPath.row]
        
        let myImg = UIImage(named:ani[indexPath.row])
        cell.imageView?.image = myImg
        //animals의 안에 있는 값을 텍스트에 출력
        return cell
    }

}

