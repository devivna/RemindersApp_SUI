//
//  ListNameFieldView.swift
//  RemindersApp_SU
//
//  Created by Students on 20.03.2023.
//

import SwiftUI

struct ListNameFieldView: View {
    
    @Binding var text: String
    @Binding var foregroundColor: Color
    
    var body: some View {
        HStack {
            // TODO: Set background to clear
            TextField("List Name", text: $text)
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .foregroundColor(foregroundColor)
                .multilineTextAlignment(.center)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            Button {
                text = ""
            } label: {
                Image(systemName: "xmark.circle.fill")
                    .font(.title)
                    .foregroundColor(Color(uiColor: text == "" ? .systemGray5 : .systemGray2))
                
            }
        }
        .padding(.horizontal)
        .background(Color(uiColor: .systemGray5))
        .cornerRadius(10)
        .padding()
    }
}

struct ListNameFieldView_Previews: PreviewProvider {
    static var previews: some View {
        ListNameFieldView(text: .constant("My video"), foregroundColor: .constant(.blue))
    }
}
