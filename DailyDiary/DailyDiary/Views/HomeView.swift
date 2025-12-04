//
//  HomeView.swift
//  DailyDiary
//
//  Created by Pedro Henrique L. Moreiras on 04/12/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack{
            VStack{
                ScrollView{
                    ForEach((1...10), id: \.self) {_ in
                        NoteCardsView()
                            .padding(10)
                    }
                } .scrollIndicators(.hidden)
            }
        }
    }
}

#Preview {
    HomeView()
}
