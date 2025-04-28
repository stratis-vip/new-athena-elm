const HtmlWebpackPlugin = require('html-webpack-plugin');
const path = require('path');

module.exports = {
  mode: "development",
  entry: [
    // __dirname + "/src/index.html",
    "./src/index.js",
  ],
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: '[name].bundle.js',
    clean: true,
  },
  plugins: [new HtmlWebpackPlugin({
    title: 'elm with webpack'
    , favicon: './src/images/favicon.ico'
  })],
  devServer: {
    static: './dist/'
  },
  module: {
    rules: [
      {
        test: /\.html$/,
        exclude: [/node_modules/],
        loader: 'file-loader'
      },
      {
        test: /\.(png|svg|jpg|jpeg|gif)$/i,
        type: 'asset/resource',
      },

      {
        test: /\.elm$/,
        exclude: [/elm-stuff/, /node_modules/],
        use: [
          {
            loader: 'elm-asset-webpack-loader',
          },
          {
            loader: 'elm-webpack-loader',
            options: {}
          }]
      },
      {
        test: /\.css$/i,
        use: [
          'style-loader',
          'css-loader'
          , 'postcss-loader'
        ]
      },
    ]
  },
}
