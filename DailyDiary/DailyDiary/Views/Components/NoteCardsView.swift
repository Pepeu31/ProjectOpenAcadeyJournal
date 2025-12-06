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
        
        HStack {
            if note.image != nil {
                Image(uiImage: UIImage(data: note.image!)!)
                    .resizable()
                    .frame(width: 100, height: 120)
                    .aspectRatio(contentMode: .fill)
            }
            
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "calendar")
                        .font(.system(size: 20))
                    
                    Text(note.date.formatted(date: .abbreviated, time: .omitted))
                        .font(.system(size: 20))
                    
                }
                .foregroundStyle(Color.gray)
                
                Text(note.title)
                    .textTitleStyle()
                    .lineLimit(1)
            
                Text(note.content)
                    .lineLimit(5)
         
            }
            .padding(.horizontal)
            .frame(width: 250, height: 120)
            .background()
            .clipShape(Rectangle())
            .shadow(radius: 5)
            .padding(.horizontal)
        }
        .padding(.horizontal)
    }
}

//#Preview {
//    NoteCardsView(note: Note(id: UUID(), date: Date(), title: "Title", content: "Im just a simple description of my day"))
//}
