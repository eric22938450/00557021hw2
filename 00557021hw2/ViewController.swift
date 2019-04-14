//
//  ViewController.swift
//  00557021hw2
//
//  Created by User15 on 2019/4/14.
//  Copyright © 2019 00557021. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textlabel: UILabel!
    @IBOutlet weak var randowlabel: UILabel!
    @IBOutlet weak var playerswitch: UISwitch!
    @IBOutlet weak var playerimage: UIImageView!
    @IBOutlet weak var playersegment: UISegmentedControl!
    @IBOutlet weak var valuelabel: UILabel!
    @IBOutlet weak var buttontext: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func pressbutton(_ sender: Any) {
        if buttontext.text == "2013"{
            if textlabel.text == "tony parker" || textlabel.text == "  9"{
                valuelabel.text = "pts:16.7 \nreb:2.3 \nast:5.7 \nstl:0.5 \nblk:0.1"
            }else if textlabel.text == "tim duncan" || textlabel.text == "  21"{
                valuelabel.text = "pts:15.1 \nreb:9.7 \nast:3.0 \nstl:0.6 \nblk:1.9"
            }else if textlabel.text == "manu ginobili" || textlabel.text == "  20"{
                valuelabel.text = "pts:12.3 \nreb:3.0 \nast:4.3 \nstl:1.0 \nblk:0.3"
            }
        }else if buttontext.text == "2014"{
            if textlabel.text == "tony parker" || textlabel.text == "  9"{
                valuelabel.text = "pts:14.4 \nreb:1.9 \nast:4.9 \nstl:0.6 \nblk:0.0"
            }else if textlabel.text == "tim duncan" || textlabel.text == "  21"{
                valuelabel.text = "pts:13.9 \nreb:9.1 \nast:3.0 \nstl:0.8 \nblk:2.0"
            }else if textlabel.text == "manu ginobili" || textlabel.text == "  20"{
                valuelabel.text = "pts:10.5 \nreb:3.0 \nast:4.2 \nstl:1.0 \nblk:0.3"
            }
        }

    }
    
    @IBAction func getrandow(_ sender: Any) {
        var number = Int.random(in: 1...30)
        randowlabel.text = String(number)
    }
    
    @IBAction func valueslider(_ sender: UISlider) {
        sender.value.round()
        var value1 : Float = 1.0
        var value2 : Float = 2.0
        var value3 : Float = 3.0
        if playerswitch.isOn == true{
            if playersegment.selectedSegmentIndex == 0{
                if sender.value == value1{
                    textlabel.text = "tony parker"
                    playerimage.image = UIImage(named: "tp")
                }else if sender.value == value2{
                    textlabel.text = "tim duncan"
                    playerimage.image = UIImage(named: "td")
                }else if sender.value == value3{
                    textlabel.text = "manu ginobili"
                    playerimage.image = UIImage(named: "mg")
                }else {
                    textlabel.text = "choose a player"
                    playerimage.image = UIImage(named: " ")
                }
            }else {
                if sender.value == value1{
                    textlabel.text = "  9"
                    playerimage.image = UIImage(named: "tp")
                }else if sender.value == value2{
                    textlabel.text = "  21"
                    playerimage.image = UIImage(named: "td")
                }else if sender.value == value3{
                    textlabel.text = "  20"
                    playerimage.image = UIImage(named: "mg")
                }else {
                    textlabel.text = "choose a player number"
                }
            }
        }else {
            if playersegment.selectedSegmentIndex == 0{
                if sender.value == value1{
                    textlabel.text = "tony parker"
                }else if sender.value == value2{
                    textlabel.text = "tim duncan"
                }else if sender.value == value3{
                    textlabel.text = "manu ginobili"
                }else {
                    textlabel.text = "choose a player"
                }
            }else {
                if sender.value == value1{
                    textlabel.text = "  9"
                }else if sender.value == value2{
                    textlabel.text = "  21"
                }else if sender.value == value3{
                    textlabel.text = "  20"
                }else {
                    textlabel.text = "choose a player number"
                }
            }        }
}

    @IBAction func turnswitch(_ sender: UISwitch) {
        if sender.isOn == true{
            if textlabel.text == "tony parker" || textlabel.text == "  9"{
                playerimage.image = UIImage(named: "tp")
            }else if textlabel.text == "tim duncan" || textlabel.text == "  21"{
                playerimage.image = UIImage(named: "td")
            }else if textlabel.text == "manu ginobili" || textlabel.text == "  20"{
                playerimage.image = UIImage(named: "mg")
            }
        }else {
            playerimage.image = UIImage(named: " ")
        }
    }
    
}
