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
