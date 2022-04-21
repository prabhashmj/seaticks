const path = require('path');
const ENV = process.env.NODE_ENV;

const paths = {
    modules: 'node_modules',
    files: '../',
    root: path.resolve(),
    src: path.resolve('client/src'),
    dist: path.resolve('client/dist'),
};

const config = [
    {
        name: 'js',
        entry: {
            bundle: [
                `${paths.src}/js/common.js`
            ]
        },
        output: {
            path: paths.dist,
            filename: '[name].js',
        },
        resolve: {
            extensions: ['*', '.js', '.vue', 'json'],
            alias: {
                vue: 'vue/dist/vue.js'
            }

        },
        module: {
            rules: [
                {
                    test: /\.vue$/,
                    loader: 'vue-loader',
                },
                {
                    test: /\.(graphql|gql)$/,
                    exclude: /node_modules/,
                    loader: 'graphql-tag/loader',
                },
                {
                    test: /\.css$/,
                    use: [
                        'vue-style-loader',
                        'css-loader'
                    ],
                },
                {
                    test: /\.js$/,
                    loader: 'babel-loader',
                    exclude: /node_modules/
                },
                {
                    test: /\.(png|jpg|gif|svg)$/,
                    loader: 'file-loader',
                    options: {
                        name: 'images/[name].[ext]?[hash]'
                    },
                }
            ],

        },
        mode: 'development',
        devtool: (ENV !== 'production') ? 'source-map' : '',


    }
];

module.exports = (process.env.WEBPACK_CHILD)
    ? config.find((entry) => entry.name === process.env.WEBPACK_CHILD)
    : module.exports = config;
