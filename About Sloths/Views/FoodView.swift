//
//  FoodView.swift
//  About Sloths
//
//  Created by Andrew Pitblado on 2023-06-12.
//

import SwiftUI

struct FoodView: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color.blue.opacity(0.7), Color.green.opacity(0.6)], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            
            VStack{
                Text("What do Sloths eat?")
                    .padding()
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .background(Color("CustomColor"))
                    .clipShape(RoundedRectangle(cornerRadius: 15.0, style: .continuous))
                    .shadow(color:.black, radius: 10)
                    .padding()
                
                ScrollView{
                    
                    VStack{
                        Text(information.dietDisc)
                            .padding()
                            .font(.headline)
                            .fontWidth(.standard)
                            .lineSpacing(5.0)
                            .background(Color(UIColor.systemBackground))
                            .clipShape(RoundedRectangle(cornerRadius: 15.0, style: .continuous))
                            .padding()
                        
                        Text("Two-Toe Sloth Diet")
                            .padding()
                            .font(.title)
                            .fontWeight(.semibold)
                            .fontDesign(.rounded)
                            .background(Color("CustomColor"))
                            .clipShape(RoundedRectangle(cornerRadius: 15.0, style: .continuous))
                            .shadow(color:.black, radius: 20)
                            .padding()
                        ScrollView(.horizontal){
                            Spacer()
                            HStack{
                                VStack{
                                    Text("Jobo")
                                        .padding()
                                        .font(.title3)
                                        .fontWeight(.semibold)
                                        .background(Color("CustomColor2"))
                                        .clipShape(RoundedRectangle(cornerRadius: 15.0, style: .continuous))
                                    information.foods1[1]
                                        .resizable()
                                        .frame(width: 350, height: 300)
                                        .aspectRatio(contentMode: .fit)
                                        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                                        .shadow(color: .black, radius: 20)
                                        .padding(10)
                                   
                                }
                                .padding(10)
                                .background(.blue.opacity(0.5))
                                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                                
                              
                                
                                VStack{
                                    Text("Barrigon Flowers")
                                        .padding()
                                        .font(.title3)
                                        .fontWeight(.semibold)
                                        .background(Color("CustomColor2"))
                                        .clipShape(RoundedRectangle(cornerRadius: 15.0, style: .continuous))
                                    information.foods2[1]
                                        .resizable()
                                        .frame(width: 350, height: 300)
                                        .aspectRatio(contentMode: .fit)
                                        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                                        .shadow(color:.black,radius: 20)
                                        .padding(10)
                                }
                                
                                .background(.blue.opacity(0.5))
                                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                            }
                        }
                        
                        Text("Three-Toe Sloth Diet")
                            .padding()
                            .font(.title)
                            .fontWeight(.semibold)
                            .fontDesign(.rounded)
                            .background(Color("CustomColor"))
                            .clipShape(RoundedRectangle(cornerRadius: 15.0, style: .continuous))
                            .shadow(color:.black, radius: 20)
                            .padding()
                        
                        ScrollView(.horizontal){
                            Spacer()
                            HStack{
                                
                                VStack{
                                    Text("Cacao Pods")
                                        .padding()
                                        .font(.title3)
                                        .fontWeight(.semibold)
                                        .background(Color("CustomColor2"))
                                        .clipShape(RoundedRectangle(cornerRadius: 15.0, style: .continuous))
                                    information.foods2[0]
                                        .resizable()
                                        .frame(width: 350, height: 300)
                                        .aspectRatio(contentMode: .fit)
                                        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                                        .padding(10)
                                }
                                .padding(10)
                                .background(.blue.opacity(0.5))
                                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                                
                                
                                VStack{
                                    Text("Euphorbiaceae")
                                        .padding()
                                        .font(.title3)
                                        .fontWeight(.semibold)
                                        .background(Color("CustomColor2"))
                                        .clipShape(RoundedRectangle(cornerRadius: 15.0, style: .continuous))
                                    information.foods1[0]
                                        .resizable()
                                        .frame(width: 350, height: 300)
                                        .aspectRatio(contentMode: .fit)
                                        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                                        .shadow(color:.black,radius: 10)
                                        .padding(10)
                                }
                                .padding(10)
                                .background(.blue.opacity(0.5))
                                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                                VStack{
                                    Text("Fig Trees")
                                        .padding()
                                        .font(.title3)
                                        .fontWeight(.semibold)
                                        .background(Color("CustomColor2"))
                                        .clipShape(RoundedRectangle(cornerRadius: 15.0, style: .continuous))
                                    information.foods1[2]
                                        .resizable()
                                        .frame(width: 350, height: 300)
                                        .aspectRatio(contentMode: .fit)
                                        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                                        .shadow(color:.black,radius: 10)
                                        .padding(10)
                                }
                                .padding(10)
                                .background(.blue.opacity(0.5))
                                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                                
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
    FoodView()
}
