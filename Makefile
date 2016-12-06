PROJECT = rabbitmq_management_exchange
PROJECT_DESCRIPTION = Management Exchange Type

define PROJECT_ENV
[
	    {username, "guest"},
	    {password, "guest"}
	  ]
endef

LOCAL_DEPS = inets
DEPS = rabbit_common rabbit rabbitmq_management
TEST_DEPS = rabbitmq_ct_helpers rabbitmq_ct_client_helpers amqp_client

DEP_PLUGINS = rabbit_common/mk/rabbitmq-plugin.mk

# FIXME: Use erlang.mk patched for RabbitMQ, while waiting for PRs to be
# reviewed and merged.

ERLANG_MK_REPO = https://github.com/rabbitmq/erlang.mk.git
ERLANG_MK_COMMIT = rabbitmq-tmp

include rabbitmq-components.mk
include erlang.mk
