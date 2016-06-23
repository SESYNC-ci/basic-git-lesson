---
title: "Instructor View"
layout: slides
---

{% for sorted in site.slide_sorter %}
  {% capture id %}/slides/{{ sorted }}{% endcapture %}
  {% assign hslide = site.slides | where: "id", id | first %}
  <section>
    {% assign vslides = hslide.content | split: "<!--split-->" %}
    {% assign split =  vslides | size %}
	{% if size == 1 %}
	  {{ vslides | first }}
	{% else %}
	  {% for vslide in vslides %}
	    <section>{{ vslide }}</section>
	  {% endfor %}
	{% endif %}
  </section>
{% endfor %}
