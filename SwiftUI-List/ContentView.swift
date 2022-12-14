import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            
            VStack(spacing:30){
                
                NavigationLink("Static List", destination: StaticListView()).foregroundColor(.red)
                NavigationLink("Dynamic List", destination: DynamicListView()).foregroundColor(.orange)
                NavigationLink("List With Action", destination: ListWithActionView()).foregroundColor(.yellow)
                NavigationLink("Click On Cell", destination: ClickOnCellView()).foregroundColor(.green)
                NavigationLink("Click On Text In A Cell", destination: ClickOnImageInCellView()).foregroundColor(.blue)
                NavigationLink("Click and Pass Another Page", destination: ClickAndPassAnotherPage()).foregroundColor(.pink)
                NavigationLink("List with Two Sections", destination: ListWithTwoSections()).foregroundColor(.cyan)
                
            }.navigationTitle("Lists")
        }
    }
}
