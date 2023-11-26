# Contribution Guidelines

Thank you for your interest in contributing to our project! Here's how you can contribute:

## Steps to Contribute

1. **Fork the project.** Start by forking the repository to your own GitHub account.
2. **Create a branch for your feature.** Use a clear and descriptive name for your branch.
3. **Write your code.** Implement your feature or bug fix.
4. **Commit your changes.** Make sure to write a good commit message that follows the [conventional commit format](https://www.conventionalcommits.org/en/v1.0.0/).
5. **Push your changes.** Push your changes to your forked repository.
6. **Open a pull request.** Create a new pull request from your feature branch to our repository.

## Project Structure

Here's an overview of the main folders and files in our project:

- `modules/`: Contains all the modules of the project.
- `modules/<module>/`: Contains the code of a specific module.
- `connection`: Contains the code to connect to external services (like Redis, databases, etc.).
- `scripts`: Contains the scripts to set up the project.
- `sql`: Contains the SQL files to set up the database.
- `tests`: Contains the tests of the project.
- `public`: Serves as the frontend of the project.
- `index.js`: Serves as the entry point of the project.
- `package.json`: Lists the dependencies of the project.
- `docker-compose.yml`: Contains the Docker Compose configuration of the project.
- `Dockerfile`: Contains the Dockerfile of the project.
- `Makefile`: Contains the Makefile of the project.

# Code of Conduct

Please read our [Code of Conduct](CODE_OF_CONDUCT.md) before contributing to the project.

## Submitting Pull Requests

1. **Ensure any install or build dependencies are removed before the end of the layer when doing a build.**
2. **Update the README.md with details of changes to the interface, this includes new environment variables, exposed ports, useful file locations and container parameters.**
3. **Increase the version numbers in any examples files and the README.md to the new version that this Pull Request would represent. The versioning scheme we use is [SemVer](http://semver.org/).**
4. **You may merge the Pull Request in once you have the sign-off of two other developers, or if you do not have permission to do that, you may request the second reviewer to merge it for you.**

Your pull request will be reviewed by the maintainers, who will get back to you about any necessary changes or questions. Please remember to be patient during this process, as it may take some time to review your contribution.

Thank you for your contribution!