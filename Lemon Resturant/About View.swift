//
//  SwiftUIView.swift
//  Lemon Resturant
//
//  Created by Eric Dorsey on 9/14/26.
//

import SwiftUI

struct About_View: View {
    var body: some View {
        VStack{
            HStack{
                Text("About Horizon Restaurant")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.blue)
                    .multilineTextAlignment(.center)
                    .padding()
            }
            HStack{
                Text("Horizon Restaurant offers a wide variety of cuisines to suit all tastes. We pride ourselves on providing a welcoming and friendly environment for all our customers.")
                    .padding()
                    .multilineTextAlignment(.center)
                    .padding()
            }
            HStack(spacing: 16) {
                Image(systemName: "map")
                    .imageScale(.large)
                    .foregroundColor(.red)
                Image(systemName: "fork.knife")
                    .imageScale(.large)
                    .foregroundColor(.orange)
                Image(systemName: "leaf")
                    .imageScale(.large)
                    .foregroundColor(.green)
            }
            .padding()
        }
    }
}

#Preview {
    About_View()
}

