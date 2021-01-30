//
//  ViewController.swift
//  CityBook
//
//  Created by owner on 1/30/21.
//

import UIKit
//1
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    //9
    var cityDizisi = [City]()
    //16
    var userselected : City?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //3
        tableView.delegate = self
        tableView.dataSource = self
        
      //7
        //sehirler
        let sanfran = City(name: "San Francisco", location: "Cali", image: UIImage(named: "goldengate")!)
        let NY = City(name: "NewYork", location: "NY", image: UIImage(named: "empire")!)
   //8
       // let cityDizi = [sanfran,NY]
        //9
        cityDizisi = [sanfran,NY]
        
    }
//2
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cityDizisi.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = cityDizisi[indexPath.row].name //10
        return cell
    }
    //13 tiklandiginda segue yapacagiz ama once hangi veri secildi onu preparesegueye aktar
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //14
        //var userSelected = cityDizisi[indexPath.row] //hangi secim oldugunu takipe debiliriz boylece
        
        //17 yukaridaki var i kaldirdik cunku 15 de userselected vermedi bu yuzden yukari userselected tanimladik
        userselected = cityDizisi[indexPath.row]
        
        //13
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    //15
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" { //id sini kontrol ediyoruz...eger buysa destination hedef olusturuyoruz
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedCity = userselected
        }
    }

    
}

