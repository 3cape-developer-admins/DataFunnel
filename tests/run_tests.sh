#!/bin/sh

# Run the unit tests and check the coverage
coverage run --source='data_funnel' -m pytest ./ && coverage report
#coverage run --source='data_funnel' -m pytest ./ && coverage report --fail-under=16
