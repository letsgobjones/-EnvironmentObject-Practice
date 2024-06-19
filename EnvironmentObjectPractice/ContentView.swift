//
//  ContentView.swift
//  EnvironmentObjectPractice
//
//  Created by Brandon Jones on 6/19/24.
//

import SwiftUI


class AppState: ObservableObject {
  //Pre iOS 17
  @Published var isON: Bool = false
  
}




struct LightBulbView: View {
  
  
  @EnvironmentObject private var appState: AppState
  var body: some View {
    VStack {
      Image(systemName: appState.isON ? "lightbulb.fill" : "lightbulb")
        .font(.largeTitle)
        .foregroundStyle(appState.isON ? .yellow : .black)
      Button("Toggle") {
        appState.isON.toggle()
        
      }

  }
}
}

struct LightRoomView: View {
  var body: some View {
    LightBulbView()
  }
}


struct ContentView: View {
  
  @EnvironmentObject private var appState: AppState
    var body: some View {
        VStack {
          LightRoomView()
        }
        .padding()
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(appState.isON ? .black : .white)
    }
}

#Preview {
    ContentView()
    .environmentObject(AppState())
}
