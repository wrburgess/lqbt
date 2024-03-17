# LQBT

Welcome to your new Bridgetown website! You can update this README file to provide additional context and setup information for yourself or other contributors.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Install](#install)
- [Development](#development)
- [Commands](#commands)
- [Deployment](#deployment)
- [Contributing](#contributing)

## Prerequisites

- [GCC](https://gcc.gnu.org/install/)
- [Make](https://www.gnu.org/software/make/)
- [Ruby](https://www.ruby-lang.org/en/downloads/)
- [Bridgetown Gem](https://rubygems.org/gems/bridgetown)
- [Node](https://nodejs.org)
- [Yarn](https://yarnpkg.com)
  - Update yarn: `yarn set version berry`
  - Add outdated plugin: `yarn plugin import https://mskelton.dev/yarn-outdated/v4`

## Install

```sh
cd site-folder
bundle install && yarn install
```
> Read: [Bridgetown Getting Started Documentation](https://www.bridgetownrb.com/docs/)

## Development

Start your site in dev mode, run `bin/bridgetown start` and navigate to [localhost:4000](https://localhost:4000/)!

Use a [theme](https://github.com/topics/bridgetown-theme) or add some [plugins](https://www.bridgetownrb.com/plugins/) to get started quickly.

### Commands

```sh
# running locally
bin/bridgetown start

# build & deploy to production
bin/bridgetown deploy

# load the site up within a Ruby console (IRB)
bin/bridgetown console
```

> Read: [Bridgetown CLI Documentation](https://www.bridgetownrb.com/docs/command-line-usage)

## Deployment

> Read [Bridgetown Deployment Documentation](https://www.bridgetownrb.com/docs/deployment)
> Read [Bridgetown Deployment to Github Pages](https://www.bridgetownrb.com/docs/deployment#github-pages)

## Setup and Deployment to Heroku

### Create staging app

* Add staging remote: `git remote add staging https://git.heroku.com/[app-name].git`
* Add buildpacks in order: `heroku/nodejs`, `heroku/ruby`, `https://buildpack-registry.s3.amazonaws.com/buildpacks/heroku-community/nginx.tgz`
* Add env variable: `NODE_ENV=development` _prevents devDependencies pruning_
* Add env variable: `BRIDGETOWN_ENV=production`
* Add `config/nginx.config.erb` file with these [specs](https://github.com/heroku/heroku-buildpack-nginx/blob/main/config/nginx-static.conf.erb)
* In the `nginx.config.erb` file change the `root /app/dist;` to `root /app/output;` _around line 51_
* Add a `Procfile` with `web: bin/start-nginx-static` instruction
