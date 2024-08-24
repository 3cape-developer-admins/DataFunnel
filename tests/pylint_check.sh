#!/bin/sh

# Run pylint on the source code
poetry show
poetry run pylint data_funnel/ tests/