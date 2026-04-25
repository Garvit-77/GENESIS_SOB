---
title: "\U0001F33F\u26A1\uFE0FBuilding Taproot Lightning Channels from Scratch | TABConf\
  \ 7"
speakers:
  - Pins
tags: []
source_file: https://www.youtube.com/watch?v=G6mWWNubtcE
media: https://www.youtube.com/watch?v=G6mWWNubtcE
categories: []
date: '2026-02-09'
summary: "This summary combines the technical insights and procedural details from\
  \ Pins\u2019 workshop at TABConf 7 regarding the implementation of Simple Taproot\
  \ Channels in the Lightning Network.\n\n### **Overview**\nThe workshop, led by Pins\
  \ (Brink.org grantee and LND collaborator), outlines the transition of the Lightning\
  \ Network from legacy ECDSA-based channels to **Simple Taproot Channels**. This\
  \ represents the first phase of a broader roadmap to enhance Lightning's privacy,\
  \ scalability, and functionality.\n\n---\n\n### **1. The Taproot Roadmap**\nThe\
  \ integration of Taproot into Lightning is a three-step rollout:\n*   **Step 1:**\
  \ Implementation of **Simple Taproot Channels** (currently supported by LND and\
  \ Eclair), which are initially private.\n*   **Step 2:** Updating the gossip protocol\
  \ to allow for the announcement of public Taproot channels.\n*   **Step 3:** The\
  \ transition from Hash Time Locked Contracts (HTLCs) to **Point Time Locked Contracts\
  \ (PTLCs)**, which will further enhance privacy and enable complex payment conditions.\n\
  \n### **2. Core Technological Foundations**\nThe shift to Taproot channels relies\
  \ on three primary technologies:\n*   **Schnorr Signatures:** Replaces ECDSA, offering\
  \ better efficiency and enabling signature aggregation.\n*   **Taproot (BIP 341):**\
  \ Allows complex scripts to be hidden behind a single public key on-chain, making\
  \ script-heavy transactions indistinguishable from simple spends.\n*   **MuSig2:**\
  \ A multi-signature scheme used to create aggregate public keys. This requires a\
  \ more interactive signing flow where peers must exchange \"nonces\" (cryptographic\
  \ randomness) before a signature can be finalized.\n\n### **3. Channel Structure\
  \ and Security**\n*   **Funding & BIP 86:** Funding outputs use a MuSig2 aggregate\
  \ Taproot output. By applying a **BIP 86 tweak**, developers ensure the output can\
  \ only be spent via the aggregate signature (no script path), preventing either\
  \ party from hiding malicious scripts.\n*   **Commitment Transactions:** Each state\
  \ includes up to six output types: Anchors, Local/Remote balances, and Offered/Received\
  \ HTLCs. To secure specific outputs, \"NUMS\" (**Nothing-Up-My-Sleeve**) points\u2014\
  public keys with no known private keys\u2014are used to ensure certain outputs can\
  \ only be spent via defined scripts.\n*   **Key Management:** Nodes use BIP 32-style\
  \ derivation (purpose 1017) and \"hash chains\" to generate revocation secrets on\
  \ the fly. This prevents the need to store every previous secret, saving storage\
  \ space.\n*   **Privacy via Obscuration:** Commitment numbers are XOR-ed and hidden\
  \ within the `sequence` and `locktime` fields, preventing external observers from\
  \ determining how many times a channel has been updated.\n\n### **4. Advanced Signing\
  \ Flow**\nTaproot channels introduce a more complex signing process compared to\
  \ legacy channels:\n*   **Nonce Exchange:** Peers must exchange nonces to facilitate\
  \ MuSig2 aggregate signatures.\n*   **Nonce Types:** The workshop distinguishes\
  \ between \"Just-In-Time\" nonces and \"Per-commitment\" nonces used to generate\
  \ partial signatures for each channel state update.\n\n### **5. Privacy and Collaborative\
  \ Closing**\nOn-chain privacy is significantly improved as all Taproot channel outputs\
  \ (including HTLCs) look like standard Schnorr public keys. This makes Lightning\
  \ activity indistinguishable from regular Taproot transactions.\n\nThe closing process\
  \ has also been modernized:\n*   **Modern Collaborative Close:** Unlike the legacy\
  \ one-round process, the modern approach uses an **RBF-based (Replace-By-Fee)**\
  \ flow. This allows for fee negotiation during the shutdown phase by exchanging\
  \ nonces and partial signatures.\n*   **Fee Responsibility:** In this modern framework,\
  \ the party who initiates the close is responsible for the transaction fees.\n*\
  \   **Finalization:** The final `closing_complete` message utilizes a partial signature\
  \ but does not require per-commitment nonces, as it represents a final settled state.\
  \ Once the aggregate signature is created and the transaction is broadcast, the\
  \ channel is officially closed, and final balances (including any settled HTLCs)\
  \ are distributed."
conference: TABConf 7
topics:
  - Taproot
  - Lightning Network
  - Schnorr signatures
  - HTLC
youtube:
  description: "\U0001F4CC Learn more about this workshop on GitHub: \u2B50\uFE0F\U0001F419\
    \nhttps://github.com/TABConf/7.tabconf.com/issues/19\n\n\U0001F33F\u26A1\uFE0F\
    \ This workshop led by Pins covers the key Taproot transactions used to create\
    \ and operate simple Taproot channels\n\n\U0001F9D1\u200D\U0001F4BB\U0001F6E0\uFE0F\
    \ Participants build each step from scratch:\n\U0001F511 node key derivation\n\
    \U0001F4B8 funding transactions\n\U0001F9FE commitment transactions\n\U0001F501\
    \ HTLC commitment\n\U0001F91D collaborative closes\n\U0001F6AA unilateral closes\n\
    \n\U0001F9E0 Recommended background\nSome familiarity with Schnorr signatures\
    \ and Taproot will help you move fast \u270D\uFE0F\U0001F33F\n\n\u26A1\uFE0F\U0001F6E0\
    \uFE0F\u26A1\uFE0F\U0001F6E0\uFE0F\u26A1\uFE0F\U0001F6E0\uFE0F\u26A1\uFE0F\U0001F6E0\
    \uFE0F\u26A1\uFE0F\U0001F6E0\uFE0F\u26A1\uFE0F\U0001F6E0\uFE0F\u26A1\uFE0F\U0001F6E0\
    \uFE0F\u26A1\uFE0F\U0001F6E0\uFE0F\u26A1\uFE0F\U0001F6E0\uFE0F\u26A1\uFE0F\U0001F6E0\
    \uFE0F\u26A1\uFE0F\U0001F6E0\uFE0F\u26A1\uFE0F\U0001F6E0\uFE0F\u26A1\uFE0F\U0001F6E0\
    \uFE0F\u26A1\uFE0F\U0001F6E0\uFE0F\n\n\U0001F7E0 TABConf is a technical Bitcoin\
    \ conference built for builders. We bring protocol + application devs together\
    \ to collaborate, debate, and push Bitcoin forward. \U0001F9E0\U0001F527\n\n\U0001F3A5\
    \ On this channel you\u2019ll find:\n\U0001F5E3\uFE0F Full talks \u2022 \U0001F9D1\
    \u200D\U0001F3EB workshops \u2022 \U0001F9E9 panels\n\U0001F6E0\uFE0F Builder\
    \ Days sessions \u2022 \U0001F50D deep dives on:\n\U0001F9F1 Bitcoin Core \u2022\
    \ \u26A1\uFE0F Lightning \u2022 \U0001F575\uFE0F privacy \u2022 \U0001F510 security\
    \ \u2022 \U0001F9F0 the tooling teams ship with\n\n\U0001F39F\uFE0F TABConf 8\
    \ tickets are on sale now!\n\U0001F5D3\uFE0F Oct 12\u201315, 2026 \u2022 \U0001F4CD\
    \ Atlanta, GA\n\U0001F3DB\uFE0F Georgia Tech Exhibition Hall\n\n\U0001F3AB TABConf\
    \ 8 Tickets\n\U0001F7E0 Pay with Bitcoin: https://checkout.opennode.com/p/7d51f71f-f3e6-4159-bbfa-3a231d14e5b8\n\
    \n\U0001F4B3 Pay with Stripe: https://buy.stripe.com/00w4gzapSf0o4ubg2mdQQ0b\n\
    \n\U0001F310 TABConf Website\nhttps://tabconf.com\n\n\U0001F517 All links hub\n\
    https://linktr.ee/tabconf\n\n\U0001FAC2 TABConf Community\n\U0001F4AC Discord:\
    \ https://discord.gg/TRaX8M7amU\n\n\U0001F426 Follow us on X\nhttps://x.com/tabconf\n\
    \n\U0001F3A7 Subscribe to the TABConf Podcast\n\U0001F34E Apple Podcasts: https://podcasts.apple.com/us/podcast/tabconf-sessions/id1867836916\n\
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
    - taproot
    - lightningnetwork
    - bitcoindev
    - schnorr
    - HTLC
    - channels
    - developer
    - transaction
  categories:
    - Science & Technology
  channel_name: TABConf
transcript_by: your_username via tstbtc v1.0.0
---

Speaker 0: 00:00:00

Okay, good morning.

Speaker 0: 00:00:02

My name is Pinks.

Speaker 0: 00:00:04

I'm from Brazil.

Speaker 0: 00:00:05

I'm grantee.

Speaker 0: 00:00:07

I'm a vin vinchun.org grantee to work on Lightning.

Speaker 0: 00:00:14

And I've been collaborating on L and D since the end of the last year.

Speaker 0: 00:00:20

And I'm here to talk about Simple taproot channels, something that I just learned.

Speaker 0: 00:00:28

It's a work in progress specification, but it's working already on our LMD and Eclair just uh support it with the last version also.

Speaker 0: 00:00:43

So I think this specification is uh pretty done.

Speaker 0: 00:00:47

I mean, I I don't think will be many changes.

Speaker 0: 00:00:53

Okay?

Speaker 0: 00:00:54

So, but it's a work in progress done by um Rose Beef.

Speaker 0: 00:01:02

Okay, of course a lot of people discuss it a lot and it's the first step of using taproot on lightning, right?

Speaker 0: 00:01:14

The first step is simple taproot channels that are channels prevate channels only.

Speaker 0: 00:01:21

And then we are going to have some change on gossip message to support the announce of taproot channels.

Speaker 0: 00:01:31

Then we are going to have another change.

Speaker 0: 00:01:35

I mean taproot channels being announced and Then public channels also.

Speaker 0: 00:01:44

And then I think the last step is to have PTLC instead of HLC.

Speaker 0: 00:01:52

So the approach is an approach of step-by-step using step route enlightening.

Speaker 0: 00:01:59

So you are going to see the first step.

Speaker 0: 00:02:04

So To to to to understand this this workshop, it's good to know just a little of Schnorr, Taproot, and Musig2.

Speaker 0: 00:02:18

Okay, I'll I'll try to I'll do my best to explain what I can, but let's see w w what we can do.

Speaker 0: 00:02:27

Okay?

Speaker 0: 00:02:29

Well, There's not a a lot of people, so if you have any question, just ask.

Speaker 0: 00:02:37

Okay, you can interrupt me and ask the question, okay?

Speaker 0: 00:02:44

Here you have the the instructions to run the workshop from your machine, if you want to.

Speaker 0: 00:02:51

I'll be running here.

Speaker 0: 00:03:00

So it's a workshop done on Jupyter Notebook.

Speaker 0: 00:03:08

So we are going to see the documentation of the workshop and the code in the same screen.

Speaker 0: 00:03:22

Okay, so let's start with key derivation.

Speaker 0: 00:03:28

The size is good?

Speaker 0: 00:03:30

Yeah?

Speaker 0: 00:03:31

Okay.

Speaker 0: 00:03:34

I'll be talking this chapter zero about key derivation because it's something that we are going to use in the other chapters.

Speaker 0: 00:03:44

The key derivation on node lightning, we have two main things, the base points.

Speaker 0: 00:03:50

So when we open a channel, we have a bunch of keys that we derive for each stage of this channel.

Speaker 0: 00:04:00

Those keys are derived

Speaker 1: 00:04:02

from the base point and the per-commitment

Speaker 0: 00:04:05

point.

Speaker 0: 00:04:06

So the base points are derived using this path.
here.

Speaker 0: 00:04:13

It's not defined on board that you should use the 10, 17 purpose, but I see that the implementations are using it.

Speaker 0: 00:04:26

And then you put the coin type, right?

Speaker 0: 00:04:29

Bitcoin mainnet is 0 and test networks is 1.

Speaker 0: 00:04:33

And the key family, the key family are the family of the base points.

Speaker 0: 00:04:37

So we have the revocation.

Speaker 0: 00:04:39

We are going to see what is HLC base points, delayed payments, base points, and pay maintenance points.

Speaker 0: 00:04:49

Each family has a number to derive.

Speaker 0: 00:04:52

And the index is zero for the first channel, one for the next channel, and each channel has his own base points, okay?

Speaker 0: 00:05:06

And in that channel, each stage of the channel needs a per commitment point to derive a unique bunch of keys for this for that state.

Speaker 0: 00:05:19

So this the per commitment point is generated by algorithm that we call chain of hashes.

Speaker 0: 00:05:28

So we have this algorithm here, that and we take a seed and index and we flip the the bit and generate the per commitment for each state.

Speaker 0: 00:05:47

Okay, so it's it's it's important because uh otherwise the the node should have to storage each uh uh each per commitment because we have the revocation, uh the punishment transaction that you are going to generate on the fly.

Speaker 0: 00:06:10

So this way generating a a chain of hashes we don't have to store all the keys all the per commitment points you can generate it on the fly when we need it okay and we use the the base point the payment basis point and the of each peer to generate what we call obscured commitment number.

Speaker 0: 00:06:41

When when a commitment transaction is uh published on chain, your node has to know if it's the last state of the channel or not.

Speaker 0: 00:06:53

And to do that very fast, There is the obscure commitment number in the commitment transaction.

Speaker 0: 00:07:03

And it's stored in sequence and lock time fields that we are going to see during the workshop.

Speaker 0: 00:07:13

And as we are going to talk about taproot channels, We need also the per commitment nonces.

Speaker 0: 00:07:22

For each commitment we have the nouns because the the funding transaction now in the Taproot channel that we are going to see in the next uh chapter is a music chew transaction.

Speaker 0: 00:07:36

So it's generated the output is a Aggregated public key from ILEC and BOG, and to sign that, you are going to use the session, Musig2 session who needs the per commitment nodes for each stage of the channel.

Speaker 0: 00:07:58

So if you are going to run the workshop from your machine.

Speaker 0: 00:08:05

You have to change these two lines here, okay?

Speaker 0: 00:08:09

Because I'm I'm using the Bitcoin test framework.

Speaker 0: 00:08:16

So you put the your the pass for your Bitcoin Core test framework here and the pass to your taproot workshop here.

Speaker 0: 00:08:26

Okay, just change those lines.

Speaker 0: 00:08:30

And hopefully, hopefully, hopefully, something like that.

Speaker 0: 00:08:35

We are going to run your workshop from your machine.

Speaker 0: 00:08:48

Okay, everything set, and let's start here.

Speaker 0: 00:08:51

I'm generating Alice per commitment seed and Bob per commitment seed.

Speaker 0: 00:08:57

Okay, and A seed for the node of Alice and seed for the node of Bob.

Speaker 0: 00:09:03

We are going to use to derivate the base points and the per commitment also.

Speaker 0: 00:09:14

So The first thing we are doing here is the Alice payment base point generating with the function that derives the key, just as I told you before.

Speaker 0: 00:09:35

So you generate the Alice and Bob payment base point.
basement base point and we concatenate and hash it to generate the two obscure number.

Speaker 0: 00:09:49

So the obscure number is something that we are we are going to use to uh obscure the commitment number in each of the transactions we are going to generate.

Speaker 0: 00:09:56

So that's why I'm generating here and we take the forty eight bits of this two obscure Used to obscure the commitment number.

Speaker 0: 00:10:12

Now we are going to start the the transaction I'm creating funds for Alice and Bob here.
nothing special and generate a transaction to to send those funds to Alice and Bob.

Speaker 0: 00:10:51

I'm going to use only the the funds for Alice here because they're going to uh Alice is going to be the founder of the channel.

Speaker 0: 00:11:02

So that's what I'm doing here.

Speaker 0: 00:11:04

I I generate a send a send menu.

Speaker 0: 00:11:08

What?

Speaker 0: 00:11:09

Hello?

Speaker 0: 00:11:10

Okay um I send my transaction here and then I take the index to spend from Alice So here the transaction okay one bitcoin for Alice one Bitch coin for Bob and the change for the miner And here we start generating the funding transaction.

Speaker 0: 00:11:40

As you know, when we are generating the funding transaction for a channel, we have to generate the first commitment transaction in the same time because otherwise Alice could not publish the funding transaction with no commitment transaction signed by Bob because you know she she don't want to trust Bob right so Alice sent an open channel message to Bob and she sent the first next local nouns it's something that we are going to use to generate the first commitment transaction it's not for the funding transaction yet but something that they they they have to exchange uh before the com the creating of commitment transaction.

Speaker 0: 00:12:36

And Bob answer with if Bob want to accept the channel, he answered with accept channel message and the next local nonce for Bob.

Speaker 0: 00:12:51

So Alice then can create the funding transaction and create the partial signature for the first commitment transaction here using the nouns that Bob sent here and send adjusting time nouns that she is using to partial sig this First commitment transaction and Bob do the same here.

Speaker 0: 00:13:18

Okay, so Bob, when Bob answers with fund signing, he is signing also the first commitment transaction for Alice with the next local nonce that Alice sent here on the channel and using adjusting time nodes here.
and send the adjusting time nodes also.

Speaker 0: 00:13:43

So it's everything is okay.

Speaker 0: 00:13:46

They they they can announce the channel when the channel read is exchanged with the next local nouns for the next commit transaction.

Speaker 0: 00:13:57

This nodes here, it's the nouns for the second commit transaction already.

Speaker 0: 00:14:03

Because here they they have just uh done the first commit on transaction and the same time they are signing and publishing the funding transaction.

Speaker 0: 00:14:23

So let's start creating a funding transaction.

Speaker 0: 00:14:27

I create a change for Alicey.

Speaker 0: 00:14:29

I'm not worried here uh creating a wallet for Alice and Bob and deriving the those address, okay?

Speaker 0: 00:14:38

I'm not doing that.

Speaker 0: 00:14:40

That's not the the focus of this workshop.

Speaker 0: 00:14:43

So the first the output for the funding transact transaction is this output we are seeing here.
Okay.

Speaker 0: 00:14:52

So it's uh tap root.
uh output here, up one and up a key.

Speaker 0: 00:15:02

So and what we see here it's the public the aggregated public key from Alice and Bob and there is a uh a technique From BP86, that we use the aggregated pub key to tweak the aggregated pub key to Bob make sure that there is no other way to spend the desult that using the aggregate signature.

Speaker 0: 00:15:43

With this technique, we can guarantee that there is no way of spending this output other than having the aggregate signature for this output.

Speaker 0: 00:15:58

Okay?

Speaker 0: 00:15:59

It's very important to have that.

Speaker 0: 00:16:03

Otherwise, we can put some.
script here to spend this output and take the money from Bob or from Alice actually okay so it's exactly what I'm doing here so I I'm taking the the public key from Alice and from from Bob and we sort it The pub keys and aggregate the pub keys here and tweak the public key with the with the aggregated key here okay so the final type tap root output It's the aggregated pub key tweaked and we could create the the script pub key using it.

Speaker 0: 00:17:08

We are going to see in the next section here.

Speaker 0: 00:17:14

So this is the transaction.

Speaker 0: 00:17:15

So the input is the the output from Alicey and the output are a change for Alicey the changes here and the aggregated public key that we just generated it's very simple actually so up one push 32 bytes and the X only aggregated public key, and then we have our channel funded.

Speaker 0: 00:17:54

Okay, this is the transaction unsigned yet.

Speaker 0: 00:17:59

We are going to generate the SIG hash from BP341.

Speaker 0: 00:18:15

And then you are going to sign.

Speaker 0: 00:18:17

So Alice is signing because Alice is the funder.

Speaker 0: 00:18:24

Generate the witness and the sign and transaction.

Speaker 0: 00:18:31

And then we have the channel funded.

Speaker 0: 00:18:36

Alice could send and publish this transaction because he has already the commitment transaction signed by Bob, right?

Speaker 0: 00:18:50

So let's see the next chapter: the first commitment transaction.

Speaker 0: 00:18:56

The Alice first commitment transaction.

Speaker 0: 00:19:04

The initial commitment transaction.

Speaker 0: 00:19:13

We are going to use the funding transaction.

Speaker 0: 00:19:17

And here you can see that there is something called nums.
nothing under my sleeve.

Speaker 0: 00:19:25

It's a very special public key that the pri private key is not known.

Speaker 0: 00:19:31

Okay, we are going to see where we use it, but it's very important here on simple tablet channels.

Speaker 0: 00:19:44

And let's start creating the commitment transaction.

Speaker 0: 00:19:49

So the only thing that is some difference from what you know here is the sequence here.

Speaker 0: 00:20:01

Remember that the commitment number will be on sequencing and lock time fields of the commitment transaction so but in the obscure the way so we take the commitment number use the the lower fort eight number to obscure it so we we do a short and the upper 24 bits we put on sequency here and below you will see that we we put the l the lower 24 bits on lock time so the outputs for the commitment transaction we we have uh six types of outputs You have the HGLC outputs, offered and received.

Speaker 0: 00:21:00

We have uh anchor, local and remote, and you have two local and two remote outputs, or six types of outputs.

Speaker 0: 00:21:13

But the first commitment transaction, we have only two outputs because you have only the money to Alicey, Alice need to to have his money back if anything goes wrong, right?

Speaker 0: 00:21:26

And the Anchor output for Alice because Alice want to have a way to accelerate the transaction on blockchain.

Speaker 0: 00:21:44

So this the the first two outputs are two local anchor output and it's a tap root output that can be spent in two ways the public key path here so if you have the private key for The local delayed public key here, you can sign and take this output.

Speaker 0: 00:22:14

Or after 16 blocks, anyone can spend this output if this anyone knows the local public key.

Speaker 0: 00:22:28

But we are going to see here that this public key.

Speaker 0: 00:22:32

Is known for anyone who watches the blockchain because the two local output here has only the script path.

Speaker 0: 00:22:44

Remember the nums?

Speaker 0: 00:22:46

The numbers is here.

Speaker 0: 00:22:48

It's a public key that no one knows the private key.

Speaker 0: 00:22:54

So There is only this way to spend this output So if Alice wants this output he has to delay wait for to self-delay okay and his private key here But if Bob want to punish Alice Bob have to have the revocation private key here, but he will publish also the public local delayed.

Speaker 0: 00:23:45

So that's why anyone can expand this anchor output after 16 blocks because when this output is expanded the public local delay is exposed and the two scripts that is possible to use.

Speaker 0: 00:24:06

So here the key derivation.

Speaker 0: 00:24:08

So remember that we talk about base point and per commitment.

Speaker 0: 00:24:14

They are used to generate each of the keys that we need.

Speaker 0: 00:24:19

For each commitment, the key is unique.

Speaker 0: 00:24:24

So you have the bunch of keys for each commitment transaction that are derived this way here.

Speaker 0: 00:24:35

And the evocation public key is almost the same, but it's a blinded key.

Speaker 0: 00:24:41

So we are going to use this to create the evocation public key and this to generate the private key.

Speaker 0: 00:24:53

It's a blinded key because Alice has no way to To have the private key without the per commitment secret from both.

Speaker 0: 00:25:04

Okay, so let's start creating the Alice per commitment here.

Speaker 0: 00:25:14

So the functions are another script here.
you can go and see it but here we are gener we are generating the the per commitment and for Alice and for Bob and create the delayed public key for Alice so to create the delayed public key I have to see the Alice's seed and the family and the per commitment for Alice and for Bob to create the evocation public key for Bob we have to use the Bob seed and the Alice per commitment point because evocation is a bit different okay and then we create the the outputs so the scripted is here that is scripted for anchor you know Op16 and op check sequence verify.

Speaker 0: 00:26:18

We hash it here and we tweak the Alice delete public key and create the anchor output.

Speaker 0: 00:26:36

The fee calculation in uh in a node is done by uh um estimating the wage of the transaction.

Speaker 0: 00:26:48

So I created a function to do that.

Speaker 0: 00:26:50

So we call the function with the number of tap outputs and number of anchor outputs, and I give you the wage of the transaction, and then we can calculate the commitment fee that Alice is going to Pay for this transaction, and then we have the way to create the two local output using this commitment fee to self-delay is something that you exchange during the opening and update of the channel, and then we generate the script A.

Speaker 0: 00:27:27

Here delayed public key, object sig to self-delay, object sec and verify and updrop and then script B and then we hash both here and create the hood for this Tap root tree and then tweak the nonce with the hood of this tab tree This way you can create the outputs and the unsigned version version of transaction Here we have it the anchor output and two local output Then we are going to sign this transaction We're going to create the SIG hash just what how what we did in the notebook before and this time this signing this hash is a little different because we are signing music to output so we are going to use the nouns so you take the participants of the of the signing Alice and Bob okay We have to order them and generate the nonces here.

Speaker 0: 00:29:21

Note that this this time Alice is going to use a function that I did here, nonce per commitment.

Speaker 0: 00:29:31

So Alice using the per commitment nonce generated by By Bob and sent by Bob, and Bob is using the nodes just in time.

Speaker 0: 00:29:47

What we are doing here is exactly what we showed.

Speaker 0: 00:30:09

Here.

Speaker 0: 00:30:10

So Alice.

Speaker 0: 00:30:18

We we are doing the

Speaker 1: 00:30:19

the Alice commitment transaction.

Speaker 0: 00:30:21

So Bob, just in time, nonce.

Speaker 0: 00:30:26

And I'll see

Speaker 1: 00:30:29

per commitment

Speaker 0: 00:30:30

nodes.

Speaker 0: 00:30:31

Okay.

Speaker 0: 00:30:48

So aggregate the nodes, create the section of signing.
and generate the signatures the partial signatures which one we verify the partial signatures and then we verify the aggregate signature here okay and then we create the signed transaction first commitment signed transaction This is the transaction and I test in the main pool.

Speaker 0: 00:31:24

Okay, so it's allowed transaction.

Speaker 0: 00:31:29

If you want to, you can do an exercise to create the Bob initial commitment transaction.

Speaker 0: 00:31:35

So it's almost the same way, but Of course, Bob is going to generate the remote anchor output and two remote outputs.

Speaker 0: 00:31:44

So the scripts are different.

Speaker 0: 00:31:47

So I have here to fill the g the the blanks but I think we have no time to do that.

Speaker 0: 00:31:56

Okay if you can try I can wait some minutes but You choose.

Speaker 0: 00:32:07

Maybe you can do in the end of the workshops if you have some time.

Speaker 0: 00:32:15

Any question from here?

Speaker 0: 00:32:21

So let's go to the in-flight, the second commitment transaction.

Speaker 0: 00:32:27

The solution for the exercise has a a specific file so you can do the you can see the solution also okay so creating the commitment transaction with in-flight HOC We are going to use what we have just done.

Speaker 0: 00:33:14

So, what's going on here?

Speaker 0: 00:33:18

Well, To create the segment commit transaction, remember that the nonces were already exchanged in the channel red when Alice and Bob exchanged the message, the channel red message.

Speaker 0: 00:33:35

They exchanged those nonce already.

Speaker 0: 00:33:39

But if the node has Connection or something like that, they exchange these notes ag these notes again with the channel re-established.

Speaker 0: 00:33:51

But the those notes were not used yet, so there is no risk of sending it again.

Speaker 0: 00:33:56

Okay, so Alice sent the update at HGLC to Bob.

Speaker 0: 00:34:04

So Alice has funds on this on her side, so he has The way to send some funds using this channel is send update add HLC and a commitment signed message for the commitment message for Bob commitment message.

Speaker 0: 00:34:27

Okay, and just in time notes here is the same way that we we saw in the open channel here Alice is sending, is using the nonce Bob sent here and Alice is sending adjusting time nonce for this signature.

Speaker 0: 00:34:47

Okay Bob revoke the the old state and send a commitment signed to Alice signing the commitment transaction the Alice commitment transaction with the Alice next local nonce sent here and the adjusting time nodes.

Speaker 0: 00:35:12

So that's the way they exchange nonce, okay?

Speaker 0: 00:35:27

So the the first part of the transaction is almost the same.

Speaker 0: 00:35:32

We are just changing the commitment number and obscuring it the same way but the outputs are different right we have now Two other outputs.

Speaker 0: 00:35:50

Hello, we have the offered HTLC output now.

Speaker 0: 00:35:56

This one and the remote anchor output.

Speaker 0: 00:36:03

Now, Bob has some money here because of the HTLC in flight.

Speaker 0: 00:36:14

So the two local offer sorry the offer HLC output has two ways of being spanned.

Speaker 0: 00:36:29

Bob can as we are creating the Alice in-flight HTLC commitment transaction, Bob has this rev if Bob has this private key rerogation, he can take these funds.

Speaker 0: 00:36:47

Okay, and so we have the key pass here and the script pass here, two ways.

Speaker 0: 00:36:57

So of course HOC If Alice has the the the hash the the pre-image sorry Bob if Bob has the pre-image he has take he can take the funds using this script and If the HTLC has a timeout, you will have HTLC timeout transaction to to get this fund.

Speaker 0: 00:37:43

Okay, it's something that it's another transaction that we are not going to talk here, but when the the peers are creating the commitment transactions with in-flight HELC, they create also two kind of transactions, the HELC success funding transaction and HELC timeout transaction.
to take those funds from the HLC output.

Speaker 0: 00:38:13

And the remote anchor output is almost the same.

Speaker 0: 00:38:17

So Bob if Bob has the private key, he has take the f the the output, the anchor output to using the private key.

Speaker 0: 00:38:29

Or anybody can spend it.

Speaker 0: 00:38:33

After 16 blocks, if no, the remote public key.

Speaker 0: 00:38:39

But as you can see, the remote public key is exposed here, here and here.

Speaker 0: 00:38:49

Okay, so cool.

Speaker 0: 00:38:55

Alice C per commitment is generated for this commitment transaction, right?

Speaker 0: 00:39:00

Every time we change the state of the channel, we generate a new per commitment point.

Speaker 0: 00:39:07

And with this new per commitment point, we derive the keys.

Speaker 0: 00:39:11

So we are deriving the Alice C-delayed public key here and Bob payment public key here.
and Bob Havogation pub key here and Alice HELC pub key here and Bob HELC pub key.

Speaker 0: 00:39:30

So a bunch of keys are generated every change of the channel, the stage of the channel.

Speaker 0: 00:39:37

So we have four outputs.

Speaker 0: 00:39:40

The first one is the anchor.

Speaker 0: 00:39:45

And uh the order of outputs, I I didn't say, but the order of of outputs are uh from the small to the big one.

Speaker 0: 00:39:54

And if they are uh the same value, they are lexicographically ordered.

Speaker 0: 00:40:01

Okay?

Speaker 0: 00:40:04

So In this transaction, we will have two anchor outputs, two local and two remote, the same value of the output so they are sorted here.

Speaker 0: 00:40:22

So I generated the Alice anchor output, Bobby Anchor output, just as I did in the last transaction, but here I Sorted lexicographically those outputs and then I generate the HTLC output here.

Speaker 0: 00:40:42

It's a 500,000 HTLC output, 500,000 Satoshis.

Speaker 0: 00:40:50

Generate the script A for HTLC.

Speaker 0: 00:41:00

I create a dummy a dummy prayer image here and here we have the script B so the those scripts are exactly those scripts that are here okay for the Over HLC output, then we hash, we tap leaf, and then we tap branch, then creating the root of the tree.

Speaker 0: 00:41:41

Okay, and we tweak the key as we see here.

Speaker 0: 00:41:51

The evocation key is tweaked with this code and then we have the Alice offer HOC output script.

Speaker 0: 00:42:06

The beauty of the tab router is the all the outputs look like the same on chain because it's just one and a public key.

Speaker 0: 00:42:24

I do the fee calculation here, right?

Speaker 0: 00:42:28

This way we are going to use two tap outputs and two anchor outputs, so the rate is a l a bit different And we create the two local output as we did already in the first transaction we create the the hash the script A, the script B We hash both, create the tab branch to create the hoot.

Speaker 0: 00:43:00

Okay and now we have the nouns tweaked just just as we did in the first transaction, right?

Speaker 0: 00:43:12

The first commitment transaction to local with The internal key, the internal taproot key for to local output is the nouns.

Speaker 0: 00:43:23

It's a special public key that we don't know the private key.

Speaker 0: 00:43:28

So we have the outputs here.

Speaker 0: 00:43:31

And remember the local lock time.

Speaker 0: 00:43:35

I didn't show in the first transaction, I forgot it.

Speaker 0: 00:43:38

But here the lower 24 bits for the obscured commitment number is stored in the lock time.

Speaker 0: 00:43:47

So here you have the unsigned transaction.

Speaker 0: 00:43:51

So the output for the both anchor outputs here and the HLC offer output here here I just saw a mistake here because the the HTLC offer output is bigger than to local so the H the H TLC would come at the end of the transaction okay it's a mistake this is a mistake I'm going to correct it Then we create the sig hash and you are going to sign the same way we signed at the first commitment transaction, right?

Speaker 0: 00:44:54

So Alice, you are going to use a new nonce.

Speaker 0: 00:44:59

Here per commitment, and Bob is just in time nonce.

Speaker 0: 00:45:03

That's why I call here nonce per commitment and here nonce chain.

Speaker 0: 00:45:08

Okay, with that, we create the session for signature, the musig choose session signature, and then we generate the partial sigs.

Speaker 0: 00:45:21

We check the partial sigs here.

Speaker 0: 00:45:23

It's important because during this process, the nodes are checking the partial signature of each one to see if everything is going right.

Speaker 0: 00:45:35

And then generate the aggregate signature to sign it.

Speaker 0: 00:45:41

And then we have the signed transaction.

Speaker 0: 00:45:52

Here allow it true.

Speaker 0: 00:45:57

I left the exercise for creating the the Bob in-flight HTLC commitment transactions here.

Speaker 0: 00:46:06

Of course the outputs are are different.

Speaker 0: 00:46:10

The main difference here it's Alice has the offered HTLC output and Bob has the accepted HTLC output.

Speaker 0: 00:46:26

So to finish, let's close the channel.

Speaker 0: 00:46:36

Collaborative closing.

Speaker 0: 00:46:38

Of course, the unilateral closing is just the the commitment transaction that we are creating, right?

Speaker 0: 00:47:00

So the collaborative closing are going to use the the funding transaction we have done already.

Speaker 0: 00:47:15

We create some public keys to send the funds to Alice and Bob here.

Speaker 0: 00:47:24

It's we are going to send the half of the the Satoshi to Alice and half the Satosh to Bob.

Speaker 0: 00:47:36

And we have two ways of closing the the simple tap root channels.

Speaker 0: 00:47:43

Okay.

Speaker 0: 00:47:43

The the legacy way where they exchange nonce And there is just one round.

Speaker 0: 00:47:54

So Alice said send a closing sign to Bob with a fee choose by Alice and Bob just accept it.

Speaker 0: 00:48:08

There is no fee negotiation in simple tap root channel.

Speaker 0: 00:48:14

If it's not a tap uh taproot channel, Bob could answer with another fee and then Alice sends a closing sign again, then Bob could ask for another fee until they uh agree and send a closing sign with the same fee and the and the the The channel is closed.

Speaker 0: 00:48:37

Here it's just one round, just because of the nonces.

Speaker 0: 00:48:41

But there is the modern RBF-based cooper collaborative cooperative clause, okay, where they exchange the next nose on the shutdown.

Speaker 0: 00:48:56

So I see sent his next nose on the shutdown.

Speaker 0: 00:49:00

Bob answered with the next nose.
with his next nouns and shutdown.

Speaker 0: 00:49:07

And Alice sends a closing complete with the partial signature using the sh the next nouns from Bob here and adjusting time nouns, just like the the commitment transaction here.

Speaker 0: 00:49:23

But note that here they are not using the per commitment nouns.

Speaker 0: 00:49:29

Okay, there is no per commitment nouns here because it's not a commitment transaction.

Speaker 0: 00:49:42

So the unsigning transactions is the same.

Speaker 0: 00:49:54

So this time you have the sequence just signing the RBF.

Speaker 0: 00:50:00

It's not commitment number here, of course.

Speaker 0: 00:50:05

The transaction fee uh comes from Alice.

Speaker 0: 00:50:09

If you have the legacy cooperative, Alice is going to pay for the closing transaction because she is the funder.

Speaker 0: 00:50:20

But if it's the the new modern RBF collaborative clause, if Bobby initiated, Bobby will pay for the cooperative clause.

Speaker 0: 00:50:40

So here we have the unsigned.

Speaker 0: 00:50:46

Remember, this is the output for Alice and Bob has 500,000 Satoshis that he received from that HLC and create the SIG hash, just as we did already.
and sign it as we did already, but with nonce chain, there is no per commitment nonce chain here.

Speaker 0: 00:51:19

Okay and then the channel is closed.

Speaker 0: 00:51:31

Complete, take the X I D.
