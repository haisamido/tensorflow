.DEFAULT_GOAL := all

# Assumes you have brew installed
python3:
	brew install python3
	brew postinstall python3

tensorflow-install: python3
	pip3 install h5py pyyaml tensorflow

keras-install: python3
	pip3 install keras

matplotlib-install: python3
	pip3 install matplotlib

deps: python3 tensorflow-install keras-install matplotlib-install

tensorflow: deps
	python3 mytf.py

fashions: deps
	python3 fashions.py

#all: tensorflow fashions
