//
//  DriverInfoView.swift
//  RealityKitF1
//
//  Created by Bryan Sánchez Peralta on 16/02/24.
//

import SwiftUI

struct DriverRowView: View {
    let driver: Driver
    let position: Int
    
    var body: some View {
        HStack(spacing: 0) {
            Text("\(position)")
                .frame(width: 35, alignment: .trailing)
                .padding(.trailing)
            
            HStack {
                Image("\(driver.nationality).svg")
                    .resizable()
                    .frame(width: 30, height: 20)
                Text("\(String(driver.firstName.first!)).\(driver.surName)")
            }.frame(width: 200, alignment: .leading)
            
            Text(driver.team.name)
                .frame(width: 350, alignment: .leading)
            Text("\(driver.championshipScore)")
                .frame(width: 50, alignment: .trailing)
        }
    }
}

#Preview {
    DriverRowView(driver: .alonso, position: 1)
}
