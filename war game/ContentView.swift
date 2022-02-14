//
//  ContentView.swift
//  war game
//
//  Created by Shechem Harrison on 2/9/22.
//

import SwiftUI

struct ContentView: View {
    @State private var playerCard = "card4"
    @State private var cpuCard = "card11"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    var body: some View {
        ZStack {
            Image("background").ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button {
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    if playerRand > cpuRand {
                        playerScore += 1
                    } else { cpuScore += 1}
                } label: {
                    Image("dealbutton")
                }
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .padding(.bottom,10)
                            .font(.headline)
                            .foregroundColor(.white)
                        
                        Text(String(playerScore))
                            .padding(.bottom,10)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                        
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .padding(.bottom,10)
                            .font(.headline)
                            .foregroundColor(.white)
                        
                        Text(String(cpuScore))
                            .padding(.bottom,10)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                        
                    }
                    Spacer()
                }
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
