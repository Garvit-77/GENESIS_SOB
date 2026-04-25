---
title: "\U0001F9D1\u200D\U0001F4BB\u26A1\uFE0FBreaking Down Barriers: Making Taproot\
  \ Assets Accessible to Web Developers | TABConf 7"
speakers:
  - Kyle Santiago
tags: []
source_file: https://www.youtube.com/watch?v=v2xjVAvcKc4
media: https://www.youtube.com/watch?v=v2xjVAvcKc4
categories: []
date: '2026-02-09'
summary: "Based on the workshop \"Breaking Down Barriers: Making Taproot Assets Accessible\
  \ to Web Developers,\" here is a unified summary of the presentation's key points.\n\
  \n### **Overview**\nThe Taproot Assets protocol is a powerful tool for building\
  \ decentralized finance (DeFi) on Bitcoin, allowing for instant, high-volume transactions\
  \ via the Lightning Network. However, standard web browsers currently face technical\
  \ hurdles when interacting directly with the Taproot Assets daemon (`tapd`). This\
  \ workshop introduced a **Rust-based REST gateway** and a **React dashboard** designed\
  \ to bridge this gap, enabling a modern web development experience for Bitcoin-based\
  \ assets.\n\n---\n\n### **1. The Barrier: Why Web Development is Currently Difficult**\n\
  Web developers building wallets or portfolio trackers typically face three primary\
  \ technical obstacles when trying to connect a browser-based application to a Taproot\
  \ Assets node:\n*   **CORS Errors:** Browsers block direct requests to the daemon\
  \ because they operate on different ports.\n*   **Authentication (Macaroons):**\
  \ Managing sensitive node credentials (macaroons) securely within a browser environment\
  \ is complex and poses security risks.\n*   **TLS Certificates:** Handling the necessary\
  \ security certificates required by the daemon is often incompatible with standard\
  \ web environments.\n\n### **2. The Solution: A Rust REST Gateway**\nTo resolve\
  \ these issues, the speaker introduced a **Rust-based REST gateway** that acts as\
  \ a proxy between the web browser and the `tapd` daemon. \n*   **Technical Bridge:**\
  \ The gateway handles CORS headers, manages macaroon authentication, and processes\
  \ TLS certificates on the server side.\n*   **Developer Friendly:** It allows developers\
  \ to use standard JavaScript `fetch` calls to interact with Bitcoin assets.\n* \
  \  **Seamless Integration:** It serves as a \"drop-in\" replacement for the standard\
  \ daemon URL, allowing existing local setups to transition easily to web-based interfaces.\n\
  \n### **3. Development Environment and Tooling**\nThe workshop demonstrates a full-stack\
  \ local environment for testing and development:\n*   **Polar & Docker:** Polar\
  \ is used to launch a one-click local Bitcoin/Lightning/Taproot network on **Regtest**,\
  \ running within Docker containers.\n*   **LND Compatibility:** The current implementation\
  \ is designed specifically for **LND nodes**.\n*   **React Dashboard:** A starter\
  \ kit built with React and TypeScript provides a full UI for managing assets, utilizing\
  \ custom React hooks and API interfaces that are compatible with Lightning Labs\u2019\
  \ endpoints.\n\n### **4. Asset Lifecycle and Management**\nThrough the gateway and\
  \ dashboard, developers can manage the entire lifecycle of a Taproot Asset:\n* \
  \  **Minting:** Creating either **Fungible Assets** (e.g., stablecoins with a defined\
  \ supply) or **Collectibles** (NFTs with a supply of one).\n*   **Transacting:**\
  \ Users can finalize asset batches via mining, generate receiving addresses, send\
  \ assets, and track transaction history (including fees and block data).\n*   **Burning:**\
  \ The ability to permanently remove assets from the network to create scarcity.\n\
  \n### **5. Verification, Discovery, and Trading**\nThe protocol includes sophisticated\
  \ layers for asset security and peer-to-peer exchange:\n*   **The Universe Protocol:**\
  \ A layer for asset discovery and cryptographic verification. It uses federation\
  \ servers to sync asset data across the network.\n*   **Cryptographic Proofs:**\
  \ Ownership and transaction history are verified using Merkle tree roots. These\
  \ proofs can be decoded, verified for authenticity, and exported.\n*   **Request\
  \ for Quote (RFQ):** This protocol enables P2P asset trading over the Lightning\
  \ Network. Nodes connect to \"Universes\" to broadcast offers and find liquidity\
  \ for buy/sell quotes.\n\n### **Conclusion**\nWhile the Taproot Assets protocol\
  \ is technically robust, the introduction of a middle-layer gateway is essential\
  \ for bringing Bitcoin assets to the web. By providing open-source tools, comprehensive\
  \ tests, and a simplified API, this project enables developers to build sophisticated\
  \ DeFi tools and mobile-compatible applications on top of Bitcoin with the ease\
  \ of modern web development."
conference: TABConf 7
topics:
  - Taproot Assets
  - Lightning Network
  - LND
  - Web Development
youtube:
  description: "\U0001F4CC Learn more about this workshop on GitHub: \u2B50\uFE0F\U0001F419\
    \nhttps://github.com/TABConf/7.tabconf.com/issues/34\n\n\U0001F9D1\u200D\U0001F4BB\
    \u26A1\uFE0F In this hands on workshop, Kyle Santiago shows devs how to build\
    \ real Taproot Assets web apps directly in the browser\n\nBy solving the two things\
    \ that usually block you:\n\U0001F6AB CORS\n\U0001F510 macaroon auth\n\n\U0001F9EA\
    \ First, you\u2019ll see exactly why direct browser connections to tapd fail,\
    \ then you\u2019ll ship the fix\n\n\U0001F680 Deploy the Taproot Assets REST Gateway\
    \ so you can make working API calls and start building immediately \u2705\n\n\U0001F6E0\
    \uFE0F What you\u2019ll build\n\U0001F440 simple asset viewers\n\U0001F4E4\U0001F4E5\
    \ full send and receive interfaces\n\nAlso how to:\n\U0001F9E9 handle authentication\
    \ cleanly\n\u269B\uFE0F integrate with JavaScript or React\n\u26A1\uFE0F use the\
    \ gateway\u2019s fast, low latency architecture\n\n\U0001F3AF By the end, everyone\
    \ leaves with a running gateway, working code, and everything needed to keep building\
    \ \U0001F9F0\U0001F525\n\n\u26A1\uFE0F\U0001F6E0\uFE0F\u26A1\uFE0F\U0001F6E0\uFE0F\
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
    - taproot
    - lightning network
    - web development
    - java
    - developers
    - workshop
    - full stack
    - app
    - docker
    - LND
  categories:
    - Science & Technology
  channel_name: TABConf
transcript_by: your_username via tstbtc v1.0.0
---

Speaker 0: 00:00:00

All right, hello everybody.

Speaker 0: 00:00:02

We're going to be presenting here essentially how to make Taproot assets available for web development.

Speaker 0: 00:00:09

And we're going to talk through what the challenges are and have an interactive workshop on actually building web applications.

Speaker 0: 00:00:17

We have a workshop repo that has all the examples that you can work through in the workshop.

Speaker 0: 00:00:23

So we'll we'll go through that.

Speaker 0: 00:00:24

So if you have a computer, please uh get it ready 'cause we can uh work on the work job interactively.

Speaker 0: 00:00:31

Uh a little bit about myself.

Speaker 0: 00:00:33

I've been working the last seven years uh doing different uh blockchain solutions, mainly in the EVM space in the last five years, but uh transitioning now more into Bitcoin space and uh doing open source contributions on different projects in the bitcoin space.

Speaker 0: 00:00:48

And obviously doing projects like this where we can make Taproot assets available for developers.

Speaker 0: 00:00:58

So for a quick agenda, we're first going to go through an introduction, what the problem is, why people can't really develop web applications with Taproot Assets currently, and how this is going to help.

Speaker 0: 00:01:09

We're going to have a setup period where you can get your own environment running locally.
and then go through the workshop and see what the challenges are, how what what the solution is, actually working through minting, sending, receiving taproot assets, and then actually showing you examples of real applications that have been built using this technology.

Speaker 0: 00:01:31

And then we'll have a a quick Q and A at the end.

Speaker 0: 00:01:35

So first, what are Taproot assets?

Speaker 0: 00:01:38

So Taproot Assets is a Taproot

Speaker 1: 00:01:40

power protocol

Speaker 0: 00:01:41

for issuing assets on Bitcoin.

Speaker 0: 00:01:42

These can

Speaker 1: 00:01:43

be

Speaker 0: 00:01:43

transferred over the Lightning Network for instant high volume, low fee transactions.

Speaker 0: 00:01:47

So this allows you to mint and and create any asset you want.

Speaker 0: 00:01:50

So think a stable coin or maybe a security or any type of asset you could think of.

Speaker 0: 00:01:55

It could be a collectible.

Speaker 0: 00:01:56

It could be you know, my name's Kyle, so I got Kyle coin, for example.

Speaker 0: 00:01:59

And this leverages the Taproot protocol for privacy and scalability.

Speaker 0: 00:02:03

And these assets can be transacted and deposited into Lightning channels.

Speaker 0: 00:02:07

You can also do the same on-chain, but if you want to do it faster, do it on Lightning.

Speaker 0: 00:02:13

And that's basically what Taproot Assets is at a high level.

Speaker 0: 00:02:17

So what you learn from this workshop is why browsers are blocking the Taproot Assets API.

Speaker 0: 00:02:25

How to handle the authentication with the macaroons from the nodes you're going to be running locally.

Speaker 0: 00:02:33

You're going to build browser-based Taproot Assets web applications, and then you're also going to see the full Taproot Asset lifecycle of minting and asset sending and asset receiving.

Speaker 0: 00:02:42

And then also for more advanced React integration patterns with TypeScript.

Speaker 0: 00:02:49

What you'll leave with is a polar Lightning network on your computer.

Speaker 0: 00:02:54

So that will have Lightning and Taproot Assets on there.

Speaker 0: 00:02:57

You'll have the Rust gateway for the Taproot Assets daemon.

Speaker 0: 00:03:00

And you'll have some working code for these applications we're going to be building that you can work on.

Speaker 0: 00:03:06

So let's say you want to build a Taproot Assets.
web app today, the first problem you're gonna hit is a cores error.

Speaker 0: 00:03:12

So let's say you're trying to make this call to the asset's endpoint on on the on the on the daemon.

Speaker 0: 00:03:19

You're gonna hit this cores error.

Speaker 0: 00:03:22

So this is the first barrier.

Speaker 0: 00:03:23

But not only that, there's two other barriers, which is the authentication.

Speaker 0: 00:03:29

You need to access the the macaroons from the from your node in order to communicate with them and then also certificates to to access the the Taproot asset schema that you're running.

Speaker 0: 00:03:43

So that means that you can't build a web wallet, an asset explorer, a portfolio tracker, anything you'd want to build from a browser-based perspective.

Speaker 0: 00:03:51

You can't really do that right now with the existing Taproot Asset schema.

Speaker 0: 00:03:55

And this isn't a problem with the Taproot Assets Protocol.

Speaker 0: 00:03:58

This is just a problem with browser access.

Speaker 0: 00:04:00

So now we're going to work into actually getting the gateway set up.

Speaker 0: 00:04:05

First you'll install the Polar Lightning Network development environment.

Speaker 0: 00:04:09

I don't know if anybody maybe raise your hands if you've heard of or you've used Lightning Polar before.

Speaker 0: 00:04:15

Okay, cool.

Speaker 0: 00:04:17

So that's basically going to be the way that we're going to interact with the Taproot Assess daemon.

Speaker 0: 00:04:21

And that's going to be running on Bitcoin Rectest.
locally on your computer.

Speaker 0: 00:04:26

Then we're gonna have the solution, which is this Taproot Assets Rust gateway that's built in Rust.

Speaker 0: 00:04:31

That's gonna handle all the issues that we saw earlier with the cores, errors, the authentication with the macaroons, the TLS.

Speaker 0: 00:04:37

It's gonna handle all that automatically.

Speaker 0: 00:04:39

And it's gonna act as a proxy between the browser and the Taproot Assets daemon and sit in the middle.

Speaker 0: 00:04:45

And I'll have a little diagram for showing that.

Speaker 0: 00:04:48

And then we'll have this workshop repository that we're going to be working out of.

Speaker 0: 00:04:51

It's going to have all the demos and all the different examples.

Speaker 0: 00:04:55

So, at a high level, when we first looked at the different issues that we encounter when we're building with Taproot Assets, is that when we're trying to talk from the browser to the Taproot Assets daemon, Tap D, so this box on the right, you hit all those errors.

Speaker 0: 00:05:12

So, the gateway is basically.

Speaker 0: 00:05:14

Handling all of that and making it seamless for us to mint all the assets and receive them.

Speaker 0: 00:05:22

So we have this repo.

Speaker 0: 00:05:25

I have a QR code, but you'd want to get this on your computer basically to clone this repo that's going to have all the examples in here.

Speaker 0: 00:05:33

And then you can start the demos.

Speaker 0: 00:05:36

I have a little script that opens up all the The demos in here.

Speaker 0: 00:05:41

So I don't know if anybody wants to set that up.

Speaker 0: 00:05:43

If not, I can just do it locally.

Speaker 0: 00:05:51

But basically, this repo is going to have all the examples, all of the different setup guides for you to do this locally, because it's going to have all the setup for Polar, for even if you don't have Git or or the other thing set up, it has a README in there so so that all the things you can you need for Taproot Asset Schemen and the different examples we're going to go through, you'll have that set up locally.

Speaker 0: 00:06:24

So I'll just show you you go to that page, you will see Just the commands you want to be running.

Speaker 0: 00:06:36

So, you just want to clone this locally in some projects directory.

Speaker 0: 00:06:40

You want to go in there and once you have that running, or once you have the repo cloned, you want to first run the command here.

Speaker 0: 00:06:56

This CH mod uh so this CH mod is essentially going to make this an executable.

Speaker 0: 00:07:12

So you'll be able to start running um all of the different demos uh from one command.

Speaker 0: 00:07:18

So you just um Do that command to make it executable.

Speaker 0: 00:07:22

Then you run the actual start workshop script.

Speaker 0: 00:07:26

And if you did that, you should see this setup.

Speaker 0: 00:07:31

And then that's when you will be able to go to, on your browser, just look up localhost 8999 and then the part zero set up.

Speaker 0: 00:07:45

So let me know if anybody already was able to get their repo set up.

Speaker 0: 00:07:52

Anyone wants to raise their hand?

Speaker 0: 00:08:54

So you can Okay, so if you got that set up, you just run that script, you'll have all these different websites, HTML set up for you.

Speaker 0: 00:09:09

So at the top, you'll see this gateway.

Speaker 0: 00:09:13

Yours will probably say gateway is not running right now, but that's okay.

Speaker 0: 00:09:17

This this whole guide is basically going to walk you through all the things we're gonna need for this workshop.

Speaker 0: 00:09:23

So the first thing you're gonna download, or obviously if you don't have some of these already, you can set these up.

Speaker 0: 00:09:29

These are just the high level that most people already have with Python, if you don't have Rust, you can install that, Git.

Speaker 0: 00:09:37

And then you'll also need Docker desktop on your computer running.

Speaker 0: 00:09:42

And then the last step is the Polar.

Speaker 0: 00:09:44

So you need the Docker for the Polar, because the Polar is basically going to be running I can show you this right here.

Speaker 0: 00:09:50

So this is my local Polar setup.

Speaker 0: 00:09:52

Very simple.

Speaker 0: 00:09:54

It has a Bitcoin node, a LND node, and a Taproot Assets Daemon node.

Speaker 0: 00:10:01

So if you have your Polar set up, you can just create a new network.

Speaker 0: 00:10:07

And then you'll just say one LND node, one Taproot Assets node, and then One Bitcoin core node, and once you create that, that will start up the Docker images for you.

Speaker 0: 00:10:20

And then you can see and hear your taproot asset schema running once everything's green, that's running.

Speaker 0: 00:10:26

And then you also want to set up your auto-mining to 30 seconds, but we'll go into that in a little bit.

Speaker 0: 00:10:36

So, once you've got that set up, that's the main thing you need for getting the gateway ready.

Speaker 0: 00:10:42

The next step would be actually cloning the gateway to your computer.

Speaker 0: 00:10:48

So, that's one more repo.

Speaker 0: 00:10:56

And in order for that repo, we're going to need the If you go to your Polar setup, you'll see your Tackword Assets node and your LD node.

Speaker 0: 00:11:06

When you click into the file paths, you'll see the Macaroon.

Speaker 0: 00:11:10

So we're going to need that in just a minute.

Speaker 0: 00:11:14

When you go into here, if you click Connect, if you click on a node, you'll see down here File Paths, and you'll see Admin Macaroon.

Speaker 0: 00:11:22

So this is going to be the location of your Macaroon on your computer.

Speaker 0: 00:11:26

So you're going to need that when you set up the Actual REST gateway, because that's how the gateway speaks to your Lightning node and the tap root assets.

Speaker 0: 00:11:38

So, this is the QR code for the gateway.

Speaker 0: 00:11:41

So, this is just the one-time setup.

Speaker 0: 00:11:43

This is not for the actual workshop examples.

Speaker 0: 00:11:46

This is going to be what the workshop is using for the gateway.

Speaker 0: 00:11:50

And this is essentially what you're going to be running.

Speaker 0: 00:11:53

This is what the whole workshop is all about, this gateway that's sitting between the Taproots daemon and the browser.

Speaker 0: 00:12:00

And then we're going to use the workshop to show you how this gateway works.

Speaker 0: 00:12:07

And first we have to set it up.

Speaker 0: 00:12:09

But this is going to be that access link between the Taproot Assets daemon and your browser to be able to make all those requests for minting, receiving.

Speaker 0: 00:12:17

And sending tap radasa.

Speaker 0: 00:12:21

So you'll see this other repo.

Speaker 0: 00:12:24

So this is just the REST gateway repo.

Speaker 0: 00:12:27

You want to clone that obviously in a different directory.

Speaker 0: 00:12:31

But once you have that running, we will want to change the ENV file that you have.

Speaker 0: 00:12:42

The first thing you'd want to do is copy the existing END example.

Speaker 0: 00:12:51

So, this command here, so once you get that gateway clone into your repo, you just want to copy over the example, which is going to have all the different things you'll need.

Speaker 0: 00:13:02

This is also in the And part part three, or step three in the part zero of the workshop website, you'll see that you just want to copy over this example.

Speaker 0: 00:13:13

And this is essentially all the different configurations that your gateway is going to be using.

Speaker 0: 00:13:18

And the only thing you're going to be changing is this Macaroon piece.

Speaker 0: 00:13:23

So this is what I showed you earlier.

Speaker 0: 00:13:25

When you go to your Polar setup and you go to your Taproot Assess daemon.

Speaker 0: 00:13:30

And you look down here under file paths, you'll see your admin macaroon.

Speaker 0: 00:13:34

So you'll just copy that, and then you'll just replace this tapd macaroon path with the path on your computer.

Speaker 0: 00:13:41

And then the same thing for LND.

Speaker 0: 00:13:44

You're just gonna go to connect and get your admin macaroon path, copy that, and then paste it in the L and D Macaroon path.

Speaker 0: 00:13:54

And you don't have to change anything else.

Speaker 0: 00:13:56

Those are the only things you need to change.

Speaker 0: 00:13:58

But you're going to need that to talk to your L and D.

Speaker 0: 00:14:03

So once you have that set up, then so if you just look at your.env, it should look like this.

Speaker 0: 00:14:10

You'll have your TAPD Macaroon path.

Speaker 0: 00:14:12

So in mine, you see users Kyle, users Kyle.

Speaker 0: 00:14:15

So this is my local.

Speaker 0: 00:14:16

Everything else is the same.

Speaker 0: 00:14:18

And then I'm going to you're obviously going to need Rust installed.

Speaker 0: 00:14:22

So that's part of the part zero setup.

Speaker 0: 00:14:25

But once you have that set up, you'll just hit cargo run and what you'll see is just you'll it'll say that it's running.

Speaker 0: 00:14:34

And if you notice here where it says course origins, this is basically allowing you for those different websites that were that were running in the workshop that it can it can relay all of the Taproot assets scheme and requests to the gateway.

Speaker 0: 00:14:56

So the last thing you can do if you want, you can verify that your workshop is set up.

Speaker 0: 00:15:02

So if you have everything running properly, let's open a new tab and let's run.

Speaker 0: 00:15:08

Same thing we'd want to do the first.

Speaker 0: 00:15:10

We want to make the script executable.

Speaker 0: 00:15:14

Just do chmod plus x, and the file name.

Speaker 0: 00:15:22

And if we run it, you'll notice that it's checking: is my gateway running?

Speaker 0: 00:15:27

The gateway is running, and then it's checking that we are running all of the different websites for this workshop.

Speaker 0: 00:15:39

If you have any issues, troubleshooting in that part zero, there's some examples of issues you might run into.

Speaker 0: 00:15:46

But let's go back to the slideshow.

Speaker 0: 00:15:52

Was anybody able to get everything running?

Speaker 0: 00:15:55

Or we can just continue?

Speaker 0: 00:16:00

Okay.

Speaker 0: 00:16:02

So, the first thing we're going to do in this part one is understand why we can actually connect from a browser to the Taproot Asset scheme and to do cool things like creating an asset browser or web application using Taproot Assets.

Speaker 0: 00:16:20

And we'll go into this next piece here.

Speaker 0: 00:16:24

So in general, let's say you want to make any type of call, and you want to mint an asset, you want to send or receive an asset, and you want to make that call from your browser, you're going to see this error here.

Speaker 0: 00:16:33

And this is from that issue we discussed, versus the course policy issue, which is that the browser is not on the same port as the tapboard assets daemon.

Speaker 0: 00:16:45

And we can't always assure that we're going to be on the same port.

Speaker 0: 00:16:49

So it'll basically, the browser will just, by default, block anything that's not on the same port.

Speaker 0: 00:16:54

So we're not able to do anything from the browser to the TapRASS demon.

Speaker 0: 00:16:59

So the first thing we're going to look at is the direct API call.

Speaker 0: 00:17:03

So this is an actual call in the code.

Speaker 0: 00:17:05

And if you look at in the repo, and you open up part one, the index HTML, we're going to make an actual call here.

Speaker 0: 00:17:20

To the actual daemon.

Speaker 0: 00:17:21

So this is not even going to talk to the gateway.

Speaker 0: 00:17:23

We're actually going to just make a call and show you how this is going to fail.

Speaker 0: 00:17:26

We're just going to make a typical normal call to the daemon, which is running on 8289, port 8289.

Speaker 0: 00:17:33

And if you look at your puller setup, when you click connect, you can see that it is running on 8289 over here.

Speaker 0: 00:17:41

So, we're gonna try this call.

Speaker 0: 00:17:45

And the first thing we're gonna hit, the first barrier is that course issue.

Speaker 0: 00:17:49

So, the browser is basically, from a security perspective, blocking direct calls to the tap daemon.

Speaker 0: 00:17:54

So, that's not gonna work.

Speaker 0: 00:17:56

Let's say we get past that.

Speaker 0: 00:17:58

We can't really get past that, but just showing you that that's not the only issue.

Speaker 0: 00:18:03

The other issue is.

Speaker 0: 00:18:04

We need to have authentication for the Macaroon of the LND and the Taproot ASSIS daemon.

Speaker 0: 00:18:09

And when we make that, when we're trying to make a call, we're going to need to essentially within a web developer would have to do all of the security and authentication code within their web application to handle the admin credentials for their Lightning Node and their Taproot ASS daemon, which is obviously not what any web developer wants to do.

Speaker 0: 00:18:29

They just want to build an app.

Speaker 0: 00:18:30

So that's one issue.

Speaker 0: 00:18:32

And the other issue is the TLS certificate issue.

Speaker 0: 00:18:36

And again, this is just more work for a web developer.

Speaker 0: 00:18:39

They have to do all this setup.

Speaker 0: 00:18:41

The the hitting all these issues and it's just a lot of lot of work.

Speaker 0: 00:18:46

And you you can do it, but it's Really difficult, and you'd have to basically build your own gateway and your own authentication code and your own TLS certificate signing within your web app, which no one really wants to do.

Speaker 0: 00:19:00

So that's why I built this REST gateway, which is going to handle all the course headers properly.

Speaker 0: 00:19:05

It's going to manage your Macaroon authentication, which is what we set up in the ENV file.

Speaker 0: 00:19:11

We basically And the cores origins.

Speaker 0: 00:19:16

We basically are setting that up within the gateway so that if you're building a web application, you can just have this running in a server and call that instead of having to deal with all this yourself.

Speaker 0: 00:19:30

So going on to the next step, this is where we're going to start to have a more interactive session on the Possibilities with the gateway.

Speaker 0: 00:19:40

So, all these commands we're going to be running are going to be from the browser to show you how this gateway is working.

Speaker 0: 00:19:48

So, as you can see, we have a gateway running and we're going to make calls to it to mint an asset.

Speaker 0: 00:19:57

We're going to view the balances.

Speaker 0: 00:19:58

We're going to generate receiving addresses.

Speaker 0: 00:20:01

Then we're going to send the assets, and then we're going to talk about some of the other things like transfers and universe.

Speaker 0: 00:20:08

So the first thing is we're first going to check, can we actually call the gateway?

Speaker 0: 00:20:14

And we're just going to make a sim simple call.

Speaker 0: 00:20:16

So this is stuff that you can see.

Speaker 0: 00:20:19

If you go to your Polar, you'll be able to see this type of information from Polar.

Speaker 0: 00:20:25

But from the browser, if you tried to do this without the gateway, you would have that cores issue.

Speaker 0: 00:20:29

So right now we're actually talking not to the actual TapRASS daemon.

Speaker 0: 00:20:34

We're talking to this gateway that we're running.

Speaker 0: 00:20:38

And the gateway is acting as that proxy between the browser and the daemon, allowing us to get that data back.

Speaker 0: 00:20:47

So in this case, we want to get the block hash, the block height.

Speaker 0: 00:20:52

All the information that the taproot assets daemon has, we're going to be able to return that in the browser itself because we're talking to the gateway, not to the daemon itself.

Speaker 0: 00:21:04

So we can use this to, for example, mint an asset.

Speaker 0: 00:21:08

So let's say if we want to mint workshop coin, or I can call it Kyle Special Coin.

Speaker 0: 00:21:16

You can change the amount.

Speaker 0: 00:21:17

Let's say you want to make it 100,000.

Speaker 0: 00:21:21

And here you can change the asset type.

Speaker 0: 00:21:23

So there's fungible assets.

Speaker 0: 00:21:25

Think of like a stable coin.

Speaker 0: 00:21:27

If you have a stable coin or I have a stable coin, it's the same stable coin.

Speaker 0: 00:21:31

So if I have 10, you have 10.

Speaker 0: 00:21:33

We both have 10 of the same coin.

Speaker 0: 00:21:35

But if you have a collectible, that's a little bit different.

Speaker 0: 00:21:38

That's non-fungible.

Speaker 0: 00:21:39

So if I have one of Kyle's special coin, that's maybe the only one in existence, then you obviously wouldn't be able to have that.

Speaker 0: 00:21:46

So you can change your asset type.

Speaker 0: 00:21:48

So we're going to mint this asset.

Speaker 0: 00:21:51

And the way that it works is that we're in the background, we are on our Polar node.

Speaker 0: 00:21:57

We're setting it up to mine every 30 seconds.

Speaker 0: 00:21:59

We can also do quick mine because these have to be mined in the blockchain for these to be finalized.

Speaker 0: 00:22:07

So when minting an asset, there's first minting, which gives you this pending batch right here.

Speaker 0: 00:22:15

And then you want to finalize that batch, which is going to require the broadcasting to the network.

Speaker 0: 00:22:24

So we're going to wait either 30 seconds for a new block to be mined, or we just say quick mine.

Speaker 0: 00:22:30

And as you can see on Polar, I've just minted this Kyle Specialcoin.

Speaker 0: 00:22:35

So you can see that we just minted it from the browser.

Speaker 0: 00:22:38

You can see it in Polar, but now we're actually going to show you, we want to look at it on the browser.

Speaker 0: 00:22:45

So here you can see now that Kyle Special Coin is here.

Speaker 0: 00:22:49

You can see some of the balance.

Speaker 0: 00:22:58

You can see the balance.

Speaker 0: 00:22:59

You can see other data that is returned from the daemon.

Speaker 0: 00:23:03

This is just a bunch of JSON that is passed in from the daemon.

Speaker 0: 00:23:08

But obviously, again, we're not talking to the daemon because we can't talk to it from the browser.

Speaker 0: 00:23:12

We're talking to the gateway, and the gateway is relaying that information from the browser to the daemon and back to get this information back to the browser.

Speaker 0: 00:23:21

So we can see our, we've just minted an asset.

Speaker 0: 00:23:24

We've mined enough blocks to be able to see it.

Speaker 0: 00:23:27

We can see our balance.

Speaker 0: 00:23:29

So now let's generate a receiving address.

Speaker 0: 00:23:31

So I've already populated here the asset ID that we just created for the Kyle Special Coin.

Speaker 0: 00:23:38

We want to make a receiving address for, let's say, 100.

Speaker 0: 00:23:42

This is now sent the request to the daemon through the gateway.

Speaker 0: 00:23:47

So the address was generated, and now we can click.

Speaker 0: 00:23:51

List all of our different addresses.

Speaker 0: 00:23:53

So again, this is all being returned by the gateway from the daemon.

Speaker 0: 00:24:00

And you can see all of your list of addresses.

Speaker 0: 00:24:02

And then we can say, okay, we want to send 100.

Speaker 0: 00:24:05

We created that receiving address for 100 for Kyle Special Coin, and now we want to send it.

Speaker 0: 00:24:11

So again, we have to wait for the block to be mined.

Speaker 0: 00:24:15

So let's.

Speaker 0: 00:24:16

Do a quick bind and that should send the asset to that address that we created and in here we should see grab the asset ID So now we can see one of these should be the recipient of that transfer.

Speaker 0: 00:24:58

So that should be this one.

Speaker 0: 00:25:01

But anyways, this is essentially the the whole life cycle of an asset, minting it.
receiving it, sending it.

Speaker 0: 00:25:08

These are all the the core basic functionality of Taproot Assets that you otherwise couldn't do in a browser that you can just do with the ease of use of using the REST gateway.

Speaker 0: 00:25:19

And then you can obviously do other things in Taproot Assets.

Speaker 0: 00:25:22

There's all all sorts of features in here such as universe universes.

Speaker 0: 00:25:27

So you can see in this universe I have this Kyle special coin that we just minted.

Speaker 0: 00:25:32

So you can see all the information that you could get from the daemon.

Speaker 0: 00:25:35

You can do this all from your browser.

Speaker 0: 00:25:38

So now we're going to get into actual examples.

Speaker 0: 00:25:42

So I've shown you all the core functionality.

Speaker 0: 00:25:45

But let's actually start to think about what we could build with this.

Speaker 0: 00:25:49

So as a starter, you could have a portfolio, for example.

Speaker 0: 00:25:56

So, and we'll get into that in a second.

Speaker 0: 00:26:00

But just to go at a high level again to understand, we basically have the REST gateway that solves a lot of these issues.

Speaker 0: 00:26:09

What are these issues?

Speaker 0: 00:26:11

We went through the cores error, which is cross-origin resource sharing.

Speaker 0: 00:26:15

This is a security issue with browsers.

Speaker 0: 00:26:19

We basically allowed us to bypass this through the gateway.

Speaker 0: 00:26:23

Same thing with the Macaroon authentication.

Speaker 0: 00:26:25

Again, a developer would have to do all these steps and complicated work to be able to do what we just did through the gateway if they wanted to do this themselves.

Speaker 0: 00:26:36

So the gateway is handling all this stuff and allowing us to use it.

Speaker 0: 00:26:42

So we went through all these cycles.

Speaker 0: 00:26:44

These are just if you wanted to do it yourself.

Speaker 0: 00:26:46

You'd want to fund your polar LND node and set up auto mining.

Speaker 0: 00:26:54

Okay.

Speaker 0: 00:26:55

So going back to this portfolio, this is just a starter example.

Speaker 0: 00:27:02

So all the code is in this repo, this web development repo.

Speaker 0: 00:27:07

If you go to part three Part 3 starter has all the code in here.

Speaker 0: 00:27:17

So you can take a look in a second.

Speaker 0: 00:27:20

I'll show you the code.

Speaker 0: 00:27:20

But basically, this is a live dashboard that shows you a portfolio of all the assets that you created.

Speaker 0: 00:27:27

And it's refreshing in real time.

Speaker 0: 00:27:29

So just the coin that we minted, the Kyle Special coin, you can see the balance here.

Speaker 0: 00:27:34

You can see the UTXOs.

Speaker 0: 00:27:36

The Genesis block that it was created, the decimal places.

Speaker 0: 00:27:39

And again, all this information is being relayed by the gateway.

Speaker 0: 00:27:44

And it's being sent from the browser request through the gateway, to the TapRodassive scheme, and then returned back to the browser so you can see this information.

Speaker 0: 00:27:57

So this is a basic portfolio dashboard that's going to.

Speaker 0: 00:28:01

Have just some information of the of all your assets that you have and the coins, the balances, and so on.

Speaker 0: 00:28:11

And then I also created a more technical demo for using it with React.

Speaker 0: 00:28:18

But let's first take a look at the The starter code.

Speaker 0: 00:28:34

Okay, so this code here that we were looking at, the starter code, this is essentially just doing like we originally tried to do where we hit the cores error.

Speaker 0: 00:28:45

But this is actually instead of going straight to the taproot assets daemon, this is going to be calling the gateway URL.

Speaker 0: 00:28:53

And this is our gateway that's running locally.

Speaker 0: 00:28:57

And you make the same exact call that you would to the taproot assets daemon, but instead of making a call to the taproot assets daemon, we're calling the gateway, and then we return the JSON information.

Speaker 0: 00:29:10

So, for example, if you want to fetch an asset, you call this and then you These are all actually the REST endpoints.

Speaker 0: 00:29:18

If you take a look in the Lightning Engineering page, there is it's not this one, but there is a whole section.

Speaker 0: 00:29:39

Oh, here it is.

Speaker 0: 00:29:40

So if you go on on the Lightning Engineering page and you go to the Taproot Assets Protocol and you go down to the REST endpoints, so this REST gateway is built in Rust and it has all of these endpoints in the gateway, so in Rust.

Speaker 0: 00:29:56

And you can call any of these the same way you'd call the actual daemon, but Obviously, instead of the daemon, you're going to be calling the gateway from your browser.

Speaker 0: 00:30:08

And so, anything that you're already working on with Taproot Assets would work here.

Speaker 0: 00:30:15

You just have to switch out the gateway and it would work through a browser.

Speaker 0: 00:30:22

So, if you already have an application that's running, let's say on Polar, for example, Polar is an application that's talking to the to this Docker image through that port.

Speaker 0: 00:30:32

Obviously, it's different than a browser application, but if you already have an application running, you would be able to use all these endpoints that are offered from Taproot Assets using.

Speaker 0: 00:30:46

So if you look at, for example, fetching the assets, fetching the balances.
same exact uh concept where we're calling the the same endpoint.

Speaker 0: 00:30:59

Uh we're just changing the gateway URL.

Speaker 0: 00:31:01

Same thing for anything you'd want in here, fetching the the node info, all of it.

Speaker 0: 00:31:06

So all the source code is in that repo.

Speaker 0: 00:31:07

You can take a look and you can start building something from that starter.

Speaker 0: 00:31:12

But I've also created a React setup that has a little bit more detail and shows you a little bit more More of the features that you can do.

Speaker 0: 00:31:23

So if you already got this set up, this is just showing you how to set up this server.

Speaker 0: 00:31:29

But I have it here locally.

Speaker 0: 00:31:31

So this is essentially just taking what we had in that starter app, this simple portfolio view of looking at your assets that you've minted.

Speaker 0: 00:31:40

But then actually creating a full dashboard for not only your portfolio, but actually being able to mint, to send, to receive, to look at your transfers, to burn.

Speaker 0: 00:31:51

And we'll go through these so you can take a look.

Speaker 0: 00:31:52

But here you can see more detail about all these different assets.

Speaker 0: 00:31:59

So you have the min hash, your script key, we'll talk about what those what those mean.

Speaker 0: 00:32:04

But at a high level, this is kind of like what we already had in the portfolio.

Speaker 0: 00:32:09

And then into the actual minting.

Speaker 0: 00:32:14

So in taproot assets, as as I went through a little bit earlier, was that there's normal assets, which are fungible.

Speaker 0: 00:32:22

And that's where you have a defined supply and that's good for stable coins or if you have a point point system, Chuck E.
Cheese.

Speaker 0: 00:32:30

Coin or whatever you want to build.

Speaker 0: 00:32:32

And then there's collectibles which are non-fungible and they have a supply of one.

Speaker 0: 00:32:37

So let's say I have a special collectible that I want to give out, but it's only one of them.

Speaker 0: 00:32:45

That would be a good use case for collectibles.

Speaker 0: 00:32:49

So in here, you would just choose, let's say, I want to make a collectible this time.

Speaker 0: 00:32:54

I want to call it Cool Chucky token.

Speaker 0: 00:33:00

And I want to say this is very special.

Speaker 0: 00:33:06

So same idea.

Speaker 0: 00:33:07

We're going to mint that and then we have to do the finalized batch.

Speaker 0: 00:33:13

And obviously there's a fee in involved for the network.

Speaker 0: 00:33:16

So we're going to finalize and send that over.

Speaker 0: 00:33:19

And it said asset mint successfully.

Speaker 0: 00:33:22

The transaction has been broadcast to the network.

Speaker 0: 00:33:25

So if we go back to our Polar setup and we do a quick mine, we just mined a block.

Speaker 0: 00:33:32

So now we see that Pool Chucky token is now available.

Speaker 0: 00:33:37

And the same information that you can see in Polar, that's pulling from the Docker image, you'd be able to see on this website.

Speaker 0: 00:33:45

Or on using the using the gateway.

Speaker 0: 00:33:50

Same thing for sending assets.

Speaker 0: 00:33:52

So now I see cool Chucky token.

Speaker 0: 00:33:55

You can send it to any recipient.

Speaker 0: 00:33:58

So this is pretty self-explanatory.

Speaker 0: 00:34:02

Receiving, we talked about this as well in part two.

Speaker 0: 00:34:09

Transfers, so same idea.

Speaker 0: 00:34:11

This is where you can see all of your received transfers or sent transfers.

Speaker 0: 00:34:16

So in here, you can see which block we've sent tokens out and how much the fees were at that time and the hash.

Speaker 0: 00:34:31

You can also burn assets.

Speaker 0: 00:34:32

So in the taproot assets protocol.

Speaker 0: 00:34:35

You're able to, depending on if you have a normal or a non-fungible token, you can decrease the total supply to create scarcity or deflationary pressure.

Speaker 0: 00:34:47

You can also do cleanup.

Speaker 0: 00:34:48

So let's say I made the Chuck E.
Special token and I want to delete that or remove it from the network.

Speaker 0: 00:34:55

I can use this burning functionality to get rid of it.

Speaker 0: 00:34:59

So let's say The cool Chucky token.

Speaker 0: 00:35:03

I want to get rid of the cool Chucky token.

Speaker 0: 00:35:06

I'm going to say it sucks.

Speaker 0: 00:35:11

And I'm going to say burn.

Speaker 0: 00:35:15

So now these are burnt.

Speaker 0: 00:35:17

And if I mine a block, should be deleted.

Speaker 0: 00:35:32

Well, yeah, so it should it should burn the the asset that you that you selected and this is obviously uh non re uh not reversible.

Speaker 0: 00:35:42

So once you burn an asset, you won't be able to to get it back.

Speaker 0: 00:35:47

So you'll have to mint whatever that asset is.

Speaker 0: 00:35:50

Um going on to the network, so Not only do your daemon has certain information, your taproot assets daemon, including the version of your taproot assets daemon, the network type, and the identity keys for your node.

Speaker 0: 00:36:06

There's also the universe, which is where you can have global statistics for all the assets in that universe, the different groups, the syncs, and the proof.

Speaker 0: 00:36:17

So this is where you can see like this is my I'm running uh 19.2-beta.

Speaker 0: 00:36:22

Uh this is the network I'm on.

Speaker 0: 00:36:24

Uh this is the L and D node that the Taproot Assets Demon is running on and this is the uh Taproot Demon uh Taproot Demon version that I'm running.

Speaker 0: 00:36:33

Uh in my universe I have five assets.

Speaker 0: 00:36:37

You can see all these different uh all the proofs for my assets.

Speaker 0: 00:36:41

You can see my distribution.

Speaker 0: 00:36:45

And then going on to the universe, in Teprod Assets, there's the the Universe protocol, which allows for asset discovery and verification.

Speaker 0: 00:36:55

So there's these these federation servers that connect to other universe nodes to discover and sync assets across the network.

Speaker 0: 00:37:03

There's a universe sync.
which pulls assets from remote servers to discover new assets and verify proofs.

Speaker 0: 00:37:10

And then there's the universe roots, which are the miracle tree roots to provide cryptographic verification of all the assets in that universe.

Speaker 0: 00:37:18

So if you want to start testing with your own universe, there's a bunch of different testnet universe service servers that you can take a look at that have public testnet assets.

Speaker 0: 00:37:27

So in here, I'm currently connected to the Taproot Assets Daemon on that port 8289.

Speaker 0: 00:37:34

That's going to be the universe I'm connected to.

Speaker 0: 00:37:37

I could connect to a federation if I want to, and I could take a look at the roots.

Speaker 0: 00:37:42

And in here, you can see all the different tokens that I've minted.

Speaker 0: 00:37:46

So, for example, this cool Chucky token has all the roots and the information that you get from the Taproot Assets Demon.

Speaker 0: 00:37:58

Then you can also take a look at the proofs of your assets.

Speaker 0: 00:38:01

So the Taproot Assets Protocol uses different cryptographic proofs to verify asset ownership and your transaction history.

Speaker 0: 00:38:08

So you can take a look at all the proofs that you have.

Speaker 0: 00:38:12

You can decode them and look at their structure, their witnesses and metadata details.

Speaker 0: 00:38:17

You can verify your proofs for authenticity and who owns what asset.

Speaker 0: 00:38:22

And then you can export them and extract the proof files for your assets, which you can share with somebody else.

Speaker 0: 00:38:28

So for example, with Kyle Special Coin, I'm exporting my proofs.

Speaker 0: 00:38:34

So I can prove that I own these.

Speaker 0: 00:38:39

You can verify proofs.

Speaker 0: 00:38:43

You can decode proof.

Speaker 0: 00:38:44

So these are all, again, part of this.

Speaker 0: 00:38:48

Part of these endpoints here that you can see in the Lightning Lab Steproot Assets Protocol website.

Speaker 0: 00:38:56

These are all the endpoints we're hitting.

Speaker 0: 00:38:58

So, if you ever want to see what you're capable of doing, just go here.

Speaker 0: 00:39:02

This is really the exact same setup.

Speaker 0: 00:39:06

You're just doing it from a browser.
your wallet, you can see your your keys, you can manage your keys, um your your script keys, there's uh ownership proof.

Speaker 0: 00:39:21

So you can generate an internal key, for example.

Speaker 0: 00:39:25

Generate your script key, and then you can prove your ownership that you um that you actually own one of the but uh same idea, these are using the The same endpoints we looked at before for the Taproot Assets Protocol.

Speaker 0: 00:39:41

And then something that's cool with Taproot Assets is just like any other market, you have the ability for request for quote or RFQ protocol, which allows for peer-to-peer asset trading over the Lightning Network.

Speaker 0: 00:39:54

So I think if I want to buy Kyle Special token, somebody else wants to buy it, maybe I want to sell it, you'd use this protocol for peer-to-peer asset trading.

Speaker 0: 00:40:09

There are some important aspects that you need to know about RFQ.

Speaker 0: 00:40:18

You have to broadcast your offers to other nodes.

Speaker 0: 00:40:23

In order to see quotes, you need to be connected to other peer nodes that have created their own buy and sell offers.

Speaker 0: 00:40:29

And And in general, if I have in my universe an asset and I want to sell it, but I'm not connected to any peer that wants to buy it, then obviously there's no way that we're going to make a trade.

Speaker 0: 00:40:42

So that's why you you would connect to an actual universe.

Speaker 0: 00:40:46

If if if there's an asset that you want to, let's say a stable coin that's on a universe and somebody else wants to buy that for me, I can go on there.

Speaker 0: 00:40:53

We're both connected to the universe and then we can Create a peer-to-peer transaction in that way through the offers with the request for quote.

Speaker 0: 00:41:02

So, the same idea here: you'd be able to pick whichever token you're trying to buy or sell and create your quotes.

Speaker 0: 00:41:15

Obviously, they're not loading because we're not connected to another peer right now, but you get the idea that you'd be able to.

Speaker 0: 00:41:22

Uh use this to create, for example, um a public marketplace connected to universes where you could go and you could see what people are selling at a certain time and then connect to a universe where you can create uh the offers to do that um and make it easier for people to uh find uh maybe an asset that you've listed or um find liquidity for an existing token or stable coin that has been minted on uh on a universe.

Speaker 0: 00:41:50

So this this React demo example is really a good place to start in terms of seeing the possibilities here.

Speaker 0: 00:42:00

So in here I have all these different hooks.

Speaker 0: 00:42:05

So for example for transfers I'm connecting to my gateway right here and I've created an interface for All the different things that I can get out of it.

Speaker 0: 00:42:16

So I'm going to be able to call the same endpoints that we looked at in the Taproot Assets API reference and be able to make those same calls and display them on the on the browser.

Speaker 0: 00:42:33

And then for the component, same idea.

Speaker 0: 00:42:36

We are Calling that gateway for all of these all the assets that we've we've created on the on our on our gateway so again all the source code is there you can take a look and and give feedback it is an open source project so this is the Uh the main repo where you can take a look at all of the all the code.

Speaker 0: 00:43:07

There's a bunch of tests in here for all the different things you can do that covers all of the different endpoints that we looked at on the Lightning Labs Taproot Assets reference.

Speaker 0: 00:43:20

And take a look, see if if there's there's something interesting, if there's any issues or problems, make a make an issue and I can take a look at it.

Speaker 0: 00:43:35

But I think I've covered most of everything.

Speaker 0: 00:43:38

I think we can just go into if there's anybody have questions or anything they want to share.

Speaker 0: 00:43:47

I think this would be a good time to do it.

Speaker 0: 00:43:53

Any questions?

Speaker 0: 00:43:55

So right now the this gateway w can work on mainnet.

Speaker 0: 00:43:59

Right now it's working just on regtest.

Speaker 0: 00:44:00

So this would be a simple change for the .ENV.

Speaker 0: 00:44:04

You just change to from that reg test polar environment to mainnet.

Speaker 0: 00:44:11

Right now Taproot Assets is only working on L and D.

Speaker 0: 00:44:15

So for now it's it's only supporting L and D nodes.

Speaker 0: 00:44:19

We have looked at doing a hosted version.

Speaker 0: 00:44:23

It is technically possible.

Speaker 0: 00:44:25

We haven't done that yet.

Speaker 0: 00:44:26

And then if you want to make mobile apps with this, same idea, just the same with a browser.

Speaker 0: 00:44:32

You'd be able to do all of the different taproot assets, minting, receiving, sending, and so on from your mobile app.

Speaker 0: 00:44:42

So yeah, I think I've covered everything.

Speaker 0: 00:44:45

I don't think there's any reason to go any further.

Speaker 0: 00:44:49

So if you liked it, take a look at the repo, give it a star.

Speaker 0: 00:44:56

And if you have any questions, feel free to come up and ask me.

Speaker 0: 00:44:59

I'll be around for a little bit.
