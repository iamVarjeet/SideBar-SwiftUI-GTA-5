//
//  ContentView.swift
//  SideBarGta
//
//  Created by Varjeet Singh on 03/08/23.
//

import SwiftUI
import AVFoundation

struct ContentView: View {

  @State var audioPlayer = SoundPlayer()
  @State var SideBarOpen = false
  @State var ArrayofScreens = [AnyView(Homepage()),AnyView(ProfilePage()),AnyView(SettingPage()),AnyView(SignupPage()),AnyView(LogoutPage())]

  @State var SelectedView = AnyView(Homepage())
  @State var SelectedIndex = 0


    var body: some View {
      ZStack(alignment: .topLeading){

        Color.black.ignoresSafeArea()
        SelectedView.cornerRadius(SideBarOpen ? 50 : 0).offset(x: SideBarOpen ? 350 : 0 , y: SideBarOpen ? 100 : 0 ).scaleEffect(!SideBarOpen ? 1 : 0.8).ignoresSafeArea()

        SideBarView(Selectedindex: $SelectedIndex).offset(x: !SideBarOpen ? -200 : 0)
          .onChange(of: SelectedIndex) { newValue in
            SelectedView = AnyView(ArrayofScreens[newValue])
            withAnimation {
              SideBarOpen.toggle()
            }
            if SideBarOpen{
              audioPlayer.playSound(soundName: "GunShot")
            }else{
              audioPlayer.playSound(soundName: "DrawerClose")
            }
          }

        Button {
          print("Sidebar")
          withAnimation {
            SideBarOpen.toggle()
          }
          if SideBarOpen{
            audioPlayer.playSound(soundName: "GunShot")
          }else{
            audioPlayer.playSound(soundName: "DrawerClose")
          }
        } label: {
          Image(!SideBarOpen ? "Gun Off" : "Gun On").resizable().renderingMode(.template).frame(width: 50, height: 50).foregroundColor(.white)
            .animation(Animation.linear(duration: 0.005), value: SideBarOpen)
        }
        .padding(.leading, 30.0)

      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



class SoundPlayer: NSObject, ObservableObject, AVAudioPlayerDelegate {
    var audioPlayer: AVAudioPlayer?

    func playSound(soundName: String) {
        guard let soundURL = Bundle.main.url(forResource: soundName, withExtension: "wav") else {
            print("Sound file not found.")
            return
        }

        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
            audioPlayer?.delegate = self
            audioPlayer?.prepareToPlay()

            // Set the number of loops to 0 for playing the sound only once
            audioPlayer?.numberOfLoops = 0

            // Set the volume to maximum (1.0) for optimal volume
            audioPlayer?.volume = 1.0

            // Play the sound
            audioPlayer?.play()
        } catch {
            print("Error playing sound: \(error)")
        }
    }
}
