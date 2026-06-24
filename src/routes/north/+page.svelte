<svelte:head>
  <title>N₂ORTH — S²OUTH</title>
  <meta
    name="description"
    content="N₂ORTH is a student-built hybrid rocket by HyEnD Stuttgart, aiming for up to 150 km apogee and carrying the S²OUTH telemetry system."
  />
</svelte:head>

<div class="title-div">
  <h1 class="title">N₂ORTH</h1>
</div>

<div class="content-div">
  <enhanced:img loading="lazy" src="$lib/assets/pictures/north/North.jpg" class="image" alt="north rocket" />
  <p>
    <i>N₂ORTH</i> is a student build hybrid engine rocket developed by the team of
    <i>HyEnD</i> e. V. in Stuttgart. It’s main engine, <i>HyLIGHT</i> provides up to
    <i>15 kN</i> of thrust and runs on nitrous oxide as well as an in-house developed
    solid rocket fuel. <i>N₂ORTH</i> already launched twice in April of 2023, reaching
    an apogee of <i>64.4 km</i>. This time we aim for a lot higher,
    with optimistic estimates going up to <i>150 km</i>.
    Learn more about <i>N₂ORTH</i> on the
    <a href="https://hyend.de/index.php/dlr-stern-participation/">
      <i>official HyEnD website</i>
    </a>.
  </p>
</div>

<style>

  .title-div {
    width: 100%;
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
    font-size: 300%;
  }
  .image {
    width: 100%;
    height: auto;
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
