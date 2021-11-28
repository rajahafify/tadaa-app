// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"

import * as bootstrap from "bootstrap"

 document.addEventListener('turbolinks:load', function() {
   console.log('turbolinks:load')
 });

//
console.log("Hello World!")
