TESTS=test_0 test_1 test_2
all: ${TESTS}

test_%: tests.cc
	mpicxx $^ -o $@ -std=c++11 -Wall -g -DTEST_CASE=${patsubst test_%,%,$@} ${RPATH_FLAGS} \
		${shell pkg-config --cflags --libs yac} \
		${shell pkg-config --cflags --libs proj}

clean:
	@rm -f ${TESTS}
