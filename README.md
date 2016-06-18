This is a elm project that simply displays "Hello" but has the file structure and elm skeleton to be a real app.

It is designed to work for elm version **0.17.x**.

You will need at least node.js version **4**.

## Getting Started

There are a series of steps to install the node.js placeholder backend and the webpack server to serve the static assets.

```
$ git clone https://github.com/tristanpendergrass/elm-seed.git
$ cd elm-seed
$ npm init
```

Then fill in whatever parameters you want (default is fine for all of them).

The following will get the placeholder backend in place. See `db.json` for the fake database.

```
$ npm install -s json-server
$ node api
```

Next, install all the webpack stuff:

```
$ npm i webpack@1 webpack-dev-middleware@1 webpack-dev-server@1 elm-webpack-loader@3 file-loader@0 style-loader@0 css-loader@0 url-loader@0 -S
```

And install some necessary css and icon libraries:

```
$ npm i ace-css@1 font-awesome@4 -S
```

Finally, install the elm dependencies:

```
$ elm package install
```

The server should be able to be run with:

```
$ npm run dev
```
