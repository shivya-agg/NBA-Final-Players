//
//  PlayerList.swift
//  NBA Final Players
//
//  Created by Capgemini-DA202 on 11/25/22.
//

import SwiftUI

struct PlayerList: View {
    var body: some View {
        NavigationView {
        List(players) {
            currentPlayer in
            NavigationLink(destination: PlayerDetail(player: currentPlayer)) {
                PlayerRow(player: currentPlayer).frame(height: 60)
            }
        }.navigationBarTitle(Text("NBA Finals Players"))
    }
}
}

struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlayerList()
        }	
    }
}
