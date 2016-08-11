.PHONY: all
all: compile

.PHONY: compile
compile: | rebar3
	( cd riakc_rebar3_demo && ../rebar3 compile; )

REBAR3_V = 3.2.0

rebar3:
	curl -f -L -O https://github.com/erlang/rebar3/releases/download/$(REBAR3_V)/$@
	chmod u+x $@
