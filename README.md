# NGINX Test Upstream

NGINX Test Upstream is a simple packaged configuration for [NGINX](https://nginx.org/), for logging textual payloads such as JSON. This is helpful for developing or extending plugins for [Isoxya](https://www.isoxya.com/) web crawler.

https://hub.docker.com/r/tiredpixel/nginx-test-upstream  
https://github.com/tiredpixel/nginx-test-upstream  


## Usage

```sh
curl -XPUT -d'{"abc":123}' localhost
```

```txt
127.0.0.1 -  [03/Jun/2019:16:21:25 +0000] "PUT / HTTP/1.1" 202 0 "" "curl/7.52.1" ""
{"abc":123}
```


## Contact

[tp@tiredpixel.com](mailto:tp@tiredpixel.com) · [www.tiredpixel.com](https://www.tiredpixel.com/) · [www.isoxya.com](https://www.isoxya.com/)

LinkedIn: [in/nic-williams](https://www.linkedin.com/in/nic-williams/) · Twitter: [tiredpixel](https://twitter.com/tiredpixel/) · GitHub: [tiredpixel](https://github.com/tiredpixel)


## Licence

Copyright © 2021 [Nic Williams](https://www.tiredpixel.com/). It is free software, released under the BSD 3-Clause licence, and may be redistributed under the terms specified in `LICENSE`.
