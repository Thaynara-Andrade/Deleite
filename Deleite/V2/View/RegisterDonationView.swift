//
//  RegisterDonationView.swift
//  Deleite
//
//  Created by Raina on 06/11/23.
//

import SwiftUI

struct RegisterDonationView: View {
    
    @State private var newScheduling = SchedulingModel()
    
    @Binding var openRegistrationSheet: Bool
    
    @Environment(\.dismiss) var dismiss
    //    @State var notifyMeAbout:Bool = false
    //    @State var NotifyMeAboutType:Bool = false
    @State var shownextPageRegister:Bool = true
    
    @AppStorage("motherName") var motherName: String = ""
    @State var name:String = ""
    @AppStorage("cep") private var cep:String = ""
    @AppStorage("regional") var regional: Int = 0
    
    var body: some View {
        Form{
            Section(footer:
                HStack(alignment: .center){
                    Image("calendar-blue")
                        .frame(width: 105, height: 105)
                }
                .padding(.leading, 109)
                
            ){}
            
            
            Section(footer:
                HStack(alignment: .center){
                    Text("Adicione seu \n endereço")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                }
                .padding(.leading, 59)
            ){}
            
            Section() {
                if motherName.isEmpty {
                    TextField("Nome", text: $name)
                       .multilineTextAlignment(.leading)
                } else {
                    Text(motherName)
                        .multilineTextAlignment(.leading)
                }
                TextField("CEP", text: $cep)
                    .multilineTextAlignment(.leading)
            }
            
            Section() {
                Picker("Selecione a Regional", selection: $regional) {
                    Text("Regional 1").tag(0)
                    Text("Regional 2").tag(1)
                    Text("Regional 3").tag(2)
                    Text("Regional 4").tag(3)
                }
            }
            
            //            Section {
            //                Button("Salvar") {
            //                    print("Thank you!")
            //                }
            //                .multilineTextAlignment(.center)
            //                .foregroundColor(Color(red: 0.1, green: 0.48, blue: 0.55))
            //                .disabled(shownextPageRegister == false)
            //            }
            //            .frame(width: 326, height: 48 ,alignment: .center)
            //            .background(Color(red: 0.95, green: 0.87, blue: 0.62))
            //            .cornerRadius(15)
            
            Section(footer:
                        HStack {
                //Spacer()
                NavigationLink(
                    destination: RegistrationDatesView(newScheduling: $newScheduling, openRegistrationSheet: $openRegistrationSheet),
                    label: {
                        HStack(alignment: .center, spacing: 10) {
                            Text("Salvar")
                                .font(
                                    Font.custom("SF Pro Text", size: 17)
                                        .weight(.semibold)
                                )
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(red: 0.1, green: 0.48, blue: 0.55))
                        }
                        .padding(.horizontal, 20)
                        .padding(.vertical, 13)
                        .frame(width: 326, alignment: .center)
                        .background(Color(red: 0.95, green: 0.87, blue: 0.62))
                        .cornerRadius(15)
                        
                    }
                )
            }
            .padding(.top, 100)
            ) {}
        }
        .navigationTitle("Agendamento")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Cancelar") {
                    openRegistrationSheet = false
                }
            }
        }
        //        .safeAreaInset(edge: .top, content: {
        //            HStack{
        //                Text("Adicione seu \n endereço")
        //                    .font(.largeTitle)
        //                    .fontWeight(.bold)
        //                    .multilineTextAlignment(.center)
        //            }
        //            .padding(.top, 12)
        //        })
        //        .safeAreaInset(edge: .top, content: {
        //            HStack{
        //                Image("calendar-blue")
        //                    .frame(width: 105, height: 105)
        //            }
        //            .padding(.top, 44)
        //            .scaledToFit()
        //        })
        
        .onDisappear {
            if !name.isEmpty {
                newScheduling.motherName = name
            } else {
                newScheduling.motherName = motherName
            }
            newScheduling.cep = cep
            newScheduling.regional = "Regional \(regional+1)"
        }
    }
}


#Preview {
        RegisterDonationView(openRegistrationSheet: .constant(true))
}
