//
//  LogoutPage.swift
//  FirstProject
//
//  Created by Varjeet Singh on 02/08/23.
//

import SwiftUI

struct SettingPage: View {
    var body: some View {
      VStack(spacing: 0){
        Image("Gta 4").resizable().frame(width: 300, height: 300).scaledToFit()
        Text("This is Setting Page").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color("Color Green 1"))
      }.frame(maxWidth: .infinity, maxHeight: .infinity).background(Color.black)
    }
}

struct SettingPage_Previews: PreviewProvider {
    static var previews: some View {
        SettingPage()
    }
}
