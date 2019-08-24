deploy:
	rm -rf ./public/*
	../hugo
	scp -r ./public root@ssh.raimonster.com:/var/www/html

new-post:
	../hugo new post/something.md

serve:
	../hugo server -D .
