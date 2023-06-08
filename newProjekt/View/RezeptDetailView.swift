//
//  RezeptDetailView.swift
//  newProjekt
//
//  Created by Nicole Röhm on 08.06.23.
//

import SwiftUI

struct RezeptDetailView: View {
    @State var rezeptName : String 
    @State var beschreibung: String
    @State var zutaten: String
    @State var portionen: Int16
    
    var body: some View {
        VStack{
            
            Text(rezeptName)
                .font(.largeTitle)
            ScrollView{
                HStack{
                    Text("\(portionen)")
                Text(zutaten)
            }
                
            }
            ScrollView{
                Text(beschreibung)
            }
            
        }
    }
}

struct RezeptDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RezeptDetailView(rezeptName: "BrokkoliAuflauf", beschreibung: "Beschreibung", zutaten: "Brokkoli", portionen: 2)
    }
}
