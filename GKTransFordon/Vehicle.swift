//
//  Vehicle.swift
//  GKTransFordon
//
//  Created by Toni Löf on 2021-12-14.
//

import Foundation

struct Vehicle : Identifiable {
    
    var id = UUID()
    
    var regNr: String
    var inspectionDate: String
    
    var incidentList: [Incident] = []         // Lista med incidenter
    
    
    
    
    func createVehicle() {
        
        
    }
    
    func deleteVehicle() {
        
        
    }
    
    
    
    func printVehicleData() {
        
        
    }
    
}
