<svelte:head>
  <title>S²OUTH - South Cube</title>
  <meta
    name="description"
    content="South Cube, a preliminary S²OUTH telemetry payload, flew on the ASTG Ispida rocket at EUROC 2025, reaching 9.4 km apogee and validating key systems in real-world conditions."
  />
</svelte:head>

<div class="title-div">
  <h1><mark>[</mark> South Cube <mark>]</mark></h1>
</div>

<div class="content-div">
  <enhanced:img
    loading="lazy"
    src="#lib/assets/pictures/south_cube/CubeBP.png"
    class="image"
    alt="Blueprint-style technical line drawing of the South Cube telemetry payload"
  />
  <p>
    South Cube was a preliminary version of the <em>S²OUTH</em> telemetry system that flew as a
    payload on the <a href="https://astg.at/projects/ispida">ASTG Ispida</a>
    rocket at the <em>European Rocketry Challange</em> (EUROC) 2025 in Portugal. The rocket reached an
    apogee of 9.4 km and accelerations of more than 8g. The system successfully transmitted and recorded
    telemetry data and proved the functionality of several key systems in real world conditions
  </p>
  <enhanced:img
    loading="lazy"
    src="#lib/assets/pictures/south_cube/Cube.jpg"
    class="image"
    alt="Hand holding the assembled South Cube payload at the EUROC launch site, with competition tents in the background"
  />
</div>

<style>
  /* .content-div and .title are defined in src/app.css */
  .title-div {
    width: min(50rem, 90%);
    height: 100%;
    margin: auto;
    text-align: center;
    justify-content: center;
  }
  /* .image base (width/height) is in app.css */
  .image {
    object-fit: cover;
    aspect-ratio: 1/1;
  }
</style>
