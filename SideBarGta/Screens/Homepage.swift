//
//
//  Homepage.swift
//  FirstProject
//
//  Created by Varjeet Singh on 02/08/23.
//

import SwiftUI

struct Homepage: View {
    var body: some View {

      VStack(){
        Image("Gta 1").resizable().frame(width: 300, height: 300)
        Text("This is Home Page").font(.largeTitle).fontWeight(.heavy).foregroundColor(.white)
      }.frame(maxWidth: .infinity, maxHeight: .infinity).background(Color("Color Green 1"))

    }
}

struct Homepage_Previews: PreviewProvider {
    static var previews: some View {
        Homepage()
    }
}
