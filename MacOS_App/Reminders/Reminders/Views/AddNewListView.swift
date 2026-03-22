//
//  AddNewListView.swift
//  Reminders
//
//  Created by 김도연 on 3/22/26.
//

import SwiftUI

struct AddNewListView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject private var vm: AddNewListViewModel
    
    public init(vm: AddNewListViewModel) {
        self.vm = vm
    }
    
    var body: some View {
        Form {
            VStack(alignment: .leading) {
                Text("New List")
                    .font(.headline)
                    .padding(.bottom, 20)
                
                HStack {
                    Text("name: ")
                    TextField("", text: $vm.name)
                }
                
                HStack {
                    Text("color: ")
                    ColorListView(selectedColor: $vm.color)
                }
                
                HStack {
                    Spacer()
                    
                    Button("Cancel") {
                        presentationMode.wrappedValue.dismiss()
                    }
                    .foregroundStyle(.red)
                    
                    Button("Confirm") {
                        vm.save()
                        presentationMode.wrappedValue.dismiss()
                    }
                    .disabled(vm.name.isEmpty)
                    .buttonStyle(.borderedProminent)
                }
            }
        }
        .frame(minWidth: 300)
        .padding() //: form
        
    }
}

#Preview {
    let viewContext = CoreDataManager.shared.persistentContainer.viewContext
    AddNewListView(vm: AddNewListViewModel(context: viewContext))
}
