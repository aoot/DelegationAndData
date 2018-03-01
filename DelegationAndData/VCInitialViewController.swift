//
//  VCInitialViewController.swift
//  DelegationAndData
//
//  Created by Lee, Anthony Y on 3/1/18.
//  Copyright © 2018 Lee, Anthony Y. All rights reserved.
//

import UIKit

class VCInitialViewController: UIViewController, VCFinalDelegate {
    
    @IBAction func btnPerformSeguePressed(_ sender: Any) {
        performSegue(withIdentifier: "VCInitialToVCFinal", sender: nil)
    }
    
    func finishPassing(string: String) {
        print("Notified")
    }
    
    // This is the magic part, the delegate assigns itself in its own code as the delegator's delegate.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VCFinalViewController {
            destination.delegate = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
