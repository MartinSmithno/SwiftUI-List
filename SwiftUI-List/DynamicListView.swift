import SwiftUI

struct DynamicListView: View {
    @State private var countriesList = [String]()
    var body: some View {
        
        NavigationView{
            
            List{
                ForEach(countriesList, id:\.self){ country in
                    dynamicListCellDesign(countryName: country)
                }
            }.navigationTitle("Countries")
            
        }.onAppear(){   // -> We assume that when page appears, fetch data from DB
            self.countriesList = ["Norway","Denmark","Sweden","Finland","Iceland"]
        }
    }
}

struct dynamicListCellDesign: View {
    var countryName: String
    
    var body: some View {
        
        Text(countryName).padding(.vertical,16)
        
    }
}
