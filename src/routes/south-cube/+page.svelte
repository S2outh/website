<script lang="ts">
  import { load_images } from "$lib/utils.svelte";
  const images = load_images("pictures/south_cube");
</script>

<div class="title-div">
  <h1 class="title">South Cube</h1>
</div>

<div class="content-div">
  <img loading="lazy" src={images.CubeBP} style:filter="invert(1)" class="image" alt="cube">
  <p>
    South Cube was a preliminary version of the <i>S²OUTH</i> telemetry system that
    flew as a payload on the <a href="https://astg.at/projects/ispida">ASTG Ispida</a>
    rocket at the <i>European Rocketry Challange</i> (EUROC)
    2025 in Portugal. The rocket reached an apogee of 9.4 km and accelerations of
    more than 8g. The system successfully transmitted and recorded telemetry data
    and proved the functionality of several key systems in real world conditions
  </p>
  <img loading="lazy" src={images.Cube} class="image" alt="cube">
</div>

<style>

  .title-div {
    width: min(50rem, 90%);
    height: 100%;
    margin: auto;
    text-align: center;
    justify-content: center;
  }

  .content-div {
    width: min(50rem, 90%);
    height: 100%;
    margin: auto;
    justify-content: center;
  }
  .title {
    font-size: 400%;
  }
  .image {
    object-fit: cover;
    width: 100%;
    aspect-ratio: 1/1;
  }

  a {
    color: lightblue;
    text-decoration: none;
    background-image: linear-gradient(currentColor, currentColor);
    background-position: 0 100%;
    background-size: 0% 0.1rem;
    background-repeat: no-repeat;
    transition: background-size 0.25s ease;
  }
  a:hover, a:focus-visible {
    background-size: 100% 0.1rem;
  }
</style>
