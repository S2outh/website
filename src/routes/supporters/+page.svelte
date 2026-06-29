<svelte:head>
  <title>S²OUTH — Supporters</title>
  <meta
    name="description"
    content="The organizations whose support makes the S²OUTH telemetry project possible."
  />
</svelte:head>

<div class="title-div">
  <h1>Supporters</h1>
</div>

<div class="content-div">
  <h3>This project is only possible due to support from these organizations:</h3>
  <div class="logo-grid">
    <enhanced:img src="$lib/assets/supporters/aisler_logo.png" class="logo" alt="aisler logo" />
    <enhanced:img
      src="$lib/assets/supporters/sparkasse_logo.png"
      class="logo"
      alt="sparkasse logo"
    />
  </div>
</div>

<style>
  /* .content-div base and .title are defined in src/app.css */
  .title-div {
    width: min(50rem, 90%);
    height: 100%;
    margin: auto;
    text-align: center;
    justify-content: center;
  }
  .content-div {
    width: min(70rem, 90%);
    text-align: center;
  }
  .logo-grid {
    background-color: var(--color-surface);
    border-radius: 1rem;
    padding: 2rem;
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(16rem, 1fr));
    align-items: center;
    gap: 4rem;
  }
  .logo {
    width: 100%;
    height: auto;
  }
</style>
