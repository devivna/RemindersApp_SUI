//
//  ColorPickerView.swift
//  RemindersApp_SU
//
//  Created by Students on 20.03.2023.
//

import SwiftUI

struct ColorPickerView: View {
    
    let colors: [Color] = [.red, .orange, .yellow, .green, .blue, .purple, .brown]
    
    let colums = [GridItem(.adaptive(minimum: 50))]
    
    @Binding var selectedColor: Color
    
    var body: some View {
        LazyVGrid(columns: colums, alignment: .center, spacing: 15){
            ForEach(colors, id: \.self) { color in
                
                Circle()
                    .foregroundColor(color)
                    .padding(10)
                    .background(
                        Circle()
                            .strokeBorder(selectedColor == color ? Color(uiColor: .systemGray2) : .white, lineWidth: 4)
                    )
                    .onTapGesture {
                        selectedColor = color
                    }
                
                // .scaleEffect(CGSize(width: 1.2, height: 1.2))
            }
            
        }
        .padding()
        .background(.white)
        .cornerRadius(10)
        .padding()
        
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView(selectedColor: .constant(.blue))
    }
}
