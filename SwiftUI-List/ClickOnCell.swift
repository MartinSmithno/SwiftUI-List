import SwiftUI

struct ClickOnCellView: View {
    @State private var animals = ["bird", "cat", "dog", "horse", "snake", "giraffe", "koala"]
    var body: some View {
        
        List(){
            ForEach(animals, id:\.self){ animal in
                
                AnimalCellDesign(animalName: animal).onTapGesture {
                    print("You selected \(animal)")
                }
            }
        }.navigationTitle("Animals")
    }
}

struct AnimalCellDesign: View {
    var animalName: String
    
    var body: some View {
        
        Text(animalName).padding(.all,16)
        
    }
}


