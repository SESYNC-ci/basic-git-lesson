---
title: "for trainees"
layout: default
---

{% assign slides = site.slides | sort: "slide" %}
{% for slide in slides %}
  {{ slide.content }}
{% endfor %}
