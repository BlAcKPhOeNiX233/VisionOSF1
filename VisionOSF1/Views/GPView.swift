//
//  GPView.swift
//  RealityKitF1
//
//  Created by Bryan Sánchez Peralta on 16/02/24.
//

import SwiftUI

struct GPView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 0) {
                Text("Pos")
                    .frame(width: 35, alignment: .leading)
                    .padding(.trailing)
                Text("Name")
                    .frame(width: 200, alignment: .leading)
                Text("Tyre")
                    .frame(width: 50, alignment: .leading)
                Text("DRS")
                    .frame(width: 35, alignment: .leading)
                    .padding(.trailing)
                Text("Lap time")
                    .frame(width: 100, alignment: .leading)
            }.bold()
            
            ScrollView() {
                ForEach(Driver.allCases.sorted(
                    by: { $0.gpScore < $1.gpScore }
                )
                ) { driver in
                    LapRowView(driver: driver)
                }
            }.scrollIndicators(.hidden)
        }
        .navigationTitle("Abu Dhabi GP")
    }
}

#Preview {
    GPView()
}
