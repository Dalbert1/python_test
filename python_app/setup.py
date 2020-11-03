import setuptools

with open('requirements.txt', 'r') as f:
    install_requires = f.read().splitlines()

setuptools.setup(name='python_app',
                 packages=['python_app'],
                 install_requires=install_requires)

