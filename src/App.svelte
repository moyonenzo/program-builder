<script lang="ts">
    import { ModeWatcher } from "mode-watcher";
    import { Toaster } from "$lib/components/ui/sonner";

    import * as Card from "$lib/components/ui/card";
    import * as Table from "$lib/components/ui/table";

    const sessions: any[] = [
        {
            title: "Séance 1",
            description: "Push"
        }
    ];

    $: console.log(sessions);
</script>

<ModeWatcher />
<Toaster />

{#each sessions as session, i (i)}
    <main class="w-full h-screen flex items-center justify-center">
        <Card.Root class="w-3/4">
            <Card.Header>
                <Card.Title>
                    <h2 class="scroll-m-20 text-3xl font-semibol transition-colors first:mt-0" contenteditable bind:textContent={sessions[i].title}>
                        {session.session_title}
                    </h2>
                </Card.Title>
                <Card.Description>
                    <p contenteditable bind:textContent={sessions[i].description}>
                        {session.description}
                    </p>
                    <hr />
                </Card.Description>
            </Card.Header>
            <Card.Content>
                <Table.Root>
                    <Table.Header>
                        <Table.Row>
                            <Table.Head class="text-left">Mouvement</Table.Head>
                            <Table.Head>Séries</Table.Head>
                            <Table.Head>Répétitions</Table.Head>
                            <Table.Head>RPE</Table.Head>
                            <Table.Head>Repos</Table.Head>
                            <Table.Head class="text-right">Remarques</Table.Head>
                        </Table.Row>
                    </Table.Header>
                    <Table.Body>
                    </Table.Body>
                </Table.Root>
            </Card.Content>
        </Card.Root>
    </main>
{/each}
