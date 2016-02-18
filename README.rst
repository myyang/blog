How to note
===========

install
=======

.. code-block::

    pip install docker-compose


build and run
=============

1. Please modifiy .env files in the dockers/envs first.
2. Run `docker-compose build` and `docker-compose up`
3. Rebuild image with `docker-compose build`
4. Blog locates at `/var/blog` and built blog is under `/var/_built_blog` by default. If you want to change file locations, please modify data-volume in docker-compose.yml.
