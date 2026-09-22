//
//  Bill_calculater.swift
//  Lemon Resturant
//
//  Created by Eric Dorsey on 9/21/26.
//

import SwiftUI

struct BillCalculatorView: View {
    @State private var adults = 3
    @State private var children = 0
    @State private var applyDiscount = false
    @State private var discountCode = ""

    var totalPeople: Int {
        adults + children
    }

    var subtotal: Double {
        Double(adults) * 15.0 + Double(children) * 10.0
    }

    var discount: Double {
        applyDiscount ? subtotal * 0.10 : 0.0
    }

    var tax: Double {
        (subtotal - discount) * 0.08
    }

    var total: Double {
        (subtotal - discount) + tax
    }

    var eachPay: Double {
        totalPeople > 0 ? total / Double(totalPeople) : 0.0
    }

    var body: some View {
        NavigationStack {
            Form {
                Section {
                    HStack(spacing: 10) {
                        Image(systemName: "fork.knife")
                            .font(.title3)
                            .foregroundStyle(.green)
                            .padding(10)
                            .background(Circle().fill(Color.green.opacity(0.15)))

                        VStack(alignment: .leading, spacing: 2) {
                            Text("Bill Calculator")
                                .font(.headline)
                                .bold()

                            Text("Little Lemon")
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                        }
                    }
                }
                .listRowInsets(EdgeInsets(top: 6, leading: 16, bottom: 6, trailing: 16))

                Section(header: Text("Your Group")) {
                    Stepper("Adults: \(adults)", value: $adults, in: 0...100)
                    Stepper("Children: \(children)", value: $children, in: 0...100)
                    Toggle("Apply discount", isOn: $applyDiscount)
                }

                Section(header: Text("Breakdown")) {
                    HStack {
                        Text("subtotal")
                            .foregroundStyle(.secondary)
                        Spacer()
                        Text(String(format: "%f", subtotal))
                    }

                    HStack {
                        Text("Tax 8%")
                            .foregroundStyle(.secondary)
                        Spacer()
                        Text(String(format: "%f", tax))
                    }

                    TextField("", text: $discountCode)

                    HStack {
                        Text("Total")
                            .bold()
                        Spacer()
                        Text(String(format: "$%.2f", total))
                            .bold()
                    }
                }

                Section(header: Text("Per Person")) {
                    HStack {
                        Text("People")
                            .bold()
                        Spacer()
                        Text("\(totalPeople)")
                            .bold()
                    }

                    HStack {
                        Text("Each pay")
                            .bold()
                        Spacer()
                        Text(String(format: "%f", eachPay))
                            .bold()
                    }
                }
            }
            .listSectionSpacing(.compact)
            .scrollDisabled(true)
            .navigationTitle("Bill Calculator")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    BillCalculatorView()
}
