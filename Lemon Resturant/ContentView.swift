//
//  ContentView.swift
//  Lemon Resturant
//
//  Created by Eric Dorsey on 9/14/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ReservationForm()
                .tabItem {
                    Label("Reservation", systemImage: "calendar")
                }
            
            BillCalculatorView()
                .tabItem {
                    Label("Bill Calculator", systemImage: "dollarsign.circle")
                }
            
            About_View()
                .tabItem {
                    Label("About", systemImage: "info.circle")
                }
        }
    }
}

#Preview {
    ContentView()
}
