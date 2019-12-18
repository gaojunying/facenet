install:
	@pip install -r requirements.txt

test.compare:
	@python src/compare.py models/20180402-114759 data/images/Anthony_Hopkins_0001.jpg data/images/Anthony_Hopkins_0002.jpg

model.compress:
	@cd models; rar a -v40000k 20180402-114759.rar 20180402-114759
	@cd models; rar a -v40000k 20180408-102900.rar 20180408-102900

model.extract:
	@cd models; unrar x 20180402-114759.part1.rar
	@cd models; unrar x 20180408-102900.part1.rar