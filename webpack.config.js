const HtmlWebpackPlugin = require('html-webpack-plugin');
const CopyWebpackPlugin = require('copy-webpack-plugin');
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
    publicPath: '/',
  },
  plugins: [new HtmlWebpackPlugin({
    title: 'elm with webpack'
    , favicon: './src/images/favicon.ico'
  }),
  new CopyWebpackPlugin({ // Add this plugin
    patterns: [
      {
        from: 'src/images',
        to: 'images'
      }
    ]
  })],
  devServer: {

    static: {
      directory: path.join(__dirname, 'src')
      , publicPath: '/'
    }
    // static: './dist/'
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
        generator: {
          filename: 'images/[name][ext]'
        }
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
