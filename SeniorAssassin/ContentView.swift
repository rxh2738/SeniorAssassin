//
//  ContentView.swift
//  SeniorAssassin
//
//  Created by Rudhmila Hoque on 6/26/24.
//

import SwiftUI

struct DropMenu: Identifiable{
    var id = UUID()
    var title: String
}

let drop = [
    DropMenu(title: "Item1"),
    DropMenu(title: "Item2"),
    DropMenu(title: "Item3"),
    DropMenu(title: "Item4"),
    DropMenu(title: "Item5"),
    DropMenu(title: "Item6"),

]


struct ContentView: View {
    @State var show = false
    @State var name = "Item1"
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                ScrollView{
                    VStack{
                        ForEach(drop){ item in
                            Button{
                                //
                            }label:{
                                Text(item.title).foregroundColor(.white.opacity(0.6))
                                    .bold()
                            }
                            
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical, 15)
                }
            }
            .frame(height: 225)

        }
        .padding()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
