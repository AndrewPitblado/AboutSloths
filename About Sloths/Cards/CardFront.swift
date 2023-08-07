//
//  CardFront.swift
//  About Sloths
//
//  Created by Andrew Pitblado on 2023-06-13.
//

import SwiftUI

struct CardFront: View {
    let width: CGFloat
    let height: CGFloat
    let text: String
    @Binding var degree: Double
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20.0)
                .fill(Color(UIColor.systemBackground))
                .frame(width:width, height: height)
                .shadow(color:.gray, radius: 20, x: 0, y:0)
            
            
            Text(text)
                .font(.body)
                .multilineTextAlignment(.leading)
                .lineLimit(10)
                .fontWeight(.semibold)
                .padding()
            
            
            
//            Image(systemName: "questionmark.square.fill")
//                .resizable()
//                .frame(width: 100, height: 100)
//                .foregroundStyle(.blue)
            
            
        }
        .rotation3DEffect(
            Angle(degrees: degree),
                                  axis: (x: 0.0, y: 1.0, z: 0.0)
        )
        
        
        
        
        
        
        
        
        
    }
    
    
    
    
}

#Preview {
    CardFront(width: 150, height: 200, text: "String", degree: .constant(0))
}
