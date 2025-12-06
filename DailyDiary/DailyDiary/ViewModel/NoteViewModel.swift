//
//  NoteViewModel.swift
//  DailyDiary
//
//  Created by Pedro Henrique L. Moreiras on 05/12/25.
//

import Foundation
import SwiftData
import SwiftUI
import AppIntents

struct NewNoteIntent: AppIntent {
    static var title: LocalizedStringResource = "Add a Note"
    static var description = IntentDescription("Add a new note to your diary")
    static var openIntent = true
    
    @Parameter(title: "NoteID")
    var newContent: String
    
    init() { }
    
    init(newConten: String) {
        self.newContent = newContent
    }
    
    func perform() async throws -> some IntentResult {
        let modelContext = ModelContext(try ModelContainer(for: Note.self))
        
        let newNote = Note(date: Date(), title: "Quick Note", content: newContent)
        modelContext.insert(newNote)
        
        try modelContext.save()
        return .result()
    }
}

