//
//  ContentView.swift
//  UI-583
//
//  Created by nyannyan0328 on 2022/06/11.
//

import SwiftUI

struct ContentView: View {
    @State var type : [NavigationType] = []
    var body: some View {
        NavigationStack(path:$type){
            
            
            TabView{
                
                Text("A")
                    .tabItem {
                        Image(systemName: "house.fill")
                    }
                
                Text("B")
                    .tabItem {
                        Image(systemName: "suit.heart.fill")
                    }
                
                Text("C")
                    .tabItem {
                       Image(systemName: "magnifyingglass")
                    }
                
                Text("D")
                    .tabItem {
                        Image(systemName: "person.circle.fill")
                    }
            }
            .navigationTitle("InstaGram")
            .navigationBarTitleDisplayMode(.inline)
          
            .toolbar {
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    
                    
                    Button {
                        
                        type.append(.mailView)
                       
                        
                        
                        
                        
                    } label: {
                        
                        Image(systemName: "paperplane.fill")
                    }

                    
                    
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    
                    
                    Button {
                        
                        type.append(.camer)
                        
                    } label: {
                        
                        Image(systemName: "camera")
                    }

                    
                    
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                    
                    
                    Button {
                        type.append(.Setting)
                        
                    } label: {
                        
                        Image(systemName: "gearshape")
                    }

                    
                    
                }
            }
            .navigationDestination(for: NavigationType.self) { value in
                
                switch value{
                    
                    
                case .camer : CameraView()
                    
                case .Setting : SettingView()
                case .mailView : VStack{
                    
                    Button("To Camera View"){
                        
                        type.append(.camer)
                        
                    }
                    
                    Button("To Home"){
                        
                        type.removeAll()
                        
                    }
                }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

enum NavigationType : String,Hashable{
    case camer = "Camera View"
    case Setting = "SettingV iew"
    case mailView = "Mail View"
}
