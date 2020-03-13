//
//  ContentView.swift
//  Twitter
//
//  Created by Jovan on 3/8/20.
//  Copyright © 2020 Jovan. All rights reserved.
//

import SwiftUI
import Firebase
import SDWebImageSwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Home().tabItem { Image("Home")
            }.tag(0)
            
            Text("Search").tabItem { Image("Search")
            }.tag(1)
            
            Text("Notifications").tabItem { Image("Notifications")
            }.tag(2)
            
            Text("Messages").tabItem { Image("Messages")
            }.tag(3)
        
        }.accentColor(.blue)
            .edgesIgnoringSafeArea(.top)
    }
}

struct Home: View {
    var body: some View {
        
        NavigationView{
            ZStack{
                
                List(0..<15){i in
                    Text("Tweets \(i)")
                    
                }
                
                VStack{
                    Spacer()
                    HStack{
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }) {
                            Image("Tweet")
                            .resizable()
                                .frame(width:20, height: 20)
                            .padding()
                        }.background(Color("bg"))
                            .foregroundColor(Color.white)
                        .clipShape(Circle())
                        
                    }.padding()
                }
            }.navigationBarTitle("Home", displayMode: .inline)
            .navigationBarItems(leading:
                
                Image("person")
                .resizable()
                    .frame(width:25, height:25)
                    .padding(.all, 10)
                .background(Color.green)
                .clipShape(Circle())
                    .onTapGesture {
                        print("slide out menu")
                }
            )
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
