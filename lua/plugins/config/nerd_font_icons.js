#!/usr/bin/env node
const _ = require('lodash');
const fp = require('lodash/fp');

const devicons = {
  extensions: {
    styl: ' ',
    sass: ' ',
    scss: ' ',
    htm: ' ',
    html: ' ',
    slim: ' ',
    ejs: ' ',
    css: ' ',
    less: ' ',
    md: ' ',
    mdx: ' ',
    markdown: ' ',
    rmd: ' ',
    json: ' ',
    js: ' ',
    mjs: ' ',
    jsx: ' ',
    rb: ' ',
    php: ' ',
    py: ' ',
    pyc: ' ',
    pyo: ' ',
    pyd: ' ',
    coffee: ' ',
    mustache: ' ',
    hbs: ' ',
    conf: ' ',
    ini: ' ',
    yml: ' ',
    yaml: ' ',
    toml: ' ',
    bat: ' ',
    jpg: ' ',
    jpeg: ' ',
    bmp: ' ',
    png: ' ',
    webp: ' ',
    gif: ' ',
    ico: ' ',
    twig: ' ',
    cpp: ' ',
    'c++': ' ',
    cxx: ' ',
    cc: ' ',
    cp: ' ',
    c: ' ',
    cs: ' ',
    h: ' ',
    hh: ' ',
    hpp: ' ',
    hxx: ' ',
    hs: ' ',
    lhs: ' ',
    lua: ' ',
    java: ' ',
    sh: ' ',
    fish: ' ',
    bash: ' ',
    zsh: ' ',
    ksh: ' ',
    csh: ' ',
    awk: ' ',
    ps1: ' ',
    ml: 'λ ',
    mli: 'λ ',
    diff: ' ',
    db: ' ',
    sql: ' ',
    dump: ' ',
    clj: ' ',
    cljc: ' ',
    cljs: ' ',
    edn: ' ',
    scala: ' ',
    go: ' ',
    dart: ' ',
    xul: ' ',
    sln: ' ',
    suo: ' ',
    pl: ' ',
    pm: ' ',
    t: ' ',
    rss: ' ',
    'f#': ' ',
    fsscript: ' ',
    fsx: ' ',
    fs: ' ',
    fsi: ' ',
    rs: ' ',
    rlib: ' ',
    d: ' ',
    erl: ' ',
    hrl: ' ',
    ex: ' ',
    exs: ' ',
    eex: ' ',
    leex: ' ',
    vim: ' ',
    ai: ' ',
    psd: ' ',
    psb: ' ',
    ts: ' ',
    tsx: ' ',
    jl: ' ',
    pp: ' ',
    vue: '﵂ ',
    elm: ' ',
    swift: ' ',
    xcplayground: ' ',
  },
  exact_matches: {
    'exact-match-case-sensitive-1.txt': '1',
    'exact-match-case-sensitive-2': '2',
    'gruntfile.coffee': ' ',
    'gruntfile.js': ' ',
    'gruntfile.ls': ' ',
    'gulpfile.coffee': ' ',
    'gulpfile.js': ' ',
    'gulpfile.ls': ' ',
    'mix.lock': ' ',
    dropbox: '  ',
    '.ds_store': ' ',
    '.gitconfig': ' ',
    '.gitignore': ' ',
    '.gitlab-ci.yml': ' ',
    '.bashrc': ' ',
    '.zshrc': ' ',
    '.vimrc': ' ',
    '.gvimrc': ' ',
    _vimrc: ' ',
    _gvimrc: ' ',
    '.bashprofile': ' ',
    'favicon.ico': ' ',
    license: ' ',
    node_modules: ' ',
    'react.jsx': ' ',
    procfile: ' ',
    dockerfile: ' ',
    'docker-compose.yml': ' ',
    makefile: ' ',
    'cmakelists.txt': ' ',
  },
  pattern_matches: {
    '.*jquery.*.js$': ' ',
    '.*angular.*.js$': ' ',
    '.*backbone.*.js$': ' ',
    '.*require.*.js$': ' ',
    '.*materialize.*.js$': ' ',
    '.*materialize.*.css$': ' ',
    '.*mootools.*.js$': ' ',
    Vagrantfile$: ' ',
  },
};

const converter = (...extraSteps) =>
  fp.flow(
    fp.toPairs,
    fp.groupBy(pair => pair[1]),
    fp.toPairs,
    fp.map(([symbol, extensions]) => ({
      symbol,
      extensions: extensions.map(([ext]) => ext),
    })),
    ...extraSteps,
    fp.map(line => `set classify+='${line}'`),
    fp.join('\n'),
  );

module.exports.vimDevicons = {
  extensions: converter(
    fp.map(
      ({symbol, extensions}) =>
        `${symbol}  ::${extensions.map(ext => `*.${ext}`).join(',,')}::`,
    ),
  )(devicons.extensions),
  exact_matches: converter(
    fp.map(({symbol, extensions}) => `${symbol}  ::${extensions.join(',,')}::`),
  )(devicons.exact_matches),
};

/*
 * Expected icons
 *
 * powerline_extra:                                         
 * font_awesome:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
 * font_awesome_extensions:                                                                                                                                                                          
 * material_design_icons:                                                                                                                                                                                                      
 * weather_icons:                                                                                                                                                                                                                                     摒 敖 晴 朗 望 杖 歹 殺 流 滛 滋 漢 瀞 煮 瞧
 * devicons:                                                                                                                                                                                                      
 * octicons:                                                                                                                                                                           
 * font_logos:                    
 * pomicons:           
 * iec_power: ⏻ ⏼ ⏽ ⏾ ⭘
 * seti_ui:                                                     
 */
const iconsMapping = {
  powerline_extra: [
    [0xe0a0, 0xe0a3],
    [0xe0b0, 0xe0d4],
  ],
  font_awesome: [
    [0xf000, 0xf0b2],
    [0xf0c0, 0xf2e0],
  ],
  font_awesome_extensions: [[0xe200, 0xe2a9]],
  material_design_icons: [[0xe700, 0xe7c5]],
  weather_icons: [
    [0xe300, 0xe3e3],
    [0xfa8f, 0xfa9d],
  ],
  devicons: [[0xe700, 0xe7c5]],
  octicons: [
    [0xf400, 0xf4a9],
    [0xf67c, 0xf67c],
  ],
  font_logos: [[0xf300, 0xf313]],
  pomicons: [[0xe000, 0xe00a]],
  iec_power: [
    [0x23fb, 0x23fe],
    [0x2b58, 0x2b58],
  ],
  seti_ui: [[0xe5fa, 0xe62e]],
};

const icons = fp.flow(
  fp.toPairs,
  fp.map(([key, ranges]) => [
    key,
    _.flatMap(ranges, ([from, to]) =>
      _.range(from, to + 1).map(codePoint => String.fromCodePoint(codePoint)),
    ).join('  '),
  ]),
  fp.fromPairs,
)(iconsMapping);

console.log(icons);


