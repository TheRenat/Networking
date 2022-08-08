//
//  ViewController.swift
//  Networking
//
//  Created by Renat Ibragimov on 08.08.2022.
//

import UIKit

let jsonUrl = "https://v2.jokeapi.dev/joke/Any?safe-mode"

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
            let json = try JSONDecoder().decode(Joke.self, from: data)
                print(json.flags)
            } catch let error {
                print(error)
            }
        }.resume()
        
    }
}

