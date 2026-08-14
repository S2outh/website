<svelte:head>
  <title>S²OUTH - N₂ORTH</title>
  <meta
    name="description"
    content="N₂ORTH is a student-built hybrid rocket by HyEnD Stuttgart, aiming for up to 150 km apogee and carrying the S²OUTH telemetry system."
  />
</svelte:head>

<div class="title-div">
  <h1><mark>[</mark> N₂ORTH <mark>]</mark></h1>
</div>

<div class="content-div">
  <enhanced:img
    loading="lazy"
    src="#lib/assets/pictures/north/North.jpg"
    class="image"
    alt="The N₂ORTH hybrid rocket resting horizontally on stands outdoors, showing its HyEnD N₂ORTH livery"
  />
  <p>
    <em>N₂ORTH</em> is a student build hybrid engine rocket developed by the team of
    <em>HyEnD</em> e. V. in Stuttgart. It’s main engine, <em>HyLIGHT</em> provides up to
    <em>15 kN</em> of thrust and runs on nitrous oxide as well as an in-house developed solid rocket
    fuel. <em>N₂ORTH</em> already launched twice in April of 2023, reaching an apogee of
    <em>64.4 km</em>. This time we aim for a lot higher, with optimistic estimates going up to
    <em>150 km</em>. Learn more about <em>N₂ORTH</em> on the
    <a href="https://hyend.de/index.php/2025/11/27/announcing-n2orth-3/">
      <em>official HyEnD website</em>
    </a>.
  </p>
</div>

<style>
  /* .content-div, .title and .image are defined in src/app.css */
  .title-div {
    width: 100%;
    height: 100%;
    margin: auto;
    text-align: center;
    justify-content: center;
  }
</style>
