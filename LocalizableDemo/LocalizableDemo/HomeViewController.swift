//
//  HomeViewController.swift
//  LocalizableDemo
//
//  Created by Menahem Barouk on 13/09/2018.
//

import UIKit

class HomeViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        title = NSLocalizedString("home_view_controller_title", comment: "Home title")
    }
}

