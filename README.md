# web service template

rebar3 template of web service based on cowboy HTTP server.

## Requirements

- [rebar3](https://www.rebar3.org)
- [erlang](https://www.erlang.org/downloads)

## Use

- Clone to rebar3 template directory

        $ git clone git@github.com:velimir0xff/rebar3-web-service-template.git ~/.cache/rebar3/lib/rebar/priv/templates/web-service

    Alternatively template can be symlinked from another directory:

        $ git clone git@github.com:velimir0xff/rebar3-web-service-template.git
        $ ln -s `pwd`/rebar3-web-service-template/  ~/.cache/rebar3/lib/rebar/priv/templates/web_service

- List variables available for template

        $ rebar3 new help web_service
        web_service:
            built-in template
            Description: Cowboy based web service
            Variables:
                name="myapp" (Name of the service)
                desc="Web service" (Short description of the app)
                date="2018-10-14"
                datetime="2018-10-14T18:55:39+00:00"
                author_name="Anonymous"
                author_email="anonymous@example.org"
                copyright_year="2018"
                apps_dir="apps" (Directory where applications will be created if needed)

- Create new application directory based on template and vars

        $ rebar3 new web_service name=thingy
        ===> Writing thingy/LICENSE
        ===> Writing thingy/README.md
        ===> Writing thingy/.gitignore
        ===> Writing thingy/erl.config
        ===> Writing thingy/rebar.config
        ===> Writing thingy/test/thingy_ct.erl
        ===> Writing thingy/test/thingy_SUITE.erl
        ===> Writing thingy/test/ct.cover.spec
        ===> Writing thingy/test/ct.test.spec
        ===> Writing thingy/src/thingy.app.src
        ===> Writing thingy/src/thingy.erl
        ===> Writing thingy/src/thingy_app.erl
        ===> Writing thingy/src/thingy_context.erl
        ===> Writing thingy/src/thingy_http.erl
        ===> Writing thingy/src/thingy_http_log_handler.erl
        ===> Writing thingy/src/thingy_log_context_h.erl
        ===> Writing thingy/src/thingy_sup.erl
        ===> Writing thingy/src/thingy_util.erl

- Follow newly created project documentation to get started
