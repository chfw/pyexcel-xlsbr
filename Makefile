all: test

test:
	bash test.sh

document:
	bash document.sh

spelling:
	sphinx-build -b spelling docs/source/ docs/build/spelling

format:
	isort -y $(find pyexcel_xlsbr -name "*.py"|xargs echo) $(find tests -name "*.py"|xargs echo)
	black -l 79 pyexcel_xlsbr
	black -l 79 tests

lint:
	bash lint.sh
