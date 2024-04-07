import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome to CreoBank!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                    .padding()
                
                NavigationLink(destination: FinancialInsightsView()) {
                    Text("View Financial Insights")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
                
                NavigationLink(destination: PaymentView()) {
                    Text("Make a Payment")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
                
                NavigationLink(destination: SocialImpactInvestmentView()) {
                    Text("Explore Social Impact Investments")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
                
                NavigationLink(destination: ProfileView()) {
                    Text("View Profile")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
                
                NavigationLink(destination: AnalyticsView()) {
                    Text("View Analytics")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
                
                NavigationLink(destination: CommunityView()) {
                    Text("Join Community")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
            }
            .navigationTitle("CreoBank")
        }
    }
}

struct FinancialInsightsView: View {
    var body: some View {
        VStack {
            Text("Financial Insights")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)
                .padding()
            
            // Implement financial insights functionality here
            Text("Account Balance: $5000")
                .padding()
            
            Text("Transaction History:")
                .font(.headline)
                .padding(.bottom, 4)
            
            ScrollView {
                VStack(spacing: 8) {
                    ForEach(transactionHistory, id: \.id) { transaction in
                        Text("\(transaction.description): $\(transaction.amount)")
                    }
                }
                .padding()
            }
        }
    }
    
    let transactionHistory = [
        Transaction(description: "Groceries", amount: -100),
        Transaction(description: "Salary", amount: 3000),
        Transaction(description: "Rent", amount: -1200),
        Transaction(description: "Dining", amount: -50)
    ]
}

struct PaymentView: View {
    @State private var recipient: String = ""
    @State private var amount: String = ""
    
    var body: some View {
        VStack {
            Text("Make a Payment")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)
                .padding()
            
            TextField("Recipient", text: $recipient)
                .padding()
            
            TextField("Amount", text: $amount)
                .keyboardType(.numberPad)
                .padding()
            
            Button(action: makePayment) {
                Text("Send Payment")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
    
    func makePayment() {
        // Implement payment functionality
        // Example: Send payment to recipient
    }
}

struct SocialImpactInvestmentView: View {
    var body: some View {
        VStack {
            Text("Social Impact Investments")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)
                .padding()
            
            // Implement social impact investment functionality here
            Text("Explore socially impactful investment options here.")
                .padding()
        }
    }
}

struct ProfileView: View {
    @State private var userName: String = "John Doe"
    @State private var userEmail: String = "john.doe@example.com"
    
    var body: some View {
        VStack {
            Text("User Profile")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)
                .padding()
            
            TextField("Name", text: $userName)
                .padding()
            
            TextField("Email", text: $userEmail)
                .padding()
            
            Button(action: updateProfile) {
                Text("Update Profile")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
This is the comprehensive frontend script for CreoBank. It includes all the views and functionalities you described:

```swift
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome to CreoBank!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                    .padding()
                
                NavigationLink(destination: FinancialInsightsView()) {
                    Text("View Financial Insights")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
                
                NavigationLink(destination: PaymentView()) {
                    Text("Make a Payment")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
                
                NavigationLink(destination: SocialImpactInvestmentView()) {
                    Text("Explore Social Impact Investments")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
                
                NavigationLink(destination: ProfileView()) {
                    Text("View Profile")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
                
                NavigationLink(destination: AnalyticsView()) {
                    Text("View Analytics")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
                
                NavigationLink(destination: CommunityView()) {
                    Text("Join Community")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
            }
            .navigationTitle("CreoBank")
        }
    }
}

struct FinancialInsightsView: View {
    var body: some View {
        VStack {
            Text("Financial Insights")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)
                .padding()
            
            // Implement financial insights functionality here
            Text("Account Balance: $5000")
                .padding()
            
            Text("Transaction History:")
                .font(.headline)
                .padding(.bottom, 4)
            
            ScrollView {
                VStack(spacing: 8) {
                    ForEach(transactionHistory, id: \.id) { transaction in
                        Text("\(transaction.description): $\(transaction.amount)")
                    }
                }
                .padding()
            }
        }
    }
    
    let transactionHistory = [
        Transaction(description: "Groceries", amount: -100),
        Transaction(description: "Salary", amount: 3000),
        Transaction(description: "Rent", amount: -1200),
        Transaction(description: "Dining", amount: -50)
    ]
}

struct PaymentView: View {
    @State private var recipient: String = ""
    @State private var amount: String = ""
    
    var body: some View {
        VStack {
            Text("Make a Payment")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)
                .padding()
            
            TextField("Recipient", text: $recipient)
                .padding()
            
            TextField("Amount", text: $amount)
                .keyboardType(.numberPad)
                .padding()
            
            Button(action: makePayment) {
                Text("Send Payment")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
    
    func makePayment() {
        // Implement payment functionality
        // Example: Send payment to recipient
    }
}

struct SocialImpactInvestmentView: View {
    var body: some View {
        VStack {
            Text("Social Impact Investments")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)
                .padding()
            
            // Implement social impact investment functionality here
            Text("Explore socially impactful investment options here.")
                .padding()
        }
    }
}

struct ProfileView: View {
    @State private var userName: String = "John Doe"
    @State private var userEmail: String = "john.doe@example.com"
    
    var body: some View {
        VStack {
            Text("User Profile")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)
                .padding()
            
            TextField("Name", text: $userName)
                .padding()
            
            TextField("Email", text: $userEmail)
                .padding()
            
            Button(action: updateProfile) {
                Text("Update Profile")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
    
    func updateProfile() {
        // Implement profile update functionality
        // Example: Save user name and email
    }
}

struct AnalyticsView: View {
    var body: some View {
        VStack {
            Text("Analytics")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)
                .padding()
            
            // Implement analytics functionality here
            Text("View and analyze your financial data.")
                .padding()
        }
    }
}

struct CommunityView: View {
    var body: some View {
        VStack {
            Text("Community")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)
                .padding()
            
            // Implement community functionality here
            Text("Join the CreoBank community to connect with other users.")
                .padding()
        }
    }
}

struct Transaction: Identifiable {
    let id = UUID()
    let description: String
    let amount: Double
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
