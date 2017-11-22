//
//  TitleViewController.swift
//  Catchphrase
//
//  Created by Victor Lai on 11/12/17.
//  Copyright © 2017 Victor Lai. All rights reserved.
//

import UIKit

class TitleViewController: UIViewController {

    let transitioningLayer = LCTextLayer() // CATextLayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initLayer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(false)
        showTitle()
        // TODO: Add delay
        //self.performSegue(withIdentifier: "titleHomeSegue", sender: nil)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        transitioningLayer.frame = view.bounds
    }

    func initLayer() {
        transitioningLayer.frame = view.bounds
        transitioningLayer.alignmentMode = kCAAlignmentCenter

        view.layer.addSublayer(transitioningLayer)

        // Initial state
        transitioningLayer.backgroundColor = UIColor.clear.cgColor
        transitioningLayer.string = ""
        transitioningLayer.foregroundColor = UIColor.black.cgColor
    }

    func showTitle() {
        let transition = CATransition()
        transition.duration = 2

        transition.type = kCATransitionFade

        transitioningLayer.add(transition,
                               forKey: "transition")

        // Transition to new state
        transitioningLayer.string = "Catchphrase"
    }

}

