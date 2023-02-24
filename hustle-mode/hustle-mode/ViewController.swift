//
//  ViewController.swift
//  hustle-mode
//
//  Created by mohamdan on 23/02/2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var onLbl: UILabel!
    @IBOutlet weak var hustleLbl: UILabel!
    @IBOutlet weak var cloudHolder: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var powerBtn: UIButton!
    @IBOutlet weak var darkBlueBG: UIImageView!
    
    var player : AVPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = Bundle.main.url(forResource: "on", withExtension: "wav")
        player = AVPlayer(url: url!)
        
    }

    @IBAction func powerBtnPressed(_ sender: UIButton) {
        darkBlueBG.isHidden = true
        powerBtn.isHidden = true
        cloudHolder.isHidden = false
        
        player.play()
        
        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.frame = CGRect(x: 0, y: 80, width: self.rocket.frame.width, height: self.rocket.frame.height)}) {(finished) in
            
                self.hustleLbl.isHidden = false
                self.onLbl.isHidden = false
            }
        }
}

