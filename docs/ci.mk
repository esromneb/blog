

# use for running manual commands
dev-createdocker:
	docker run -dit --name jekylld -v /home/x/work:/src jekyll/jekyll:4.2.2 bash

dev-startdocker:
	docker start jekylld

# creates and destroys 
ci-build:
	rm -rf _site
	docker run --rm \
        -v ${PWD}:/srv/jekyll -v ${PWD}/_site:/srv/jekyll/_site \
        jekyll/jekyll:4.2.2 /bin/bash -c "jekyll build --future"



ci-clean:
	rm -rf Gemfile.lock _site
