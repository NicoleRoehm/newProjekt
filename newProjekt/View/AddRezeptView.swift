//
//  AddRezeptView.swift
//  newProjekt
//
//  Created by Nicole Röhm on 08.06.23.
//

import SwiftUI

struct AddRezeptView: View {
    @State var rezeptName : String
    @State var beschreibung: String
    @State var zutaten: String
    @State var portionen: Int16
    @Binding var isDrawerOpen : Bool
    @StateObject var viewModel = RezeptViewModel()
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct AddRezeptView_Previews: PreviewProvider {
    static var previews: some View {
        AddRezeptView(rezeptName: "BrokkoliAuflauf", beschreibung: "Beschreibung", zutaten: "Brokkoli", portionen: 2, isDrawerOpen: .)
    }
}
