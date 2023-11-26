# LookinLabs Digital Service Book

![ESLint](https://github.com/LookinLabs/DSB/actions/workflows/lint.yml/badge.svg)

> **Status:** Currently in development. Not ready for production use!

LookinLabs Digital Service Book is a web application that helps maintain car service history. It is based on the [Digital Service Book](https://www.digital-servicebook.com/en/for-car-owners/) concept. With LookinLabs Digital Service Book, you can log the exact time when you changed oil, filters, tires, etc. You can also log your car's mileage and fuel consumption.

## Getting Started

### Prerequisites

- [PostgreSQL Client](https://www.postgresql.org/download/)
- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)
- [NPM](https://www.npmjs.com/get-npm) (Optional)
- [NodeJS](https://nodejs.org/en/download/) (Optional)

### Setting Up Dev Environment (With Makefile)

1. Clone the repository:
    ```bash
    git clone git@github.com:LookinLabs/DSB.git
    ```

2. Start the development environment:
    ```bash
    make run
    ```

3. Clean up the development environment:
    ```bash
    make stop
    ```

### Setting Up Dev Environment (Manually)

This setup is needed if you need to look into the database or application logs (by default located under .npm/_logs).

1. Clone the repository:
    ```bash
    git clone git@github.com:LookinLabs/DSB.git
    ```

2. Set up environmental variables:
    ```bash
    vim .env
    source .env
    ```

3. Set up the local environment:
    ```bash
    docker-compose up
    ```

4. Run the `import_database` script to get the example database:
    ```bash
    bash scripts/import_database.sh sql/initial.sql
    ```

5. Start coding!

### Cleaning Up Dev Environment (Manually)

1. Stop and remove containers:
    ```bash
    docker-compose down
    ```

## License

This project is licensed under the Apache License. See the [LICENSE](LICENSE) file for details.

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct and the process for submitting pull requests to us.

## Authors

- [LookinLabs](https://github.com/LookinLabs/)