//
//  Joke.swift
//  JokesAppSwiftUI
//
//  Created by Matteo Buompastore on 08/05/23.
//

import Foundation

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let joke = try Joke(json)

// MARK: - Joke
struct Joke: Identifiable, Codable {
    let id = UUID()
    let type: String
    let value: [Value]
}

// MARK: - Value
struct Value: Identifiable, Codable {
    let id: Int
    let joke: String
    let categories: [String]
}
