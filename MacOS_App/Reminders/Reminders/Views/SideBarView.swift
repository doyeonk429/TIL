//
//  SideBarView.swift
//  Reminders
//
//  Created by 김도연 on 3/21/26.
//

import SwiftUI

struct SideBarView: View {
    
    @Environment(\.managedObjectContext) private var context: NSManagedObjectContext
    @State private var isPresented: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("All Items Count 10")
            List(1...5, id: \.self) { index in
                Text("List \(index)")
            }
            
            Spacer()
            
            Button {
                print("pressed")
                isPresented = true
            } label: {
                HStack {
                    Image(systemName: Constants.Icons.plusCircle)
                    Text("Add List")
                }
            }
            .buttonStyle(.plain)
            .padding()
            
        }
        .sheet(isPresented: $isPresented) {
            // dismiss
        } content: {
            AddNewListView(vm: AddNewListViewModel(context: context))
        }

    }
}

#Preview {
    SideBarView()
}
