# OmniAuth Draft
An OmniAuth strategy for authenticating to [Draft](https://draftin.com/). To use it you'll need an OAuth2 Application ID and Secret from Draft. More info (and their api docs) [are here](https://draftin.com/documents/54643?token=Qq1PuS1fL8Zr9yWDSefoeUMQCfp3yr1s6g_7ShYKops).

## Basic Usage

```
use OmniAuth::Builder do
  provider :draft, ENV['DRAFT_APP_ID'], ENV['DRAFT_SECRET']
end
```

## Copyright 

Copyright (c) 2013 Beeminder inc. See LICENSE.txt for further details.
