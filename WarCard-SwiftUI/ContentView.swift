//
//  ContentView.swift
//  WarCard-SwiftUI
//
//  Created by Darrick on 4/4/21.
//  Copyright © 2021 sTruong Code. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var playerCard = "card2"
    @State private var cpuCard = "card2"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    
    var body: some View {
        
        ZStack {
            
            Image("background")
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button(action: {
                    let playerNum = Int.random(in: 2...14)
                    let cpuNum = Int.random(in: 2...14)
                    
                    self.playerCard = "card\(playerNum)"
                    self.cpuCard = "card\(cpuNum)"
                    
                    if playerNum > cpuNum {
                        self.playerScore+=1
                    } else if cpuNum > playerNum {
                        self.cpuScore+=1
                    }
                    
                }, label: {
                    
                    Image("dealbutton")
                    }).buttonStyle(PlainButtonStyle())
                
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }.foregroundColor(.white)
                Spacer()
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
