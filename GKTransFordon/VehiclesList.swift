//
//  VehiclesList.swift
//  GKTransFordon
//
//  Created by Toni Löf on 2021-12-17.
//

import Foundation

class VehiclesList : ObservableObject {
    
    @Published var vehicles = [Vehicle]()
    
    init() {
        addMockData()
    }
    
    func addMockData() {
        vehicles.append(Vehicle(regNr: "YLJ 066", inspectionDate: "Januari", cityAppropiate: true))
        vehicles.append(Vehicle(regNr: "ABC 123", inspectionDate: "Februari", cityAppropiate: false))
        vehicles.append(Vehicle(regNr: "IHK 872", inspectionDate: "Mars", cityAppropiate: false))
        vehicles.append(Vehicle(regNr: "HEJ 666", inspectionDate: "Januari", cityAppropiate: true))
        vehicles.append(Vehicle(regNr: "JWK 728", inspectionDate: "December", cityAppropiate: true))
    }
    /*
     func update(entry: JournalEntry, with content: String) {
          if let index = entries.firstIndex(of: entry) {
              entries[index].content = content
         }
     }
     */
    
    func delete(vehicle: Vehicle) {
         if let index = vehicles.firstIndex(of: vehicle) {
             vehicles.remove(at: index)
        }
    }
   
    
}
