# NextJS Git-Branched Examples

This git-branched examples repo is an experiment in branched composition of website frameworks.

I have a previous repo of a Hugo website theme that I use to compose themes from a variety of Hugo Theme features, such as side-menu, bootstrap, css-grid, page-sections, etc. I use branches to store the separate features and then ad-hoc compose them into a new branch at will.

I'm experimenting with how feasable it is to use for Rapid Application Development by using feature composition.

The most fundamental NextJS example from their repo appears to be the `hello-world` example, so I am using that as the `main` branch.

## Hello World example

This example shows the most basic idea behind Next. We have 2 pages: `pages/index.tsx` and `pages/about.tsx`. The former responds to `/` requests and the latter to `/about`. Using `next/link` you can add hyperlinks between them with universal routing capabilities. The `day` directory shows that you can have subdirectories.

## Deploy your own

Deploy the example using [Vercel](https://vercel.com?utm_source=github&utm_medium=readme&utm_campaign=next-example) or preview live with [StackBlitz](https://stackblitz.com/github/vercel/next.js/tree/canary/examples/hello-world)

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/git/external?repository-url=https://github.com/vercel/next.js/tree/canary/examples/hello-world&project-name=hello-world&repository-name=hello-world)

## How to use

Execute [`create-next-app`](https://github.com/vercel/next.js/tree/canary/packages/create-next-app) with [npm](https://docs.npmjs.com/cli/init), [Yarn](https://yarnpkg.com/lang/en/docs/cli/create/), or [pnpm](https://pnpm.io) to bootstrap the example:

```bash
npx create-next-app --example hello-world hello-world-app
```

```bash
yarn create next-app --example hello-world hello-world-app
```

```bash
pnpm create next-app --example hello-world hello-world-app
```

Deploy it to the cloud with [Vercel](https://vercel.com/new?utm_source=github&utm_medium=readme&utm_campaign=next-example) ([Documentation](https://nextjs.org/docs/deployment)).
