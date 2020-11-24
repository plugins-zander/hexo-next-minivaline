/* global hexo */

'use strict';

const path = require('path');


// Add comment
hexo.extend.filter.register('theme_inject', injects => {
  let config = hexo.config;
  if (!config.minivaline.enable) return;

  injects.comment.raw('minivaline', '<div class="comments" id="minivaline-comments"></div>', {}, {cache: true});

  injects.bodyEnd.file('minivaline', path.join(__dirname, 'minivaline.swig'));

});
