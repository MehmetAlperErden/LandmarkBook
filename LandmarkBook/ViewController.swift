//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Alper Erden on 26.08.2021.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var tsfutbol = [String]()
    var tsfutbolresim = [UIImage]()
    var chosenlandmarkImage = ""
    var chosenlandmarkname = UIImage()
        
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        
        tsfutbol.append("bakasetas")
        tsfutbol.append("hamsik")
        tsfutbol.append("gervinho")
        tsfutbol.append("nwakame")
        
        
        tsfutbolresim.append(UIImage(named: "bakasetas.jpg")!)
        tsfutbolresim.append(UIImage(named: "hamsik.jpg")!)
        tsfutbolresim.append(UIImage(named: "gervinho.jpg")!)
        tsfutbolresim.append(UIImage(named: "nwakame.jpg")!)
        navigationItem.title = "Ts Futbol takımı"
        
    }

    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            tsfutbol.remove(at: indexPath.row)
            tsfutbolresim.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
            
            
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = tsfutbol[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tsfutbol.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenlandmarkImage = tsfutbol[indexPath.row]
        chosenlandmarkname = tsfutbolresim[indexPath.row]
        
        performSegue(withIdentifier: "toimageview", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toimageview"{
            let destinationVC = segue.destination as! imageViewController
            destinationVC.selectedtsfutbolresim = chosenlandmarkname
            destinationVC.selectedtsfutbol = chosenlandmarkImage
        }
    }
}

