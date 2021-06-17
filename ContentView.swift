//
//  ContentView.swift
//  warcard
//
//  Created by Daniel Mulangu on 4/23/21.
//

import SwiftUI

struct ContentView: View {
   @State private var playercard = "card6"
   @State private var cpucard = "card8"
   @State private var playerscore = 0
   @State private var cpuscore = 0
    
    
    var body: some View {
        ZStack {
            Image("background")
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playercard)
                    Spacer()
                    Image(cpucard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    //Generate random number between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                   //Update the cards
                    playercard = "card" + String(playerRand)
                    cpucard = "card" + String(cpuRand)
                    
                    //Update the score
                    if(playerRand>cpuRand)
                    {
                        playerscore += 1
                    }
                    else if(cpuRand>playerRand)
                    {
                        cpuscore += 1
                    }
                }, label: {
                        Image("dealbutton")
                    
                })
              
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player").font(.largeTitle).padding(.bottom, 10.0)
                        Text(String(playerscore)).font(.largeTitle)
                    }.foregroundColor(.white)
                    Spacer()
                        VStack{
                            Text("CPU").font  (.largeTitle).padding(.bottom, 10.0)
                            Text(String(cpuscore)).font(.largeTitle)
                        }.foregroundColor(.white)
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
