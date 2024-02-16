//
//  LapView.swift
//  RealityKitF1
//
//  Created by Bryan Sánchez Peralta on 15/02/24.
//

import SwiftUI

struct LapRowView: View {
    let driver: Driver
    
    var body: some View {
        HStack(spacing: 0) {
            Text("\(driver.gpScore)")
                .frame(width: 35, alignment: .trailing)
                .padding(.trailing)
            HStack {
                Image("\(driver.nationality).svg")
                    .resizable()
                    .frame(width: 30, height: 20)
                Text("\(String(driver.firstName.first!)).\(driver.surName)")
            }.frame(width: 200, alignment: .leading)
            
            HStack(spacing: 4) {
                Circle()
                    .frame(width: 20)
                    .foregroundStyle(driver.tyre.type.color)
                    .overlay {
                        Text(driver.tyre.type.initial)
                            .font(.system(size: 12))
                            .foregroundStyle(.black)
                    }
                Text("\(driver.tyre.laps)")
            }.frame(width: 50, alignment: .leading)
            
            Circle()
                .frame(width: 20)
                .foregroundStyle(driver.drs ? .green : .gray)
                .frame(width: 35, alignment: .trailing)
                .padding(.trailing)
            Text(driver.lapTime)
                .frame(width: 100, alignment: .leading)
        }
    }
}

#Preview {
    LapRowView(driver: .leclerc)
}
