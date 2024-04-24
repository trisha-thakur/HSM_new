//
//  AppointmentView.swift
//  HMS_Main
//
//  Created by Admin on 23/04/24.
//


import SwiftUI

struct AppointmentView: View {
    @State private var dates: Set<DateComponents> = []
    @State private var selectedTimeSlot: Int?
    @State private var name = ""
    
    var body: some View {
        NavigationView {
            ScrollView{
                
                VStack {
                    MultiDatePicker("Select dates", selection: $dates)
                    //.frame(height: 300)
                    
                    HStack {
                        Text("Available time Slot")
                            .font(.title2)
                            .bold()
                        //.padding(.top)
                        
                        Spacer()
                        
                        //                    Text("See All")
                    }
                    //.padding(.top, 60)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) { // Adjust the spacing between each item
                            ForEach(0..<5) { index in
                                Text("\(index + 9):00 AM")
                                    .frame(width: 100, height: 50)
                                    .background(
                                        RoundedRectangle(cornerRadius: 8)
                                            .fill(selectedTimeSlot == index ? Color.blue.opacity(0.2) : Color.gray.opacity(0.2))
                                    )
                                    .cornerRadius(8)
                                    .padding(.vertical, 5)
                                    .padding(.horizontal, 4)
                                    .onTapGesture {
                                        selectedTimeSlot = index
                                    }
                            }
                        }
                        .padding(.horizontal, 10) // Add some padding to the sides
                    }
                    
                    Text("What issue are you facing")
                        .font(.title2)
                        .bold()
                        .padding(.top)
                        .padding(.leading,-100)
                    
                    TextField("Any additional information", text: $name)
                        .foregroundColor(Color.gray.opacity(1))
                    
                        .font(.title3)
                        .padding(.horizontal, 10)
                        .frame(width: 360, height: 52)
                        .overlay(
                            RoundedRectangle(cornerSize: CGSize(width: 4, height: 4))
                                .stroke(Color.gray, lineWidth: 1)
                        )
                    Button(action: {
                        print("Saved")
                    }) {
                        Text("Save")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(10)
                        
                    }
                    .padding()
                    
                    
                    
                    
                }
                .padding()
                .navigationBarTitle("Appointment", displayMode: .inline)
                //.padding(.top, -100)
                .padding(.bottom, -30)
            }
        }

    }
}

#Preview{
    AppointmentView()
}

//#if DEBUG
//struct AppointmentView_Previews: PreviewProvider {
//    static var previews: some View {
//        AppointmentView()
//    }
//}
