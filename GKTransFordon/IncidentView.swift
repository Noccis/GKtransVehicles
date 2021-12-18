//
//  IncidentView.swift
//  GKTransFordon
//
//  Created by Toni Löf on 2021-12-18.
//

import SwiftUI

struct IncidentView: View {
    let incident = Incident(text: "Fick punka på däcket.")
    
    @State var text : String = ""
    
    var date : String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        
        return dateFormatter.string(from: incident.date)
        
    }
    
    var body: some View {
        
        VStack {
            Text(date)
            Text(incident.text)
        }
    }
}

struct IncidentView_Previews: PreviewProvider {
    static var previews: some View {
        IncidentView()
    }
}
