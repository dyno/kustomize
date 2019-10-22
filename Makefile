# https://www.mirantis.com/blog/introduction-to-kustomize-part-1-creating-a-kubernetes-app-out-of-multiple-pieces/
#
# KUSTOM_HOME=$(mktemp -d)
KUSTOM_HOME := mirantis

BASE := $(KUSTOM_HOME)/base
WORDPRESS_HOME := $(BASE)/wordpress
MYSQL_HOME := $(BASE)/mysql

.PHONY: wordpress
wordpress:
	kustomize build $(WORDPRESS_HOME) | bat --language=yaml --style=plain --paging=never
