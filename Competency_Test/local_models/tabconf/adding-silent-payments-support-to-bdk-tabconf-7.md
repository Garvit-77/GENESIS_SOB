---
title: "\U0001F92B\U0001F7E0 Adding Silent Payments Support to BDK | TABConf 7"
speakers:
  - Nymius
tags: []
source_file: https://www.youtube.com/watch?v=MtvZRltUMWU
media: https://www.youtube.com/watch?v=MtvZRltUMWU
categories: []
date: '2026-02-09'
summary: "This summary integrates the technical demonstrations and discussions led\
  \ by **Nymius** (BDK Foundation) at TABConf 7 regarding the integration of **Silent\
  \ Payments (BIP352)** into the **Bitcoin Development Kit (BDK)**.\n\n---\n\n###\
  \ **Overview of Silent Payments in BDK**\nThe workshop centered on a proof-of-concept\
  \ (PoC) integration of Silent Payments into BDK, utilizing two specific tools: **BDK-CLI**\
  \ (for sending) and **SP-CLI** (for scanning, receiving, and spending). The primary\
  \ goal was to demonstrate a \"round trip\" transaction\u2014sending funds from a\
  \ standard BIP32 wallet to a Silent Payment address and then spending those funds\
  \ back to a standard wallet.\n\n### **Core Mechanics and Benefits**\nSilent Payments\
  \ represent a major leap in Bitcoin privacy by allowing for **non-interactive, one-time\
  \ addresses**. \n*   **Unique Derivation:** Instead of static addresses, a sender\
  \ derives a unique `scriptPubKey` using the recipient\u2019s public keys and the\
  \ transaction\u2019s specific input data.\n*   **Privacy:** Because every transaction\
  \ generates a unique output, observers cannot link multiple payments to the same\
  \ recipient.\n*   **Change Outputs:** Unlike BIP32, Silent Payments use \"labels\"\
  \ primarily to derive change outputs, which simplifies the scanning process for\
  \ the wallet owner.\n\n### **Technical Implementation and \"Hacky\" Workarounds**\n\
  As the Silent Payment specification for PSBTs (Partially Signed Bitcoin Transactions)\
  \ is not yet finalized, Nymius described the current implementation as experimental.\
  \ \n*   **Two-Step Transaction Creation:** Because the final `scriptPubKey` depends\
  \ on the inputs, the tool first creates a PSBT with placeholder scripts to perform\
  \ coin selection. Once inputs are finalized, the tool derives the actual shared\
  \ secret and replaces the placeholders with the final Silent Payment output before\
  \ signing.\n*   **The PSBT Tweak Problem:** Spending SP outputs requires adding\
  \ \"raw tweaks\" to private keys. Since there is currently no standard PSBT field\
  \ for this data (pending BIPs 374 and 375), the developer implemented proprietary\
  \ key fields within the PSBT to pass these tweaks to the signer.\n*   **Infrastructure\
  \ Gaps:** Current limitations include a lack of native BDK metadata storage for\
  \ shared secrets and the fact that necessary Rust bindings for `libsecp256k1` have\
  \ not yet been merged into the main codebase.\n\n### **The Challenge of Scanning\
  \ and Performance**\nBecause Silent Payment outputs look like standard Taproot outputs,\
  \ recipients must scan the blockchain to identify their funds.\n*   **Optimized\
  \ Scanning:** To avoid the heavy computational load of local derivation\u2014especially\
  \ on mobile\u2014the implementation uses **Compact Block Filters (CBF)** and a **BlindBit\
  \ \"tweak\" server**. This allows the wallet to request specific tweaks to check\
  \ for ownership without downloading the entire blockchain.\n*   **Future Improvements:**\
  \ Discussion touched on using parallel processing, GPU-assisted scanning, and pre-computed\
  \ tables to further mitigate scanning latency.\n\n### **Collaborative Future and\
  \ Successful Demo**\nThe workshop concluded with a successful **Regtest demonstration**,\
  \ showing the full lifecycle of an SP transaction:\n1.  **Funding:** Using the Padawan\
  \ Wallet faucet to fund a BIP32 wallet.\n2.  **Sending:** Transferring funds to\
  \ a Silent Payment address.\n3.  **Scanning & Verification:** Using the BlindBit\
  \ server to locate the UTXO and manually verifying the `scriptPubKey` derivation.\n\
  4.  **Spending:** Successfully spending the SP output while correctly deriving a\
  \ change output.\n\n**Key Takeaway:** While the PoC is functional, the path to production\
  \ requires standardized BIPs for PSBT tweaks and more flexible handling of adaptor\
  \ signatures within BDK to support emerging protocols like Silent Payments and FROST."
conference: TABConf 7
topics:
  - Silent Payments
  - BDK
  - BIP352
  - Privacy
  - PSBT
youtube:
  description: "\U0001F4CC Learn more about this workshop on GitHub: \u2B50\uFE0F\U0001F419\
    \nhttps://github.com/TABConf/7.tabconf.com/issues/32\n\n\U0001F92B\U0001F7E0 Nymius\
    \ shares a workshop preview of the work to support silent payments in BDK\nThe\
    \ bdk-sp experimental repo explores a modular approach that combines BDK features\
    \ with BIP352 \U0001F9E9\U0001F510\n\n\U0001F9ED What you\u2019ll see in this\
    \ session\nUser flows of a silent payment wallet, including:\n\U0001F9F1 creating\
    \ silent payment transactions\n\U0001F50E discovering incoming payments\n\U0001F4E4\
    \ spending transactions\n\U0001F3F7\uFE0F adding labels\n\U0001F9FE how a PSBT\
    \ based solution could be implemented\n\n\U0001F9E0 Recommended background\n\U0001F511\
    \ public/private key cryptography\n\U0001F91D elliptic curve Diffie Hellman\n\U0001F4DA\
    \ familiarity with BIPs\nIf you\u2019ve got that, you\u2019ll be flying \u2708\
    \uFE0F\u26A1\uFE0F\n\n\u26A1\uFE0F\U0001F6E0\uFE0F\u26A1\uFE0F\U0001F6E0\uFE0F\
    \u26A1\uFE0F\U0001F6E0\uFE0F\u26A1\uFE0F\U0001F6E0\uFE0F\u26A1\uFE0F\U0001F6E0\
    \uFE0F\u26A1\uFE0F\U0001F6E0\uFE0F\u26A1\uFE0F\U0001F6E0\uFE0F\u26A1\uFE0F\U0001F6E0\
    \uFE0F\u26A1\uFE0F\U0001F6E0\uFE0F\u26A1\uFE0F\U0001F6E0\uFE0F\u26A1\uFE0F\U0001F6E0\
    \uFE0F\u26A1\uFE0F\U0001F6E0\uFE0F\u26A1\uFE0F\U0001F6E0\uFE0F\u26A1\uFE0F\U0001F6E0\
    \uFE0F\n\n\U0001F7E0 TABConf is a technical Bitcoin conference built for builders.\
    \ We bring protocol + application devs together to collaborate, debate, and push\
    \ Bitcoin forward. \U0001F9E0\U0001F527\n\n\U0001F3A5 On this channel you\u2019\
    ll find:\n\U0001F5E3\uFE0F Full talks \u2022 \U0001F9D1\u200D\U0001F3EB workshops\
    \ \u2022 \U0001F9E9 panels\n\U0001F6E0\uFE0F Builder Days sessions \u2022 \U0001F50D\
    \ deep dives on:\n\U0001F9F1 Bitcoin Core \u2022 \u26A1\uFE0F Lightning \u2022\
    \ \U0001F575\uFE0F privacy \u2022 \U0001F510 security \u2022 \U0001F9F0 the tooling\
    \ teams ship with\n\n\U0001F39F\uFE0F TABConf 8 tickets are on sale now!\n\U0001F5D3\
    \uFE0F Oct 12\u201315, 2026 \u2022 \U0001F4CD Atlanta, GA\n\U0001F3DB\uFE0F Georgia\
    \ Tech Exhibition Hall\n\n\U0001F3AB TABConf 8 Tickets\n\U0001F7E0 Pay with Bitcoin:\
    \ https://checkout.opennode.com/p/7d51f71f-f3e6-4159-bbfa-3a231d14e5b8\n\n\U0001F4B3\
    \ Pay with Stripe: https://buy.stripe.com/00w4gzapSf0o4ubg2mdQQ0b\n\n\U0001F310\
    \ TABConf Website\nhttps://tabconf.com\n\n\U0001F517 All links hub\nhttps://linktr.ee/tabconf\n\
    \n\U0001FAC2 TABConf Community\n\U0001F4AC Discord: https://discord.gg/TRaX8M7amU\n\
    \n\U0001F426 Follow us on X\nhttps://x.com/tabconf\n\n\U0001F3A7 Subscribe to\
    \ the TABConf Podcast\n\U0001F34E Apple Podcasts: https://podcasts.apple.com/us/podcast/tabconf-sessions/id1867836916\n\
    \n\U0001F7E2 Spotify: https://open.spotify.com/show/11Ram7ccTjBeiwhYoDVtF4?si=ec8bab9fdc2945cd\n\
    \n\u26F2\uFE0F Fountain: https://fountain.fm/show/fqYiANm1II8INYOodXaj\n\n\u2B50\
    \uFE0F Star us on GitHub\n\U0001F419 https://github.com/TABConf"
  tags:
    - tabconf
    - bitcoin
    - '2025'
    - tabconf 7
    - technology
    - conference
    - atlanta
    - BDK
    - silentpayments
    - BIP352
    - cryptowallets
    - cryptography
    - developers
    - wallet
    - privacy
  categories:
    - Science & Technology
  channel_name: TABConf
transcript_by: your_username via tstbtc v1.0.0
---

Speaker 0: 00:00:01

There you have a little README where you can follow this link to the branch where I have set up all the playbooks that I'll be using to run this workshop.

Speaker 0: 00:00:17

So if you go here to doc tapconf, there you have a readme.
with a little explanation of what we will doing.

Speaker 0: 00:00:30

And there are like three playbooks that you can use to follow this workshop with me.

Speaker 0: 00:00:37

Uh one is if you have NICs uh you can try to set it up.

Speaker 0: 00:00:40

I wouldn't recommend it to do it now but uh it's like the connection is not good so uh probably It's going to be slower and uh and it's going to take you longer than this workshop.

Speaker 0: 00:00:51

But uh well you have all the all the steps to reproduce what we'll be doing here in those playbooks.

Speaker 0: 00:00:57

Uh if you try the signet playbook that's set up with Nix, so if you have Nix you can uh run Nix develop.

Speaker 0: 00:01:04

Uh it will bring all the binaries that you need for uh to run this workshop there.

Speaker 0: 00:01:11

And if not you can uh run the rectus playbook or the non-Nix playbook.

Speaker 0: 00:01:16

I re would recommend to if you if you cannot set up Nix to run the non-Nix one because there you have to install the dependencies by yourself, Podman, uh the raster toolchain and uh just the the recipe runner.

Speaker 0: 00:01:33

And yeah, with that you have all all what you need to start executing the steps in the playbooks to follow this workshop.

Speaker 0: 00:01:41

So I will set up mine.

Speaker 0: 00:01:45

Okay, here we are.

Speaker 0: 00:01:49

Okay, no Bitcoin instance here.

Speaker 0: 00:01:53

So uh here I will I will be launching uh my my my own setup.

Speaker 0: 00:02:01

Uh I'm using the Nix the Signet playbook.

Speaker 0: 00:02:04

Um give me a moment, I I will show you a presentation where I present myself and I will explain a little bit more, but uh first I kn I need to set up the the environment uh to launch the workshop.

Speaker 0: 00:02:23

Okay.

Speaker 0: 00:02:25

Well I don't need all all the so all those things for for the presentation, so I will continue anyways.

Speaker 0: 00:02:43

This is right, okay.

Speaker 0: 00:02:45

Uh so welcome to this workshop.

Speaker 0: 00:02:48

I will be talking about integrating silent payments in B D K, the advances and the challenges.

Speaker 0: 00:02:54

I'm Nimius.

Speaker 0: 00:02:56

I have been contributing to BDK for uh a couple of years now and since last year I I have been funded by BDK Foundation to focus on the development of of starting payments and the integration with them into the the library.

Speaker 0: 00:03:15

What I have been doing uh up to this point is Mainly working on the on trying to find the the missing gaps that we have on BDK and try to build something, a proof of concept of what uh could be uh signed payments integration inside of in BDK.

Speaker 0: 00:03:34

And that's what I want to show you today.

Speaker 0: 00:03:38

So what we are going to do here is uh I have set up this workshop so you can do a a round trip uh a SAT round trip between a BIP32 wallet and a silent payment wallet implemented with BDK and you can send back the SATs uh the the that you receive on the first transaction to the BIP32 wallet.

Speaker 0: 00:03:57

And and there you will see different things that you that we have uh related to silicon payments like the change uh some d difference that that we that we have with BIP32 uh way of of doing uh wallets.

Speaker 0: 00:04:12

Uh for example we have a different way of of derivating the the change.

Speaker 0: 00:04:19

And we will be using commands on BDK CLI.

Speaker 0: 00:04:23

That is a tool that uh BDK has already uh developed and I I I have integrated some some commands there to to send to silent payment wallet.

Speaker 0: 00:04:35

And uh we are going to use also s SP CLI, that's the tool that I have been working on.

Speaker 0: 00:04:41

And that tool allows you to se uh scan for silent payments, uh for received silicon payments, to spend those silent payments and to scan using uh the scanning is performed with compact glove filters.

Speaker 0: 00:04:55

And yeah, we are going to also verify that we are deriving correctly the change output.

Speaker 0: 00:05:01

Uh that we can create with the with with our wallet.

Speaker 0: 00:05:07

So yeah, that's mainly it.

Speaker 0: 00:05:10

Uh the first step to to run this workshop is to launch the environment.

Speaker 0: 00:05:17

So has anyone here run through the stage one of the workshop, like on the README?

Speaker 0: 00:05:23

Has anyone tried?

Speaker 0: 00:05:26

No one?

Speaker 0: 00:05:27

Okay.

Speaker 0: 00:05:27

So I will I guess it will be just me.

Speaker 0: 00:05:30

Uh it's hard to set up all this uh right here.

Speaker 0: 00:05:35

So let me check that every everything is place is in place.

Speaker 0: 00:05:40

I I I got an error at the beginning so I should try to do it again.

Speaker 0: 00:05:47

What we will be using or the workshop is using a signet node.
uh launch during this uh Nix developer uh environment, so I I sh I m should make sure that the the signet node is running correctly, so I can interact with it.

Speaker 0: 00:06:05

Mainly for the V thirty two volt, so I would try this again.
a Bitcoin Core instance.

Speaker 0: 00:06:37

At the same time uh I'm launching uh uh because I wanted to do this running on Signet and to have a fallback if you if you cannot run on Signet, you can test it on Regtest.

Speaker 0: 00:06:47

I'm launching also a container spinning up uh an instance of uh Bitcoin Core node running on Regtest with some other uh features that we need for for uh silent payments.
like a tweak server, because we need to get uh some shared secrets from there.

Speaker 0: 00:07:06

So this is like the if you if you try it uh later, this is like the the what you will see if all went well.

Speaker 0: 00:07:16

So there I I'm requesting some block filter peers, like scrapping some filter peers, uh compact block filters.
from the Bitcoin node that is running on on this setup.

Speaker 0: 00:07:29

And I need that because I want to use compact block filters to to do the scanning.

Speaker 0: 00:07:33

So I I uh I must ensure that I have a compact block filter peer available to request the the filters from.

Speaker 0: 00:07:43

And yeah, now I will continue with the presentation.

Speaker 0: 00:07:46

This is the how the a correct setup will look like if if you run it later.

Speaker 0: 00:08:00

Okay, coming back to the presentation now.

Speaker 0: 00:08:06

So I also I I already explained what we are going to do.

Speaker 0: 00:08:09

If you want to try this later, I'm going to use C uh Padawan Wallet as a as a faucet is also a project uh developed with BDK uh and well it's uh like a nice tool to learn about Bitcoin uh if you want.

Speaker 0: 00:08:26

So here we are going to check that everything is working.

Speaker 0: 00:08:29

So we have uh our signet uh node running.

Speaker 0: 00:08:35

I'm going to check the balance.

Speaker 0: 00:08:37

I have already uh sent some funds to this wallet to to make These things faster.

Speaker 0: 00:08:42

Um so this this signet BDK wallet is uh uh an alias to the BDK CLA wallet.

Speaker 0: 00:08:50

This is our BIP32 wallet.

Speaker 0: 00:08:53

Uh sorry I'm I'm I'm looking at you.

Speaker 0: 00:08:56

Someone uh s some of you are screening.

Speaker 0: 00:08:58

Uh you need to make this bigger or you see it right.

Speaker 0: 00:09:03

It's okay?

Speaker 0: 00:09:04

Okay.

Speaker 0: 00:09:05

Well uh So this is our f B32 wallet.

Speaker 0: 00:09:08

Uh I'm using it's mainly what I will be using here are mainly CLI commands.

Speaker 0: 00:09:14

Um yeah, so we h have funded our wallet uh already.

Speaker 0: 00:09:20

This signet SP is our s uh silent payment CLI wallet.

Speaker 0: 00:09:25

Uh this is will be the one that we are uh sending funds to.

Speaker 0: 00:09:29

Um And we will be create spending those funds later.

Speaker 0: 00:09:38

First, we are going to do is ensure that we have the lat the state of our B32 wallet, so we are going to synchronize it.

Speaker 0: 00:09:49

Then, what we want to do is to fund our wallet.

Speaker 0: 00:09:52

If you don't have any funds, we already have it, but I will show you for the second.
sake of the of the example.

Speaker 0: 00:09:57

So here uh on on the on the screen you will see that I'm deriving uh an address for the VIP32 wallet and I'm getting a QR code where I can uh I can send some it's it's a quer QR encoding of uh of the address of this wallet and then you can send f some funds to this wallet to um to to start working on this workshop.

Speaker 0: 00:10:24

Also some something that I forget to explain is that uh on each of the playbooks you have um stages.

Speaker 0: 00:10:30

So the all the playbooks are are organized on the same uh set of stages.

Speaker 0: 00:10:36

Each stage uh performs uh a different step.

Speaker 0: 00:10:40

So first we are going to fund our wallet, then we are going to create that selling payment output.
and send to the that salient payment and broadcast that silent payment transaction.

Speaker 0: 00:10:50

So uh we can in the third stage uh scan the the blockchain and find uh find those those outputs.

Speaker 0: 00:11:00

Then we are going to create a transaction spending those outputs.

Speaker 0: 00:11:04

And before broadcasting the the transaction that is spending the salient payment outputs, we are going to verify that change that that transaction is producing is uh what we will actually want.

Speaker 0: 00:11:17

And after that we are going to s broadcast the transaction and show uh and and you will see that it's possible to spend the asylum payment output using this wallet.

Speaker 0: 00:11:27

And if you follow along the playbooks you will see that each one is separated on stages with multiple steps and each one of the steps is a command where Uh I recommend you to execute this step by step, no not as a script.

Speaker 0: 00:11:40

Um and yeah, the the each of the stages is separated equally so you can uh find the the matches between the different playbooks or all all of them like perform the same actions but you have uh little nu nuances on the on the steps.

Speaker 0: 00:11:56

So here we are where we are trying to find our our uh Salem Pendmung uh our BIP thirty two wallet.

Speaker 0: 00:12:06

And I'm not going to find it today because it's like the the connection is slow, but I I I have some funds there, but y you you can you can you can try that later.

Speaker 0: 00:12:15

You will use whatever CNOD wallet you have, you can send the funds there and you will see after a couple of of minutes that it get gets the funds on on the wallet.

Speaker 0: 00:12:26

But uh here uh I will try to do a recap of what we are what uh are silent payments about.

Speaker 0: 00:12:37

So uh the idea is that here we will be waiting for confirmations.

Speaker 0: 00:12:42

Let's suppose that we are doing that.

Speaker 0: 00:12:44

So in silent payments what we do is we have two public keys.

Speaker 0: 00:12:49

One is for locking the funds.

Speaker 0: 00:12:51

The other is to produce a shared secret so we can add some entropy to to the address generation and in a uh non-interactive way get a new address each time uh with uh just with just sharing a static code.

Speaker 0: 00:13:07

And what the sender does is it receives those uh public keys, creates a trans a transaction, uh doing some uh coin selection.

Speaker 0: 00:13:18

L it creates a has an an input set uh a set of inputs, hashes that data, the some data of the inputs, to produce uh a digest of the transaction inputs, then gets the shared secret uh public key, the the public key that it's going to use to produce the shared secret, combines that with the the hash of the transaction transaction input data, and then Uh and then it it it combines that with the lock-in uh public key.

Speaker 0: 00:13:49

In that way it produces uh a unique script key that is uh only it can only be found by the by the recipient.

Speaker 0: 00:13:56

And the way the recipients the recipient knows about this uh let me go back to the original.

Speaker 0: 00:14:12

The way the recipients the recipient knows about this Xylem uh payment UTXO is by getting the transaction input data, hashing it again, combining it in in in a way that it can uh produce the same shared secret and by combining with the with the s uh locking public key, it can find a match against the scriptup key that should be the the desired uh the the derived original derived by the sender script up key.

Speaker 0: 00:14:49

So yeah, uh this is uh like a very short explanation of what scientists are doing.

Speaker 0: 00:14:58

And Now uh the idea is that here you after after you s you send the funds to your to your BIP32 wallet, you are going to get uh you you have to synchronize again your BIP32 wallet to to see the funds actually on the on the on your wallet.

Speaker 0: 00:15:17

So if we would have sent the the funds using the s the CNET faucet, uh now that we run uh Balance, we will get new funds.

Speaker 0: 00:15:28

Oh, well, actually, someone has sent some funds there.

Speaker 0: 00:15:31

So, untrusted pending is there is a unconfirmed transaction that is sending to this wallet.

Speaker 0: 00:15:37

Someone has has done that.

Speaker 0: 00:15:38

Thank you.

Speaker 0: 00:15:39

Thank you.

Speaker 0: 00:15:42

So, yeah, we should wait a little.

Speaker 0: 00:19:18

Okay, we've got that uh

Speaker 0: 00:20:12

Uh there's a bunch of chicken chicken.

Speaker 0: 00:20:34

Should I put this on?

Speaker 0: 00:20:38

I don't know why it's not yeah, okay.

Speaker 0: 00:20:49

Uh I have a test testing?

Speaker 0: 00:21:01

Okay.

Speaker 0: 00:21:02

Um we are here.

Speaker 0: 00:21:05

I'm going to repeat some of the comments.

Speaker 0: 00:21:15

I don't know what that is.

Speaker 0: 00:21:24

If not, I can continue just by executing the steps myself on the on the terminal.

Speaker 0: 00:21:30

But it's not gonna Okay, somehow I I guess something is Messing with my clipboard and uh I I was using that as a way of transporting the different variables between the slides.

Speaker 0: 00:22:26

Uh but I guess I can follow one of the playbooks and show you here step by step uh following the presentation how it's done.

Speaker 0: 00:22:45

So we derive our uh silent permit code, uh our our uh we have our silent payment address and we have want to create a silent payment output, so we use this create SP command from BDK CLI wallet.

Speaker 0: 00:22:59

And let me go to the signet playbook where I have the steps that I need to create this.

Speaker 0: 00:23:10

Um so we get we get our silent permit code recognizing all of that recognition of the market.

Speaker 0: 00:23:41

Okay, that's that's why it's not working.

Speaker 0: 00:23:43

Something something has uh with the with the screen is like has broken my clipboard and I cannot share.

Speaker 0: 00:23:50

It's it's like crazy, but uh yeah, it it is what it is.
Okay.
Okay, do you hear me?

Speaker 0: 00:24:14

Okay.

Speaker 0: 00:24:16

So uh I will have to type in myself.

Speaker 0: 00:24:24

Okay, so we are going to get our code here.

Speaker 0: 00:24:44

So if I show you here Well, we have our address here.

Speaker 0: 00:24:50

Uh let me do it again.

Speaker 0: 00:24:54

You see the address, the human reader prefix, uh s at the limiter, uh and the public one of the public keys is here and the other one is following it uh with a checksum at the end.

Speaker 0: 00:25:08

Now uh I have already explained that this a bit Be a BEC thirty to uh encode the string and we will create our transaction right now.

Speaker 0: 00:25:23

So, uh another hand is to track that string.

Speaker 0: 00:25:41

Okay, now we have to create our transaction.

Speaker 0: 00:25:46

We'll use the create sp tx command.

Speaker 0: 00:25:50

That's a new experimental command that we are adding to VK CLI.

Speaker 0: 00:25:57

We are going to send five thousand SATs with a fee rate of two.

Speaker 0: 00:26:02

I don't know what is the state of the mempooling signet, but just in case we are going to add our stream and this should have created our transaction.

Speaker 0: 00:26:21

Okay, here we have our transaction, our raw transaction.

Speaker 0: 00:26:24

This transaction has a salient payment main output that we have derived of our original address.

Speaker 0: 00:26:32

Now we are going to clean that up a little bit so we can broadcast it easily.

Speaker 0: 00:26:50

Okay, let's see that we have what we want.

Speaker 0: 00:27:04

And there you can see that we have an op return, and the other one is uh is the side empires output that we are deriving here.

Speaker 0: 00:27:14

As you can see uh this is uh as anyone uh any any key key path pen uh well you you cannot guess th uh that from here, but it's a tap root output.

Speaker 0: 00:27:24

So it's like any other paid to tap root output out there.

Speaker 0: 00:27:30

Now I'm going to broadcast this Uh maybe it's easier to do it with the CLI, so uh okay.

Speaker 0: 00:27:47

Now we have this uh this T T X I D.
Uh we can see if it is published in the Yes, we wait.

Speaker 0: 00:28:09

Uh so now with this command we have derived asylum payment output that this transaction is is spending is sending to asylum payment wallet.

Speaker 0: 00:28:23

Um the way that we did that this is uh by the create SPTX command just creates a PSVT, adds some placeholder pay to tarpaul scripts and the it uses those pay to tarpaul scripts to uh to to perform the coin selection on based on the PSVT.

Speaker 0: 00:28:45

And once we got the the inputs, we get the uh the necessary data.
to derive the silent pa the shared secret that we are going to use for the derivation of of the output of the silent payment transaction.

Speaker 0: 00:28:59

So we perform like two steps.

Speaker 0: 00:29:01

One, we add the placeholders uh paid to tarpaul scripts, the outputs.

Speaker 0: 00:29:06

We perform coin selection, we get the inputs, we get the public uh the private keys for each of the inputs, we derive the shared secret, and we get the final silent payment uh output.
by uh take by hashing those those inputs.

Speaker 0: 00:29:22

And after that we create uh we sign and finalize the PSVD and we can send the transaction as any other uh transaction.

Speaker 0: 00:29:31

One of the of the things that we have to do before is um we we have to sta uh we have to derive uh it like as I as I said I uh we have to perform the coin selection and we we add the the placeholders, but uh we derive first before fina signing the transactional broadcasting, we derive the the signing permanent outputs.

Speaker 0: 00:29:54

So there are some steps that we do.

Speaker 0: 00:29:56

In uh BDK we have uh the derivation path for each of the inputs in on the PSPTs and we use that to to uh To get the actual keys on B32 wallets.

Speaker 0: 00:30:12

And we need also those on the derivation on the selling payment derivation because they give us important information for knowing what keys we must use for the selling payment outputs, for the selling payment derivation.

Speaker 0: 00:30:31

So we must read them.
the finalization of the previous step.

Speaker 0: 00:30:36

And there are some for silent payments we have some uh we have a subset of the available output uh scripts that we can use uh to to we we can use to create this shared secret.

Speaker 0: 00:30:53

So uh what we are doing is we are um after getting the the inputs We are filtering them and looking if we can derive asylum payment output from these scripts.

Speaker 0: 00:31:09

Here uh I'm showing you the well probably this is not relevant uh that that much relevant uh right now, but uh the once we got the derivation path uh and and and we g get the the public keys from that we are g the the private keys that we are going to use to derive our silent permanent output, we uh have to like we add all those keys and we get the less uh the smallest lexicographic outpoint and we combine that together and uh By combining them and later adding them to the public key of the silent payment output, the the share uh the public key for share secret derivation, we get the the first part of the output.

Speaker 0: 00:32:05

Then we add the public key locking key.

Speaker 0: 00:32:10

So after doing that, we retrieve the control to the create uh silent payment transaction.

Speaker 0: 00:32:17

We remove the previous signatures because we are going to sign again the transaction and uh we finalize the transaction and we get the we finalize the PSPT and we get the final transaction.

Speaker 0: 00:32:30

So here I I I do some like uh why why I'm I'm seeing the I'm finalizing before the silent payment opa derivation.

Speaker 0: 00:32:41

Well, because uh currently there is no uh the the specification for s for PSBT is not finalized for sale payments.

Speaker 0: 00:32:49

So I'm doing this uh I created this transaction in uh a sort of hacky way.

Speaker 0: 00:32:54

And what I'm doing is I I perform the first step so I can look at the w at the witnesses of the of the first transaction.

Speaker 0: 00:33:03

So I can know if I can get Uh signing payment output from those keys.

Speaker 0: 00:33:09

Uh in the case, for example, of a script pass pen that has a uh nums point, uh that's something I should know to know if I can get a sign and payment output from that uh input or not.

Speaker 0: 00:33:22

So I I implemented this hacky way of looking at the witnesses of the first transaction to get the the final output.

Speaker 0: 00:33:29

Also uh The I'm I'm all af after uh doing the performing the the the scening of the trans the PSBT, I'm reattaching the and the finalization, I'm reattaching this ke key derivation data and that's because I need the information for to get the actual keys that I need uh the actual private keys that I need to derive the shared secret and well that's also part of the of the hack.
hacky way that I'm using to create this transaction.

Speaker 0: 00:33:59

Well creating the signatures is obviously I'm I'm going to add a new new signatures after uh they're deriving the actual signing payment outputs so that's why I'm doing that.

Speaker 0: 00:34:10

And an important point of this command is that I'm not producing a PSVT because I don't want anyone to share this PSVT for later uh signing of other parts of the US.

Speaker 0: 00:34:21

Uh the multi-party implementation of PSVT is something that is not uh available right now and I don't want someone to think that it is possible with this command to create uh uh PSVTs that they can share between uh uh between multiple parties because they are going to lose funds if they do.

Speaker 0: 00:34:43

Okay, so Coming back to the terminal.

Speaker 0: 00:34:48

Um right now I have sent the spans uh to to my uh to the silent payment wallet, but I want to find those f those uh outputs.

Speaker 0: 00:34:59

So I what I'm going to use is compact club filter together with uh uh blind bit server that is the way to get the shared secrets already derived for for each of the transactions.

Speaker 0: 00:35:10

So I I can request the this secret without having to compute it myself on the on the wallet.

Speaker 0: 00:35:17

And it's a way to perform this uh scanning faster for silent payment wallets.

Speaker 0: 00:35:41

Here I am a I'm adding uh an extra peer.

Speaker 0: 00:35:44

Uh that's to get uh actually compact clock filters uh from someone because uh it's not it's not that easy to find uh compact clock filters.
on on signal network.

Speaker 0: 00:35:59

So here we see that we have a a successful connection and a handshake with appear.

Speaker 0: 00:36:07

So we must wait to update uh update to the latest tip on the on the uh compact log filter client before starting to request the tweaks.

Speaker 0: 00:36:19

And yeah.

Speaker 0: 00:36:21

So this is going to perform uh a scanning of the using the compact log filters, getting the tweaks, producing the script pack keys that could be derived by our signing payment address with those tweaks.

Speaker 0: 00:36:34

And if it finds a match, it's going to request the full block and it's going to perform the the whole um it's going to to to scan the whole transaction to see what are the outputs that belong to the wallet.

Speaker 0: 00:36:48

So, well, this is going to take some time.

Speaker 0: 00:36:52

Let me As we continue with this, we can I can explain you so and show you some of the other parts of this.

Speaker 0: 00:37:07

So the expected step to perform after this scanning is to check the balance of the wallet.

Speaker 0: 00:37:15

I already have some funds, so we have not found find the the recent transaction do that we have done before.

Speaker 0: 00:37:21

Let me see if okay I have it on my yeah here.

Speaker 0: 00:37:35

Uh you have to go signer.

Speaker 0: 00:37:37

That's my own.

Speaker 0: 00:37:40

Thank you.

Speaker 0: 00:37:44

Yeah, this this uh workshop is not prepared for mail in it.

Speaker 0: 00:37:47

Uh if you want to do it, do it on your own risk.

Speaker 0: 00:37:50

Uh I don't I wouldn't recommend that.

Speaker 0: 00:37:55

Okay, so it's unconfirmed.

Speaker 0: 00:37:56

So it's not going to be found yet by our scanning.

Speaker 0: 00:38:00

So we can proceed and see if it this finish later.

Speaker 0: 00:38:03

Uh So, probably one of the problems that we have here is that Signet does doesn't have that many peers and well it's not it's not of something that you can you can uh it's it's hard to find them actually and and they don't service the the the filters uh that much.

Speaker 0: 00:38:30

So yeah.

Speaker 0: 00:38:31

Uh on this step on this step on the playbooks is expected to for you to have find the salient payment output and uh like you should see well actually the the previous transaction got confirmed so my my balance on the VIP thirty two world has risen.

Speaker 0: 00:38:49

But um yeah uh we have already find or Let's see let's say that we found a a silent payment output.

Speaker 0: 00:39:00

So the next step that we are going to do is we are going to send back the funds from our Silent Payment wallet to our to our B32 wallet.

Speaker 0: 00:39:11

So the way that we do that is let me open a new terminal as we wait that to s to finish.

Speaker 0: 00:39:21

Okay, I will copy this command.

Speaker 0: 00:39:24

I'm doing all this because my clipboard isn't working.

Speaker 0: 00:39:24

I'm doing all this because Because my my clipboard isn't working.

Speaker 0: 00:39:49

Okay.

Speaker 0: 00:39:50

So now I should have uh say with address here.
Okay.

Speaker 0: 00:40:02

And in this step, uh what I'm going to do is I'm going to create a transaction that is uh sending from the uh silent payment wallet to the B thirty two one.

Speaker 0: 00:40:15

And in that way, I'm going to take one silent payment produce output and spend it on my transaction.

Speaker 0: 00:40:25

So to ensure that I have a a change output, I will use the balance that I have.

Speaker 0: 00:40:37

I going to remove some I'm going to subtract some amount for that, from from that uh balance to ensure that I'm I'm not uh sending all my funds and I don't have a change output.

Speaker 0: 00:41:03

Okay should be fine now.

Speaker 0: 00:41:07

Okay, I have the amount now.
Good.
Um I'm going to add this up return so you can lent later check the blockchain.

Speaker 0: 00:41:32

And now I'm using the command new tx from signet sp I'm uh I'm using the bib32 address with the amount.

Speaker 0: 00:41:47

Now I add the of return.

Speaker 0: 00:41:58

Yeah.

Speaker 0: 00:42:00

Sorry.

Speaker 0: 00:42:01

Thank you.

Speaker 0: 00:42:02

UTX, that's a common.

Speaker 0: 00:42:04

Fee rate of return fee well.

Speaker 0: 00:42:19

The connection isn't helping.

Speaker 0: 00:42:21

I'm going to close this one.

Speaker 0: 00:42:23

Um yeah.

Speaker 0: 00:42:28

Probably something with the network.

Speaker 0: 00:42:33

Uh I can show you later like I I I can show you in in rectest uh in a moment.

Speaker 0: 00:42:39

But yeah, it's not it's not going to work here.
Okay.

Speaker 0: 00:42:50

So yeah, we have our signing payment o our transactions pending signing payment outputs here and I'm going to extract some of the data from here to make it easier to broadcast.

Speaker 0: 00:43:15

Okay now this is our transaction and uh well what I wanted to show you is that you can actually derive uh the change output of your transaction by using the the command line.
that we have on the SP CLI wallet.

Speaker 0: 00:43:39

Uh there is a command called uh derive SP for transaction.

Speaker 0: 00:43:46

And if you add the like for si for selling payments you can derive an output uh at the begin like you can derive the the first output, the second output, the third output, because you have a a parameter there.
uh there that that changes the the actual script up key for that output.

Speaker 0: 00:44:04

And you also have labels.

Speaker 0: 00:44:06

Uh labels are not recommended to in in what we will do with uh labeling like labeling some food or uh labeling uh an address with well we will use this to to send transactions to our uh grocery stores or uh whether not uh labels were uh something that at the beginning was thought that it was going to be useful in that way but it's actually something that adds more uh performance issues to the scanning of the of the silent payment uh outputs.

Speaker 0: 00:44:42

So what we uh it's actually recommended for is just to derive the change output.

Speaker 0: 00:44:48

Especially on on mobile mobile wallets.

Speaker 0: 00:44:52

So what we are going to do now is use the special change label that is designed to get the uh s change script uh output.

Speaker 0: 00:45:01

And we are going to check that the transaction that we have created before has the same script key that our uh that the one that we are getting in with this comma.

Speaker 0: 00:45:11

So I I add the order, I add the Change label that is going to the the change label is zero, uh is uh specified in the sign up payment bip well we have a n uh a new log there.

Speaker 0: 00:45:25

I guess I can try later to to scan that.

Speaker 0: 00:45:30

Okay, um yeah, so we are going to use the raw transaction here to this is Getting the information from the raw transaction, it's getting scrapping all the inputs, combining them in the to get the hash that is used to produce the shared secret.

Speaker 0: 00:45:51

And it's combining that with the public key information that we have on our wallet to produce the final script of key.

Speaker 0: 00:45:59

So let's see here.

Speaker 0: 00:46:04

We can see.

Speaker 0: 00:46:05

Uh, scriptup key, um the scriptup key that would be would have be derived for our change output.

Speaker 0: 00:46:13

So if we copy this transaction, the the raw transaction, if we decode it.

Speaker 0: 00:46:30

And We go to our previous script up key.

Speaker 0: 00:46:35

Let me see.
Yeah.
Okay.
Yeah, we have three outputs.

Speaker 0: 00:46:44

So one one is the op return, one is the amount that we want to send, and the other one should be the change.

Speaker 0: 00:46:52

So I'm going to copy this uh previously derived Change output.

Speaker 0: 00:47:01

Okay.

Speaker 0: 00:47:02

And here we can see that it's the same one that we obtain on our transaction.

Speaker 0: 00:47:08

So with this we are confirming that we actually have derived the correct change output for our transaction.

Speaker 0: 00:47:21

So now we can send again our transaction that is spending the silent payment output to the like we are broadcasting our transaction so uh should be mine in uh in a few minutes and in that way we'll be spending actually the silent payment output that we have scanned before uh I have scanned before.

Speaker 0: 00:48:28

Well, I guess the scan me some of the I I I I should have scanned before doing this because it's like using all the inputs and the network is not going to help.
Okay.
Mm well it's not going to to help me there.

Speaker 0: 00:48:52

Okay.

Speaker 0: 00:48:53

Well uh with this command we will have c be uh created a a saling payment transact uh a transaction that is actually spending a sale and payment output.

Speaker 0: 00:49:05

And what we have now uh and we have verified that we are producing the change output right with our derivative for transaction command.

Speaker 0: 00:49:14

And uh suppose that uh let's suppose that we have d uh broadcast uh our original transaction.

Speaker 0: 00:49:22

And what we are doing as like uh with this scan CBF command that is uh not connecting right now because well problems with Signet, but uh we are using Kyoto CBF node to listen uh and and store the filters and w with each filter that we receive we request uh sign impayment tricks for another server, BlindBit server.

Speaker 0: 00:49:46

That's the one that is computing the s the tricks for our wallet.

Speaker 0: 00:49:49

And with each with each one of these tricks we can we can get derived the s the script packies that we want to check uh if they belong to our wallet or not.

Speaker 0: 00:50:00

And if we find a match using compact glove filters, we request request a full block and we index that on our wallet af uh and that gives us the the actual balances that we have on our wallet.

Speaker 0: 00:50:12

So all these processes repeat from the birthday of the wallet up to the tip of the chain that we have uh Like w we are synchronized too.

Speaker 0: 00:50:24

Uh the new TX command is a t uh transac um a command from the uh silent payment CLI wallet.

Speaker 0: 00:50:32

And it's very similar to create SP transaction, but the difference is that we are spending silent payment outputs.

Speaker 0: 00:50:38

So uh by spending silent payment outputs we have to add raw tweaks to our private keys to be able to spend them and it's something that is not implemented yet for uh for PSBT and and it hasn't been that much of a specify.

Speaker 0: 00:50:53

So uh what I'm using to perform this uh tweaking is adding uh a proprietary key to the PSBT uh to the PSBT uh structure and by passing that to the to the wallet.
by adding adding the the tweaks for each one of the silent payment UTXOs.

Speaker 0: 00:51:15

I can then combine that uh combine that tweak with the spending public key.

Speaker 0: 00:51:21

And after after doing that uh I can get the final private key that is going to allow me to produce the shared secret again to also spe to create a new uh change output uh and to send to a BIP32 wallet.

Speaker 0: 00:51:37

This is the function that I implemented for this.

Speaker 0: 00:51:40

As you can see, this is using a preprintary key that so that's not that uh it's not that that uh well this could have his own field so that's something that I I would like to point in in uh in a future.

Speaker 0: 00:51:55

Uh we could be doing uh a specification to add this new field for raw tweaks for silent payment outputs.

Speaker 0: 00:52:03

And after doing that, uh after after uh adding adding this uh information, we uh can perform the same step that we performed for the BIP32 wallet, but on the silent payment one, actually uh um deriving in the same way the the the silent payment outputs.

Speaker 0: 00:52:23

Okay.

Speaker 0: 00:52:24

Um I have to use this.

Speaker 0: 00:52:27

Uh so after performing this this step uh we should be uh scanning again with Signet BDK uh the the BDK CLI wallet, the B321, to uh see if we have received the funds from the Silent Payment wallet.

Speaker 0: 00:52:46

And we should perform the same scan but for the uh um for the signing payment wallet to see that we have spent the the funds on our wallet.

Speaker 0: 00:52:59

Okay uh I haven't followed the the steps on the on the previous uh command, so I'm not going to run this.

Speaker 0: 00:53:06

But the expectations is by the end of this um by by by uh performing all these scans, waiting for the confirmations and all that.
you are going to get uh the actual uh silent payments output fund on on your s on your silicon payment wallet and you are going to find that you have spent the signing payment output later.

Speaker 0: 00:53:30

So what I will do as uh I couldn't run the the examples on Signet, I'm going to show you and talk you about the challenges that I have found, the things that are missing from the the upstream libraries uh for BDK and then I'm going to run uh a rectest uh example to show you that this this is actually working and and this or or more of a yeah a sudden uh error here that yeah I couldn't I I couldn't fix on uh while running this.

Speaker 0: 00:54:01

So the target of this implementation was to uh try to build something f with BDK showing that it's possible to build a silent pen mobile using BDK.

Speaker 0: 00:54:11

And to have a a fast uh feedback look uh uh feedback loop and uh a good compress comprehension of the landscape of the state of asylum payment uh the asylum payment integration for BDK now.

Speaker 0: 00:54:25

And this allowed me to gain recognition of the different things that are missing in the upstream libraries and and what we we should implement first on on the the different libraries that BK is using to to to have support for silent payments.

Speaker 0: 00:54:42

So uh what what were the challenges of this?

Speaker 0: 00:54:46

Well actually the Rust the Le uh the leadsec uh implementation for silent payment is not merged yet.

Speaker 0: 00:54:54

So there have been some some advances on the bindings but we're a work in progress and for me it was to to implement the the integrations with that.

Speaker 0: 00:55:04

So I implemented uh a library completely written on on Rust to to start building this wallet.

Speaker 0: 00:55:12

And also there is BDK is uh a PSBT centric wallet is um performing the is is uh yeah, creating transactions by passing PSVTs during different stages of the wallet.

Speaker 0: 00:55:26

And silent payments hasn't uh has not the the specification uh yet for uh for PSBT.

Speaker 0: 00:55:35

Uh those are the BIP 374 and 375.

Speaker 0: 00:55:39

Those are the ones that we are waiting to have something um that that we can build on top for for PSBT and and silent payments.

Speaker 0: 00:55:48

So they are not there, they are they are not uh finalized yet.

Speaker 0: 00:55:51

So that's why I have to use this tricky, hacky way of doing the transaction to actually be able to create sign imputations using PSVTs.

Speaker 0: 00:56:05

Well, also what I have said before about this signing phase of that we need for For signing payment wallets to create the the to spend the signing payment outputs that we have on our signing payment wallet.

Speaker 0: 00:56:23

Uh that requires some um the the tweaks and and there is no field to pass the tweaks around in in PSBT right now.

Speaker 0: 00:56:32

So that's something uh that well we could specify also.

Speaker 0: 00:56:38

And in BDK we don't uh don't have a way to um to store the the information that we need to derive this shared secret that we are using inside the payments.

Speaker 0: 00:56:50

So that's something that uh I'm also uh looking to to to implement or in some way uh integrate uh in in BDK.

Speaker 0: 00:57:01

And with this I think that we could have uh like a nice abstraction for both.
uh uh that can be used for B thirty two wallets and and and uh silent payment wallets.

Speaker 0: 00:57:13

So uh as I said, the PSBT uh specification is mainly fo uh well, is is also designed for multi-party transactions and and uh we didn't uh have the the security con um assurance there to to do this.
for signing payments yet, so I decided to simplify the case and just use PSBT as a way to do single-party transactions.

Speaker 0: 00:57:37

So in that way I I make the the proof of concept or what I wanted to achieve at first on on this uh with this project uh achievable and and uh yeah, and releasable in in the in the the span of time that I was seeking.

Speaker 0: 00:57:56

So the next steps that I think that we should have for the implementation of LeapSecP of silent payments is the integration with the bindings.

Speaker 0: 00:58:06

I think that this well, once the PR for libsecp gets merged, it would be nice to have this binding on Rust so we can start using the actual more secure library.

Speaker 0: 00:58:20

Also uh I would like to specify this uh the addition of these uh fields for for raw tweaks on the on the PSBTs.

Speaker 0: 00:58:31

In that way we can pass around these these tweaks and we can create the transactions easily for for sale and payment wallets.

Speaker 0: 00:58:38

The also um the addition of the features that free uh the the VIP for PSBT and Silium Payment will bring uh that's something that we should also try to start experimenting with.

Speaker 0: 00:58:51

And well there are some other other things more related to how uh things work on Rust uh on BDK and Rust Bitcoin and Rust BSBT.

Speaker 0: 00:58:51

The and well there are some other other things more related to How things work on Rust on BDK and RAS Bitcoin and Rust PSBT that are also related to the PSBT process of creating a transaction that I would like to add in the future.

Speaker 0: 00:59:10

So, one of them is this key request that is used to create to sign transactions.

Speaker 0: 00:59:16

Some more information added by extracting that.
information from the signing payment descriptors to to be able to perform this in a more streamlined process.

Speaker 0: 00:59:27

And yeah, the one of the main changes is the addition of the metadata attached to the transaction that we are storing on BDK.

Speaker 0: 00:59:41

So last month we have a lot of questions.

Speaker 0: 00:59:43

We did a demo of uh Frost with BDK.

Speaker 0: 00:59:46

And we too had problems with how BDK kind of takes over how adapters work.

Speaker 0: 00:59:53

We had problems with Frost and how BDK uh makes it difficult.

Speaker 0: 00:59:57

So we ended up having to hack BDK a little bit to to do it.

Speaker 0: 01:00:00

So when you're working on your own kind of suggestions around you know how BDK can improve and handle adapter signatures, you might want to look at what we did, let's come up with a generalized solution, because I think this is gonna be an ongoing problem as new protocols are emerging and we wanna integrate them with BDK, that the the fact that it does some things with adapter signatures kind of underneath the um isn't compatible with everything.

Speaker 0: 01:00:29

So I guess you uh so you you you find your own workaround For that, on what you were trying to do, I didn't.

Speaker 0: 01:00:38

Correct.

Speaker 0: 01:00:39

We had to write, you know, one to basically extract it out because BDK didn't let us do it right, and then another one to insert it back in.

Speaker 0: 01:00:49

So we had to write a little rust stub that did both of those operations when it should have we should have just been able to say, you know, We're going to handle the adapter signature.

Speaker 0: 01:01:00

You don't need to.

Speaker 0: 01:01:03

So anyhow, I'm just going to suggest you look at the when you're working on your own solution for that, that you might want to look back at the code that we have on our website at Blockchain Commons on this.

Speaker 0: 01:01:18

And then, you know, I think that it's a general problem because I look at some other future emerging protocols, and I think.
other people also may need that flexibility and it's not in not really thought of in the BDK.

Speaker 0: 01:01:30

Yeah, that's good to know actually because I was thinking in implementing this in a more general way trying to not just focus on the data that we need for silent payment transaction but in like some something that can be used by other protocols and yeah that's actually uh something that uh fits that description so yeah.

Speaker 0: 01:01:50

Thank you.

Speaker 0: 01:01:50

Thank you.

Speaker 0: 01:01:55

Okay, so yeah, he went ahead and already asked questions.

Speaker 0: 01:02:00

But well, this has been some there have been some problems here in the presentation, but I'm happy to answer any question that you have now.
Yeah.

Speaker 0: 01:02:12

There is one there.

Speaker 0: 01:02:18

Um so I looked at silent payments a long time ago and then back then one of the issues was for receivers it takes out a very long time because they have to scan the block at a certain block height and look for like their public key like basically scan the blockchain if they if their public key received any funds.

Speaker 0: 01:02:37

Has there been any like progress on speeding that up by Any chance since then?

Speaker 0: 01:02:42

Yeah, uh well one of the approaches that uh was recei recently tried uh is the one that uh FreeGate is taking.

Speaker 0: 01:02:51

It's like using uh a kind of a special databases that uh just perform the the tricking of uh of the information already on the database, so it's like faster.
but i it's something that n doesn't bring you to the to what we want to be in terms of of performance.

Speaker 0: 01:03:13

So another uh another uh solution that w that uh was discussed is the use of um tables, uh pre-compute tables to get the the some of the compute uh some of the leap curve multiplications faster.

Speaker 0: 01:03:33

And well and and also I I don't want to like uh start using passwords, but uh now it's like uh maybe it's a problem more fit for uh parallel processing or or GPU setup to try to speed the things up.

Speaker 0: 01:03:48

I'm I'm talking in terms of what would be the the scenario for a a server that is trying to compute the tweaks or or trying to find the UTX source for uh for a client.

Speaker 0: 01:04:01

If the the server is uh performing all these operations for multiple clients, uh yeah, it's actually to it's going to be a bottleneck and uh we are trying to speed up that pro that setup.

Speaker 0: 01:04:13

And then uh once we figure out that, move to more uh the more private conscious uh way of doing it.
the signing payments.

Speaker 0: 01:04:43

To support um are you gonna update the PSPT V two spec?

Speaker 0: 01:04:47

Is that your plan?

Speaker 0: 01:04:49

I uh sorry, I didn't the bipartisan.

Speaker 0: 01:05:06

I think that we need a new bip uh actually because it's uh for spending the u the the sign payment uh outputs and the the old uh PSBT was uh to create the the transactions but it's like uh one is from the perspective of someone that is trying to send to a sign payment address to get the output and uh the one that I'm I w the new field that I was talking about is to create to spend the to be able to spend the So I don't have experience in how the specification should be done, but I think that is going to be a new one.
Okay.

Speaker 0: 01:05:49

Well, if you don't have any more questions, I have 20 minutes more.

Speaker 0: 01:05:54

I can try to show you this, but trying to run all the steps in a record.
node so I don't have uh signet pro uh network connection problems.

Speaker 0: 01:06:07

Uh so let me try that.

Speaker 0: 01:06:10

One of the things that we have here on the on the workshop and the on the directory I I pointed uh I pointed you wa is the auto playbook.

Speaker 0: 01:06:20

So if you run this playbook uh it's going to show you a nice uh interface where you have you can just uh press enter and you are going to be able to run all the steps of this workshop.

Speaker 0: 01:06:34

So first we uh check that we have all the dependencies here.

Speaker 0: 01:06:45

Should shouldn't take that down.

Speaker 0: 01:06:47

It's also depending on the connection, but Yeah.

Speaker 0: 01:06:55

Bear with me f w for a couple more of minutes and and I can show you that this works.

Speaker 0: 01:07:15

So this is installing the B D K C L I Um CLI uh wallet and and also the SP CLI uh wallet that's one used for silent payments.

Speaker 0: 01:07:45

Okay.

Speaker 0: 01:07:46

Now we have we are spinning up a virtual machine that is uh running our our containers.

Speaker 0: 01:07:53

Um the the container is has a BitCon Core Regtest uh implementation and also uh and also the blind bit server that is providing me the tweaks running on Regtest 2.

Speaker 0: 01:08:09

So once this is all Hold on, I can press enter again to continue to the next step.

Speaker 0: 01:08:14

So here, uh, well, I performed the user checks, so get blockchain info is retrieving me that I am actually on the on the right uh network and it's is working, so I'm going to perform the same step for BDK CLI.

Speaker 0: 01:08:32

I don't have funds because uh uh I am on a new created uh break test uh CLI uh wallet.

Speaker 0: 01:08:42

The same should happen for the sign and payment wallet.

Speaker 0: 01:08:46

I'm going to synchronize well uh I'm going to get a new address.

Speaker 0: 01:08:52

Uh this new address is to find the the actual BIP thirty two wallet and uh as you can see here this is the actual address that I got before.

Speaker 0: 01:09:02

I'm going to send some funds to it and then mine uh one hundred blocks to the voice so I can get the first transaction confirmed.

Speaker 0: 01:09:10

I'm going to do that.

Speaker 0: 01:09:18

Okay, and now I can press enter.

Speaker 0: 01:09:21

I synchronize again the V DK CLI wallet and once I get I check the balance, I have the balance here, so it's like uh fifty bitcoins as the as I as expected.

Speaker 0: 01:09:36

Now I get again the silent payment code, so here I should have like the the address uh of our my silent payment wallet or the silent payment wallet that I have running on on on t on Regtest.

Speaker 0: 01:09:50

So you can see here that I have the human real prefix that is uh intended for rectest and this long address are the two public keys encoded in a single string.

Speaker 0: 01:10:02

And I will be sending two thousand sats uh well I at a fee rate of of five on rectest is it's crazy, but yeah.

Speaker 0: 01:10:10

Uh so I created the previous transaction and now I I have created a silent payment uh output in this transaction.

Speaker 0: 01:10:21

So I'm going to broadcast it.

Speaker 0: 01:10:25

I'm going to mine a block and now that I have synchronized, I can scan, but here I'm not using CBF because I'm on a rectus node, so it's going to be f Uh it's going to be not not that slow to to perform the scanning but just by going through the the RPC interface that BDK has and and checking with each of the logs that I have received the funds.

Speaker 0: 01:10:53

So as we can see here, we have received this uh one thou uh the ten thousand SATs from from the wallet.

Speaker 0: 01:11:02

So now that I Check the balance on the selling payment wallet.

Speaker 0: 01:11:08

I can see the funds there.

Speaker 0: 01:11:13

And I can see that I have spent the funds from my previous wallet.

Speaker 0: 01:11:19

So, right now, what I want to do is fund a new transaction by spending the selling payment output that I have just scanned as I did before.

Speaker 0: 01:11:29

So, I'm using the new transaction.
command from the silent payment wallet to to send to to the BIP32 wallet.

Speaker 0: 01:11:38

I'm going to execute this.

Speaker 0: 01:11:40

I'm also going to check that the change is correctly derived.

Speaker 0: 01:11:44

So here I get a change output match.

Speaker 0: 01:11:47

So it's actually working.

Speaker 0: 01:11:54

I broadcast the transaction.

Speaker 0: 01:11:57

I well I would manage block again and I scan again the blockchain to find that I have spent some of my funds to the B32 wallet.

Speaker 0: 01:12:11

So now in the silencing wallet I have less funds than before.

Speaker 0: 01:12:15

And the BDK balance well is hard to tell by the number because it's very similar to the other but I have actually received the funds.

Speaker 0: 01:12:25

So yeah, uh here we can see that I have spent the funds, but I have received back some of them in change, so I actually derived the change correctly and I I was able to find them by scanning the the blockchain.

Speaker 0: 01:12:41

So yeah, that's what I was trying to show you with Signet.

Speaker 0: 01:12:44

Uh but yeah, uh You can ask me more questions now or well, we can wrap it up now.

Speaker 0: 01:12:51

But thank you for coming, and thank you for participating in this workshop.
