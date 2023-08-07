//
//  CardBack.swift
//  About Sloths
//
//  Created by Andrew Pitblado on 2023-06-13.
//

import SwiftUI

struct CardBack: View {
    let width: CGFloat
    let height: CGFloat
    @Binding var degree: Double
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                            .stroke(.blue.opacity(0.7), lineWidth: 3)
                            .frame(width: width, height: height)
                        
            RoundedRectangle(cornerRadius: 20)
                            .fill(.blue.opacity(0.2))
                            .frame(width: width, height: height)
                            .shadow(color: .gray, radius: 2, x: 0, y: 0)

            RoundedRectangle(cornerRadius: 20)
                            .fill(.blue.opacity(0.7))
                            .padding()
                            .frame(width: width, height: height)
                        
            RoundedRectangle(cornerRadius: 20)
                            .stroke(.blue.opacity(0.7), lineWidth: 3)
                            .padding()
                            .frame(width: width, height: height)
                       
            
            Image(systemName: "questionmark.square.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundStyle(Color(UIColor.systemBackground))
                
                
                        
//            Image(systemName: "seal.fill")
//                            .resizable()
//                            .frame(width: 40, height: 40)
//                            .foregroundColor(.blue.opacity(0.7))
//
//            Image(systemName: "seal")
//                            .resizable()
//                            .frame(width: 80, height: 80)
//                            .foregroundColor(.white)
//                        
//            Image(systemName: "seal")
//                            .resizable()
//                            .frame(width: 100, height: 100)
//                            .foregroundColor(.blue.opacity(0.7))
            
            
            
            
            
            
            
        }
        .rotation3DEffect(
            Angle(degrees: degree),
                                  axis: (x: 0.0, y: 1.0, z: 0.0)
        )
    }
}

#Preview {
    CardBack(width: 150, height: 200, degree: .constant(0))
}
