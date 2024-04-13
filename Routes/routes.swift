import Vapor

func routes(_ app: Application) throws {
    // Define your routes here
    
    // Example route: GET /
    app.get { req in
        return "Welcome to CreoBank API!"
    }
    
    // Example route: GET /hello
    app.get("hello") { req -> String in
        return "Hello, world!"
    }
    
    // Example route: POST /api/users
    app.post("api", "users") { req -> EventLoopFuture<User> in
        let user = try req.content.decode(User.self)
        return user.save(on: req.db).map { user }
    }
    
    // Add more routes as needed...
}