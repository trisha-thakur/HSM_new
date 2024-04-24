//
//  DocProfileView.swift
//  HMS_Main
//
//  Created by Admin on 24/04/24.
//

import SwiftUI

struct DocProfileView: View {
    @State private var doctorName = "Dr. Sheldon Cooper"
    @State private var hospitalTitle = "Head of Neurology, XYZ Hospital"
    @State private var qualifications = "MBBS, MD, MS"
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("cover")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .frame(height: 200)
                    .edgesIgnoringSafeArea(.top)
                    .offset(y: -350)
                
                VStack {
                    Spacer()
                    
                    Image("profile")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                        .offset(x: -120, y: -570)
                }
                
                VStack(alignment: .leading) {
                    Text(doctorName)
                        .font(.title)
                        .bold()
                    Text(hospitalTitle)
                        .font(.title3)
                    Text(qualifications)
                        .font(.title3)
                }
                .frame(width: 300, height: 300)
                .padding(.leading, -90)
                .padding(.top, -250)
                
                Spacer()
                
               
            }
        }
    }
}


#Preview {
    DocProfileView()
}
