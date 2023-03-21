//
//  ContentView.swift
//  RemindersApp_SU
//
//  Created by Students on 18.03.2023.
//

import SwiftUI

struct MainView: View {
    
    @State private var searchField = ""
    @State private var isPresentAddNewListSheet = false
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: searchField)
                
                CardView()
                    .padding()
                
                Text("My Lists")
                Spacer()
                
                    
            }
            
            .sheet(isPresented: $isPresentAddNewListSheet) {
                NavigationView {
                    AddListView { nameList, color in
                        // save the list
                    }
                }
            }
            
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Button {
                        isPresentAddNewListSheet = true
                    } label: {
                        Text("Add new list")
                    }
                }
            }
            
            .background(.gray.opacity(0.15))
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
