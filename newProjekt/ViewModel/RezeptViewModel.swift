//
//  RezeptViewModel.swift
//  newProjekt
//
//  Created by Nicole Röhm on 08.06.23.
//

import Foundation
import CoreData

class RezeptViewModel : ObservableObject{
    
    let container = NSPersistentContainer(name: "Rezepte")
    
    @Published var rezeptList : [Rezept] = []
    
    init() {
        
        container.loadPersistentStores{ _, error in
            if let error = error {
                fatalError("core data store faild: \(error.localizedDescription)")
            }
        }
    }
    
    func fetchRezepte(){
        
        let request = NSFetchRequest<Rezept>(entityName: String(describing: Rezept.self))
        
        do{
            rezeptList = try container.viewContext.fetch(request)
        }catch {
            print("loading the data failed: \(error.localizedDescription)")
        }
    }
    
    func createRezept(rezeptName: String, portionen: Int16, zutaten: String, beschreibung: String){
        
        
    }
    
    func updateRezept(_ rezept: Rezept, rezeptName: String, portionen: Int16, zutaten: String, beschreibung: String){
        
        
    }
    
    func deletRezept(indexSet: IndexSet){
        
        
    }
    
    func fetchRezeptbyRezeptName(){
        
    }
}
    


