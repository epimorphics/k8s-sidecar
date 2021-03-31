VERSION?=SNAPSHOT
REPO?=293385631482.dkr.ecr.eu-west-1.amazonaws.com/epimorphics/k8s-sidecar

all: image

image:
	@docker build -t ${REPO}:${VERSION} .

publish:
	@docker push ${REPO}:${VERSION}

clean:
	@rm -f Dockerfile
