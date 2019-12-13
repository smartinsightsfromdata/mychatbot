
# MyChatbot

Start with:

#### Create a python 3.7.5 virtual environment
        python -m venv vmyc # or any similar name

        source vmyc/bin/activate

        pip install -r requirements.txt


#### Train
        rasa train # to train the model during local testing
        ./local_training.sh # for deployment to model server

## If there are no erros, we can start launching the docker images:

#### docker-compose - preparation
        docker-compose pull # necessary the first time to load all the docker images

        docker-compose up -d artifactory

* go to `http://localhost:8090/artifactory/webapp/#`
* login with `login:admin password:password`
* select `Welcom, admin` pulldown menu and select `local repository`
* select the repository type `generic`
* in the local repository, write `mychatbot-generic` in the `Repository Key` and save

#### launch the boot

        docker-compose up

        localhost:8080  # to access the chatbot


The model server (based on artifactory in this case) allows to update models during run time.


