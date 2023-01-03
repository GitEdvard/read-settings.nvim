# read-settings.nvim

Check for existence of a json file provided as input, read that file, transform it to a lua table and return it. If no file exists matching the provided file name, return nil.

The file must be in json format.

The file name is relative to the current working directory.

example:

```local settings = require'read-settings'.read_json(".dapsettings.json")```
