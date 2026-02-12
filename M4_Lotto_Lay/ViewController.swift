//
//  ViewController.swift
//  M4_Lotto_Lay
//
//  Created by Heather Bishop on 2/10/26.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    @IBOutlet weak var label8: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        let labels = [label1!, label2!, label3!, label4!, label5!, label6!, label8!]
        
        var nums = [Int]()
        
        while nums.count < labels.count
        {
            let rand = Int.random(in: 1...45)
            if !nums.contains(rand)
            {
                nums.append(rand)
            }
        }
        
        let sortedNums = nums.sorted()
        
        for (index,label) in labels.enumerated()
        {
            label.layer.cornerRadius = label.bounds.width / 2
            label.clipsToBounds = true
            
            label.text = "\(sortedNums[index])"
            
            switch sortedNums[index]
            {
            case 1...10:
                label.backgroundColor = UIColor.red
            case 11...20:
                label.backgroundColor = UIColor.green
            case 21...30:
                label.backgroundColor = UIColor.blue
            case 31...40:
                label.backgroundColor = UIColor.yellow
            case 41...45:
                label.backgroundColor = UIColor.purple
            default:
                break
            }
        }
        label7.layer.cornerRadius = label7.bounds.width / 2
        label7.clipsToBounds = true
        label7.backgroundColor = UIColor.purple
        label7.textColor = .white
        
    }

}

