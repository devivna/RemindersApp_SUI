//
//  AddListView.swift
//  RemindersApp_SU
//
//  Created by Students on 20.03.2023.
//

import SwiftUI

struct AddListView: View {
    
    @State private var listNameField = ""
    @State private var selectedColor = Color.blue
    
    @Environment(\.dismiss) var dismiss
    
    let save: (String, UIColor) -> Void
    
    private var isEnableDoneButton: Bool {
        !listNameField.isEmpty
    }
    
    var body: some View {
        VStack {
            VStack {
                ListIconView(color: $selectedColor)
                
                ListNameFieldView(text: $listNameField, foregroundColor: $selectedColor)
                
            }
            .padding()
            .background(.white)
            .cornerRadius(10)
            .padding()
            
            ColorPickerView(selectedColor: $selectedColor)
            
            Spacer()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(uiColor: .systemGray6))
        
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("New List")
                    .font(.title3)
                    .fontWeight(.semibold)
            }
            
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    dismiss()
                } label: {
                    Text("Cancel")
                }
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    save(listNameField, UIColor(selectedColor))
                    dismiss()
                } label: {
                    Text("Done")
                }
                .disabled(!isEnableDoneButton)
            }
        }
    }
}

struct AddListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddListView(save: { (_, _) in  })
        }
    }
}
