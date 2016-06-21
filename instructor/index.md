---
title: "Instructor's Page"
layout: slides
---

{% assign slides = site.slides | sort: "slide" %}
{% for slide in slides %}
  <section>{{ slide.content }}</section>
{% endfor %}
