//
//  ReservationForm.swift
//  Lemon Resturant
//
//  Created by Eric Dorsey on 9/16/26.
//

import SwiftUI

struct ReservationForm: View {
    let restaurantName = "Little Lemon"
    let maxGuest = 10
    
    @State private var userName = ""
    @State private var guestsCount = 1
    @State private var phoneNumber = ""
    @State private var emailAddress = ""
    @State private var previewText = "No Preview yet"
    @State private var kidCount = 0
    
    var body: some View {
        Form{
            Section{
                HStack{
                    Image(systemName:"fork.knife")
                        .foregroundStyle(.green)
                        .font(.title2)
                    
                    VStack{
                        Text(restaurantName)
                            .font(.title2)
                            .bold()
                        
                        Text("Reseveration Form")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                }
                .padding(.vertical, 4)
            }
            
            Section(header: Text("Reservation details")){
                TextField("Name", text: $userName)
                    .textInputAutocapitalization(.words)
                    .autocorrectionDisabled(true)
                
                Stepper("Guests \(guestsCount)", value: $guestsCount, in:1...maxGuest)
                Stepper("Childern \(kidCount)", value: $kidCount, in:0...maxGuest)
                
                
            }
            Section(header: Text("Contact Details")){
                TextField("Phone", text: $phoneNumber)
                    .keyboardType(.numberPad)
                    .autocorrectionDisabled(true)
                TextField("Email", text: $emailAddress)
                    .keyboardType(.emailAddress)
                    .autocorrectionDisabled(true)
            }
            Section(header: Text("Action")){
                Button("Reserve now"){
                    previewText = """
                        Name: \(userName)
                        Guests: \(guestsCount)
                        Phone: \(phoneNumber)
                        Email: \(emailAddress)
                        """
                }
                
            }
            Section(header: Text(" Preview")){
                Text(previewText)
                    .font(.footnote)
                    .foregroundStyle(Color.secondary)
                    .textSelection(.enabled)
            }
        }
    }
}

#Preview {
    ReservationForm()
}
