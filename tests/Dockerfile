FROM data_funnel
WORKDIR tests/
RUN poetry install -vvv
RUN chmod u+x run_tests.sh
RUN chmod u+x pylint_check.sh
WORKDIR /data_funnel/