//
//  HomeView.swift
//  Todo
//
//  Created by Yannick Fumukani on 4/16/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        VStack {
            NavigationStack{
                
                GeometryReader { proxy in
                    
                    ScrollView{
                        
                   
                    VStack {
                        
                        HStack {
                            Text("Recent projects")
                                .font(.title)
                                .fontWeight(.bold)
                            
                            Spacer()
                            Text("View all")
                                .font(.title2)
                        }
                        
                        
                        HStack {
                            VStack(alignment: .leading) {
                                
                                Text("Jaden's portfolio")
                                    .font(.title)
                                    .fontWeight(.black)
                                    .foregroundColor(.white)
                                
                                Text("This is a web portfolio for my son whose name is jaden fumukani")
                                //                                .font(.)
                                    .fontWeight(.bold)
                                //                                .fontDesign(.rounded)
                                    .foregroundColor(.darkGray)
                                
                                Spacer()
                                
                                HStack (alignment: .center) {
                                    Text("\(45)")
                                        .font(.largeTitle)
                                        .fontWeight(.black)
                                        .foregroundColor(.white)
                                    Spacer()
                                    
                                    VStack (alignment: .trailing) {
                                        ProgressBarView(percentage: 0.7, fillColor: .green)
                                            .frame(maxWidth: 50)
                                            .offset(y: 25)
                                        Text("75% done!")
                                            .font(.callout)
                                            .fontWeight(.heavy)
                                            .foregroundColor(.white)
                                            .offset(y: -20)
                                    }
                                    
                                }
                                
                                
                                
                            }
                            .padding()
                            .frame(maxWidth: proxy.size.width / 1)
                            .fixedSize(horizontal: false, vertical: true)
//                            .frame(height: proxy.size.height / 3)
                            .background(.purpleApp)
                            
                        }
                        
                        
                        
                        //                    Test container
                        
                        HStack {
                            VStack(alignment: .leading) {
                                
                                Text("Jarvis Test")
                                    .font(.title)
                                    .fontWeight(.black)
                                //                                .fontDesign(.rounded)
                                    .foregroundColor(.white)
                                
                                Text("Wonderful Jarvis test preparation")
                                //                                .font(.)
                                    .fontWeight(.bold)
                                //                                .fontDesign(.rounded)
                                    .foregroundColor(.darkGray)
                                
                                Spacer()
                                
                                HStack (alignment: .center) {
                                    Text("\(32)")
                                        .font(.largeTitle)
                                        .fontWeight(.black)
                                        .foregroundColor(.white)
                                    Spacer()
                                    
                                    VStack (alignment: .trailing) {
                                        ProgressBarView(percentage: 0.37, fillColor: .green)
                                            .frame(maxWidth: 50)
                                            .offset(y: 25)
                                        Text("37% done!")
                                            .font(.callout)
                                            .fontWeight(.heavy)
                                            .foregroundColor(.white)
                                            .offset(y: -20)
                                    }
                                    
                                }
                                
                                
                                
                            }
                            .padding()
                            .frame(maxWidth: proxy.size.width / 1)
                            .fixedSize(horizontal: false, vertical: true)
                            .background(.blue)
                            
                            
                        }
                        
                        //                    End test container
                        
                        
                        
                        //                    Test container
                        
                        HStack {
                            VStack(alignment: .leading) {
                                
                                Text("We are the world")
                                    .font(.title)
                                    .fontWeight(.black)
                                //                                .fontDesign(.rounded)
                                    .foregroundColor(.white)
                                
                                Text("Wonderful Jarvis test preparation")
                                //                                .font(.)
                                    .fontWeight(.bold)
                                //                                .fontDesign(.rounded)
                                    .foregroundColor(.darkGray)
                                
                                Spacer()
                                
                                HStack (alignment: .center) {
                                    Text("\(32)")
                                        .font(.largeTitle)
                                        .fontWeight(.black)
                                        .foregroundColor(.white)
                                    Spacer()
                                    
                                    VStack (alignment: .trailing) {
                                        ProgressBarView(percentage: 0.37, fillColor: .green)
                                            .frame(maxWidth: 50)
                                            .offset(y: 25)
                                        Text("37% done!")
                                            .font(.callout)
                                            .fontWeight(.heavy)
                                            .foregroundColor(.white)
                                            .offset(y: -20)
                                    }
                                    
                                }
                                
                                
                                
                            }
                            .padding()
                            .frame(maxWidth: proxy.size.width / 1)
                            .fixedSize(horizontal: false, vertical: true)
                            .background(.green)
                            
                            
                        }
                        
                        //                    End test container
                        
                        
                        
                    }
                    .padding()
                        
                    }
                }
                
            }
        }
//        .fixedSize(horizontal: false, vertical: true)
//        .frame(minHeight: 900)
        
    }
}

#Preview {
    HomeView()
}
