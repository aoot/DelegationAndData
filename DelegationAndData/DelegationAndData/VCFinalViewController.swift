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

    // Initiate a delegate variable for the delegate to self assign from its end
    var delegate: VCFinalDelegate?
    
    @IBAction func passDataToInitial(_ sender: Any) {
        delegate?.finishPassing(string: "Sent From VCFinal")
    }
}
