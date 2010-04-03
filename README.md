The PostgreSQL driver for Netspire
==================================

Configuration
-------------

This should be added to the **modules** section of the netspire.conf:

    {mod_postgresql, ["hostname", "username", "password", [{database, "database"}, {pool_size, 5}]]}

Used 3rd party software
-----------------------

* Will Glozer's epgsql [http://glozer.net/src/epgsql](http://glozer.net/src/epgsql)
* pgsql_pool from Zotonic CMS [http://zotonic.com](http://zotonic.com)
