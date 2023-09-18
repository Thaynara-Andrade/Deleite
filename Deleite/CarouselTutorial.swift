//
//  CarouselTutorial.swift
//  Deleite
//
//  Created by Marília de Sousa on 13/09/23.
//

import SwiftUI

struct CarouselTutorial: View {
    var body: some View {
        Rectangle()
            .fill(Color.gray)
            .frame(height: 200)
            .border(Color.black)
            .padding()
    }
}

struct CarouselTutorial_Previews: PreviewProvider {
    static var previews: some View {
        CarouselTutorial()
    }
}
