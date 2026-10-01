//
//  ResturantInfoView.swift
//  Lemon Resturant
//
//  Created by Eric Dorsey on 9/30/26.
//

import SwiftUI

struct ResturantInfoView: View {
    let socialMedia: [String: String] = [
        "Instagram": "@lemon",
        "Facebook": "facebook.com/lemon",
        "Twitter": "@lemon"
    ]
    let services: [String: String] = [
        "Wi-Fi": "Free",
        "Takeaway": "Yes",
        "Delivery": "No",
        "Catering": "Available",
        "Party Packages": "Available"]
    
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Social Media")) {
                    ForEach(Array(socialMedia), id:\.key) { key, value in
                        HStack {
                            Text(key)
                                .font(Font.headline.bold())
                            Spacer()
                            Text(value)
                                .foregroundColor(Color.gray)
                        }
                        
                    }
                }
                Section(header: Text("Services")) {
                    ForEach(Array(services), id:\.key) { key, value in
                        HStack {
                            Text(key)
                                .font(.headline)
                            Spacer()
                            Text(value)
                                .foregroundColor(Color.gray)
                        }
                    }
                    
                }
            }
            .navigationTitle("Resturant Info")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ResturantInfoView()
}
