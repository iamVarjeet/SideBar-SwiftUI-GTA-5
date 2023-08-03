//
//  SignupPage.swift
//  FirstProject
//
//  Created by Varjeet Singh on 02/08/23.
//

import SwiftUI

struct SignupPage: View {
    var body: some View {
      VStack(spacing: 50){
        Image("Gta 5").resizable().frame(width: 300, height: 300).scaledToFit()
        Text("This is Signup Page").font(.largeTitle).fontWeight(.heavy).foregroundColor(.white)
      }.frame(maxWidth: .infinity, maxHeight: .infinity).background(Color("Color Green 1"))
    }
}

struct SignupPage_Previews: PreviewProvider {
    static var previews: some View {
        SignupPage()
    }
}
