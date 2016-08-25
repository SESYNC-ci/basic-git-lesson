---
style: /css/lesson.css
---

{% for sorted in site.slide_sorter %}
  {% capture id %}/slides/{{ sorted }}{% endcapture %}
  {% assign slide = site.slides | where: "id", id | first %}
  
  <a name="{{ id }}"></a>
  
  {{ slide.content }}

  [Top of Section](#{{ id }})
  {:.ToS}
  
  ---
  
{% endfor %}
