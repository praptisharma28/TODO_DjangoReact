# Django & React Notes App

## Cloning the Repository

Clone the repository using the command below:

```bash
git clone https://github.com/praptisharma28/TODO_DjangoReact
```

Move into the directory where we have the project files:

```bash
cd TODO_DjangoReact\Django-React-NotesApp>
```

Create a virtual environment:

- If you are on Windows:

```bash
virtualenv env
```

- If you are on Linux or Mac:

```bash
python -m venv env
```

Activate the virtual environment:

- If you are on Windows:

```bash
.\env\Scripts\activate
```

- If you are on Linux or Mac:

```bash
source env/bin/activate
```

## Running the App

To run the Notes App, use the following command:

```bash
python manage.py runserver
```

⚠ Then, the development server will be started at http://127.0.0.1:8000/


## Instruction for running with docker

create a .env file based up on the .env.example 

```bash
docker volume create staticfiles
```
```bash
docker compose up
```
---
