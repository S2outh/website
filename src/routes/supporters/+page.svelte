<script lang="ts">
  import { load_images } from "$lib/utils.svelte";
  const logos = load_images("supporters");
</script>

<div class="title-div">
  <h1 class="title">Supporters</h1>
</div>

<div class="content-div">
  <h2>
    This project is only possible due to support from these organizations:
  </h2>
  <div class="logo-grid">
    <img src={logos.aisler_logo} class="logo" alt="aisler logo">
    <img src={logos.sparkasse_logo} class="logo" alt="sparkasse logo">
  </div>
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
    width: min(70rem, 90%);
    height: 100%;
    margin: auto;
    justify-content: center;
    text-align: center;
  }
  .logo-grid {
    background-color: rgba(255, 255, 255, 0.1);
    border-radius: 1rem;
    padding: 2rem;
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 4rem;
  }
  .logo {
    width: 100%;
  }
  .title {
    font-size: 400%;
  }
</style>
