# A basic Makefile to demonstrate Git and 
# Author: Zak Rubin zrubin@rtc.edu 10/4/2021

clone:
	git clone https://github.com/RTCedu/CNA450_flaskr.git
directory:
	cd CNA450_flaskr & venv\Scripts\activate.bat

update:
	git pull

run:
	cd CNA450_flaskr & set FLASK_APP=flaskr & set FLASK_ENV=development & venv\Scripts\activate.bat & flask init-db & flask run

setup:
	 cd CNA450_flaskr & chdir & py -3 -m venv venv & venv\Scripts\activate.bat & pip install -e .

clean:
	rmdir /s CNA450_flaskr

coverage:
	cd CNA450_flaskr & set FLASK_APP=flaskr & set FLASK_ENV=development & venv\Scripts\activate.bat & pip install .[test] & coverage run -m pytest & coverage report & coverage html

run_test: 
	cd CNA450_flaskr & set FLASK_APP=flaskr & set FLASK_ENV=development & venv\Scripts\activate.bat & pip install .[test] & pytest

test_and_coverage:
	cd CNA450_flaskr & set FLASK_APP=flaskr & set FLASK_ENV=development & venv\Scripts\activate.bat & pip install .[test] & pytest & coverage run -m pytest & coverage report & coverage html

clean-and-run: clean clone setup run

# TODO - Run coverage suite


# TODO - Run test suite
test: cd CNA450_flaskr & set FLASK_APP=flaskr & set FLASK_ENV=development & venv\Scripts\activate.bat & pip install .[test] & pytest

# TODO - run test and coverage
