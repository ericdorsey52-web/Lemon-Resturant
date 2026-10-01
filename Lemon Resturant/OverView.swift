//
//  OverView.swift
//  Lemon Resturant
//
//  Created by Eric Dorsey on 9/30/26.
//

import SwiftUI

struct OverView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Lemon Resturant")
                    .font(.system(size: 60))
                    .bold()
                    .foregroundStyle(Color.yellow)
                    .multilineTextAlignment(.center)
                
                Text("Your one stop shop for all your food needs")
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundStyle(Color.orange)
                
                Image(systemName: "fork.knife")
                    .font(.system(size: 100))
                    .foregroundStyle(Color.yellow)
                VStack {
                    NavigationLink {
                        DrinkSizeSwitcher()
                    } label: {
                        MenuButton(tile: "Drink Size", icon: "cup.and.saucer.fill")
                    }
                    NavigationLink {
                        Data_List_View()
                    } label: {
                        MenuButton(tile: "Data List", icon: "list.bullet")
                    }
                    NavigationLink {
                        ReservationForm()
                    } label: {
                        MenuButton(tile: "Reservation", icon: "person.crop.circle.badge.ellipsis")
                    }
                    NavigationLink {
                        BillCalculatorView()
                    } label : {
                        MenuButton(tile: "Bill Calculator", icon: "money")
                    }
                    NavigationLink {
                        ResturantInfoView()
                    } label: {
                        MenuButton(tile: "Resturant Info", icon: "info.circle")
                    }
                }
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black.opacity(0.45))
        }
    }
 struct MenuButton: View {
     let tile: String
     let icon: String
     
     var body: some View {
         HStack {
             Image(systemName: icon)
                 .font(.system(size: 30))
                 .foregroundStyle(Color.yellow)
             Text(tile)
                 .font(.system(size: 20))
                 .foregroundStyle(Color.yellow)
                 
         }
         .padding()
         .background(Color.yellow.opacity(0.15))
         .frame(maxWidth: .infinity)
         .clipShape(RoundedRectangle(cornerRadius: 10))
     }
        
    }
}

#Preview {
    OverView()
}
