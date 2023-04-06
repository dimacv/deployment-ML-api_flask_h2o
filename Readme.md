# An example of deploying a machine learning model (h2o model) using Flask.

--------------------------------------------------------------------------------

## Docker build:

``` docker build  -t api_flask_h2o . ```

--------------------------------------------------------------------------------
## Starting a named container in daemon mode on port 8080 :

```docker run --rm -p 8080:8080 --name api_flask_h2o -d api_flask_h2o```

