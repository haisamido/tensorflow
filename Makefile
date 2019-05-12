.DEFAULT_GOAL := all

python3:
	brew install python3
	brew postinstall python3

tensorflow-install: python3
	pip3 install h5py pyyaml tensorflow

keras: tensorflow-install
	pip3 install keras

deps: tensorflow-install keras

tensorflow:
	python3 mytf.py

all: tensorflow
