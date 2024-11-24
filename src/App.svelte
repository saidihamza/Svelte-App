<script>
    let experience = [
        { role: "Développeur Web", company: "DATACENTER", years: "2017-2020" },
        { role: "DEVELOPPEUR PHP", company: "DIGILINKS", years: "2010-2024" }
    ];
</script>

<style>
    h1 { color: #ff3e00; }
    .experience { margin-bottom: 20px; }
</style>

<main>
    <h1>Bienvenue sur mon CV</h1>
    <section>
        <h2>Expérience</h2>
        {#each experience as job}
            <div class="experience">
                <strong>{job.role}</strong> chez {job.company} ({job.years})
            </div>
        {/each}
    </section>
</main>
