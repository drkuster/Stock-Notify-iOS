//
//  WatchListViewController.swift
//  Stock Notifications
//
//  Created by Dylan Kuster on 1/4/21.
//

import UIKit

class WatchListViewController: UIViewController {

    @IBOutlet weak var watchListTable: UITableView!
    
    let sampleData = ["ABC", "DEF", "GHI"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        watchListTable.delegate = self
        watchListTable.dataSource = self
        // fetch user stocks
    }

}

extension WatchListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sampleData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = watchListTable.dequeueReusableCell(withIdentifier: K.watchTableCellID)!
        cell.textLabel?.text = sampleData[indexPath.row]
        return cell
    }
    
}
