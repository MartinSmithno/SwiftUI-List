import SwiftUI

struct StaticListView: View {
    var body: some View {
        
        List(){
            StaticListCellDesign(countryName: "Norway")
            StaticListCellDesign(countryName: "Sweden")
            StaticListCellDesign(countryName: "Finland")
            StaticListCellDesign(countryName: "Denmark")
            StaticListCellDesign(countryName: "Iceland")
        }.navigationTitle("Countries")
    }
}

struct StaticListCellDesign: View {
    var countryName: String
    
    var body: some View {
        
        Text(countryName).padding(.vertical,16)
        
    }
}
