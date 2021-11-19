//
//  imageViewController.swift
//  LandmarkBook
//
//  Created by Alper Erden on 9.09.2021.
//

import UIKit

class imageViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var tsfutbollabel: UILabel!
    
    
    
    var selectedtsfutbol = ""
    var selectedtsfutbolresim = UIImage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tsfutbollabel.text = selectedtsfutbol
        imageView.image = selectedtsfutbolresim
    }
    
    

}
