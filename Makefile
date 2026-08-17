# Define variables
ARCHIVE_NAME = awesomelists.db.zip
SOURCE_FILE = table.db

# Declare phony targets
.PHONY: zip zip-only unzip clean server pack-split unpack-split example-search example-search2 merge update

# Rule to create a zip archive split into 50MB parts
zip:
	zip $(ARCHIVE_NAME) $(SOURCE_FILE)
	echo "Packed $(SOURCE_FILE) into $(ARCHIVE_NAME)"
	rm -f $(SOURCE_FILE)

unzip:
	[ -e $(SOURCE_FILE) ] && rm -r $(SOURCE_FILE) || true
	7z x $(ARCHIVE_NAME)

zip-only:
	zip $(ARCHIVE_NAME) $(SOURCE_FILE)
	echo "Packed $(SOURCE_FILE) into $(ARCHIVE_NAME)"
	rm -f $(SOURCE_FILE)

unpack-split:
	cat internet* > $(ARCHIVE_NAME)
	7z x $(ARCHIVE_NAME)
	rm -f $(ARCHIVE_NAME)

filter:
	poetry run python dbfeeds.py

# Clean rule to remove the archive
clean:
	rm -f $(ARCHIVE_NAME)
	echo "Removed $(ARCHIVE_NAME)"

server:
	python3 -m http.server 8000

summary:
	poetry run python dataanalyzer.py --summary --db $(SOURCE_FILE)

example-search:
	poetry run python ./dataanalyzer.py --db internet.db --search "*Warhammer*" --tags --social --title --description --status
example-search2:
	poetry run python ./dataanalyzer.py --db internet.db --search "*youtube.com/channel*" --title --tags --social
