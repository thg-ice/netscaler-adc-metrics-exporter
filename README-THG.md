# Netscaler metrics

* We forked the project and added filters to the exporter, those filters should be regex

* you will find a file called `exporter.yaml` that file contains all the required things to deploy the exporter to k8s
we should deploy 2 copies one for BE netscaler and the other for FE netscalers on all mc clusters, you find a copy deployed on gb1 mc cluster for testing purposes

* also there is a file `run.sh` you can use it to run the project locally for testing

* the `metrics.json` is copy of the `metrics_full.json`  that contains only the metrics we need, we can use the full version to add more metrics once needed.

* if you need to update the code you can do so and push to upstream after that just tag and push and the image will be created automatically for you

* Also we have to create alerts based on the metrics above ( its a bit hacky for now but at least we have something to begin with )
