//
//  ContentView.swift
//  Card War
//
//  Created by Haroon Waqar on 20/07/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var playercard = "card2"
    @State var cpucard = "card13"
    
    @State var playerscore = 0
    @State var cpuscore = 0
    
    var body: some View {
        
        ZStack{
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 35.0) {
                    
                Image("logo")
                
                HStack(spacing: 50.0){
                        
                        Image(playercard)
                        Image(cpucard)
                     
                    }
                   
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                    HStack{
                        
                        Spacer()
                        Text("Player")
                            
                        Spacer()
                        Text("CPU")
                        Spacer()

                    }
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                
                HStack{
                    
                    Spacer()
                    Text(String(playerscore))
                    Spacer()
                    Text(String(cpuscore))
                    Spacer()

                }
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                
            }
            
        }
        
    }
    
    func deal(){
        
        
        //randomize player cards
        let playerCardScore = Int.random(in: 2...14)
        playercard = "card" + String(playerCardScore)
        
        //randomize cpu cards
        let cpuCardScore = Int.random(in: 2...14)
        cpucard = "card" + String(cpuCardScore)
        
        //change score
        if playerCardScore > cpuCardScore {
            playerscore += 1
        }
        else if cpuCardScore > playerCardScore {
            cpuscore += 1
        }
        else {
            playerscore += 1
            cpuscore += 1
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
