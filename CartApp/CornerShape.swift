//
//  CornerShape.swift
//  CartApp
//
//  Created by Vipin Saini on 08/03/22.
//

import SwiftUI


struct CornerShape: Shape {
    
    func path(in rect: CGRect) -> Path {
         let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.bottomLeft,.bottomRight], cornerRadii: CGSize(width: UIScreen.main.bounds.height < 750 ? 30 : 45, height: UIScreen.main.bounds.height < 750 ? 30 : 45))
         return Path(path.cgPath)
    }
}
