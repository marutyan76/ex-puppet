node default inherits ex_puppet {
   notify { "woof": message => "Did you define a node? This is the default node message." }
   include test_page
}

node ex_puppet {
}

node /^pupdns/ inherits ex_puppet {
        include test
}

node /^hp/ inherits ex_puppet {
        include httpd
}

node /^dnsma/ inherits ex_puppet {
        include named
}

node /^mco/ inherits ex_puppet {
        include httpd
}