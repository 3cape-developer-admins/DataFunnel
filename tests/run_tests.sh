#!/bin/sh

# Run the unit tests and check the coverage
poetry run coverage run --source='data_funnel' -m pytest ./ && coverage report --fail-under=16
#coverage run --source='data_funnel' -m pytest ./ && coverage report --fail-under=16
