# Godless Coliseum Discord Bot

## How to install the bot as a docker container on a server

### Building the image

Copy the folder containing the Dockerfile onto the server. Go to the directory that has the Dockerfile and run the following command to build the Docker image from the source code:

`docker build -t cgbot .`

The image will now be listed by Docker. You can confirm this by running:

`docker images`

### Create a writeable container from the image

`docker create --name cgbot cgbot`

### Run the image

`docker start cgbot`

### Set up a cronjob

Run the command below to edit the cronjobs:

`crontab -e`

Then add the below line to it:

`*/10 * * * * docker stop cgbot && docker start cgbot`

This will run the service every ten minutes. To change this use [Crontab Guru](https://crontab.guru)

### View logs from inside the container

Run the below command to see the output of the bot.

`docker container logs -f cgbot`