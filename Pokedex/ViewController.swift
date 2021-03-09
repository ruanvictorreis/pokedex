//
//  ViewController.swift
//  Pokedex
//
//  Created by Ruan Reis on 26/01/21.
//

import UIKit

class ViewController: UIViewController {
    
    override func loadView() {
        let view = UIView(frame: UIScreen.main.bounds)
        view.backgroundColor = .red
        self.view = view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let url = "https://rickandmortyapi.com/api/character"
        
        NetworkManager.request(url: url) { characters in
            print(characters)
        }
    }
}
