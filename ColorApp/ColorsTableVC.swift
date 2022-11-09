//
//  ViewController.swift
//  ColorApp
//
//  Created by Никита Швец on 08.11.2022.
//

import UIKit

class ColorsTableVC: UIViewController {
    
    enum cells {
        static let identifierCell = "ColorCell"
    }
    enum VCs {
        static let identifierVC = "ColorVC"
    }
    
    var colors: [UIColor] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillArrayOfColors()
    }
    
    func fillArrayOfColors() {
        for _ in 0..<50 {
            colors.append(.createRandomColor())
        }
    }
}

extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cells.identifierCell) else { return UITableViewCell() }
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let SB = UIStoryboard(name: "Main", bundle: nil)
        let vc = SB.instantiateViewController(withIdentifier: VCs.identifierVC) as! ColorVC
        vc.cellColor = colors[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
