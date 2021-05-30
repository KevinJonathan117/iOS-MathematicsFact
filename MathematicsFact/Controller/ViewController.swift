//
//  ViewController.swift
//  MathematicsFact
//
//  Created by Kevin Jonathan on 30/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    var tempName : String = ""
    var tempPhoto : UIImage = UIImage(named: "algebra")!
    var tempDesc : String = ""

    @IBOutlet weak var mathematicsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //mathematicsTableView.register(UINib(nibName: "MathematicsTableViewCell", bundle: nil), forCellReuseIdentifier: "mathematicsCell")
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? DetailViewController {
            vc.name = tempName
            vc.desc = tempDesc
            vc.photo = tempPhoto
        }
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mathematicsTypes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let mathematicType = mathematicsTypes[indexPath.row]
        
        cell.textLabel!.text = mathematicType.name
        cell.textLabel!.font = UIFont.boldSystemFont(ofSize: 20.0)
        cell.textLabel!.numberOfLines = 0
        
        cell.imageView!.image = mathematicType.photo
        cell.imageView!.clipsToBounds = true
        cell.imageView!.frame = CGRect(x: 0, y: 0, width: 80, height: 80)
            //cell.titleMathematics.text = mathematicType.name
            //cell.photoMathematics.image = mathematicType.photo
            
            //cell.photoMathematics.layer.cornerRadius = cell.photoMathematics.frame.height / 3
            //cell.photoMathematics.clipsToBounds = true
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //let detail = DetailViewController()
        tempName = mathematicsTypes[indexPath.row].name
        tempPhoto = mathematicsTypes[indexPath.row].photo
        tempDesc = mathematicsTypes[indexPath.row].description
        
        //detail.mathematicsType = mathematicsTypes[indexPath.row]
        performSegue(withIdentifier: "toDetail", sender: self)
        //self.navigationController?.pushViewController(detail, animated: true)
    }
}

