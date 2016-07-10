Forked from [tristanpendergrass/elm-seed](https://github.com/tristanpendergrass/elm-seed).

This is a elm project that simply displays "Hello" but has the file structure and elm skeleton to be a real app.

It is designed to work for elm version **0.17.x**.

You will need at least node.js version **4**.

## Getting Started

Clone this repository and `cd` into it:

```
$ git clone https://github.com/tristanpendergrass/elm-seed.git
$ cd elm-seed
```

Run the following two commands to install all dependencies:

```
$ npm install
$ elm package install
```

Start the placeholder API with:

```
$ node api
```

And set the webpack server to serve the HTML, JS and CSS with:

```
$ npm run dev
```

If all went well, the "Hello" message should be viewable at `localhost:3000`.
