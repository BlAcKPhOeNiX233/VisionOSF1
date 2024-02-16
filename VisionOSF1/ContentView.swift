//
//  ContentView.swift
//  RealityKitF1
//
//  Created by Bryan Sánchez Peralta on 14/02/24.
//

import SwiftUI

struct ContentView: View {
    @State var detailView: AnyView
    
    var body: some View {
        NavigationSplitView {
            List {
                Button("GP") {
                    detailView = AnyView(GPView())
                }
                Button("Drivers championship") {
                    detailView = AnyView(DriversChampioshipView())
                }
                Button("Constructors championship") {
                    detailView = AnyView(ConstructorsChampionshipView())
                }
            }
            .navigationSplitViewColumnWidth(200)
            .navigationTitle("F1 Stats")
        } detail: {
            detailView
        }
    }
}

#Preview {
    ContentView(detailView: AnyView(GPView()))
}
