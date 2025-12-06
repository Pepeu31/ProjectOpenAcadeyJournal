//
//  AddNoteView.swift
//  DailyDiary
//
//  Created by Pedro Henrique L. Moreiras on 05/12/25.
//

import SwiftUI
import SwiftData
import PhotosUI

struct AddNoteView: View {
    @Environment(\.modelContext) private var mContext
    @Environment(\.dismiss) var dismiss
    
    @State var title: String = ""
    @State var content: String = ""
    @State var date: Date = Date.now.onlyDate
    @State var image: Data?
    @State var pickerImage: PhotosPickerItem?
    
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(alignment: .leading){
                    
                    DatePicker("", selection: $date, in: Date.now..., displayedComponents: .date)
                    
                    Text("Title:").textTitleStyle()
                    TextField("Insert your title...", text: $title)
                    
                    Text("Notes:").textTitleStyle()
                    TextField("How was your day :)...", text: $content)
                    
                    Spacer()
                    VStack{
                        Spacer()
                        PhotosPicker("Add a Photo",
                                     selection: $pickerImage,
                                     matching: .images)
                        .buttonStyle(.glass)
                        .foregroundStyle(.blue)
                    }
                    
                    VStack(alignment: .center) {
                        Spacer()
                        if image != nil {
                            Image(uiImage: UIImage(data: image!)!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200, height: 200)
                        }
                    }
                }
                .padding()
                
                Button {
                    mContext.insert(Note(date: date, title: title, content: content, image: image))
                    
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
            .onChange(of: pickerImage) {
                Task {
                    if let loaded = try? await pickerImage?.loadTransferable(type: Data.self) {
                        image = loaded
                    } else {
                        print("Failed")
                    }
                }
            }
        }
    }
}


#Preview {
    AddNoteView()
}
