//
//  HomeView.swift
//  newProjekt
//
//  Created by Nicole Röhm on 08.06.23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = RezeptViewModel()
    @State var isDrawerOpen = false
    var body: some View {
        NavigationStack{
            List{
                ForEach(viewModel.rezeptList){ rezept in
                    
                    
                }
                
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
