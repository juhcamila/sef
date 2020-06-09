// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start();
require("@rails/activestorage").start();
window.jQuery = window.$ = require("jquery/dist/jquery");
require("bootstrap/dist/js/bootstrap")
require("fastclick/lib/fastclick");
require("nprogress/nprogress");
require("malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar");
window.smartresize = require("packs/smartresize");
require("packs/custom");
require("channels");
// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
