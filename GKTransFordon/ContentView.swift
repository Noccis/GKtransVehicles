//
//  ContentView.swift
//  GKTransFordon
//
//  Created by Toni Löf on 2021-12-14.
//

import SwiftUI
import Firebase


struct ContentView: View {
    
    var db = Firestore.firestore()
    
    @EnvironmentObject var vehicleList : VehiclesList
    
    
    var body: some View {
        
        NavigationView {
            VStack {
                
                
                List() {
                    
                    ForEach(vehicleList.vehicles) { vehicle in
                        NavigationLink(destination: VehicleView(vehicle: vehicle)) {
                            RowView(vehicle: vehicle)
                        }
                        
                    }
                }
                
                Button(action: {
                    //                    print("Beep beep printing")
                    addDataFB()
                }, label: {
                    Text("Skriv ut lista")
                })
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 80, trailing: 0))
                
                
                    .navigationBarTitle("Lastbilar")
                    .navigationBarItems(trailing: NavigationLink(destination: CreateVehicleView()) {
                        Image(systemName: "plus.circle")
                    })
                
                
                
            }
            
        }
    }
    //************
    //    func listenToFirestore() {
    //        db.collection("items").addSnapshotListener { snapshot, err in
    //            guard let snapshot = snapshot else { return }
    //
    //            if let err = err {
    //                print("Error getting document \(err)")
    //            } else {
    //                items.removeAll()
    //                for document in snapshot.documents {
    //                    let result = Result {
    //                        try document.data(as: Item.self)
    //                    }
    //                    switch result {
    //                    case .success(let item) :
    //                        if let item = item {
    //                            //print("Item: \(item)")
    //                            items.append(item)
    //                        } else {
    //                            print("Document does not exist")
    //                        }
    //                    case .failure(let error):
    //                        print("Error decoding item: \(error)")
    //                    }
    //                }
    //            }
    //        }
    //    }
    
    func addDataFB() {
        
        for vehicle in vehicleList.vehicles {
            
            do {
                _ = try db.collection("vehicles").addDocument(from: vehicle)
                print("I think I saved \(vehicle)")
            } catch {
                print("Error saving to DB")
            }
        }
        // db.collection("tmp").addDocument(data: ["name" : "David"])
    }
    
    
    
    
    
    
}


struct RowView: View {
    
    var vehicle: Vehicle
    
    var body: some View {
        
        HStack {
            
            Text(vehicle.regNr)
                .font(.title3)
            Spacer()
            Text(vehicle.inspectionDate)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
