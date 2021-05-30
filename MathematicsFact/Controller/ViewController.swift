//
//  ViewController.swift
//  MathematicsFact
//
//  Created by Kevin Jonathan on 30/05/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mathematicsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mathematicsTableView.dataSource = self
        mathematicsTableView.register(UINib(nibName: "MathematicsTableViewCell", bundle: nil), forCellReuseIdentifier: "mathematicsCell")
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mathematicsTypes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "mathematicsCell", for: indexPath) as? MathematicsTableViewCell {
            let mathematicType = mathematicsTypes[indexPath.row]
            cell.titleMathematics.text = mathematicType.name
            cell.photoMathematics.image = mathematicType.photo
            
            cell.photoMathematics.layer.cornerRadius = cell.photoMathematics.frame.height / 3
            cell.photoMathematics.clipsToBounds = true
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
}

