//
//  CariViewController.swift
//  cookstep
//
//  Created by Hartono Sunanto on 06/04/22.
//

import UIKit


class CariViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    @IBOutlet var tableView: UITableView!
    
    let namaMasakan = ["Nasi Goreng Telur", "Nasi Goreng Ayam" , "Nasi Goreng Udang"]
    
    struct Masakan{
        let title: String
        let imageName: String
    }
    
    let data = [
        Masakan(title: "Nasi Goreng Telur", imageName: "image1"),
        Masakan(title: "Nasi Goreng Ayam", imageName: "image2"),
        Masakan(title: "Nasi Goreng Udang", imageName: "image3"),
        Masakan(title: "Nasi Goreng Telur", imageName: "image1"),
        Masakan(title: "Nasi Goreng Ayam", imageName: "image2"),
        Masakan(title: "Nasi Goreng Udang", imageName: "image3"),
        Masakan(title: "Nasi Goreng Telur", imageName: "image1"),
        Masakan(title: "Nasi Goreng Ayam", imageName: "image2"),
        Masakan(title: "Nasi Goreng Udang", imageName: "image3"),
        Masakan(title: "Nasi Goreng Telur", imageName: "image1"),
        Masakan(title: "Nasi Goreng Ayam", imageName: "image2")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Cari"
        self.tabBarController?.tabBar.isHidden = false
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("you tapped me")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Masakan = data[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ListMasakanTableViewCell
        
        cell.label.text = Masakan.title
        cell.iconImageView.image = UIImage(named: Masakan.imageName)
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}



