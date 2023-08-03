//
//  SideBarView.swift
//  SideBarGta
//
//  Created by Varjeet Singh on 03/08/23.
//

import SwiftUI

struct SideBarView: View {

  @Binding var Selectedindex:Int
  struct Sidebardata{
    var title: String
    var image: String
  }

   var arrayofItems:[Sidebardata] = [
      Sidebardata(title: "Home", image: "music.note.house.fill"),
      Sidebardata(title: "Profile", image: "person.crop.circle.fill"),
      Sidebardata(title: "Settings", image: "gear.circle"),
      Sidebardata(title: "Signup", image: "key.radiowaves.forward.fill"),
      Sidebardata(title: "Logout", image: "key.fill"),
    ]

    var body: some View {
      VStack(alignment: .leading){
        Spacer().frame(height: 130)
        Image("Gta 2").resizable().frame(width: 200,height: 150)

        VStack(spacing: 30) {
          ForEach(0..<arrayofItems.count,id: \.self) { index in
            Button {
              Selectedindex = index
            } label: {
              HStack(){
                Image(systemName:arrayofItems[index].image).font(.system(size: 30))
                  .foregroundStyle(LinearGradient(colors: [Color("Color Green 1"),.white,Color("Color Green 1")], startPoint: .leading, endPoint: .trailing))

                Text(arrayofItems[index].title).font(.custom("Lemon Milk", size: 20)).foregroundStyle(LinearGradient(colors: [Color("Color Green 1"),.white,Color("Color Green 1")], startPoint: .leading, endPoint: .trailing))
                Spacer()
              }
            }


          }
        }.padding(.leading)
          .padding(.top,60)


        Spacer()
      }.frame(width: 200)
        .frame(maxWidth: .infinity,alignment: .leading)
        .background(.clear).ignoresSafeArea()
    }
}

struct SideBarView_Previews: PreviewProvider {
    static var previews: some View {
      SideBarView(Selectedindex: .constant(0))
    }
}
