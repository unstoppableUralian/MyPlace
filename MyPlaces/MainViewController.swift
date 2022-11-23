//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Русинов Евгений on 23.11.2022.
//

import UIKit

class MainViewController: UITableViewController {
    
    let mallNames = ["Alatyr", "Karnaval", "Fun-Fun",
                     "Grinvich", "Passage", "Rainbow-Park",
                     "Mega", "Park-House", "Omega","Dirigible", "Botanika-Mall",
                     "Veer", "Megapolis", "Whale", "Garnet"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mallNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = mallNames[indexPath.row]
        cell.imageView?.image = UIImage(named: mallNames[indexPath.row])
        return cell
    }


    // MARK: - Navigation
    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
