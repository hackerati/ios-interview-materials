//
//  ViewController.swift
//  HackeratiInterviewSwift
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    let data = DummyData.dataForTables()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let rowData = data[indexPath.row]
        let comment = rowData["comment"]!
        let urlString = rowData["url"]!
        
        let url = NSURL(string: urlString)!
        let imageData = NSData(contentsOfURL: url)!
        let image = UIImage(data: imageData)!
        
        let cell = TableViewCell(style: .Default, reuseIdentifier: "Cell")
        cell.setUpWithImage(image, comment: comment)
        return cell;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }


}

