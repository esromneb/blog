clean:
	rm -rf docs && mkdir docs

copy:
	cp -R ../public-thoughts/_site/* docs

