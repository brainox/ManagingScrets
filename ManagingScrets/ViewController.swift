//
//  ViewController.swift
//  ManagingScrets
//
//  Created by Obinna Aguwa on 18/10/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // We search for the “API_KEY” value in the Info.plist file.
        let apiKey = Bundle.main
            .object(forInfoDictionaryKey: "API_KEY") as? String
        
        // We make sure the key is not empty
        guard let key = apiKey, !key.isEmpty else {
            
            // If it’s empty, we print a message
            print("API  key does not exist")
            return
        }
        // Otherwise, we print the found API key.
        
        print("REST API key:", key)
    }


}

