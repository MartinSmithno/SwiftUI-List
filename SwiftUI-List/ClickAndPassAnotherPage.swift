import SwiftUI

struct ClickAndPassAnotherPage: View {
    @State private var weatherList = ["Sunny", "Cloudy", "Rainy", "Snowy", "Smoke", "Tornado"]
    var body: some View {
        
        List(){
            
            ForEach(weatherList, id:\.self){ weather in
                
                switch weather{
                case "Sunny":
                    NavigationLink(weather, destination: WeatherView(weatherImage: "sun.max", navigationBarTitle: weather))
                case "Cloudy":
                    NavigationLink(weather, destination: WeatherView(weatherImage: "cloud.sun", navigationBarTitle: weather))
                case "Rainy":
                    NavigationLink(weather, destination: WeatherView(weatherImage: "cloud.rain", navigationBarTitle: weather))
                case "Snowy":
                    NavigationLink(weather, destination: WeatherView(weatherImage: "cloud.snow", navigationBarTitle: weather))
                case "Smoke":
                    NavigationLink(weather, destination: WeatherView(weatherImage: "smoke", navigationBarTitle: weather))
                case "Tornado":
                    NavigationLink(weather, destination: WeatherView(weatherImage: "tornado", navigationBarTitle: weather))
                default:
                    NavigationLink("No info", destination: WeatherView(weatherImage: "exclamationmark.triangle", navigationBarTitle: "No info"))
                    
                }
            }
        }.navigationBarTitle("Weather List")
    }
}

struct WeatherCellDesign: View {
    @State var weather: String
    var body: some View {
        
        Text(weather)
        
    }
}

struct WeatherView: View {
    
    var weatherImage: String?
    var navigationBarTitle: String?
    
    var body: some View {
        VStack(){
            Image(systemName: weatherImage!).resizable().frame(width: 200, height: 180)
        }.navigationTitle(navigationBarTitle!)
    }
}
