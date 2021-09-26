# A personal Typescript App Template

## Usage

1) Clone this repo and remove `.git` folder and `package-lock.json` file.

```
git clone git@github.com:rafaph/ts-app-template.git
rm -rf .git package-lock.json
```

2) Change all references for `my-ts-app` to the name of your package or app and rename `.env.example` to `.env`.

```
mv .env.example .env
find . -type f | xargs sed -i  's/my-ts-app/your-app/g'
```

Obs: change `your-app` to your app name.

4) Start container:

```
docker-compose up -d --build
```

4) Install dependencies:

```
docker-compose exec server sh
npm i
```

5) Run a any desired npm script:

```
npm run start
npm run test
npm run test:watch
npm run test:cov
npm run lint
npm run lint:fix
npm run build
npm run build:watch
```

Obs: lint:fix also formats your code using prettier.

6) Remove container:

```
docker-compose down --remove-orphans -t 30
```

## Features

1) Docker-compose file using last NodeJS LTS version.
2) Typescript configured using paths alias for src (@app) and test (@test).
3) Test framework (mocha) configured with chai/expect assertions, coverage (with nyc) and sinon for mocks.
4) All linting goodies (linting folders, files names and also your code [eslint]).
5) A simple GitHub pipeline configured for lint and test tasks.

## License

MIT
