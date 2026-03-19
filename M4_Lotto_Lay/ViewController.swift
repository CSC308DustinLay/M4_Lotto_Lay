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
    
    
    @IBOutlet var labels: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
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
        nums.sort()
        //let sortedNums = nums.sorted()
        
        for (index,label) in labels.enumerated()
        {
            label.clipsToBounds = true
            
            label.text = "\(nums[index])"
            
            label.backgroundColor = getColors(from: nums[index]).backgroundColor
            label.textColor = getColors(from: nums[index]).textColor
        }
        label7.layer.cornerRadius = label7.bounds.width / 2
        label7.clipsToBounds = true
        let colors = getColors(from: nil)
        label7.backgroundColor = colors.backgroundColor
        label7.textColor = colors.textColor
        
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: any UIViewControllerTransitionCoordinator)
    {
        coordinator.animate { _ in
            for label in self.labels
            {
                label.layer.cornerRadius = label.bounds.width / 2
                label.clipsToBounds = true
            }
        }


    }
}

func getColors(from number: Int?) -> (backgroundColor: UIColor, textColor: UIColor)
{
    guard let number else{
        return (UIColor.purple, UIColor.white)
    }
    switch number
    {
    case 1...10:
        return(UIColor.red, UIColor.white)
    case 11...20:
        return(UIColor.green, UIColor.black)
    case 21...30:
        return(UIColor.blue, UIColor.white)
    case 31...40:
        return(UIColor.yellow, UIColor.black)
    case 41...45:
        return(UIColor.gray, UIColor.white)
    default:
        return (UIColor.purple, UIColor.white)
    }
}
