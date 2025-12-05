//
//  NoteCardsView.swift
//  DailyDiary
//
//  Created by Pedro Henrique L. Moreiras on 04/12/25.
//

import Foundation
import SwiftUI

struct NoteCardsView: View {
    @Environment(\.modelContext) private var mContext

    
    var note: Note
    
    var body: some View {
        
        VStack(alignment: .leading){
            
            HStack{
                Image(systemName: "calendar")
                    .font(.system(size: 20))
                    
                
                
                Text(note.date.formatted(date: .abbreviated, time: .omitted))
                    .font(.system(size: 20))
                
            } .foregroundStyle(Color.gray)
            
            Text(note.title)
                .font(.title.bold())
            
            Text(note.content)
            
            
        }
    }
}

#Preview {
    NoteCardsView(note: Note(date: Date(), title: "Title", content: "Im just a simple description of my day"))
}
