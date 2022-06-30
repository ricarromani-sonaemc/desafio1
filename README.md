// guardado no volume -v jenkins_home:/var/jenkins_home \

docker build . --tag romani24/jenkins:1.0

docker run --name dc-jenkins -d -p 8080:8080 -v jenkins1_home:/var/jenkins_home romani24/jenkins:1.0

docker run -d --name dc-jenkins8 -p 8080:8080 --mount source=jenkins,target=/app romani24/jenkins:1.0

docker run -d --rm \
--name=agent2 \
--network jenkins \
-p 8080:8080 `-e "JENKINS_AGENT_SSH_PUBKEY=[your-public-key]" `romani24/jenkins:0.8.0

//6
