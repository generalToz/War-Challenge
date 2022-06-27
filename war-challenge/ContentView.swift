//
//  ContentView.swift
//  war-challenge
//
//  Created by Alex Tosspon on 6/14/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    
    var body: some View {
        ZStack {
            //background image
            Image("background")
                .ignoresSafeArea()
            
            //forground content
            VStack {
                //logo
                Spacer()
                Image("logo")
                
                //cards
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                //deal button
                Spacer()
                Button {

                    // Generate a random number between 2 and 13
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    // Update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    // Update the score
                    if playerRand > cpuRand {
                        playerScore += 1
                    } else if cpuRand > playerRand {
                        cpuScore += 1
                    }
                    
                    

                } label: {
                    Image("dealbutton")
                }

            
                //score
                Spacer()
                HStack {
                    Spacer()
                    VStack(alignment: .center) {
                        Text("Player")
                            .font(.headline).padding(.bottom,10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            
                    }
                    Spacer()
                    VStack(alignment: .center) {
                        Text("CPU")
                            .font(.headline).padding(.bottom,10.0)
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
