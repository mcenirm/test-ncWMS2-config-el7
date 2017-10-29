Tomcat instance setup details from [Tomcat Multiple Instances RHEL 7 CentOS 7](https://notesbytom.wordpress.com/2017/03/10/tomcat-multiple-instances-rhel-7-centos-7/) at [_Notes by Tom_](https://notesbytom.wordpress.com/)

1. Make images
    ```console
    make
    ```

2. Start web service
    ```console
    docker-compose up web
    ```

3. Look at service logs
    ```console
    docker-compose exec web journalctl --no-pager -u tomcat@web.service
    ```

4. Stop service (overkill)
    ```console
    docker-compose exec web systemctl poweroff
    ```
