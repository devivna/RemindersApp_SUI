//
//  ListIconView.swift
//  RemindersApp_SU
//
//  Created by Students on 20.03.2023.
//

import SwiftUI

struct ListIconView: View {
    
    @Binding var color: Color
    
    var body: some View {
        Image(systemName: "list.bullet")
            .resizable()
            .scaledToFit()
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .frame(width: 60, height: 60)
            .padding()
            .padding()
            .background(
            Circle()
                .foregroundStyle(
                    RadialGradient(
                        gradient: Gradient(colors: [color, .white]),
                        center: .bottom,
                        startRadius: 80,
                        endRadius: 400)
                )
                .contrast(0.75)
                .shadow(color: color.opacity(0.3), radius: 10)
            
            )
            .padding(.top)
    }
}

struct ListIconView_Previews: PreviewProvider {
    static var previews: some View {
        ListIconView(color: .constant(.blue))
    }
}
