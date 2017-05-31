//
//  ViewController.swift
//  multiples-app
//
//  Created by Humzah Choudry on 5/30/17.
//  Copyright © 2017 ChowDryApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var multipleNum = 0
    var result = 0
    var previousResult = 0
    
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var whatMultipleTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var equationTxt: UILabel!
    @IBOutlet weak var addBtn: UIButton!
    
    @IBAction func onPlayBtnPressed(sender: UIButton!){
        if whatMultipleTxt.text != nil && whatMultipleTxt.text != ""
        {
            multipleNum = Int(whatMultipleTxt.text!)!
            
            logoImg.isHidden = true
            whatMultipleTxt.isHidden = true
            playBtn.isHidden = true
            addBtn.isHidden = false
            equationTxt.isHidden = false
            
            equationTxt.text = "You chose \(multipleNum) you douuuuche"
        }
    }
    @IBAction func onAddBtnPressed(sender: UIButton!)
    {
        previousResult = result
        result = result + multipleNum
        
        equationTxt.text = "\(previousResult) + \(multipleNum) = \(result)"
        
        if areWeDone(){
            restartGame()
        }
    }
    
    func areWeDone() -> Bool {
        return result >= multipleNum * 11
    }
    func restartGame(){
        multipleNum = 0
        whatMultipleTxt.text = ""
        
        logoImg.isHidden = false
        playBtn.isHidden = false
        whatMultipleTxt.isHidden = false
        
        addBtn.isHidden = true
        equationTxt.isHidden = true
        
    }
}

