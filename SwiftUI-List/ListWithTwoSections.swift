import SwiftUI

struct ListWithTwoSections: View {
    var body: some View {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Hello, world!@*/Text("Hello, world!")/*@END_MENU_TOKEN@*/
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
