//
//  Vehicle.swift
//  GKTransFordon
//
//  Created by Toni Löf on 2021-12-14.
//

import Foundation
import FirebaseFirestoreSwift
//

struct Vehicle : Identifiable, Equatable, Codable {
    
    @DocumentID var fbid : String?
    var id = UUID()
    
    var regNr: String
    var inspectionDate: String
    var cityAppropiate: Bool
    
    
//    var incidentList: [Incident] = []         // Lista med incidenter
        
//    static func == (lhs: Vehicle, rhs: Vehicle) -> Bool {
//        return lhs.id == rhs.id
//    }
    
    
    
    
    func printVehicleData() {
        
        
    }
    
}

