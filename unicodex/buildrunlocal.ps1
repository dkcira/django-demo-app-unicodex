
# dk 20210910

# print out commands before executing them
Set-PSDebug -Trace 1

# build
docker-compose build

# migrate and load sample data
docker-compose run --rm web python manage.py migrate
docker-compose run --rm web python manage.py loaddata sampledata

# start dockers in background (detached mode)
docker-compose up -d

# disable debug
Set-PSDebug -Trace 1