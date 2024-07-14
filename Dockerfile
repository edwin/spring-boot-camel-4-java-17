FROM registry.redhat.io/fuse7/fuse-java-openshift-jdk17-rhel8:1.13

LABEL BASE_IMAGE="registry.redhat.io/fuse7/fuse-java-openshift-jdk17-rhel8:1.13"
LABEL JAVA_VERSION="17"

COPY target/*.jar /deployments/application.jar