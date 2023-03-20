//
//  Card.swift
//  RemindersApp_SU
//
//  Created by Students on 18.03.2023.
//

import SwiftUI

struct CardView: View {
    
    var vm = CardViewModel()
     
    let colums = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    var body: some View {
        LazyVGrid(columns: colums) {
            ForEach(vm.cards, id: \.title) { card in
                VStack(alignment: .leading) {
                    
                    HStack {
                        Image(systemName: card.image)
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding()
                            .background(Circle()
                                .foregroundColor(card.imageColor))
                        Spacer()
                        
                        Text("\(card.number)")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    }
                    
                    Text(card.title)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    
                }
                .padding()
                .background(.white)
                .cornerRadius(10)
            }
        }
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
