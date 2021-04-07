# PatriotHacks2021 website
## Get started
Install flutter dev channel

Enable flutter web

Build release(make sure to run release version before pushing, as release version might have errors even tho they don't show up in debug)

Push to main to deploy

Github actions deploys to firebase on commit

## Important!
For every update you push, please update the version number in ```web/index.html``` on the ```script``` tag. 
```<script src="main.dart.js?version=2" type="application/javascript"></script>```

Just update the version number and nothing else.
