VERSION?=latest
NAME?=epimorphics/k8s-sidecar
REPO?=293385631482.dkr.ecr.eu-west-1.amazonaws.com/${NAME}

all: image

image:
	@docker build -t ${NAME}:${VERSION} .

publish:
	@docker tag ${NAME}:${VERSION} ${REPO}:${VERSION}
	@docker push ${REPO}:${VERSION}

clean:
	@rm -f Dockerfile
