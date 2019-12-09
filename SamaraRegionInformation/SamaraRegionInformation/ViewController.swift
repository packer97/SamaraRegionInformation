//
//  ViewController.swift
//  SamaraRegionInformation
//
//  Created by hiMac on 15.11.2019.
//  Copyright © 2019 XDD. All rights reserved.
//

import UIKit

struct Cities {
    let cityName: String
    let yearOfFoundation: String
    let area: String
    let numberOfPeople: String
}

class ViewController: UIViewController {
   
    let data = [Cities(cityName: "Самара", yearOfFoundation: "Основан в 1586 году", area: "541,4 км²", numberOfPeople: "1 156 644 чел." ),
                Cities(cityName: "Толья́тти", yearOfFoundation: "Основан в 1737 году", area: "314,78 км²", numberOfPeople: "702 831 чел."),
                Cities(cityName: "Новокуйбышевск", yearOfFoundation: "Основан в 1946 году", area: "263,25км²", numberOfPeople: "105 161 чел."),
                Cities(cityName: "Отрадный", yearOfFoundation: "Основан в 1946 году", area: "53,6 км²", numberOfPeople: "47 542 чел."),
                Cities(cityName: "Сызрань", yearOfFoundation: "Основан в 1683 году", area: "117 км²", numberOfPeople: "173 260 чел."),
                Cities(cityName: "Кинель", yearOfFoundation: "Основан в 1837 году", area: "108,78 км²", numberOfPeople: "35 321 чел."),
                Cities(cityName: "Жигулёвск", yearOfFoundation: "Основан в 1949 году", area: "60,8 км²", numberOfPeople: "54 343 чел.")]
    
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        tableView.register(UINib(nibName: "HeaderCell", bundle: nil), forCellReuseIdentifier: "HeaderCell")
    }
}

extension ViewController: UITableViewDataSource {
    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//
//        let name = UILabel()
//
//        name.text = data[section].cityName
//        name.textColor = UIColor.white
//        name.backgroundColor = .systemPurple
//        return name
//    }
    
   
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20.0
    }
 
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.configure(city: data[indexPath.section])
        
    return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
}



extension ViewController: UITableViewDelegate {
    
    
}
