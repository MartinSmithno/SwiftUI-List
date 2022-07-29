import SwiftUI

struct ListWithActionView: View {
    @State private var countries = ["Norway", "Sweden", "Finland", "Denmark", "Iceland"]
    var body: some View {
        
        VStack(){
        
            List(){
                
                ForEach(countries, id: \.self){ country in
                    cellDesign(countryName: country)
                }.onDelete(perform: deleteCountry)
                
            }.padding(.bottom, 40)
            
            Text("You can delete cell by sliding it to left!").foregroundColor(.red).italic()
        }.navigationTitle("Countries")
        
    }
    
    func deleteCountry(at offsets: IndexSet){
        
        self.countries.remove(atOffsets: offsets)
        
    }
}

struct cellDesign: View {
    var countryName: String
    
    var body: some View {
        
        Text(countryName).padding(.vertical,16)
        
    }
}
