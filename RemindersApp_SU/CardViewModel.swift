//
//  CardViewModel.swift
//  RemindersApp_SU
//
//  Created by Students on 18.03.2023.
//

import Foundation

class CardViewModel {
    var cards = [
        CardModel(image: "calendar", imageColor: .blue, number: 0, title: "Today"),
        CardModel(image: "list.dash.header.rectangle", imageColor: .red, number: 0, title: "Schedule"),
        CardModel(image: "archivebox", imageColor: .black, number: 0, title: "All"),
        CardModel(image: "checkmark", imageColor: .gray, number: 0, title: "Completed")
    ]
}
