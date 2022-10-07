.PHONY: run
run: passwd.txt url.txt qr.png
	bash run.sh

qr.png: url.txt
	qrencode -o qr.png < $<

url.txt: passwd.txt
	bash make_url.sh

passwd.txt:
	pwgen 8 1 > $@