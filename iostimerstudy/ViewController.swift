//
//  ViewController.swift
//  iostimerstudy
//
//  Created by kenan on 13.08.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var sayici:Timer?
    var counter:Int = 1

    @IBOutlet weak var customLabel: UILabel!
    
    @IBAction func start(_ sender: Any) {
        sayici = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ileriSay), userInfo: nil, repeats: true)
    }
    
    @objc func ileriSay(){
        customLabel.text = String(counter)
        counter+=1
        if counter > 6{
            sayici?.invalidate()
            customLabel.text = "Süre bitti"
            counter = 1
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

