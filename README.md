[![Software Engineering Institute](https://avatars.githubusercontent.com/u/12465755?s=200&v=4)](https://www.sei.cmu.edu/)

[![Blog](https://img.shields.io/static/v1.svg?color=468f8b&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=SEI&message=Blog)](https://insights.sei.cmu.edu/blog/ "blog posts from our experts in Software Engineering.")
[![Youtube](https://img.shields.io/static/v1.svg?color=468f8b&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=SEI&message=Youtube&logo=youtube)](https://www.youtube.com/@TheSEICMU/ "vidoes from our experts in Software Engineering.")
[![Podcasts](https://img.shields.io/static/v1.svg?color=468f8b&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=SEI&message=Podcasts&logo=applepodcasts)](https://insights.sei.cmu.edu/podcasts/ "podcasts from our experts in Software Engineering.")
[![GitHub](https://img.shields.io/static/v1.svg?color=468f8b&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=SEI&message=GitHub&logo=github)](https://github.com/cmu-sei "view the source for all of our repositories.")
[![Flow Tools](https://img.shields.io/static/v1.svg?color=468f8b&labelColor=555555&logoColor=ffffff&style=for-the-badge&label=SEI&message=Flow%20Tools)](https://tools.netsa.cert.org/ "documentation and source for all our flow collection and analysis tools.")

At the [SEI](https://www.sei.cmu.edu/), we research software engineering, cybersecurity, and AI engineering problems; create innovative technologies; and put solutions into practice.

Find us at:

* [Blog](https://insights.sei.cmu.edu/blog/) - blog posts from our experts in Software Engineering.
* [Youtube](https://www.youtube.com/@TheSEICMU/) - vidoes from our experts in Software Engineering.
* [Podcasts](https://insights.sei.cmu.edu/podcasts/) - podcasts from our experts in Software Engineering.
* [GitHub](https://github.com/cmu-sei) - view the source for all of our repositories.

# misp

[![CI](https://img.shields.io/github/actions/workflow/status/cmu-sei/misp-helm/helm-release.yaml?style=for-the-badge&logo=github)](https://github.com/cmu-sei/misp-helm/actions?query=workflow%3Apublish)

A Helm chart for deploying the MISP Threat Sharing web application.

MISP is an open source software solution for collecting, storing, distributing and sharing cyber security indicators and threats about cyber security incidents analysis and malware analysis. MISP is designed by and for incident analysts, security and ICT professionals or malware reversers to support their day-to-day operations to share structured information efficiently. More information [here](https://github.com/MISP/MISP)

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| maheckathorn | <maheckathorn@sei.cmu.edu> |  |
| sei-avesey | <avesey@sei.cmu.edu> |  |
| sei-mtrdina | <mtrdina@sei.cmu.edu> |  |
| sei-mfrank | <mfrank@sei.cmu.edu> |  |

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.ntppool.org/ | smtp | 2.1.1 |
| oci://registry-1.docker.io/bitnamicharts | mariadb | 19.0.5 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| apiKeyCredentials | object | `{"key":"kzcuoh9tujovgbgcjrgbyaop8msodti4p9vjxyhp"}` | Admin user API key. Only used if setAPIKey & setk8sSecrets is set to true. |
| apiKeySecretValue | string | `"misp-api-key"` | Kubernetes Secret Name for MISP admin user api key. |
| env.disableSSLRedirect | string | `"true"` |  |
| env.mispDebug | string | `"no"` |  |
| env.mispEmail | string | `"info@sei.cmu.edu"` | Email used for notifications. |
| env.mispModuleUrl | string | `"http://misp-modules"` | The URL to connect to the misp-modules service. |
| env.mysqlDatabase | string | `"misp"` | The MySQL database to use. |
| env.mysqlHost | string | `"mariadb"` | The hostname of the MySQL database service. |
| env.oidcAuthenticationMethod | string | `"client_secret_jwt"` | The client secret based OAuth client authentication method. |
| env.oidcCheckUserValidity | string | `"600"` |  |
| env.oidcClientCryptoPass | string | `"LKJHsfd798LKDHSFkljSF*_7lkjhDF&*&JKHSF87FSKLJh@"` |  |
| env.oidcCodeChallengeMethod | string | `"S256"` |  |
| env.oidcDefaultOrg | string | `"CERT"` | The default organization. |
| env.oidcEnable | bool | `false` | Whether to enable OIDC authentication, according to https://github.com/MISP/MISP/blob/2.4/app/Plugin/OidcAuth/README.md |
| env.oidcLogoutUrl | string | `""` | The location of the OIDC logout URL. |
| env.oidcOfflineAccess | string | `"yes"` |  |
| env.oidcPasswordReset | string | `"https://sso.myorg.org/reset"` | The location of the OIDC password reset form. |
| env.oidcProviderUrl | string | `"https://sso.myorg.org/realms/Fusion"` | The location of the OIDC provider. |
| env.oidcRolesMapping | string | `"{\"misp-admin\": \"1\",\"misp-org-admin\": \"2\",\"misp-sync-user\": \"5\",\"misp-publisher\": \"4\",\"misp-api-user\": \"User with API access\",\"misp-user\": \"3\"}"` | If user has multiple roles from OIDC provider, the first role that matches will be assigned to the user. |
| env.oidcRolesProperty | string | `"roles"` |  |
| env.oidcScopes | string | `""` | The location for adding custom scopes. |
| env.redisHost | string | `"redis"` | The hostname of the redis service. |
| env.redisPassword | string | `"redispassword"` | The password for the redis service. |
| env.redisPort | int | `6379` | The port for the redis service. |
| env.securitySalt | string | `"E038741A-3646-4525-BFC9-77500D25F1F6"` |  |
| env.zeromqEnabled | string | `"yes"` |  |
| instanceEnv.ingressHostName | string | `"localhost"` |  |
| instanceEnv.mispBaseurl | string | `"http://localhost:80"` | If you are exposing MISP on a non-standard port (i.e., the port is part of the URL you would use to access it, e.g., https://192.168.0.1:4433) you need to include the port in the variable |
| instanceEnv.mispUuid | string | `"8370cb21-4e96-48d4-b43a-c14b97022f7e"` |  |
| kubernetesClusterDomain | string | `"cluster.local"` |  |
| mariadb.auth.database | string | `"misp"` |  |
| mariadb.auth.password | string | `"misp"` |  |
| mariadb.auth.rootPassword | string | `"misp"` |  |
| mariadb.auth.username | string | `"^M1SP+User$"` |  |
| mariadb.enabled | bool | `false` | Whether to have the helm chart handle deploying a MySQL database. Disabled by default. |
| mariadb.fullnameOverride | string | `"mariadb"` |  |
| mariadb.image.repository | string | `"bitnamilegacy/mariadb"` |  |
| mariadb.image.tag | string | `"latest"` |  |
| mariadb.volumePermissions.enabled | bool | `true` |  |
| mariadb.volumePermissions.image.repository | string | `"bitnamilegacy/os-shell"` |  |
| misp.ingressClassName | string | `"nginx"` |  |
| misp.misp.containerLivenessProbe.failureThreshold | int | `5` |  |
| misp.misp.containerLivenessProbe.httpGet.path | string | `"/users/heartbeat"` |  |
| misp.misp.containerLivenessProbe.httpGet.port | int | `80` |  |
| misp.misp.containerLivenessProbe.periodSeconds | int | `20` |  |
| misp.misp.containerReadinessProbe.failureThreshold | int | `3` |  |
| misp.misp.containerReadinessProbe.httpGet.path | string | `"/users/heartbeat"` |  |
| misp.misp.containerReadinessProbe.httpGet.port | int | `80` |  |
| misp.misp.containerReadinessProbe.periodSeconds | int | `10` |  |
| misp.misp.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| misp.misp.containerSecurityContext.capabilities.drop[0] | string | `"NET_RAW"` |  |
| misp.misp.containerSecurityContext.capabilities.drop[1] | string | `"SYS_CHROOT"` |  |
| misp.misp.containerSecurityContext.capabilities.drop[2] | string | `"MKNOD"` |  |
| misp.misp.containerSecurityContext.capabilities.drop[3] | string | `"SETFCAP"` |  |
| misp.misp.containerSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| misp.misp.containerStartupProbe.failureThreshold | int | `90` |  |
| misp.misp.containerStartupProbe.httpGet.path | string | `"/users/heartbeat"` |  |
| misp.misp.containerStartupProbe.httpGet.port | int | `80` |  |
| misp.misp.containerStartupProbe.initialDelaySeconds | int | `10` |  |
| misp.misp.containerStartupProbe.periodSeconds | int | `10` |  |
| misp.misp.containerStartupProbe.timeoutSeconds | int | `5` |  |
| misp.misp.image.digest | string | `""` |  |
| misp.misp.image.repository | string | `"ghcr.io/misp/misp-docker/misp-core"` |  |
| misp.misp.image.tag | string | `"latest"` |  |
| misp.misp.imagePullPolicy | string | `"Always"` |  |
| misp.misp.resources.limits.cpu | string | `"0.5"` |  |
| misp.misp.resources.limits.memory | string | `"1Gi"` |  |
| misp.ports[0].name | string | `"misp"` |  |
| misp.ports[0].port | int | `80` |  |
| misp.ports[0].protocol | string | `"TCP"` |  |
| misp.ports[0].targetPort | int | `80` |  |
| misp.replicas | int | `1` |  |
| misp.tlsAnnotation | string | `""` |  |
| misp.type | string | `"ClusterIP"` |  |
| modules.mispModules.containerLivenessProbe.failureThreshold | int | `5` |  |
| modules.mispModules.containerLivenessProbe.periodSeconds | int | `20` |  |
| modules.mispModules.containerLivenessProbe.tcpSocket.port | int | `6666` |  |
| modules.mispModules.containerReadinessProbe.failureThreshold | int | `3` |  |
| modules.mispModules.containerReadinessProbe.periodSeconds | int | `10` |  |
| modules.mispModules.containerReadinessProbe.tcpSocket.port | int | `6666` |  |
| modules.mispModules.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| modules.mispModules.containerSecurityContext.capabilities.drop[0] | string | `"NET_RAW"` |  |
| modules.mispModules.containerSecurityContext.capabilities.drop[1] | string | `"SYS_CHROOT"` |  |
| modules.mispModules.containerSecurityContext.capabilities.drop[2] | string | `"MKNOD"` |  |
| modules.mispModules.containerSecurityContext.capabilities.drop[3] | string | `"NET_BIND_SERVICE"` |  |
| modules.mispModules.containerSecurityContext.capabilities.drop[4] | string | `"AUDIT_WRITE"` |  |
| modules.mispModules.containerSecurityContext.capabilities.drop[5] | string | `"SETFCAP"` |  |
| modules.mispModules.containerSecurityContext.runAsUser | int | `10001` |  |
| modules.mispModules.containerSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| modules.mispModules.image.digest | string | `""` |  |
| modules.mispModules.image.repository | string | `"ghcr.io/misp/misp-docker/misp-modules"` |  |
| modules.mispModules.image.tag | string | `"latest"` |  |
| modules.mispModules.imagePullPolicy | string | `"Always"` |  |
| modules.mispModules.resources.limits.cpu | string | `"0.5"` |  |
| modules.mispModules.resources.limits.memory | string | `"1Gi"` |  |
| modules.ports[0].name | string | `"misp-modules"` |  |
| modules.ports[0].port | int | `6666` |  |
| modules.ports[0].targetPort | int | `6666` |  |
| modules.replicas | int | `1` |  |
| modules.type | string | `"ClusterIP"` |  |
| modulesEnv.redisBackend | string | `"redis"` |  |
| modulesEnv.redisPort | int | `6379` |  |
| mysqlCredentials | object | `{"password":"misp","username":"^M1SP+User$"}` | MySQL default credentials. Only used if setk8sSecrets is set to true. |
| mysqlCredentialsSecretName | string | `"mysql-credentials"` | Kubernetes Secret Name for MySQL admin credentials. Secret has to contain `username` and `password` literals. |
| oidcCredentials | object | `{"password":"test","username":"test"}` | OIDC default credentials. Only used if setk8sSecrets is set to true. |
| oidcCredentialsSecretName | string | `"oidc-credentials"` | Kubernetes Secret Name for OIDC credentials. Secret has to contain `username` and `password` literals. |
| pvc.attachments.storageClass | string | `""` |  |
| pvc.attachments.storageRequest | string | `"1Gi"` |  |
| pvc.redisData.storageClass | string | `""` |  |
| pvc.redisData.storageRequest | string | `"1Gi"` |  |
| redis.mispRedis.args | string | `"--requirepass redispassword"` |  |
| redis.mispRedis.containerLivenessProbe.failureThreshold | int | `10` |  |
| redis.mispRedis.containerLivenessProbe.periodSeconds | int | `30` |  |
| redis.mispRedis.containerLivenessProbe.tcpSocket.port | int | `6379` |  |
| redis.mispRedis.containerReadinessProbe.failureThreshold | int | `5` |  |
| redis.mispRedis.containerReadinessProbe.periodSeconds | int | `20` |  |
| redis.mispRedis.containerReadinessProbe.tcpSocket.port | int | `6379` |  |
| redis.mispRedis.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| redis.mispRedis.containerSecurityContext.capabilities.drop[0] | string | `"NET_RAW"` |  |
| redis.mispRedis.containerSecurityContext.runAsUser | int | `10001` |  |
| redis.mispRedis.containerSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| redis.mispRedis.image.digest | string | `""` |  |
| redis.mispRedis.image.repository | string | `"valkey/valkey"` |  |
| redis.mispRedis.image.tag | string | `"7.2"` |  |
| redis.mispRedis.imagePullPolicy | string | `"Always"` |  |
| redis.mispRedis.resources.limits.cpu | string | `"0.5"` |  |
| redis.mispRedis.resources.limits.memory | string | `"1Gi"` |  |
| redis.ports[0].name | string | `"redis"` |  |
| redis.ports[0].port | int | `6379` |  |
| redis.ports[0].targetPort | int | `6379` |  |
| redis.replicas | int | `1` |  |
| redis.type | string | `"ClusterIP"` |  |
| setAPIKey | bool | `true` | Whether to handle setting the MISP admin API key automatically. |
| setk8sSecrets | bool | `false` | Whether to handle k8s secrets with helm chart. |
| smtp.RELAY_NETWORKS | string | `":10.42.0.0/17"` |  |
| smtp.config | string | `nil` |  |
| smtp.enabled | bool | `false` | Whether to have the helm chart handle deploying the optional mail forwarding container. |
| tls.tlsSecretName | string | `"squirrel"` |  |
| tls.useTLS | bool | `false` | Whether to have the helm chart handle TLS settings for the ingress. |

