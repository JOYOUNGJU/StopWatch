//
//  ViewController.swift
//  StopWatch
//
//  Created by D7703_19 on 2018. 4. 10..
//  Copyright © 2018년 s22dfg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    
    @IBOutlet var timeLable: UILabel!
    var count = 0
    var myTimer = Timer();
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func start(_ sender: Any) {
        myTimer = Timer.scheduledTimer(withTimeInterval: 1/100, repeats: true, block: {(myTimer)
            in self.updateTime()
            
        })
        
    }
    func updateTime(){
        count = count + 1
        let min = count / 60 / 100
        let sce = (count - (min * 60 * 100)) / 100
        let msec = count - (min * 60 * 100) - (sce * 100)
        timeLable.text = String(format: "%02d:%02d:%02d", min, sce, msec)
    }
    @IBAction func stop(_ sender: Any) {
        myTimer.invalidate()
    }
    
    @IBAction func Reset(_ sender: Any) {
        count = 0
        let min = count / 60 / 100
        let sce = (count - (min * 60 * 100)) / 100
        let msec = count - (min * 60 * 100) - (sce * 100)
        timeLable.text = String(format: "%02d:%02d:%02d", min, sce, msec)
    }
    
}
        

    
    

    

    


