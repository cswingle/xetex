xetex
=====

A Docker image that includes Python 3, Jinja2, Psycopg2, the Adobe
Source Sans, Serif, and Code Pro fonts, and enough TeXLive to run XeTex.

I use this to generate PDF reports from a PostgreSQL database on
non-Linux clients.

For example, copy your Python and Jinja2 template to your working
directory, generate XeTex, then produce PDF:

.. code:: bash

   $ cp ~/reporting/report_summary_sheet.py .
   $ cp ~/reporting/report_summary_sheet.xetex.jinja2 .
   $ docker run --rm -i --user="$(id -u):$(id -g)" -v "$PWD":/data xetex ./report_summary_sheet.py "site" site_summary.xetex
   $ docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/data xetex xetex site_summary.xetex
   $ docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/data xetex xetex site_summary.xetex

Acknowledgements
----------------

Based on https://github.com/blang/latex-docker, and related repos.

.. vim:ft=rst:fenc=utf-8:tw=72:ts=3:sw=3:sts=3:
