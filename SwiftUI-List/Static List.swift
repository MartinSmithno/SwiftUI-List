import SwiftUI

struct StaticListView: View {
    var body: some View {
        
        List(){
            staticListCellDesign(countryName: "Norway")
            staticListCellDesign(countryName: "Sweden")
            staticListCellDesign(countryName: "Finland")
            staticListCellDesign(countryName: "Denmark")
            staticListCellDesign(countryName: "Iceland")
        }.navigationTitle("Countries")
    }
}

struct staticListCellDesign: View {
    var countryName: String
    
    var body: some View {
        
        Text(countryName).padding(.vertical,16)
        
    }
}
