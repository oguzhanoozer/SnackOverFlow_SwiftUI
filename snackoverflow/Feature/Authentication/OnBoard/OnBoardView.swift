//
//  OnBoard.swift
//  snackoverflow
//
//  Created by oguzhan on 9.05.2024.
//

import SwiftUI

struct OnBoardView: View {

    @State var currentIndex: Int = 0
    
    private func count() -> Int{
        OnBoardModel.items.count - 1
    }
    
    var body: some View {
        GeometryReader{geometry in
            VStack{
            
                TabView(
                    selection: $currentIndex,
                    content:  {
                        ForEach((0...count()), id: \.self) { value in
                            SliderCard(height: geometry.dh(height: 0.45),onBoard: OnBoardModel.items[value])
                    }
                }).tabViewStyle(.page(indexDisplayMode: .never))
                    .frame(height: geometry.dh(height: 0.6))
                    
                Spacer()
                HStack{
                    ForEach((0...count()),id: \.self){ index in
                        if(index == currentIndex){
                            IndicatorRectangle(width: geometry.dw(width: 0.06))
                        }else {
                            IndicatorRectangle(width: geometry.dw(width: 0.03))
                        }
                    }
                }.frame(height: ViewHeight.indicator)
                
                NormalButtonView(onTap: {},
                                 title:LocaleKeys.Buttons.getStarted.rawValue)
                    
            }.padding(.all,PagePadding.All.normal.rawValue)
        }
    }
}

private struct SliderCard: View {
    var height: Double
    var onBoard: OnBoardModel
    var body: some View {
        VStack{
            Image(onBoard.imageName).frame(height: height)
            Text(onBoard.description).font(.system(size: FontSizes.largeTitle,weight: .semibold))
                .multilineTextAlignment(.center)
                .foregroundColor(.peach)
        }
    }
}

private struct IndicatorRectangle: View {
    var width: Double
    
    var body: some View {
        Rectangle().fill(.clooney)
            .cornerRadius(RadiusItems.radius)
            .frame(width: width)
           
    }
}

#Preview {
    OnBoardView()
}
