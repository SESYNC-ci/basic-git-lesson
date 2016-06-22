---
title: "Instructor View"
layout: slides
---

{% assign hslides = site.slides | sort: "slide" %}
{% for hslide in hslides %}
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
