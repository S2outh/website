<script lang="ts">
	import { page } from '$app/state';
</script>

<div class="content-div">
  <h1>{page.status}</h1>
  <h2>{page.error!.message}</h2>
</div>

<style>
  h1 {
    font-size: 500%;
  }
  .content-div {
    text-align: center;
  }
</style>
