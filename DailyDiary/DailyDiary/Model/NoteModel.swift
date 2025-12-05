//
//  NoteModel.swift
//  DailyDiary
//
//  Created by Pedro Henrique L. Moreiras on 04/12/25.
//

import Foundation
import SwiftData

@Model
class Note: Identifiable {
    var id: UUID = UUID()
    var date: Date
    var title: String
    var content: String
    
    init(date: Date, title: String, content: String) {
        self.date = date
        self.title = title
        self.content = content
    }
    
}

extension Date {
    var onlyDate: Date {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year, .month, .day], from: self)
        return calendar.date(from: components)!
    }
}


//extension Date {
//    func DayMonthYear() -> String {
//        let format = DateFormatter()
//
//        format.dateFormat = "dd MMM yyyy"
//        return format.string(from: self)
//    }
//}
