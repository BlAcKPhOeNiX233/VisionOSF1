//
//  DriversChampioshipView.swift
//  RealityKitF1
//
//  Created by Bryan Sánchez Peralta on 16/02/24.
//

import SwiftUI

struct DriversChampioshipView: View {
    let drivers = Driver.allCases.sorted { $0.championshipScore > $1.championshipScore }

    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 0) {
                Text("Pos")
                    .frame(width: 35, alignment: .leading)
                    .padding(.trailing)
                Text("Name")
                    .frame(width: 200, alignment: .leading)
                Text("Team")
                    .frame(width: 350, alignment: .leading)
                Text("Score")
                    .frame(width: 50, alignment: .leading)
                    .padding(.trailing)
            }
            .bold()
            
            ScrollView() {
                ForEach(drivers.indices, id: \.self
                ) { index  in
                    DriverRowView(driver: drivers[index], position: index + 1)
                }
            }.scrollIndicators(.hidden)
        }
        .navigationTitle("Drivers championship")
    }
}

#Preview {
    DriversChampioshipView()
}
