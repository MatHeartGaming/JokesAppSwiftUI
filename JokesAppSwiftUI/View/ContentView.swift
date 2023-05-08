//
//  ContentView.swift
//  JokesAppSwiftUI
//
//  Created by Matteo Buompastore on 08/05/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var jokesVM = JokesViewModel()
    
    var body: some View {
        NavigationView {
            List(jokesVM.jokes) {elem in
                Text(elem.joke)
            }
            .toolbar {
                Button(action: addJoke, label: {
                    Text("Get new Joke!")
                })
            }
            .navigationTitle("Chcuk Norris Jokes")
        }
    }
    
    
    func addJoke() {
        print("Add joke")
        jokesVM.getJokes(count: 1)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
