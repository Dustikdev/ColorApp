//
//  ViewController.swift
//  ColorApp
//
//  Created by Никита Швец on 08.11.2022.
//

import UIKit

class ColorsTableVC: UIViewController {

    var colors: [UIColor] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createRandomColors()
    }
    
    func createRandomColors() {
        for _ in 0..<50 {
            let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                      green: CGFloat.random(in: 0...1),
                                      blue: CGFloat.random(in: 0...1),
                                      alpha: 1)
            colors.append(randomColor)
        }

    }
 
}

extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell") else { return UITableViewCell() }
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let SB = UIStoryboard(name: "Main", bundle: nil)
        let vc = SB.instantiateViewController(withIdentifier: "ColorVC") as! ColorVC
//        vc.check = checks
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
