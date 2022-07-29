import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            
            VStack(spacing:30){
                
                NavigationLink("Static List", destination: StaticListView()).foregroundColor(.red)
                NavigationLink("Dynamic List", destination: DynamicListView()).foregroundColor(.orange)
                NavigationLink("List With Action", destination: ListWithActionView()).foregroundColor(.yellow)
                
            }.navigationTitle("Lists")
        }
    }
}
