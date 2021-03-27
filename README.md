# Quick tool to translate text using Google's Translate API.

## Requirements:

Make sure you have `jq` installed. On a Mac, use `brew install jq`, assuming you have Homebrew installed.

## Usage:

`./translate.sh TEXT_TO_TRANSLATE`

By default, this translates to English. If you want to translate to a different language, set the TRANSLATE_LANG environment variable:

`env TRANSLATE_LANG=es ./translate.sh TEXT_TO_TRANSLATE`

The valid values for TRANSLATE_LANG are the standard two-character language codes.

## Example:

```
% ./translate.sh "Hola a todos"
Hello everyone
```

```
% env TRANSLATE_LANG=es ./translate.sh "Hello there"
Hola a todos
```

