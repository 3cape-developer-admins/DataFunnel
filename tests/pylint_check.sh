#!/bin/sh

# Run pylint on the source code
poetry list
poetry run pylint data_funnel/ tests/