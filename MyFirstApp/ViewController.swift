//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Diego  Collao on 24-06-16.
//  Copyright © 2016 Undisclosure. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Default properties
    var maxTaps: Int = 0
    var currentTaps: Int = 0
    
    //All var are declared.
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var tapTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapLbl: UILabel!
    
    @IBAction func onTapBtnPressed(sender: UIButton!){
        currentTaps += 1
        updateTapsLbl()
        
        if isGameOver(){
            restartGame()
        }
    }
    
    //So I can declare actions like:
    @IBAction func onPlayBtnPressed(sender: UIButton!){
        if tapTxt.text != nil && tapTxt.text != "" {
            //Hidden
            logoImg.isHidden = true
            tapTxt.isHidden = true
            playBtn.isHidden = true
            //Un-hidden
            tapBtn.isHidden = false
            tapLbl.isHidden = false
            maxTaps = Int(tapTxt.text!)!
            updateTapsLbl()
        }
    }
    
    func restartGame() {
        maxTaps = 0
        tapTxt.text = ""
        
        logoImg.isHidden = false
        tapTxt.isHidden = false
        playBtn.isHidden = false
        
        tapBtn.isHidden = true
        tapLbl.isHidden = true
    }
    
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }
    
    
    func updateTapsLbl(){
        tapLbl.text = "\(currentTaps) Taps"
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        tapTxt.keyboardType = .numberPad
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

