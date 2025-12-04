//
//  NoteCardsView.swift
//  DailyDiary
//
//  Created by Pedro Henrique L. Moreiras on 04/12/25.
//

import Foundation
import SwiftUI

struct NoteCardsView: View {
    var body: some View {
        
        VStack(alignment: .leading){
            
            HStack{
                Image(systemName: "calendar")
                    .font(.system(size: 20))
                
                
                Text("Dia/Mês/Ano")
                    .font(.system(size: 20))
                
            }
            
            Text("TítuloDoDia")
                .font(.title.bold())
            
        }
    }
}

#Preview {
    NoteCardsView()
}
