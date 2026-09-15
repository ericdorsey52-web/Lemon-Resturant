//
//  ContentView.swift
//  Lemon Resturant
//
//  Created by Eric Dorsey on 9/14/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "iphone")
                .font(.system(size:40))
                .foregroundStyle(.tint)
            Text("Welcome to the iOS 101")
                
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
