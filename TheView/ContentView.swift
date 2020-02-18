//
//  ContentView.swift
//  TheView
//
//  Created by Arjun on 24/01/20.
//  Copyright © 2020 Arjun Patel. All rights reserved.
//

import SwiftUI

struct Button_Intro:View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing:20){
                    Button("Default button Style") {
                        // Your code is here
                    }
                    Button(action: {
                        // Your Code is here
                    }) {
                        Text("HeadLine font")
                            .font(.headline)
                    }
                    Button(action: {}) {
                        Text("Foreground Color") .foregroundColor(Color.red)
                    }
                    Button(action: {}) {
                        Text("Thin Font Weight") .fontWeight(.thin)
                    }
                    Button(action: {
                        //Code here
                    }, label: {
                        VStack{
                            Text("New User")
                                .font(.title)
                            Text("(Register here)")
                        }
                    })
                    
                    Button(action: {
                        //Action
                    }, label: {
                        HStack {
                            Text("Forgot password")
                            Text("Tap to recover")
                                .foregroundColor(.orange)
                                .underline()
                        }
                        .font(.title)
                    })
                    VStack(spacing:15) {
                        Button(action: {
                            //Action
                        }, label: {
                            Text("Gift")
                            Image(systemName: "gift.fill")
                        })
                            .padding()
                            .foregroundColor(.orange)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.orange, lineWidth: 1)
                        )
                        
                        Button(action: {
                            //Action
                        }, label: {
                            HStack {
                                Image(systemName: "magnifyingglass")
                                Text("Search")
                                    .padding(.horizontal)
                            }.padding(10)
                        })
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(10)
                        
                        Button(action: {
                            //Action
                        }, label: {
                            VStack{
                                Image(systemName: "video.fill")
                                Text("Record")
                            }
                        })
                            .padding()
                            .background(Color.purple)
                            .foregroundColor(.white)
                            .cornerRadius(.infinity)
                        
                        Button(action: {
                            // Action
                        }, label: {
                            Text("Solid Button")
                                .padding()
                                .background(Color.purple)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        })
                        
                        Button(action: {
                            //Action
                        }, label: {
                            Text("Button with shadow")
                                .foregroundColor(.white)
                                .padding(8)
                                .background(Color.green)
                                .cornerRadius(10)
                        })
                            .shadow(color: .green, radius: 10, x: 0, y: 0)
                        
                        Button(action: {
                            //Action
                        }, label: {
                            Text("Button with Rounded end")
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.orange)
                                .cornerRadius(.infinity)
                            
                        })
                        
                        Button(action: {
                            //Action
                        }, label: {
                            Image(systemName: "pencil.and.outline")
                                .frame(width: 150, height: 100)
                                .cornerRadius(1)
                        })
                        
                        Button(action: {
                            //Action
                        }, label: {
                            ZStack {
                                Image("2").renderingMode(.original)
                                    .clipped()
                                    .frame(width: 100, height: 100)
                                    .cornerRadius(.infinity)
                                Text("Click me!")
                                    .bold()
                                    .foregroundColor(.red)
                                    .background(
                                        Color.white.opacity(0.6)
                                )
                            }
                        })
                    }
                }.font(.title)
                    .padding()
            }
            .navigationBarTitle("Button")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Button_Intro()
        }
    }
}

