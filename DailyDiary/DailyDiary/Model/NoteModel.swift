//
//  NoteModel.swift
//  DailyDiary
//
//  Created by Pedro Henrique L. Moreiras on 04/12/25.
//

import Foundation
import SwiftData
import SwiftUI

@Model
class Note: Identifiable {
    var id: UUID = UUID()
    var date: Date
    var title: String
    var content: String
    var image: Data?
    
    init(date: Date, title: String, content: String, image: Data? = nil) {
        self.date = date
        self.title = title
        self.content = content
        self.image = image
    }
    
}

extension Date {
    var onlyDate: Date {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year, .month, .day], from: self)
        return calendar.date(from: components)!
    }
}

extension Text {
    func textTitleStyle () -> some View {
        self
            .font(.title)
            .bold()
    }
}


