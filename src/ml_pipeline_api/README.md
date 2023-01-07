
## Tox
```{bash}
tox
```

## Run
```{bash}
cd app/
uvicorn main:app --reload
```

## Deploy to Heroku
```{bash}
heroku create
```

Add PIP_EXTRA_INDEX_URL on Heroku `Config Vars`

```{bash}
git push heroku master
```
