//
//  ContentView.swift
//  NBA Final Players
//
//  Created by Capgemini-DA202 on 11/25/22.
//

import SwiftUI

struct PlayerDetail: View {
    var player: Player
    
    var body: some View {
        VStack {
            //Spacer()
            Image(player.team.imageName).resizable().aspectRatio(contentMode:.fit)
            
            //making image circle, adding backgroundcolor, adding border, move image, adding shadow
            Image(player.imageName).clipShape(Circle()).background(Circle().foregroundColor(.white)).overlay(Circle().stroke(Color.white,lineWidth: 4)).offset(x: 0, y: -90).padding(.bottom, -70).shadow(radius: 15)
            
            Text(player.name).font(.system(size: 40)).fontWeight(.heavy)
            
            //use players stats text view
            StatsText(statName: "Age", statValue: "\(player.age)")
            StatsText(statName: "Height", statValue: String(player.height))
            StatsText(statName: "Weight", statValue: "\(player.weight)")
            	
            Spacer() //takes more bottom space
        }.edgesIgnoringSafeArea(.top) //ignores top space
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDetail(player: players[2])
    }
}
