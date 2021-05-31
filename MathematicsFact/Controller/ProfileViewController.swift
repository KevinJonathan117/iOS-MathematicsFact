//
//  ProfileViewController.swift
//  MathematicsFact
//
//  Created by Kevin Jonathan on 31/05/21.
//

import UIKit

class ProfileViewController: ViewController {

    @IBOutlet weak var profileImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImage.layer.cornerRadius = 125
    }
}
