//
//  FunFacts.swift
//  About Sloths
//
//  Created by Andrew Pitblado on 2023-06-12.
//

import SwiftUI

struct FunFacts: View {
    
    private var threeColumnGrid = [GridItem(.flexible()),GridItem(.flexible())]
    

    var body: some View {
        ZStack{
            LinearGradient(colors: [Color.blue.opacity(0.7), Color.green.opacity(0.6)], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            
            
                VStack{
                    Text("Here are some Fun Facts about Sloths!")
                        .padding()
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .background(Color(UIColor.systemBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 15.0, style: .continuous))
                        .padding()
                    
                    
                    ScrollView{
                        LazyVGrid(columns:threeColumnGrid, spacing: 10){
    
                            ForEach(information.funfacts.indices, id: \.self ){index in
                                CardFlip(text:information.funfacts[index])
                                    
                                
                                
                            }
                                                
                        }
                        .padding(.horizontal)
                    }
                    Spacer()
                    Rectangle()
                        .frame(height:0)
                        .background(.thinMaterial)
                    
                }
            
            
        }
    }
}

#Preview {
    FunFacts()
}
