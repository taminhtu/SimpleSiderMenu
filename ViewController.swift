//
//  ViewController.swift
//  SimpleSiderMenu
//
//  Created by Ta Minh Tu on 8/31/18.
//  Copyright © 2018 David Ta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    var showMenu = false;
    @IBOutlet var viewBackgroud: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func openMenu(_ sender: Any) {
        if (showMenu) { // menu is showing => close it
            leadingConstraint.constant = -240;
            viewBackgroud.backgroundColor = UIColor.white;
            UIView.animate(withDuration: 0.5) {
                self.view.layoutIfNeeded();
            }
        }
        else {// menu is closed => show it
            leadingConstraint.constant = 0;
            viewBackgroud.backgroundColor = UIColor.darkGray;
            UIView.animate(withDuration: 0.5) {
                self.view.layoutIfNeeded();
            }
        }
        
        showMenu = !showMenu;
    }
    
}

