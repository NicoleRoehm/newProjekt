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
        VStack{
            NavigationStack{
                List{
                    ForEach(viewModel.savedRezepte){ rezept in
                        
                        NavigationLink(value: rezept.rezeptName){
                            
                        }
                    }.onDelete(perform: viewModel.deletRezept(indexSet:))
                    
                }.toolbar{
                    Button{} label: {
                        Text("Add Recipes")
                        Image(systemName: "plus")
                    }
                }
                .navigationTitle("Recipes")
                
                .sheet(isPresented: $isDrawerOpen, content: {
                    AddRezeptView()
                })
                .navigationDestination(for: Rezept.self){
                    rezept in  RezeptDetailView(rezeptName: "BrokkoliAuflauf", beschreibung: "Beschreibung", zutaten: "Brokkoli", portionen: 2)
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
