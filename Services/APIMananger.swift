// Request & Response models
struct LoginRequest: Codable {
  let username: String
  let password: String 
}

struct LoginResponse: Codable {
  let token: String
}

// Networking library
import Moya

enum CreobankAPI {
  case login(request: LoginRequest)
}

// API manager
class APIManager {

  let provider = MoyaProvider<CreobankAPI>()

  func login(request: LoginRequest, completion: @escaping (Result<LoginResponse, Error>) {

    provider.request(.login(request: request)) { result in

      switch result {
      case let .success(response):
        do {
          let loginResponse = try JSONDecoder().decode(LoginResponse.self, from: response.data)
          completion(.success(loginResponse))
        } catch {
          completion(.failure(error))
        }

      case let .failure(error):
        completion(.failure(error))
      }
    }
  }

  // Other methods...
}
