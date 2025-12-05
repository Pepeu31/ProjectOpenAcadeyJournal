//
//  AddNoteView.swift
//  DailyDiary
//
//  Created by Pedro Henrique L. Moreiras on 05/12/25.
//

import SwiftUI
import SwiftData

struct AddNoteView: View {
    @Environment(\.modelContext) private var mContext
    @Environment(\.dismiss) var dismiss
    
    @State var title: String = ""
    @State var content: String = ""
    @State var date: Date = Date.now.onlyDate
    
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading){
                
                DatePicker("", selection: $date, in: Date.now..., displayedComponents: .date)
                
                Text("Title:")
                TextField("Insert your title...", text: $title)
                
                Text("Notes:")
                TextField("How was your day :)...", text: $content)
                
                
            }
            .padding()
            
            Button {
                mContext.insert(Note(date: date, title: title, content: content))
                
                dismiss()
            } label: {
                Text("Add Note")
                    .frame(width: 100, height: 50)
                    .foregroundStyle(Color.white)
                    .background(Color.blue)
                    .cornerRadius(20)
            }
            
            Spacer()
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .font(.system(size: 20))
                    }
                }
            }
        }
    }
}


#Preview {
    AddNoteView()
}
