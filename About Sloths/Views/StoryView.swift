//
//  StoryView.swift
//  About Sloths
//
//  Created by Andrew Pitblado on 2023-06-12.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
        ZStack {
            
            LinearGradient(colors: [Color.blue.opacity(0.7), Color.green.opacity(0.6)], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            
            VStack{
                Text("Lets look back at the history of the sloth!")
                    .padding()
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .background(Color(UIColor.systemBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 15.0, style: .continuous))
                
                ScrollView{
                    
                    Text(information.story)
                        .padding()
                        .fontWeight(.semibold)
                        .background(Color(UIColor.systemBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 15.0, style: .continuous))
                        .lineSpacing(3.0)
                        .padding()
                    
                    ScrollView(.horizontal){
                        Spacer()
                        HStack{
                            VStack {
                            
                                Text(information.slothsTitles[0])
                                    .padding()
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .background(Color(UIColor.systemBackground))
                                    .clipShape(RoundedRectangle(cornerRadius: 15.0, style: .continuous))
                                    .shadow(color:.black,radius: 10)
                                    
                                information.sloths[0]
                                    .resizable()
                                    .frame(width: 350, height: 300)
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                                    .padding(20)
                                      
                            }
                            VStack {
                                Text(information.slothsTitles[1])
                                    .padding()
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .background(Color(UIColor.systemBackground))
                                    .clipShape(RoundedRectangle(cornerRadius: 15.0, style: .continuous))
                                    .shadow(color:.black,radius: 10)
                                
                                information.sloths[1]
                                    .resizable()
                                    .frame(width: 350, height: 300)
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                                .padding(20)
                            }
                            VStack {
                                Text(information.slothsTitles[2])
                                    .padding()
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .background(Color(UIColor.systemBackground))
                                    .clipShape(RoundedRectangle(cornerRadius: 15.0, style: .continuous))
                                    .shadow(color:.black,radius: 10)
                                
                                information.sloths[2]
                                    .resizable()
                                    .frame(width: 350, height: 300)
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                                .padding(20)
                            }
                            VStack {
                                Text(information.slothsTitles[3])
                                    .padding()
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .background(Color(UIColor.systemBackground))
                                    .clipShape(RoundedRectangle(cornerRadius: 15.0, style: .continuous))
                                    .shadow(color:.black,radius: 10)
                                
                                information.sloths[3]
                                    .resizable()
                                    .frame(width: 350, height: 300)
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                                .padding(20)
                            }
                        }
                    }
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
    StoryView()
}
