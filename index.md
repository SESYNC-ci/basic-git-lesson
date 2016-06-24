---
title: "Trainee View"
layout: default
---

## Table of Contents
{:.no_toc}

* TOC
{:toc}

{% for sorted in site.slide_sorter %}
  {% capture id %}/slides/{{ sorted }}{% endcapture %}
  {% assign slide = site.slides | where: "id", id | first %}
  {{ slide.content }}
{% endfor %}
