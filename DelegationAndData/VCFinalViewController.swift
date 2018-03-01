//
//  VCFinalViewController.swift
//  DelegationAndData
//
//  Created by Lee, Anthony Y on 3/1/18.
//  Copyright © 2018 Lee, Anthony Y. All rights reserved.
//

import UIKit

// MARK: Protocol
protocol VCFinalDelegate {
    func finishPassing(string: String)
}

class VCFinalViewController: UIViewController {

    var delegate: VCFinalDelegate?
    
    @IBAction func btnPassDataPressed(_ sender: Any) {
        delegate?.finishPassing(string: "Sent From VCFinal")
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
