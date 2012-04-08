LISTEN_IP=127.0.0.1
RUNNING_PORT=8000
DOCUMENT_ROOT=document_root

all:
	php -c src/phpSimpleBuiltInRouter.ini src/phpSimpleBuiltInRouter.php

run:
	php -S $(LISTEN_IP):$(RUNNING_PORT) -t $(DOCUMENT_ROOT) phpSimpleBuiltInRouter.phar

simple_run:
	php -S $(LISTEN_IP):$(RUNNING_PORT) -t $(DOCUMENT_ROOT) src/simple_router.php

clean:
	rm -f phpSimpleBuiltInRouter.phar
