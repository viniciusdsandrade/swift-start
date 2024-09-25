//
//  ContentView.swift
//  MyCardApp
//
//  Created by VINICIUS DOS SANTOS ANDRADE on 25/09/24.
//

import SwiftUI

/// A View principal que exibe uma coleção de `CardView`s em um ScrollView horizontal.
struct ContentView: View {
    /// Um array de nomes de símbolos do sistema para criar os `CardView`s.
    let symbols = [
        "house", "car", "heart", "book", "star",
        "airplane", "bell", "cloud", "envelope", "face.smiling",
        "flag", "gear", "gift", "hand.thumbsup", "key",
        "lightbulb", "location", "magnifyingglass", "map", "message",
        "moon", "music.note", "paperclip", "person", "phone",
        "photo", "questionmark.circle", "trash", "wrench"
    ]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(symbols, id: \.self) { symbol in
                    CardView(symbolName: symbol)
                }
            }
            .padding()
        }
    }
}
