//
//  SearchBar.swift
//  RemindersApp_SU
//
//  Created by Students on 18.03.2023.
//

import SwiftUI

struct SearchBar: View {
    @State var text: String
    
    var body: some View {
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search", text: $text)
            }
            .font(.title2)
            .foregroundColor(Color.gray)
            .padding(8)
            .background(.gray.opacity(0.2))
            .cornerRadius(10)
            .padding()
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: "Search")
    }
}
