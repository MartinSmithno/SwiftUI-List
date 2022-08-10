import SwiftUI

struct ListWithTwoSections: View {
    var body: some View {
        
        List{
            
            Section(header: Text("Kitchen")){
                KitchenCellDesign(furniture: "Board")
                KitchenCellDesign(furniture: "Chair")
                KitchenCellDesign(furniture: "Buffets")
            }
            
            Section(header: Text("Fruits")){
                FruitCellDesign(fruitName: "Watermelon")
                FruitCellDesign(fruitName: "Apple")
                FruitCellDesign(fruitName: "Blackberries")
            }
        }.navigationBarTitle("List with Two Sections")
    }
}

struct KitchenCellDesign: View {
    var furniture: String
    
    var body: some View {
        
        Text(furniture).padding(.vertical,16)
        
    }
}

struct FruitCellDesign: View {
    var fruitName: String
    
    var body: some View {
        
        Text(fruitName).padding(.vertical,16)
    }
}
