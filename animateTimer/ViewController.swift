//
//  ViewController.swift
//  animateTimer
//
//  Created by dit06 on 2019. 3. 26..
//  Copyright © 2019년 dit06. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var countLabel: UILabel!
    var count=1;
    var isAnimation=false;
    var myTimer=Timer();
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        img.image=UIImage(named: "img1")
        countLabel.text=String(count);
    }

    @IBAction func playBut(_ sender: UIButton) {
            //Timer start
        myTimer=Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(playAnimation), userInfo: nil, repeats: true)
    }
    @objc func playAnimation(){
        
        if(count==5){
            count=1;
        }else{
            count+=1;
        }
        
        img.image=UIImage(named: "img\(count)");
        countLabel.text=String(count);
    }
    @IBAction func pauseBut(_ sender: UIButton) {
        myTimer.invalidate();
    }
    @IBAction func stopBut(_ sender: UIButton) {
        myTimer.invalidate();
        count=0;
    }
}

