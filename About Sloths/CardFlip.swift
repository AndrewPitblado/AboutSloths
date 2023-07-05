//
//  CardFlip.swift
//  About Sloths
//
//  Created by Andrew Pitblado on 2023-06-14.
//

import SwiftUI

struct CardFlip: View {
    //MARK: Variables
        
        @State var backDegree = 0.0
        @State var frontDegree = -90.0
        @State var isFlipped = false
        let text: String
        
        let width : CGFloat = 175
        let height : CGFloat = 250
        let durationAndDelay : CGFloat = 0.3
        



    //MARK: Flip Card Function
      func flipCard () {
          isFlipped = !isFlipped
          if isFlipped {
              withAnimation(.linear(duration: durationAndDelay)) {
                  backDegree = 90
              }
              withAnimation(.linear(duration: durationAndDelay).delay(durationAndDelay)){
                  frontDegree = 0
              }
          } else {
              withAnimation(.linear(duration: durationAndDelay)) {
                  frontDegree = -90
              }
              withAnimation(.linear(duration: durationAndDelay).delay(durationAndDelay)){
                  backDegree = 0
              }
          }
      }
    
    
    
    var body: some View {
        ZStack{
            CardFront(width: width, height: height, text: text, degree: $frontDegree)
            CardBack(width: width, height: height, degree: $backDegree)
        }
        
        .onTapGesture {
            flipCard()
        }
    }
}

#Preview {
    CardFlip( text: information.funfacts[0])
}
