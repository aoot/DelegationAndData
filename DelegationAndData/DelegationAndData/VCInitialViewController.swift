//
//  VCInitialViewController.swift
//  DelegationAndData
//
//  Created by Lee, Anthony Y on 3/1/18.
//  Copyright © 2018 Lee, Anthony Y. All rights reserved.
// https://medium.com/ios-os-x-development/pass-data-with-delegation-in-swift-86f6bc5d0894

import UIKit

class VCInitialViewController: UIViewController, VCFinalDelegate { //Delegate conforming to protocol
    
    @IBAction func btnPressedSegue(_ sender: Any) {
        performSegue(withIdentifier: "VCInitialToVCFinal", sender: nil)
    }
    
    // This is the magical part, the delegate assigns itself in its own code as the delegator's delegate.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VCFinalViewController {
            destination.delegate = self  // Self assign as delegate
        }
    }
    
    // Protocol required function
    func finishPassing(string: String) {
        print("Notified")
        print(string)
    }
}
