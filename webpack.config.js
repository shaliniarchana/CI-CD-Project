const path = require('path');
const HtmlWebpackPlugin = require('html-webpack-plugin'); // Install this plugin!

module.exports = {
  entry: './src/main.js', // Updated path
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: 'bundle.js',
  },
  plugins: [
    new HtmlWebpackPlugin({
      template: './src/index.html' // Tells Webpack to use your HTML as a base
    })
  ],
  module: {
    rules: [
      {
        test: /\.css$/,
        use: ['style-loader', 'css-loader'], // Need these loaders for CSS
      },
    ],
  },
  mode: 'production'
};