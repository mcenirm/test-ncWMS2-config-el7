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
