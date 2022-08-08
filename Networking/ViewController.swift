//
//  ViewController.swift
//  Networking
//
//  Created by Renat Ibragimov on 08.08.2022.
//

import UIKit

let jsonUrl = "https://api.agify.io/?name=bella"

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = URL(string:  jsonUrl) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            do {
            let json = try JSONDecoder().decode(Model.self, from: data)
                print(json.age)
            } catch let error {
                print(error)
            }
        }.resume()
        
    }
}

