//
//  NoteModel.swift
//  DailyDiary
//
//  Created by Pedro Henrique L. Moreiras on 04/12/25.
//

import Foundation

struct Note: Identifiable {
    let id: UUID = UUID()
    var date: Date
    var title: String
    var content: String
    
}

extension Date {
    func DayMonthYear() -> String {
        let format = DateFormatter()
        
        format.dateFormat = "dd MMM yyyy"
        return format.string(from: self)
    }
}
