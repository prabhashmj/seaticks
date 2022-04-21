var gulp         = require('gulp');
var autoprefixer = require('gulp-autoprefixer');
var eslint       = require('gulp-eslint');
var exec         = require('child_process').exec;
var inject       = require('gulp-inject-string');
var rename       = require('gulp-rename');
var replace      = require('gulp-replace');
var sass         = require('gulp-sass');
var sourcemaps   = require('gulp-sourcemaps');
var stylelint    = require('gulp-stylelint');

var foundationSCSS = [
    'node_modules/normalize.scss/sass',
    'node_modules/foundation-sites/scss',
    'node_modules/motion-ui/src',
];

var appSCSS = [
    './scss/components/**/*.scss',
    './scss/mixins/**/*.scss',
    './scss/shared/**/*.scss',
];

// Lint SCSS
gulp.task('scss-lint', function() {
    return gulp.src(appSCSS)
        .pipe(stylelint({
            reporters: [{
                formatter: 'string',
                console: true
            }]
        }));
});

// Generate & Minify CSS
gulp.task('scss-compile', function() {
    return gulp.src('scss/app.scss')
        .pipe(sourcemaps.init())
        .pipe(sass({
            includePaths: foundationSCSS,
            outputStyle: 'compressed'
        })
            .on('error', sass.logError))
        .pipe(rename({
            extname: '.min.css'
        }))
        .pipe(autoprefixer({
            browsers: ['last 2 versions', 'ie >= 9']
        }))
        .pipe(sourcemaps.write('../sourcemaps'))
        .pipe(gulp.dest('dist'));
});

gulp.task('editor-compile', function() {
    return gulp.src('scss/editor.scss')
        .pipe(sourcemaps.init())
        .pipe(sass({
            includePaths: foundationSCSS,
            outputStyle: 'compressed'
        })
            .on('error', sass.logError))
        .pipe(rename({
            extname: '.css'
        }))
        .pipe(autoprefixer({
            browsers: ['last 2 versions', 'ie >= 9']
        }))
        .pipe(sourcemaps.write('../sourcemaps'))
        .pipe(gulp.dest('css'));
});

// Critical CSS
gulp.task('critical-compile', function() {
    return gulp.src('scss/critical.scss')
        .pipe(sass({
            includePaths: foundationSCSS,
            outputStyle: 'compressed'
        })
            .on('error', sass.logError))
        .pipe(replace("../fonts", "{$AbsoluteBaseURL}{$ThemeDir}/fonts"))
        .pipe(replace("../images", "{$AbsoluteBaseURL}{$ThemeDir}/images"))
        .pipe(replace('\\f', '\\\\f'))
        .pipe(replace('\\e', '\\\\e'))
        .pipe(replace('\\0', '\\\\0'))
        .pipe(replace('\\2', '\\\\2'))
        .pipe(autoprefixer({
            browsers: ['last 2 versions', 'ie >= 9']
        }))
        .pipe(rename('CriticalCSS.ss'))
        .pipe(inject.wrap('<style>\n', '</style>'))
        .pipe(gulp.dest('./templates/Includes/'));
});

// Lint JS
// gulp.task('js-lint', function() {
//     return gulp.src('js/**/*.js')
//         .pipe(eslint({
//             'configFile':'.eslintrc'
//         }))
//         .pipe(eslint.format());
// });


// SCSS and JS build tasks
gulp.task('scss', gulp.parallel('scss-lint', 'scss-compile', 'editor-compile', 'critical-compile'));
// gulp.task('js', gulp.parallel('js-lint', 'js-compile'));

// Default
gulp.task('default', function() {
    gulp.watch('scss/**/*.scss', { ignoreInitial: false }, gulp.parallel('scss'));
    // gulp.watch('js/**/*.js', { ignoreInitial: false }, gulp.parallel('js'));
});
