//
//  StatsText.swift
//  NBA Final Players
//
//  Created by Capgemini-DA202 on 11/25/22.
//

import SwiftUI

//REUSABLE VIEWS
struct StatsText: View {
    //properties
    var statName: String
    var statValue: String
    
    var body: some View {
        
            HStack(alignment: .center) {
            Text(statName + ":").font(.system(size: 40)).fontWeight(.bold).padding(.leading, 30) //this one remains fixed
                Text(statValue).font(.system(size: 50)).fontWeight(.light) .padding(.trailing, 20) //this text keeps on changing
            Spacer()
            }
    }
}

struct StatsText_Previews: PreviewProvider {
    static var previews: some View {
        StatsText(statName: "Age", statValue: "35")
    }
}
