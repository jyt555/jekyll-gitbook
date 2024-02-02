            "sharing": {
                "facebook": false,

                "google": false,

                "github": true,
              {% if https://github.com/jyt555 %}
                "github_link": "https://github.com/jyt555",
              {% else %}
                "github_link": "https://github.com",
              {% endif %}

                "telegram": false,
                "telegram_link": "https://t.me",

                "instapaper": false,

                "twitter": false,
              {% if site.twitter_username %}
                "twitter_link": "https://twitter.com/{{ site.twitter_username }}",
              {% endif %}

                "vk": false,

                "weibo": false,

                "all": ["github", "facebook", "google", "twitter", "weibo", "instapaper", "telegram"]
            },
