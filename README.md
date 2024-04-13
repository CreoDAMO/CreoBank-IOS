# CreoBank

Welcome to the CreoBank repository! This repository contains the source code for the CreoBank app, an iOS and macOS banking application developed by [Jacque Antoine DeGraff](https://github.com/CreoDAMO/CreoBank).

## Features

- View account balances and transaction history
- Transfer funds between accounts
- Manage beneficiaries and bill payments
- Locate nearby ATMs and branches
- Secure authentication and data encryption

## Requirements

- iOS 13.0+ / macOS 10.15+
- Xcode 12.0+
- Swift 5.0+

## Getting Started

To get started with CreoBank, follow these steps:

1. Clone the repository:

   ```bash
   git clone https://github.com/CreoDAMO/CreoBank.git
   ```

2. Open the project in Xcode:

   ```bash
   cd CreoBank
   open CreoBank.xcodeproj
   ```

3. Build and run the app on the simulator or a connected device.

## Continuous Integration

This project uses Azure Pipelines for continuous integration and delivery. The main pipeline runs the following steps:

1. Checkout source code
2. Install dependencies 
3. Lint code (SwiftLint)
4. Run unit tests
5. Build app
6. Generate code coverage report

## Release Process

We follow Semantic Versioning (SemVer) for changelog and versioning. When a new version is pushed with a tag, it will:

1. Trigger the release pipeline
2. Create an artifact containing the bundled build
3. Upload artifacts to the Azure DevOps releases page  
4. Deploy to the staging environment for testing
5. Automated approval and deployment to production

## Configuration

The Azure Pipelines configuration is stored in the [azure-pipelines.yml](azure-pipelines.yml) file. It contains stages, jobs, and steps for continuous integration, releases, and deployments.

The following environments are configured:

- Staging
- Production

## Contributing

We welcome contributions to improve CreoBank! To contribute, follow these steps:


1. Read through the project's README file to familiarize yourself with the goals of the project, its architecture and technologies used. This will help you understand where your contributions may help.

2. Check the "Issues" tab to see what kinds of issues are currently being tracked - these may include bugs, enhancement requests or documentation updates. Look for any issues that interest you or that you have expertise in helping with. 

3. If you don't see an issue that matches something you'd like to work on, feel free to open a new issue describing your proposed contribution. The project maintainers can then discuss and potentially work with you on the effort.

4. Fork the CreoBank repository to your own GitHub account. This makes a copy of the code you can work on without affecting the original project. 

5. Clone your forked repository to your local machine using git clone. This downloads a copy to work on locally.

6. Create a new branch for your work using git checkout -b myfeature. Keep your changes isolate in branches so as not to disrupt the main code.

7. Make and test your code changes. Write or update code/documentation as needed. 

8. Commit and push your work often with descriptive, clear commit messages. This saves changes and allows maintainers to review easier if needed.

9. When ready, open a pull request in the upstream CreoBank repository comparing your branch to their main branch. A maintainer will review and potentially merge your work. 

10. Consider joining the project's community on GitHub to stay engaged and potentially help other contributors as well. Your contributions help make open source more collaborative!

Please ensure that your code adheres to our coding conventions and includes appropriate unit tests.

## License

CreoBank is released under the [Apache 2.0 License](https://opensource.org/licenses/Apache-2.0). See the [LICENSE](LICENSE) file for more details.

## Contact

If you have any questions or suggestions, feel free to contact [Jacque Antoine DeGraff](https://github.com/CreoDAMO/CreoBank) at [jacquedegraff@creodamo.com].

Happy coding!