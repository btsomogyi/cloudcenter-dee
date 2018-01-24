
DEPS = profile.sh DEE-Nodes Docker.yml certs DEE-Nodes.yml group_vars roles

k8: $(DEPS)
	zip build/dee.zip -r $(DEPS)

.PHONY: clean

clean:
	-rm build/dee.zip
