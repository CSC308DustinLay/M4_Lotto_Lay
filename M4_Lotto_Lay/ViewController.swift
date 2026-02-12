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
        let rand1 = Int.random(in: 1...45)
        label1.text = "\(rand1)"
        label2.text = "\(Int.random(in: 1...45))"
        label3.text = "\(Int.random(in: 1...45))"
        label4.text = "\(Int.random(in: 1...45))"
        label5.text = "\(Int.random(in: 1...45))"
        label6.text = "\(Int.random(in: 1...45))"
        //label7.text = "\(Int.random(in: 1...45))"
        label8.text = "\(Int.random(in: 1...45))"

        switch rand1
        {
        case 1...10:
            label1.backgroundColor = UIColor.red
        case 11...20:
            label1.backgroundColor = UIColor.green
        case 21...30:
            label1.backgroundColor = UIColor.blue
        case 31...40:
            label1.backgroundColor = UIColor.yellow
        case 41...45:
            label1.backgroundColor = UIColor.purple
        default:
            break
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        label1.layer.cornerRadius = label1.bounds.width / 2
        label1.clipsToBounds = true
        
        label2.layer.cornerRadius = label2.bounds.width / 2
        label2.clipsToBounds = true
        
        label3.layer.cornerRadius = label3.bounds.width / 2
        label3.clipsToBounds = true
        
        label4.layer.cornerRadius = label4.bounds.width / 2
        label4.clipsToBounds = true
        
        label5.layer.cornerRadius = label5.bounds.width / 2
        label5.clipsToBounds = true
        
        label6.layer.cornerRadius = label6.bounds.width / 2
        label6.clipsToBounds = true
        
        label7.layer.cornerRadius = label7.bounds.width / 2
        label7.clipsToBounds = true
        
        label8.layer.cornerRadius = label8.bounds.width / 2
        label8.clipsToBounds = true
    }

}

