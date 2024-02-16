//
//  ConstructorChampionshipView.swift
//  RealityKitF1
//
//  Created by Bryan Sánchez Peralta on 16/02/24.
//

import SwiftUI

struct ConstructorsChampionshipView: View {
    let teams = Team.allCases.sorted { $0.score > $1.score }

    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 0) {
                Text("Pos")
                    .frame(width: 35, alignment: .leading)
                    .padding(.trailing)
                Text("Name")
                    .frame(width: 400, alignment: .leading)
                Text("Drivers")
                    .frame(width: 250, alignment: .leading)
                Text("Score")
                    .frame(width: 50, alignment: .leading)
            }
            .bold()
            
            ScrollView() {
                ForEach(teams.indices, id: \.self
                ) { index  in
                    TeamRowView(team: teams[index], position: index + 1)
                }
            }.scrollIndicators(.hidden)
        }
        .navigationTitle("Drivers championship")
    }
}

#Preview {
    ConstructorsChampionshipView()
}
