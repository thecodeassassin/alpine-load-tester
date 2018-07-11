
Alpine-based load tester 
----

Based on boom (https://github.com/tarekziade/boom)

# Usage

docker run thecodeassassin/alpine-load-tester -n 50 https://google.nl 

## CI/CD environments

In a CI/CD environments you can cause the build process to fail when a route doesn't perform as expected.
For this you can use jq (https://stedolan.github.io/jq/).

Example:

```
echo "Testing https://google.nl"
docker run thecodeassassin/alpine-load-tester -n 50 https://google.nl | jq -e -r '.avg < 0.20'
```

This command will return an exit code 1 if the condition has not been met.
