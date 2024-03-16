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
