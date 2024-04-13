import Vapor

// Initialize a new Vapor application
let app = Application()

// Register routes defined in routes.swift
try routes(app)

// Start the Vapor application
try app.run()