//
//  DrinkSizeSwitcher.swift
//  Lemon Resturant
//
//  Created by Eric Dorsey on 9/23/26.
//

import SwiftUI

struct DrinkSizeSwitcher: View {
    @State private var size = 1
    
    
    var body: some View {
        
        VStack {
            HStack{
                Text("Drink Sizes")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.orange)
                    .multilineTextAlignment(.center)
                    .padding()
            }
            ZStack {
                switch size {
                case 1:
                    Text("🥃")
                        .font(.system(size: 100))
                        .foregroundColor(.orange)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 20)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding(.horizontal, 10)
                    
                case 2:
                    Text("🥃")
                        .font(.system(size: 140))
                        .foregroundColor(.white)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 20)
                        .background(Color.orange)
                        .cornerRadius(10)
                        .padding(.horizontal, 10)
                    
                case 3:
                    Text("🥃")
                        .font(.system(size: 170))
                        .foregroundColor(.white)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 20)
                        .background(Color.yellow)
                        .cornerRadius(10)
                        .padding(.horizontal, 10)
                    
                default :
                    Text("🥃")
                        .font(.system(size: 100))
                }
                        
            }
            .animation(.easeInOut(duration: 0.3), value: size)
            
            switch size {
            case 1:
                Text("Small")
                    .font(.title)
                    .foregroundStyle(Color.yellow)
                
            case 2:
                Text("Medium")
                    .font(.title)
                    .foregroundStyle(Color.yellow)

            case 3:
                Text("Large")
                    .font(.title)
                    .foregroundStyle(Color.yellow)

            default:
                Text("Small")
            }
            HStack {
                Button(action: {
                    self.size = 1
                }) {
                    Text("Small")
                }
                Button(action: {
                    self.size = 2
                }) {
                    Text("Medium")
                }
                Button(action: {
                    self.size = 3
                }) {
                    Text("Large")
                }
            }
            .buttonStyle(.glass)
            .foregroundStyle(Color.orange)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.gray.edgesIgnoringSafeArea(.all))
    }
}

#Preview {
    DrinkSizeSwitcher()
}
