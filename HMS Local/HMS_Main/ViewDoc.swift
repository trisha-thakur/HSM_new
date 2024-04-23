//
//  ViewDoc.swift
//  HMS_Main
//
//  Created by Rupaj Sen on 23/04/24.
//

import SwiftUI

struct ViewDoc: View {
    let doctors: [Doctor] = [
        Doctor(name: "Dr. Jane Cooper", specialization: "Dentist", photo: "doctorImage"),
        Doctor(name: "Dr. Robert Fox", specialization: "Dentist", photo: "doctorImage"),
        Doctor(name: "Dr. Jacob Jones", specialization: "Dentist", photo: "doctorImage")
    ]
    
    var body: some View {
        List(doctors) { doctor in
            VStack {
                HStack {
                    if let photo = doctor.photo,
                       let img = UIImage(named: photo) {
                        Image(uiImage: img)
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    
                    VStack(alignment:.leading) {
                        Text(doctor.name).font(.headline)
                        Text(doctor.specialization).font(.subheadline)
                    }
                    
                    Spacer()
                    
                    VStack(alignment:.trailing) {
                        Image(systemName:"star.fill").foregroundColor(.yellow)
                        Text("4.8").font(.caption)
                        Text("49 Reviews").font(.caption)
                    }
                }
                Button(action: {
                    // Action to make an appointment
                }) {
                    Text("Make Appointment")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue.opacity(0.2))
                        .foregroundColor(.blue)
                        .cornerRadius(10)
                }
            }
        }
    }
}



#Preview {
    ViewDoc()
}
