# Spring Boot and Camel 4

## Documentation
```
https://access.redhat.com/documentation/id-id/red_hat_build_of_apache_camel/4.4
```

## Camel Version
We are using `Apache Camel` version `4.4.0`
```xml
    <dependencyManagement>
        <dependencies>
            <dependency>
                <groupId>com.redhat.camel.springboot.platform</groupId>
                <artifactId>camel-spring-boot-bom</artifactId>
                <version>4.4.0.redhat-00014</version>
                <type>pom</type>
                <scope>import</scope>
            </dependency>
        </dependencies>
    </dependencyManagement>
```

## How to Test
```
$ curl -kv http://localhost:8080/api/hello-world
*   Trying [::1]:8080...
* Connected to localhost (::1) port 8080
> GET /api/hello-world HTTP/1.1
> Host: localhost:8080
> User-Agent: curl/8.4.0
> Accept: */*
>
< HTTP/1.1 200
< accept: */*
< user-agent: curl/8.4.0
< Content-Type: application/json
< Transfer-Encoding: chunked
< Date: Sun, 14 Jul 2024 05:34:37 GMT
<
* Connection #0 to host localhost left intact

{"hello":"world"}         
```

## Image Used
We are using `registry.redhat.io/fuse7/fuse-java-openshift-jdk17-rhel8:1.13` for this application.

## Image Scanning
At this point in time (14 July 2024), there is no `HIGH` or `CRITICAL` vulnerabilities visible on the image. Scan is being done by using `Aquasec Trivy`
```
2024-07-14T12:29:38+07:00       INFO    Vulnerability scanning is enabled
2024-07-14T12:30:13+07:00       INFO    [python] License acquired from METADATA classifiers may be subject to additional terms      name="setuptools" version="39.2.0"
2024-07-14T12:30:13+07:00       INFO    Detected OS     family="redhat" version="8.10"
2024-07-14T12:30:13+07:00       INFO    [redhat] Detecting RHEL/CentOS vulnerabilities...       os_version="8" pkg_num=190
2024-07-14T12:30:13+07:00       INFO    Number of language-specific files       num=1
2024-07-14T12:30:13+07:00       INFO    [jar] Detecting vulnerabilities...

registry.redhat.io/fuse7/fuse-java-openshift-jdk17-rhel8:1.13 (redhat 8.10)

Total: 118 (UNKNOWN: 0, LOW: 90, MEDIUM: 28, HIGH: 0, CRITICAL: 0)
```