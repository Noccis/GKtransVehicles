//
//  Test.swift
//  GKTransFordon
//
//  Created by Toni Löf on 2021-12-23.
//

import Foundation
 
import FirebaseFirestoreSwift

struct Test: Codable , Identifiable{
    @DocumentID var id : String?
    var name : String
    var age : Int
   
}
