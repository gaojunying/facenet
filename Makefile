install: model.extract
	@pip install -r requirements.txt

test.20180402:
	@python src/compare.py models/20180402-114759\
	 data/images/Anthony_Hopkins/0001.jpg\
	 data/images/Anthony_Hopkins/0002.jpg

test.20180408:
	@python src/compare.py models/20180408-102900\
	 data/images/Anthony_Hopkins/0001.jpg\
	 data/images/Anthony_Hopkins/0002.jpg

test.xuzheng:
	@python src/compare.py models/20180402-114759\
	 data/images/xuzheng/1.jpg\
	 data/images/xuzheng/2.jpg\
	 data/images/xuzheng/3.jpg

test.junying:
	@python src/compare.py models/20180408-102900\
	 data/images/junying/1.jpg\
	 data/images/junying/2.jpg\
	 data/images/junying/3.jpg\
	 data/images/junying/4.jpg\
	 data/images/junying/5.jpg

test.compare:
	@python src/compare.py models/20180408-102900\
	 data/images/junying/1.jpg\
	 data/images/xuzheng/2.jpg\
	 data/images/Anthony_Hopkins/0001.jpg\
	 data/images/others/1.jpg\
	 data/images/others/2.jpg

model.compress:
	@cd models; rar a -v40000k 20180402-114759.rar 20180402-114759
	@cd models; rar a -v40000k 20180408-102900.rar 20180408-102900

model.extract:
	@if [ ! -d "models/20180402-114759" ]; then cd models; unrar x 20180402-114759.part1.rar; fi
	@if [ ! -d "models/20180402-114759" ]; then cd models; unrar x 20180408-102900.part1.rar; fi