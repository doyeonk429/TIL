//
//  HomeScreen.swift
//  Reminders
//
//  Created by 김도연 on 3/21/26.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            SideBarView()
            Text("MyListItem")
        }
    }
}

#Preview {
    HomeScreen()
}
