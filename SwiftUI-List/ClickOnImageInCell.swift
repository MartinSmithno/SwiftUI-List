import SwiftUI

struct ClickOnImageInCellView: View {
    
    @State private var cities = ["Amsterdam", "Barcelona", "Istanbul", "Oslo", "Paris", "Stockholm", "Zurich"]
    
    var body: some View {
        
        List(){
            
            ForEach(cities, id:\.self){ city in
                
                CityCellDesign(cityName: city)
            }
        }
    }
}

struct CityCellDesign: View {
    var cityName: String
    
    var body: some View {
        
        HStack{
            
            Text(cityName).padding(.all,16)
            Spacer()
            Image(systemName: "arrow.up.right.circle").onTapGesture {
                print("Do you want to go to \(self.cityName)")
            }
            
        }
    }
}
