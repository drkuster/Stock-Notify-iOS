//
//  SearchViewController.swift
//  Stock Notifications
//
//  Created by Dylan Kuster on 1/4/21.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var searchListTable: UITableView!
    @IBOutlet weak var stockSearchBar: UISearchBar!
    
    let searchResults = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchListTable.delegate = self
        searchListTable.dataSource = self
    }

}

extension SearchViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchResults.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.searchTableCellID)!
        cell.textLabel?.text = searchResults[indexPath.row]
        return cell
    }
    
}

extension SearchViewController: UISearchBarDelegate {
    
    
    
}
