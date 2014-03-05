package com.ohh

class HomeController {
    static allowedMethods = [index: ['GET', 'HEAD']]

    def index = {
        render(view: "home")
    }
}
