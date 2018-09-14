class named::conf {

    file { "named.conf" :
        path    =>  "/etc/named.conf",
        owner   =>  root,
        group   =>  named,
        mode    =>  640,
        source  =>  "puppet://modules/named/conf/named.conf"
    }

    file { "0.0.10.zone" :
        path    =>  "/var/named/0.0.10.zone",
        owner   =>  root,
        group   =>  root,
        mode    =>  644,
        source  =>  "puppet://modules/named/zone/0.0.10.zone"
    }

    file { "1.0.10.zone" :
        path    =>  "/var/named/1.0.10.zone",
        owner   =>  root,
        group   =>  root,
        mode    =>  644,
        source  =>  "puppet://modules/named/zone/1.0.10.zone"
    }

    file { "ma.local.zone" :
        path    =>  "/var/named/ma.local.zone",
        owner   =>  root,
        group   =>  root,
        mode    =>  644,
        source  =>  "puppet://modules/named/zone/ma.local.zone"
    }

}