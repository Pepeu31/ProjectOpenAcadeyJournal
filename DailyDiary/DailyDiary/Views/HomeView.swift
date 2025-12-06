//
//  HomeView.swift
//  DailyDiary
//
//  Created by Pedro Henrique L. Moreiras on 04/12/25.
//

import SwiftUI
import SwiftData

struct HomeView: View {
    @Environment(\.modelContext) private var mContext
    
    @State var showSheet: Bool = false
    
    @Query(sort: \Note.date, order: .reverse) var notes: [Note]
    
    var body: some View {
        NavigationStack{
            VStack{
                ScrollView{
                    ForEach(notes) {note in
                        NoteCardsView(note: note)
                        
                    }
                }
                .scrollIndicators(.hidden)
                .fullScreenCover(isPresented: $showSheet) {
                    AddNoteView()
                }
                .navigationTitle("Daily Diary")
                .toolbar {
                    ToolbarItem(placement: .confirmationAction) {
                        Button{
                            showSheet.toggle()
                        } label: {
                            Image(systemName: "plus")
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
