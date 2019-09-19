//
//  ViewController.swift
//  FactoryCustomImageWithButton
//
//  Created by myCRObaM on 09/19/2019.
//  Copyright (c) 2019 myCRObaM. All rights reserved.
//

import UIKit
import FactoryCustomImageWithButton

class ViewController: UIViewController {
    
    let cs : CustomImageWithButton = {
        let view = CustomImageWithButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(cs)
        setupConstraints()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func setupConstraints(){
        if #available(iOS 11.0, *) {
            NSLayoutConstraint.activate([
                cs.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                cs.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                cs.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                cs.trailingAnchor.constraint(equalTo: view.trailingAnchor)
                ])
        } else {
            // Fallback on earlier versions
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

