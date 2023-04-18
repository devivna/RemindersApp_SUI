//
//  ContentView.swift
//  RemindersApp_SU
//
//  Created by Students on 18.03.2023.
//

import SwiftUI

struct MainView: View {
    
    @FetchRequest(sortDescriptors: [])
    private var myListResults: FetchedResults<MyList>
    
    @State private var searchField = ""
    @State private var isPresentAddNewListSheet = false
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: searchField)
                
                CardView()
                    .padding()
                
                Text("My Lists")
                
//                List(myListResults) { list in
//                    Text(list.name)
//                }
//                List(myListResults) { list  in
//                    Text(list.name)
//                }
                
                Spacer()
                
            }
            
            .sheet(isPresented: $isPresentAddNewListSheet) {
                NavigationView {
                    AddListView { nameList, color in
                        do {
                            try ReminderService.saveMyList(nameList, color)
                        } catch {
                            print("error")
                        }
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
            .environment(\.managedObjectContext, CoreDataProvider.shared.persistentContainer.viewContext)
    }
}
