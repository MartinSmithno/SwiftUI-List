import SwiftUI

struct ListWithActionView: View {
    var body: some View {
        
        List(){
            cellDesign(countryName: "Norway")
            cellDesign(countryName: "Sweden")
            cellDesign(countryName: "Finland")
            cellDesign(countryName: "Denmark")
            cellDesign(countryName: "Iceland")
        }.navigationTitle("Countries")
    }
}

struct cellDesign: View {
    var countryName: String
    
    var body: some View {
        
        Text(countryName).padding(.vertical,16)
        
    }
}
