//
//  ViewController.swift
//  Unplug
//
//  Created by Vanessa Guo on 1/31/21.
//

import UIKit

class ViewController: UIViewController {
    
    var hours = 24
    var minuets = 60
    var seconds = 60
    
    var timer = Timer()

    @IBOutlet weak var hoursLable: UILabel!
    
    @IBOutlet weak var minuetsLable: UILabel!
    @IBOutlet weak var secondsLable: UILabel!
    
    @IBAction func hourSlider(_ sender: UISlider) {
        hours = Int(sender.value)
        hoursLable.text = String(hours) + " Hours"
    }
    @IBOutlet weak var hourSliderOutlet: UISlider!
    
    @IBAction func minuetsSlider(_ sender: UISlider) {
        minuets = Int(sender.value)
        minuetsLable.text = String(minuets) + " Minuets"
    }
    @IBOutlet weak var minuetsSliderOutlet: UISlider!
    
    @IBOutlet weak var secondsSliderOutlet: UISlider!
    @IBAction func secondsSlider(_ sender: UISlider) {
        seconds = Int(sender.value)
        secondsLable.text = String(seconds) + " Seconds"
        
        
    }

    
    
    
    @IBAction func startBtn(_ sender: UIButton)
    {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.countdown), userInfo: nil, repeats: true)
    }
    @objc func countdown ()
    {
        seconds -= 1
        secondsLable.text = String(seconds) + " Seconds"
        
        if (seconds == 0)
        {
            timer.invalidate()
            
        }
        
    }
    @IBOutlet weak var startOutlet: UIButton!
    
    @IBAction func stopBtn(_ sender: UIButton)
    {
        timer.invalidate()
        seconds = 0
        secondsSliderOutlet.setValue(0, animated: true)
        secondsLable.text = "0 Seconds"
    }
    @IBOutlet weak var stopOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func getStartedBtn(_ sender: UIButton) {
    }
    

}

