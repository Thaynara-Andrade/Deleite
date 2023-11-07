//
//  RegisterDonationView.swift
//  Deleite
//
//  Created by Raina on 06/11/23.
//

import SwiftUI

struct RegisterDonationView: View {
    
    @State var shownextPage = false
    
    var body: some View {
        
        NavigationView{
            ZStack{
                Button ("Next Page"){
                    shownextPage = true
                }
                NavigationLink( destination: SecondViewRegistrer(), isActive: $shownextPage) {
                    EmptyView()
                }
            }
        }
    }
}


struct SecondViewRegistrer: View {
    @State var showSheet:Bool = false
    @State var notifyMeAbout:Bool = false
    @State var NotifyMeAboutType:Bool = false
    @State var vibrateOnRing:Bool = false
    @State var vibrateOnSilent:Bool = false
    @State var name:String = ""
    @State var cep:String = ""
    
    
    var body: some View {
        
        VStack{
            Button {
                showSheet = true
            } label: {
                Text("open Sheet")
                    .padding()
            }
            .sheet(isPresented: $showSheet, onDismiss: nil) {
                
                    NavigationView{
                        Form{
                            Section(header: Text("Informações Pessoais")) {
                                TextField("Nome", text: $name)
                                TextField("CEP", text: $cep)
                                
                            }
                            
                            Section(header: Text("Regional")) {
                                Picker("Selecione a Regional", selection: $notifyMeAbout) {
                                    Text("Regional 1").tag(NotifyMeAboutType)
                                    Text("Regional 2").tag(NotifyMeAboutType)
                                    Text("Regional 3").tag(NotifyMeAboutType)
                                    Text("Regional 4").tag(NotifyMeAboutType)
                                    
                                }
                            }
                        }
                        .navigationTitle("Agendamento")
                        .navigationBarTitleDisplayMode(.inline)

                        .toolbar {
                            ToolbarItem(placement: .navigationBarTrailing) {
                                Button("Cancelar") {
                                    print("Cancelar tapped!")
                                }
                            }
                            ToolbarItem(placement: .navigationBarLeading){
                                Button("Voltar") {
                                    print("Voltar tapped!")
                                }
                            }
                        }
                    }
                
            }
        }
    }
}


#Preview {
    SecondViewRegistrer()
}
