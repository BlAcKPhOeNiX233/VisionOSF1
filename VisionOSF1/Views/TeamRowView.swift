//
//  ConstructorRowView.swift
//  RealityKitF1
//
//  Created by Bryan Sánchez Peralta on 16/02/24.
//

import SwiftUI

struct TeamRowView: View {
    let team: Team
    let position: Int
    
    var body: some View {
        HStack(spacing: 0) {
            Text("\(position)")
                .frame(width: 35, alignment: .trailing)
                .padding(.trailing)
            HStack {
                Image(team.name)
                    .resizable()
                    .frame(width: 30, height: 20)
                Text(team.name)
            }
            .frame(width: 400, alignment: .leading)
            
            Text(
                "\(String(team.drivers.first!.firstName.first!)).\(team.drivers.first!.surName), \(String(team.drivers.last!.firstName.first!)).\(team.drivers.last!.surName)"
            )
            .frame(width: 250, alignment: .leading)
            
            Text("\(team.score)")
                .frame(width: 40, alignment: .trailing)
        }
    }
}

#Preview {
    TeamRowView(team: .ferrari, position: 1)
}
