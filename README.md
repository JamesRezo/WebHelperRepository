# A (first) WebHelper Repository

This is where the twig files are set up.

`res/` directory contains all the twig files

```bash
#Make/Refresh the res/webhelper.json use by WebHelper
bin/setup.sh
```

Put `res` directory to a web space that [WebHelper](https://github.com/JamesRezo/WebHelper) can access (with http GET method)

Use `--repository` option of the webhelper command to set the repository, or set a config option in **your** project `composer.json` file, like:
```json
"extra": {
    "webhelper-repository-path": "http://some.where.net/res"
}
```
