//
//  Vehicle.swift
//  GKTransFordon
//
//  Created by Toni Löf on 2021-12-14.
//

import Foundation

struct Vehicle : Identifiable, Equatable {
    
    var id = UUID()
    
    var regNr: String
    var inspectionDate: String
    var cityAppropiate: Bool
    
    
    var incidentList: [Incident] = []         // Lista med incidenter
        
    static func == (lhs: Vehicle, rhs: Vehicle) -> Bool {
        return lhs.id == rhs.id
    }
    
    
    func createVehicle() {
        
        
    }
    
    func deleteVehicle() {
        
        
    }
    
    
    
    func printVehicleData() {
        
        
    }
    
}
