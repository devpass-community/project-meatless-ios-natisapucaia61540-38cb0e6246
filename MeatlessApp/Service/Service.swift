import Foundation

struct Service {
    
    func fetchRestaurantList(completion: @escaping ([Restaurant]?)->Void) {
        guard let url = URL(string: "https://raw.githubusercontent.com/devpass-tech/meatless-api/main/restaurant_list.json") else {
            return
        }

        let request = URLRequest(url: url)
        let session = URLSession.shared
        let task = session.dataTask(with: request) { data, response, error in
            if let error = error {
                return
            }
            guard let httpResponse = response as? HTTPURLResponse,
                  200..<300 ~= httpResponse.statusCode else {
                return
            }            
            guard let data = data else {
                return
            }
        }
        task.resume()
    }
}
