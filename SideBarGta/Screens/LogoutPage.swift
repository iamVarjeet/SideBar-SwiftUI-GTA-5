//
//  LoginPage.swift
//  FirstProject
//
//  Created by Varjeet Singh on 02/08/23.
//

import SwiftUI


struct LogoutPage: View {
    var body: some View {
      VStack(spacing: 50){
        Image("Gta 3").resizable().frame(width: 300, height: 300)
        Text("This is Logout Page").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color("Color Green 1"))
      }.frame(maxWidth: .infinity, maxHeight: .infinity).background(.black)
    }
}

struct LogoutPage_Previews: PreviewProvider {
    static var previews: some View {
        LogoutPage()
    }
}
