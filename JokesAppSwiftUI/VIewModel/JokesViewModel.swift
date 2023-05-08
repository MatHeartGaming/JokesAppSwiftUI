//
//  JokesViewModel.swift
//  JokesAppSwiftUI
//
//  Created by Matteo Buompastore on 08/05/23.
//

import Foundation
import Alamofire

@MainActor
class JokesViewModel : ObservableObject {
    
    @Published var jokes = [Value]()
    
    private let urlJokes = "https://raw.githubusercontent.com/atilsamancioglu/JokesAppJsonData/main/chuck.json"
    
    init() {
        getJokes()
    }
    
    func getJokes(count : Int = 6) {
        AF.request(urlJokes, method: .get).responseDecodable(of: Joke.self) { response in
            
            switch response.result {
                case .success(let data) :
                self.jokes.append(contentsOf: data.value)
                    print("Data: \(data)")
                case .failure(let error): print("Error: \(error)")
            }
            
        }
    }
    
}
