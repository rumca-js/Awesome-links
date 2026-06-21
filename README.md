# Awesome links database

A curated, structured database of links extracted from GitHub “awesome lists”.

e.g. https://github.com/sindresorhus/awesome

# Overview

This project collects, parses, and organizes links from various GitHub awesome lists into a single, reusable database.

Instead of browsing dozens (or hundreds) of scattered markdown files, this tool centralizes valuable resources into a format that is:

 - easy to search
 - structured
 - reusable

# How it works

1. Link collection - fetches and reads multiple GitHub awesome lists
2. Parsing - extracts links and fetches relevant metadata (e.g. title, description)
3. Normalization - cleans and standardizes the data
4. Storage - saves everything into a SQLite database
5. Access - the database can be accessed via provided database reading framework

# Run the browser framework

To start web server
```
make server
```

Then access http://127.0.0.1:8000/search.html

# Read via CLI [Under construction]

```
poetry run python dataanalyzer.py --db table.db --search "link=*github*" --title --tags
```
Remember to correctly specify db table name

#

```
Table: applogging, Row count: 2001
Table: backgroundjob, Row count: 4
Table: backgroundjobhistory, Row count: 1
Table: blockentry, Row count: 0
Table: blockentrylist, Row count: 0
Table: browser, Row count: 16
Table: compactedtags, Row count: 0
Table: configurationentry, Row count: 10
Table: credentials, Row count: 0
Table: dataexport, Row count: 0
Table: domains, Row count: 0
Table: entrycompactedtags, Row count: 0
Table: entryrules, Row count: 0
Table: gateway, Row count: 64
Table: linkdatamodel, Row count: 33246
Table: modelfiles, Row count: 0
Table: readlater, Row count: 0
Table: searchview, Row count: 10
Table: socialdata, Row count: 1200
Table: sourcecategories, Row count: 2
Table: sourcedatamodel, Row count: 59
Table: sourceoperationaldata, Row count: 59
Table: sourcesubcategories, Row count: 45
Table: user, Row count: 5
Table: userbookmarks, Row count: 4340
Table: usercomments, Row count: 0
Table: usercompactedtags, Row count: 0
Table: userconfig, Row count: 3
Table: userentrytransitionhistory, Row count: 6965
Table: userentryvisithistory, Row count: 3358
Table: usersearchhistory, Row count: 0
Table: usertags, Row count: 0
Table: uservotes, Row count: 0
```

# awesome databases

 - https://github.com/rumca-js/awesome-database-awesomelists
 - https://github.com/rumca-js/awesome-database-top
 - https://github.com/rumca-js/awesome-database-feeds
 - https://github.com/rumca-js/Internet-Places-Database
