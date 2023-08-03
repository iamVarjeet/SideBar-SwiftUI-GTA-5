//
//  ProfilePage.swift
//  FirstProject
//
//  Created by Varjeet Singh on 02/08/23.
//

import SwiftUI

struct ProfilePage: View {
    var body: some View {

      VStack(spacing: 50){
        Image("Gta 2").resizable().frame(width: 300, height: 300).scaledToFit()
        Text("This is Profile Page").font(.largeTitle).fontWeight(.heavy).foregroundColor(.white)
      }.frame(maxWidth: .infinity, maxHeight: .infinity).background(Color("Color Green 1"))
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
