// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// Import Bootstrap JavaScript
import { Popover } from "bootstrap"
import * as bootstrap from "bootstrap"

// Make Bootstrap available globally
window.bootstrap = bootstrap