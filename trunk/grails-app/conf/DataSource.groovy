dataSource {
    pooled = true
    driverClassName = "com.mysql.jdbc.Driver"
    username = "cms_author"
    password = "cms_author"
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop','update'
            url = "jdbc:mysql://sentinel.dev.comcastnets.net:3306/cms_author_dev"
        }
    }
    test {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop','update'
            url = "jdbc:mysql://sentinel.dev.comcastnets.net:3306/cms_author_dev"
        }
    }
    production {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop','update'
            url = "jdbc:mysql://sentinel.dev.comcastnets.net:3306/cms_author_dev"
        }
    }
}
