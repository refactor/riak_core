REBAR ?= ./rebar3

.PHONY: compile-no-deps test docs xref dialyzer-run dialyzer-quick dialyzer \
		cleanplt

compile-no-deps:
	${REBAR} compile

test: compile
	${REBAR} eunit

docs:
	${REBAR} doc

xref: compile
	${REBAR} xre

dialyzer: 
	${REBAR} dialyzer
