//
//  SideBarView.swift
//  Reminders
//
//  Created by 김도연 on 3/21/26.
//

import SwiftUI

struct SideBarView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("All Items Count 10")
            List(1...5, id: \.self) { index in
                Text("List \(index)")
            }
            
            Spacer()
            
            Button {
                print("pressed")
            } label: {
                Text("Add List")
            }
            
        }
    }
}

#Preview {
    SideBarView()
}
