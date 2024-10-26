---
title: "Things I Like Collection"
layout: default
cars:
  - title: "Porsche 911"
    image: "https://raw.githubusercontent.com/jestov/grid-gallery/refs/heads/master/img/1.jpg"
    description: "A classic sports car known for its iconic design and high performance."
  - title: "Tesla Model S"
    image: "https://raw.githubusercontent.com/jestov/grid-gallery/refs/heads/master/img/2.jpg"
    description: "A sleek, all-electric sedan with cutting-edge technology and impressive range."

places:
  - title: "Kyoto, Japan"
    image: "https://raw.githubusercontent.com/jestov/grid-gallery/refs/heads/master/img/3.jpg"
    description: "An ancient city filled with temples, shrines, and beautiful cherry blossoms."
  - title: "Santorini, Greece"
    image: "https://raw.githubusercontent.com/jestov/grid-gallery/refs/heads/master/img/4.jpg"
    description: "A stunning island with white-washed buildings, blue domes, and breathtaking views."

movies:
  - title: "Inception"
    image: "https://raw.githubusercontent.com/jestov/grid-gallery/refs/heads/master/img/5.jpg"
    description: "A sci-fi thriller that explores the complexities of dreams within dreams."
  - title: "The Shawshank Redemption"
    image: "https://raw.githubusercontent.com/jestov/grid-gallery/refs/heads/master/img/6.jpg"
    description: "A powerful story of hope and friendship set within a prison."
---

# {{ page.title }}

Here are some of my favorite things across different categories.

<div class="grid-container">
{% assign collections = page.cars | concat: page.places | concat: page.movies %}
{% for item in collections %}
  <div class="grid-item">
    <a href="{{ item.image }}" target="_blank" class="popup">
      <img src="{{ item.image }}" alt="{{ item.title }}">
      <div class="overlay">
        <p><b>{{ item.title }}</b></p>
        <p>{{ item.description }}</p>
      </div>
    </a>
  </div>
{% endfor %}
</div>