# image-usps

Docker build for usps image retrival for mail. Uses gmail to grab latest images and mqtt to serve up the images. 

## Environment variables needed

* MQTT_SERVER: usps (default)
* MQTT_SERVER_PORT: 1883 (default)

* MQTT_USERNAME: "" (default)
* MQTT_PASSWORD: "" (default)

* MQTT_USPS_MAIL_TOPIC: "/usps/mails" (default)
* MQTT_USPS_PACKAGE_TOPIC: "/usps/packages" (default)

* SLEEP_TIME_IN_SECONDS:  300(default)

* HOST: 'imap.gmail.com' (default)
* PORT: 993 (default)
* USERNAME: No defaults. Must be populated via environment variable
* PASSWORD: No defaults. Must be populated via environment variable
* MAIL_FOLDER  : 'inbox' (default)

* GIF_FILE_NAME: "todays_mails.gif" (default)
* GIF_MAKER_OPTIONS: '/usr/bin/convert  -delay 300 -loop 0 ' (default)
* IMAGE_OUTPUT_PATH: '/opt/homeassistant/www/' (default)
