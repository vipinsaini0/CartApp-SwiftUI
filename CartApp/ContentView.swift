    //
    //  ContentView.swift
    //  CartApp
    //
    //  Created by Vipin Saini on 08/03/22.
    //

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    
    @State var index = 0
    let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
 
    var body: some View{
        VStack {
            VStack {
                HStack {
                    Button(action: {}) {
                        Image(systemName: "arrow.left")
                            .font(.system(size: 24))
                            .foregroundColor(Color("txt"))
                            .padding(.trailing)
                    }
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {}) {
                        Image(systemName: "suit.heart.fill")
                            .foregroundColor(.white)
                            .padding(10)
                            .background(Color("Color1"))
                            .clipShape(Circle())
                            .shadow(radius: 4)
                    }
                }
                .padding([.horizontal,.top])
                
                ExtractedView(index: $index)
            }
             .padding(.top, windowScene?.windows.first?.safeAreaInsets.top)
            .padding(.bottom,25)
            .background(Color("Color"))
            .clipShape(CornerShape())
            
            if UIScreen.main.bounds.height > 750 {
                ScrollView(.vertical, showsIndicators: false) {
                    BottomView()
                }
            } else {
                BottomView()
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

var sizes = ["S","M","L","X","XX","XL","XXL"]

struct BottomView : View {
    
    @State var selectedSize = "S"
    @State var count = 1
    
    var body: some View {
        HStack(spacing: 20) {
            Text("T-Shirt")
                .font(.system(size: 35))
                .foregroundColor(.black)
            
            Spacer()
            
            Text("$ 899")
                .font(.system(size: 20))
                .foregroundColor(Color("Color1"))
                .overlay(
                    Rectangle()
                        .fill(Color("Color1"))
                        .frame(height: 2)
                )
            
            Text("$ 799")
                .font(.system(size: 25))
                .fontWeight(.bold)
                .foregroundColor(.black)
        }
        .padding()
        
        VStack(alignment: .leading, spacing: 12) {
            Text("Size")
                .fontWeight(.bold)
            
            HStack(alignment: .center, spacing: 10) {
                ForEach(sizes,id: \.self){i in
                    Button(action: {
                        selectedSize = i
                    }) {
                        Text("\(i)")
                            .font(UIScreen.main.bounds.height < 750 ? .caption : .body)
                            .foregroundColor(selectedSize == i ? .white : .black)
                            .padding(.vertical,8)
                            .padding(.horizontal,10)
                            .background(
                                
                                ZStack{
                                    RoundedRectangle(cornerRadius: 5)
                                        .fill(Color("Color1").opacity(selectedSize == i ? 1 : 0))
                                    
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(Color("Color1"),lineWidth: 1)
                                }
                            )
                    }
                }
            }
            
            Text("About")
                .fontWeight(.bold)
                .padding(.top,10)
            
            Text("Mustard yellow printed waist length T-shirt, has a round neck, long sleeves with cut-out detail, high-low hem. 100% Original Products")
                .foregroundColor(.gray)
                .multilineTextAlignment(.leading)
        }
        .padding(.horizontal)
        
        HStack(spacing: 15) {
            Button(action: {
                if count > 1 {
                    count -= 1
                }
            }) {
            Image(systemName: "minus")
                .frame(width: 15, height: 15, alignment: .center)
                .font(.system(size: 20))
                .foregroundColor(Color("Color1"))
                .padding()
                .background(Color.white)
                .clipShape(Circle())
                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
            }
            
            Text("\(count)")
                .font(.title)
                .fontWeight(.bold)
           
            Button(action: {
                count += 1
            }) {
                Image(systemName: "plus")
                    .frame(width: 15, height: 15, alignment: .center)
                    .font(.system(size: 20))
                    .foregroundColor(Color("Color1"))
                    .padding()
                    .background(Color.white)
                    .clipShape(Circle())
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
            }
            
            Spacer(minLength: 0)
            
            Button(action: {}) {
                Text("Add to Cart")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .padding(.horizontal,UIScreen.main.bounds.height > 750 ? 20 : 40)
                    .background(Color("Color1"))
                    .clipShape(Capsule())
            }
        }
        .padding(.horizontal)
        .padding(.vertical,30)
    }
}

struct ExtractedView: View {
    @Binding var index: Int
    
    var body: some View {
        HStack(spacing: 15) {
            VStack(alignment: .leading, spacing: 12) {
                Text("Brand")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(Color("txt"))
                
                Text("Moon")
                    .foregroundColor(Color("txt"))
                
                Text("Code")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(Color("txt"))
                    .padding(.top,10)
                
                Text("Y24869")
                    .foregroundColor(Color("txt"))
                
                Text("Cotton")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(Color("txt"))
                    .padding(.top,10)
                
                Text("100 %")
                    .foregroundColor(Color("txt"))
                
                Text("Color")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(Color("txt"))
                    .padding(.top,10)
                
                HStack(spacing: 12) {
                    Button(action: {
                        index = 0
                    }) {
                        Circle()
                            .fill(Color.yellow)
                            .frame(width: index == 0 ? 30 : 20, height: index == 0 ? 30 : 20)
                    }
                    
                    Button(action: {
                        index = 1
                    }) {
                        Circle()
                            .fill(Color.green)
                            .frame(width: index == 1 ? 30 : 20, height: index == 1 ? 30 : 20)
                    }
                    
                    Button(action: {
                        index = 2
                    }) {
                        Circle()
                            .fill(Color.orange)
                            .frame(width: index == 2 ? 30 : 20, height: index == 2 ? 30 : 20)
                    }
                }
                .padding(.top,10)
            }
            
            Spacer(minLength: 0)
            
            Image(index == 0 ? "pic1" : (index == 1 ? "pic2" : "pic3"))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.leading)
        }
        .padding()
    }
}
