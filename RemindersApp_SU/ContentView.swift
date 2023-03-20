//
//  ContentView.swift
//  RemindersApp_SU
//
//  Created by Students on 18.03.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var searchField = ""
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: searchField)
                
                CardView()
                    .padding()
                
                Text("My Lists")
                Spacer()
            }
            .background(.gray.opacity(0.15))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
