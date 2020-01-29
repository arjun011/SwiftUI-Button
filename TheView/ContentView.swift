//
//  ContentView.swift
//  TheView
//
//  Created by Arjun on 24/01/20.
//  Copyright © 2020 Akruti Panchal. All rights reserved.
//

import SwiftUI

struct Button_Image:View {
    var body: some View {
        VStack{
            Text("Button")
                .font(.largeTitle)
            Text("With Images")
                .foregroundColor(.gray)
            Button(action: {
                //Action
            }, label: {
                Image("1")
                .clipped()
                .frame(width: 150, height: 80)
                .cornerRadius(10)
            })
            
            Text("This is because of the image redering mode set to templete by default you should chnage to orignal")
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .layoutPriority(1)
            
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
    }
}

struct Button_SfSymbols:View {
    var body: some View {
        VStack(spacing:10) {
            Text("Button")
                .font(.title)
            Text("With Sf symbols")
                .foregroundColor(.gray)
            Text("Button can be composed with SF Symbols to.")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
            
            Button(action: {
                //Action
            }, label: {
                Text("Button with symbol")
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
            
            
            
        }
    }
}

struct Button_border:View {
    var body:some View {
        VStack(spacing:15) {
            Text("Button")
                .font(.title)
            Text("With border")
                .foregroundColor(.gray)
            Text("Appling border can add a nice effect to your buttons.Here are some options.")
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth:.infinity)
                .background(Color.blue)
            
            Button(action: {
                //Action
            }, label: {
                Text("Square border button")
                    .padding()
                    .border(Color.orange)
                    
            })
            
            Button(action: {
                //Actoion
            }, label: {
                Text("Rounded border button")
                .padding()
                .border(Color.pink)
                .cornerRadius(10)
            })
            
            Text("Looks what happed when I tried to add corner radius on button. It's clipping the corners Here is a different way you can accomplish this.")
            .padding()
                .background(Color.blue)
                .foregroundColor(.white)
            
            Button(action: {
                //Action
            }, label: {
                Text("Border button")
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.orange, lineWidth: 1)
                )
            })
            
        }
    }
}
struct Button_background:View {
    var body: some View {
        VStack(spacing:20){
            Text("Button")
                .font(.title)
            Text("With Backgrounds")
                .foregroundColor(.gray)
            Text("As with most views, we can also customize the background and add a shadow")
            .padding()
                .frame(maxWidth:.infinity)
                .foregroundColor(.white)
                .background(Color.blue)
            
            Divider()
            
            Button(action: {
                // Action
            }, label: {
                Text("Solid Button")
                .padding()
                .background(Color.purple)
                    .foregroundColor(.white)
                .cornerRadius(10)
            })
            
            Divider()
           
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
            
            Divider()
            
            Button(action: {
                //Action
            }, label: {
                Text("Button with Rounded end")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(.infinity)
                    
            })
 
            Spacer()
            
            
        }
    }
}
struct Button_TextComposition:View  {
    var body: some View {
        VStack(spacing:10){
            Text("Button")
                .font(.largeTitle)
            Text("Composition")
                .font(.title)
                .foregroundColor(.gray)
            Text("You can add more than one text view to a button. By default they composed within VStack")
                .padding()
                .frame(maxWidth:.infinity)
                .background(Color.blue)
                .foregroundColor(.white)
            Button(action: {
                //Code here
            }, label: {
                VStack{
                    Text("New User")
                        .font(.title)
                    Text("(Register here)")
                }
            })
            
            Text("Using an HStack")
            .padding()
                .frame(maxWidth:.infinity)
                .background(Color.blue)
                .foregroundColor(.white)
            
            Button(action: {
                
            }, label: {
                HStack {
                    Text("Forgot password")
                    Text("Tap to recover")
                    .foregroundColor(.orange)
                    .underline()
                    
                }
                .font(.title)
                
            
            })
            Spacer()
         
        }
    }
}

struct Button_Intro:View {
    var body: some View {
        VStack(spacing:20){
            Text("Button")
            Text("Introduction")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("If You wan to show default text style in a button then you can pass as a String as the first parameter")
                .foregroundColor(.white)
                .background(Color.blue)
                .padding()
            
            Button("Default button Style") {
                // Your code is here
            }
            
            Button(action: {
                // Your Code is here
            }) {
                Text("HeadLine font")
                    .font(.headline)
            }
            Divider()

            Button(action: {}) {
            Text("Foreground Color") .foregroundColor(Color.red)
                }
            Divider()
            
            Button(action: {}) {
                Text("Thin Font Weight") .fontWeight(.thin)
            }
            
        }.font(.title)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
       //Button introduction
            //Button_Intro()
        //Text Composition
           // Button_TextComposition()
        // Backgrounds
           // Button_background()
        // With border
           // Button_border()
        // With Sf symbols
           // Button_SfSymbols()
        // Image
            Button_Image()
      
                
        }

        
    }
}
