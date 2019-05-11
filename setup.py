from setuptools import setup, find_packages

dependencies = [
    'Django==2.2.1',
    'psycopg2'
]

setup(
    name="smengine",
    version="0.1.0-planning.0",
    author="Mehrdad Pedaramfar",
    author_email="mehrdad1373pedramfar@gmail.com",
    install_requires=dependencies,
    packages=find_packages()
)
