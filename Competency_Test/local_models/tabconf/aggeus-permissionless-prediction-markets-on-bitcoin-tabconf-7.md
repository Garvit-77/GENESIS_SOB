---
title: "\U0001F52E\U0001F7E0 Aggeus: Permissionless Prediction Markets on Bitcoin\
  \ | TABConf 7"
speakers:
  - Super Testnet
tags: []
source_file: https://www.youtube.com/watch?v=RXF5wE8LD0Y
media: https://www.youtube.com/watch?v=RXF5wE8LD0Y
categories: []
date: '2026-02-09'
summary: "### **Executive Summary: Aggeus Protocol**\n\n**Aggeus** is a Bitcoin-native,\
  \ non-custodial protocol designed to facilitate permissionless prediction markets.\
  \ Created by the developer \"Super TestNet,\" the protocol aims to bring the functionality\
  \ of modern betting platforms to Bitcoin while maintaining the security and decentralization\
  \ of the base layer.\n\n---\n\n### **1. Solving the Limitations of Traditional DLCs**\n\
  While Discrete Log Contracts (DLCs) have long been the standard for Bitcoin-native\
  \ bets, they suffer from three major friction points that Aggeus seeks to resolve:\n\
  *   **Discovery:** The difficulty of finding a counterparty for a specific bet.\n\
  *   **Liveness:** The requirement that both parties be online simultaneously to\
  \ negotiate and sign contracts.\n*   **Illiquidity:** The \"locked-in\" nature of\
  \ traditional contracts, which prevents users from exiting their positions before\
  \ an event occurs.\n\n### **2. The Innovation: The Risk-Neutral Coordinator**\n\
  The central feature of Aggeus is the **Coordinator**, a non-custodial middleman\
  \ that acts as a matchmaker and proxy. \n*   **Proxy Contracts:** Rather than a\
  \ direct peer-to-peer bet, the Coordinator sits between participants. He enters\
  \ one contract with a \"market maker\" and an offsetting contract with a \"taker.\"\
  \n*   **Delta Neutrality:** Because the Coordinator takes both sides of the same\
  \ bet, they remain risk-neutral. They do not care about the outcome of the event;\
  \ they simply facilitate the trade and collect service fees via Lightning Network\
  \ invoices.\n*   **Non-Interactive Trading:** Users can sign a Partially Signed\
  \ Bitcoin Transaction (PSBT) and go offline. The Coordinator then finds a counterparty\
  \ and finalizes the deal, removing the \"liveness\" requirement for users.\n\n###\
  \ **3. Secondary Markets and Early Exits**\nAggeus introduces a dynamic \"secondary\
  \ market\" capability, allowing users to sell their positions before an event is\
  \ resolved:\n*   **The \"Switcheroo\":** Using a 2-of-2 multi-sig architecture,\
  \ a user can transfer their side of a contract to a new participant. \n*   **Early\
  \ Profit:** If the odds of an event shift in a user's favor, they can sell their\
  \ contract to a third party for a profit, rather than waiting for an Oracle to settle\
  \ the market. The Coordinator facilitates this by \"canceling\" the old contract\
  \ and funding a new one with the new participant.\n\n### **4. Technical Architecture\
  \ and Stack**\n*   **Bitcoin Native:** Aggeus works directly on the Bitcoin blockchain\
  \ without requiring sidechains. While the current demo uses Hash Time Locked Contracts\
  \ (HTLCs), the production version is designed for **Discreet Log Contracts (DLCs)**\
  \ for superior privacy and efficiency.\n*   **Nostr Integration:** The protocol\
  \ utilizes **Nostr** as a decentralized data layer to store market information,\
  \ backup files, and communication between participants.\n*   **Layer 2 Strategy:**\
  \ While current Lightning Network implementations lack the scripting flexibility\
  \ Aggeus requires, the protocol is highly compatible with **Ark**, a Layer 2 protocol\
  \ that supports all Bitcoin Script opcodes.\n*   **Non-Custodial Security:** The\
  \ Coordinator never has custody of user funds. They only possess the power to execute\
  \ state changes based on pre-signed user transactions.\n\n### **5. Economic Model\
  \ and Philosophy**\n*   **Incentives:** The Coordinator is incentivized to complete\
  \ trades to avoid being financially \"on the hook\" and to collect Lightning fees\
  \ for \"fronting\" the collateral needed to bridge the two sides of a bet.\n*  \
  \ **The Oracle Problem:** Aggeus does not claim to solve the \"Oracle Problem\"\
  \ (the risk of an oracle reporting false data). It relies on existing mitigations,\
  \ such as using honest oracles or multi-oracle aggregates.\n*   **Public Domain:**\
  \ In the spirit of open-source development, Super TestNet has dedicated the Aggeus\
  \ code to the public domain, encouraging others to build commercial products on\
  \ top of the framework.\n\n### **Conclusion**\nAggeus represents a significant step\
  \ forward for Bitcoin smart contracts. By introducing a non-custodial coordinator\
  \ to manage liquidity and matchmaking, it transforms the rigid DLC model into a\
  \ flexible, liquid, and user-friendly prediction market ecosystem\u2014all while\
  \ remaining firmly rooted in Bitcoin\u2019s security model."
conference: TABConf 7
topics:
  - Prediction Markets
  - DLC
  - Lightning Network
  - PSBT
  - Privacy
youtube:
  description: "\U0001F4CC Learn more about this talk on GitHub: \u2B50\uFE0F\U0001F419\
    \nhttps://github.com/TABConf/7.tabconf.com/issues/93\n\n\U0001F52E\U0001F7E0 Super\
    \ Testnet discusses Aggeus\nAn open protocol for building permissionless prediction\
    \ markets on Bitcoin \u26A1\uFE0F\U0001F4C8\n\n\U0001F9E9 Aggeus combines ideas\
    \ from:\n\U0001F91D DLCs\n\u26A1\uFE0F Lightning\n\U0001F9FE PSBT auctions\n\u2026\
    to enable markets where Bitcoin is the only asset used \U0001F7E0\u2705\n\n\U0001F9F1\
    \U0001F6AB No other blockchains required\nNo separate authentication systems\n\
    No custodians needed\nUnless you count DLC constrained addresses as \u201Csemi\
    \ custodial\u201D by design \U0001F9E0\U0001F510\n\n\U0001F576\uFE0F\U0001F5E3\
    \uFE0F The result\nAnyone can create prediction markets and trade contracts pseudonymously\n\
    Open participation, Bitcoin native rails, and a different way to coordinate information\
    \ and risk \U0001F9E9\U0001F50D\n\n\u26A1\uFE0F\U0001F6E0\uFE0F\u26A1\uFE0F\U0001F6E0\
    \uFE0F\u26A1\uFE0F\U0001F6E0\uFE0F\u26A1\uFE0F\U0001F6E0\uFE0F\u26A1\uFE0F\U0001F6E0\
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
    - DLC
    - lightning
    - blockchain
    - custodian
    - protocol
    - privacy
    - developer
  categories:
    - Science & Technology
  channel_name: TABConf
transcript_by: your_username via tstbtc v1.0.0
---

Speaker 0: 00:00:00

Alright, everybody ready to learn about Agius?

Speaker 0: 00:00:03

Excellent.

Speaker 0: 00:00:04

Alright, everyone having a good time at BitDev, it's not BitDevs, at TabConf.

Speaker 0: 00:00:10

Awesome.

Speaker 0: 00:00:10

Yeah, I love TabConf.

Speaker 0: 00:00:12

This is a great place.

Speaker 0: 00:00:13

Today I'm going to be talking about Agius, which is a protocol I made for creating prediction markets on Bitcoin without needing permission to do it.

Speaker 0: 00:00:22

And I think that's really cool.

Speaker 0: 00:00:23

So I'm going to talk about how it works.

Speaker 0: 00:00:25

Uh we're gonna go over DLCs, which are the foundation of this and the problems that they have and how I'm I'm gonna go over how I want them to work.

Speaker 0: 00:00:33

This they're gonna be the desired UI up there.

Speaker 0: 00:00:36

I'm gonna go over a high level pro overview of how my protocol works and then after I do the high level overview we're gonna do a more detailed one and we're gonna look at into the coordinator who helps this thing happen, how trading works in this system.

Speaker 0: 00:00:49

And then the market resolution.

Speaker 0: 00:00:51

What happens when it's time to resolve the market and the Oracle reveals the data?

Speaker 0: 00:00:57

So let's start with DLCs and their problems, what they are.

Speaker 0: 00:01:01

So DLC typically starts out like this.

Speaker 0: 00:01:03

We're going to have Kelly and John as the counterparties.

Speaker 0: 00:01:05

Kelly thinks the Republican is going to win the re election.

Speaker 0: 00:01:08

And John, he's going to be voting on the Democrat, or at least he thinks the Democrat's going to win.

Speaker 0: 00:01:13

And then there's going to be some sort of oracle, maybe it's CNDC, and they say we're going to reveal the winner at some point in the future, probably like the day after the election or something like that.

Speaker 0: 00:01:23

With me so far?

Speaker 0: 00:01:25

Typical DLC.

Speaker 0: 00:01:27

Typical DLC-like smart contract, don't snicker.

Speaker 0: 00:01:31

I know some of you are looking at this and you're like, that's not a DLC.

Speaker 0: 00:01:34

I'll get to that.

Speaker 0: 00:01:35

A typical DLC-like contract is represented in Bitcoin script, or could be represented in Bitcoin script this way.

Speaker 0: 00:01:42

We've got to fill in the blank situation.

Speaker 0: 00:01:44

There are two branches: there's a Kelly branch, see the one that says Kelly's pub key, and then there's a branch for John, it says John's pub key.

Speaker 0: 00:01:51

You can see those.

Speaker 0: 00:01:52

Both of them have a fill-in-the-blank situation.

Speaker 0: 00:01:54

They need the oracle to reveal some piece of data.

Speaker 0: 00:01:57

We call it a pre-image.

Speaker 0: 00:01:58

I think of it like a password.

Speaker 0: 00:01:59

It's gonna reveal a password for if the uh if the Republican wins and a different one for if the Democrat wins.

Speaker 0: 00:02:08

They have to get the password and run it through a hashing function.

Speaker 0: 00:02:10

That's op SHA256 up there.

Speaker 0: 00:02:13

And check if it was yes, the Republican won, or no, the Republican did not win.

Speaker 0: 00:02:18

And once they have that, one of them gets to withdraw the money.

Speaker 0: 00:02:22

Either Kelly can withdraw using the yes branch, or John can withdraw using the no branch.

Speaker 0: 00:02:28

Now, some of you are looking at that and you're saying, that's not a DLC, that's a hash lock.

Speaker 0: 00:02:34

And you're right, it is a hash lock.

Speaker 0: 00:02:35

In my implementation, And in my uh demo code, and in and in this thing I'm gonna pretend they're hash locks, because hash locks are easier to implement than DLCs.

Speaker 0: 00:02:45

But in a real implementation, you would use DLCs because they're more efficient than this, and you get much less data going on the blockchain.

Speaker 0: 00:02:52

Um but I like this easier because I think it's easier to explain how it works.

Speaker 0: 00:02:56

The Oracle's gonna reveal a secret and we're going to hash it and see whether it's yes or whether it corresponds to yes or no.

Speaker 0: 00:03:03

So, that is a DLC.

Speaker 0: 00:03:05

They have, or well, it's not a DLC, it's a hashlock, but whatever, they have the same effect.

Speaker 0: 00:03:11

They have some problems.

Speaker 0: 00:03:12

And one of the problems is Kelly doesn't know who her counterparty is right at the beginning.

Speaker 0: 00:03:17

So, let's say I'm Kelly.

Speaker 0: 00:03:19

I want to bet that the Republican's going to win the election.

Speaker 0: 00:03:23

I have to find John.

Speaker 0: 00:03:25

Who's my counterparty?

Speaker 0: 00:03:26

Is it you?

Speaker 0: 00:03:27

Do you want to bet that the Democrat will win?

Speaker 0: 00:03:29

Oh, he okay, he says he does.

Speaker 0: 00:03:31

You're supposed to say no.
Say no, not me.

Speaker 0: 00:03:32

What about you?

Speaker 0: 00:03:33

Do you want to bet on the Democrat will win?

Speaker 0: 00:03:35

No, you don't think so?

Speaker 0: 00:03:36

It's hard to find someone who you want to do this with.

Speaker 0: 00:03:39

Sometimes you'll see this on Twitter.

Speaker 0: 00:03:42

What's up, Michael?

Speaker 0: 00:03:44

Oh, he wants to do it.

Speaker 0: 00:03:45

No, I'm just I'm not looking for someone right now.

Speaker 0: 00:03:47

I'm just saying there's a difficulty of finding a counterparty.

Speaker 0: 00:03:50

Sometimes you'll see this on Twitter.

Speaker 0: 00:03:52

You'll see somebody post like, I made a bet with so-and-so, and we're gonna use so third party as the escrow for this contract.

Speaker 0: 00:04:01

They found each other, and it's like a problem to do that.

Speaker 0: 00:04:05

They have to agree on the terms.

Speaker 0: 00:04:06

Maybe if I wanna bet 10,000, but he wants to bet 15,000.

Speaker 0: 00:04:10

Uh Satoshi's.

Speaker 0: 00:04:12

That's different.

Speaker 0: 00:04:14

That's different.

Speaker 0: 00:04:15

And so we have to come to agree on how much we're gonna put into this contract.

Speaker 0: 00:04:18

You have to fund the contract simultaneously, so there's like a liveness problem with the LCs.

Speaker 0: 00:04:23

And it's not easy to sell your position.

Speaker 0: 00:04:25

And that sucks.

Speaker 0: 00:04:26

So if if, like, say, I bet on the Republican when he was at 30%, and now he's at 60%.

Speaker 0: 00:04:34

Maybe I want to leave that position and take my earnings and like pass it off to somebody else.

Speaker 0: 00:04:39

But it's hard to do that with DLCs because of this smart contract.

Speaker 0: 00:04:45

Your public keys are in the contract.

Speaker 0: 00:04:47

Actually in a DLC they would be you'd be using multi-party computation for this, but you can in the hashlock version it's easier to see that their pub keys have to be in the contract in advance and it's hard to change that after the fact.

Speaker 0: 00:04:59

You with me why DLCs are problematic?

Speaker 0: 00:05:02

Or at least hash locks?

Speaker 0: 00:05:03

What's up?

Speaker 0: 00:05:08

Well, if I if I put my money in there and then he's my counterparty, he could just not fund it.

Speaker 0: 00:05:14

And now he gets my money if he wins with no loss if he loses.

Speaker 0: 00:05:18

So you have to fund it simultaneously using like a PSBT and that requires you to both be well it doesn't require you to be online at the same time, but you have to like come online at different you've it's it's it's hard.

Speaker 0: 00:05:29

Okay, so the what I wish it was, this is how I wish prediction markets worked.

Speaker 0: 00:05:34

Uh you go to a website and you see two QR codes, one for the Republican, one for the Democrat.

Speaker 0: 00:05:39

It tells you what the current you know polling things are and then you can just send money to whichever one Whichever side you think is more likely to win.

Speaker 0: 00:05:49

That's how I wish it was.

Speaker 0: 00:05:50

You don't have to find someone, like the website already knows everything.

Speaker 0: 00:05:55

And then you haven't earned anything yet, but a little bit later, you know, maybe you bet on you, maybe you sent money to the Democrat and he rose in the polls, and now you've gained some money.

Speaker 0: 00:06:05

Like, you've earned something for.

Speaker 0: 00:06:08

Betting he would increase in odds, and you were correct.

Speaker 0: 00:06:11

So you should be able to withdraw and not have to wait for resolution day, not have to wait for the election to be over to take your money out.

Speaker 0: 00:06:18

You should just be able to withdraw as soon as you sho showed that you were more correct than the other guy.

Speaker 0: 00:06:23

That's how I wish it worked.

Speaker 0: 00:06:25

Uh and DLCs, it's really hard to do that because of all the problems I uh mentioned.

Speaker 0: 00:06:30

Okay, so before I continue with the detailed overview of my of how my protocol works, a friend of mine, after I explained it to him, he made like uh he made a uh diagram.

Speaker 0: 00:06:42

And so I want to go over the diagram before we continue.

Speaker 0: 00:06:46

So let me X out of where's the diagram?

Speaker 0: 00:06:50

I think it's this one.
Yeah.

Speaker 0: 00:06:52

So he made this little diagram.

Speaker 0: 00:06:54

Sometimes it's helpful to hear things twice.

Speaker 0: 00:06:56

So I'm going to go over this diagram quickly of how my protocol works.

Speaker 0: 00:07:00

And I think this one will be more confusing because I'm going to go over it quickly.

Speaker 0: 00:07:05

Then I'm going to do the more detailed overview in my slideshow.

Speaker 0: 00:07:09

And sometimes it helps people to hear it twice.

Speaker 0: 00:07:11

So you'll get to see the same thing twice, but once with a with a pretty diagram and then again with my um slideshow.

Speaker 0: 00:07:18

So the protocol has f five parties involved, which means it's a complicated protocol.

Speaker 0: 00:07:24

But we've got Kelly, she's going to be the market maker, she's going to create some kind of offer, and she is going to be 70% confident that the Republican is going to win the election.

Speaker 0: 00:07:34

In this example, of course, she could have a different con confidence interval, uh confidence level.

Speaker 0: 00:07:39

We're also going to have the coordinator.

Speaker 0: 00:07:41

He's going to be a non-custodial proxy.

Speaker 0: 00:07:43

He's going to facilitate trades between Kelly and whoever is going to take her position, which in this case is going to be John.

Speaker 0: 00:07:49

He is going to buy into the position that Kelly makes an offer for.

Speaker 0: 00:07:53

So she's going to say, you will get, or she's 70% confident that the Republican's going to win.

Speaker 0: 00:08:00

So if she's wrong, she loses 7,000 sets.

Speaker 0: 00:08:03

And he is going to get that money, but he has to pay to get into this contract, and she will gain 3,000 sets, which is 30%, if she's correct, 30% of the stake.

Speaker 0: 00:08:15

Then we're going to have Tommy come along, and he's going to want to buy John's position.

Speaker 0: 00:08:19

Like, John's going to list it for sale, because maybe the thing rose in the polls, and Tommy's going to buy it, and we're going to have an Oracle at the end reveal who actually won the election and see what happens then.

Speaker 0: 00:08:32

So, phase one is market making, and Kelly is going to create an initial contract, which is going to deposit 10,000 sats into.

Speaker 0: 00:08:43

And she's going to sign a transaction allowing the coordinator to change the state of this contract if he finds a counterparty for Kelly.

Speaker 0: 00:08:49

And that's his role.

Speaker 0: 00:08:50

He's going to be a matchmaker.

Speaker 0: 00:08:51

He's going to find someone to take the other side of Kelly's bet.

Speaker 0: 00:08:56

Kelly then can go offline.

Speaker 0: 00:08:57

She's already funded the contract.

Speaker 0: 00:08:58

She's signed the transaction that allows the coordinator.

Speaker 0: 00:09:01

To update the state of the contract, she's allowed to go offline.

Speaker 0: 00:09:04

She can come back later to see if she made any money, which is a great property I want.

Speaker 0: 00:09:08

It reduces the liveness assumptions.

Speaker 0: 00:09:11

Smart contract is going to have 10,000 sets in it.

Speaker 0: 00:09:15

Then, Uh we're gonna have John come along and he's gonna wanna take the other side of the trade.

Speaker 0: 00:09:21

Well, the coordinator is gonna act as a proxy between them.

Speaker 0: 00:09:23

He's going to use Kelly's pre-signed transaction to send Kelly 3,000 sats immediately.

Speaker 0: 00:09:30

That's her reward for creating an attractive offer.

Speaker 0: 00:09:35

Then he's going to move Kelly's 10,000 sats into a contract state where Kelly has a DLC with the coordinator.

Speaker 0: 00:09:43

And the coordinator has a DLC with John.

Speaker 0: 00:09:46

And he's going to take both sides of the bet, so that if the Republican wins, he's going to make $10,000 in his contract with John, and he's going to lose $10,000 in his contract with Kelly, and vice versa, if the other side wins.

Speaker 0: 00:09:59

And that means that the coordinator never loses any money in this thing.

Speaker 0: 00:10:04

So, then we're gonna pretend that the Democrat rises in the polls.

Speaker 0: 00:10:09

Maybe he's doing better.

Speaker 0: 00:10:11

So, John decides he wants to sell his contract, just like I showed in the desired UI.

Speaker 0: 00:10:16

He's allowed to leave before resolution day, as long as he can find someone who wants his offer.

Speaker 0: 00:10:22

So, he's gonna sign a new transaction with the coordinator that says you're allowed to cancel our contract.

Speaker 0: 00:10:28

As long as you pay me more money than I originally started out with.

Speaker 0: 00:10:33

And then the coordinator's gonna list this offer for sale.

Speaker 0: 00:10:36

He's gonna say, if I can find someone who wants to buy into this position, I will sell it to you.

Speaker 0: 00:10:41

And once he finds someone, he has the already signed transaction by John that lets him cancel his contract and place the new one with the new guy, who's gonna be Tommy.

Speaker 0: 00:10:51

That allows John to leave ahead of time, leave before the contract resolves, as long as the matchmaker finds someone to take his place.

Speaker 0: 00:10:59

And he can get profit from selling his position.

Speaker 0: 00:11:04

Eventually, the market resolves.

Speaker 0: 00:11:07

One of the candidates wins the election.

Speaker 0: 00:11:09

If the Republican wins, then Kelly is going to get 10,000 sats out of her contract, the 10,000 she put into it.
which means she ends up with a 3K profit.

Speaker 0: 00:11:20

She got 3K from selling her contract earlier, and then she gets back the 10K she put into the contract.

Speaker 0: 00:11:25

That is a 30% gain, which makes sense because she said she was 70% confident, so she should only gain 30% if she's right.

Speaker 0: 00:11:33

Tommy loses his 4K stake.

Speaker 0: 00:11:37

He lost in his contract, so he paid 4,000 sats for this contract.

Speaker 0: 00:11:43

To get a potential winnings of 10,000 sats, but he doesn't get any, sadly, because he lost.

Speaker 0: 00:11:48

And so sad for Tommy.

Speaker 0: 00:11:49

Meanwhile, the coordinator breaks even.

Speaker 0: 00:11:52

If no is revealed, if the Oracle says yeah, the Democrat won the election, that means Kelly was wrong.

Speaker 0: 00:11:59

She keeps the 3,000 sats she got earlier, but she loses the 10,000 sats that was in her contract, so her net is a 7,000 sat loss, which is 70%.

Speaker 0: 00:12:08

Makes sense.

Speaker 0: 00:12:09

She said she was 70% confident the Republican was going to win and she was going to be able to get a little bit She lost, so she should lose 7,000 sats.

Speaker 0: 00:12:15

Now, Tommy, who bought this contract for 4,000 sats, well, he gets 10,000 sats out of it, so he ends up with a 6,000 sat profit.

Speaker 0: 00:12:23

And that's great.

Speaker 0: 00:12:24

That's what should happen.

Speaker 0: 00:12:26

So that is the basics of the protocol.

Speaker 0: 00:12:29

That is the fast version.

Speaker 0: 00:12:30

Now, I'm going to go through it more slowly.

Speaker 0: 00:12:32

So if you found that thoroughly confusing.

Speaker 0: 00:12:35

Get ready, it'll get worse.

Speaker 0: 00:12:37

Uh but there are some key innovations with this.

Speaker 0: 00:12:39

This allows you to trade things non-interactively, which is how they do it on other blockchains.

Speaker 0: 00:12:44

Users can go offline after creating their positions, they can come back later to see if they made any money.

Speaker 0: 00:12:48

The coordinator never holds any user funds, but he has partially signed Bitcoin transactions, and he can finalize things and update states on behalf of the users while they're gone, which is nice.

Speaker 0: 00:13:00

You can do trading of your position.

Speaker 0: 00:13:02

You can say, I bought in at this level, and then things rose or fell, and now I want to leave with the difference, which is great, as long as you can find someone willing to do it.

Speaker 0: 00:13:11

Or as long as the coordinator can find someone willing to take the other side of your trade.

Speaker 0: 00:13:16

It's Bitcoin native.

Speaker 0: 00:13:17

I don't use any like Stacks or BitVM or anything for this.

Speaker 0: 00:13:21

I'm just doing it all directly on Bitcoin.

Speaker 0: 00:13:24

And there's an oracle, uh, which is normal.

Speaker 0: 00:13:28

Uh, everything in Bitcoin that us that does this type of thing has an oracle somewhere.

Speaker 0: 00:13:33

Okay, that's the high-level overview.

Speaker 0: 00:13:34

Now I will go into the more detailed specification of the protocol, and uh let's do that.

Speaker 0: 00:13:42

So, we're going to talk about how the coordinator works.

Speaker 0: 00:13:45

Kelly decides she is 70% confident that the Republican is going to win the election.

Speaker 0: 00:13:51

So, she's going to make an offer.

Speaker 0: 00:13:55

She's going to say the coordinator is my proxy for this contract.

Speaker 0: 00:13:58

He is allowed to move 10,000 sets of my money into the smart contract, the one we looked at earlier.

Speaker 0: 00:14:06

Uh and he's allowed to do that whenever he wants, but only if he pays me 3,000 sats.

Speaker 0: 00:14:11

We can represent this contract in a partially signed Bitcoin transaction, and it looks like this.
10,000 sats are gonna come from one of Kelly's UTXOs, 3,000 sats are gonna come from the proxy, i.e.
the coordinator, and as outputs of this partially signed Bitcoin transaction, 3,000 sats are gonna go to Kelly, and 10,000 sats are going to go to the smart contract.

Speaker 0: 00:14:32

Kelly signs this partially signed Bitcoin transaction, gives it to the coordinator.

Speaker 0: 00:14:36

He can co-sign it and fund the contract whenever he wants.

Speaker 0: 00:14:39

He has what we call an option.

Speaker 0: 00:14:43

What Kelly saw when making this contract is not quite the same as my desired interface.

Speaker 0: 00:14:48

I'm not able to get all the way there.

Speaker 0: 00:14:50

But here's how I can get there so far.

Speaker 0: 00:14:53

She can see two options.

Speaker 0: 00:14:55

She can bet on the Republican, or she can bet on the Democrat.

Speaker 0: 00:14:57

She can click a button to create a contract.

Speaker 0: 00:15:00

So far, she has no money.

Speaker 0: 00:15:02

If she clicks create a contract on the Republican, she can send money into this QR code that is actually just going into an address that she controls.

Speaker 0: 00:15:11

But once the website detects the money, then it'll create the partially signed Bitcoin transaction for her, and she can sign it.

Speaker 0: 00:15:21

So this works.

Speaker 0: 00:15:23

I have this part implemented in my demo, which I'll get to later.

Speaker 0: 00:15:27

There is a modification to the smart contract.

Speaker 0: 00:15:30

John hasn't showed up yet.

Speaker 0: 00:15:31

She hasn't found a counterparty yet.

Speaker 0: 00:15:33

So instead of John being John's public key, we put the proxy's public key instead.

Speaker 0: 00:15:39

The only difference between this smart contract and the previous one is that the repo the proxy replaces John.

Speaker 0: 00:15:44

And this contract hasn't been funded yet.

Speaker 0: 00:15:47

He just has a partially signed Bitcoin transaction from her that allows him to sign the other half and complete it.

Speaker 0: 00:15:53

You have a question?

Speaker 0: 00:16:02

Yeah, yeah.

Speaker 0: 00:16:03

The question is, in order for him not to lose money, it is important that he not fund this contract, where he has money on the line, until he has found a counterparty for her.

Speaker 0: 00:16:12

And that's correct.

Speaker 0: 00:16:13

So I will show you that next.

Speaker 0: 00:16:14

That is the next part of what happens.

Speaker 0: 00:16:16

He's going to find someone to take the other side of this contract.

Speaker 0: 00:16:19

He does that in the form of advertising.

Speaker 0: 00:16:22

He's got a website, he can put offers on it.

Speaker 0: 00:16:24

So he's going to make a listing, an advertisement, and it's going to say, someone wants to bet that the Republican will win.

Speaker 0: 00:16:30

If you pay them 3,000 sats, you get a chance to win 10,000 sats.

Speaker 0: 00:16:35

And this ad represents Kelly's confidence that there's a 70% chance of a Republican victory.

Speaker 0: 00:16:41

How does it represent that?

Speaker 0: 00:16:43

Because she put 10,000 in and she loses 7,000 of it if she's wrong.

Speaker 0: 00:16:47

So it represents 70%.

Speaker 0: 00:16:49

This is how we can represent differential confidence levels in Bitcoin.

Speaker 0: 00:16:56

Using signatures to encode different possibilities depending on the outcome.

Speaker 0: 00:17:01

Now, how does the UI look like if John comes online?

Speaker 0: 00:17:03

Well, he comes with the same website, but it looks a little different now.

Speaker 0: 00:17:06

There's actually contracts.

Speaker 0: 00:17:08

There's at least one contract for sale where he is allowed to bet on the Democrat by taking the other side of Kelly's contract.

Speaker 0: 00:17:16

We can now detect what the current status of the Chances are, we can see that the Republican rose in his chances and the Democrat fell in his chances.

Speaker 0: 00:17:27

We can actually see that directly in the offers that are being listed for sale and the signatures and Bitcoin transactions that are on the blockchain.

Speaker 0: 00:17:37

We can see what the percentage chances are according to the current state of the market.

Speaker 0: 00:17:42

And if he says, oh, that's too low, I think the Democrat's going to win.

Speaker 0: 00:17:46

Or is it more likely than that?

Speaker 0: 00:17:48

He can bet on the Democrat winning.

Speaker 0: 00:17:51

He can pay 3,000 sats to fund a partially signed Bitcoin transaction.

Speaker 0: 00:17:56

And if he wins, if he takes the other side of this contract, then he will get 10,000 sats, which is great.

Speaker 0: 00:18:02

That's what he wants to happen.

Speaker 0: 00:18:04

Now, where does the 3,000 sats go?

Speaker 0: 00:18:06

You might wonder.

Speaker 0: 00:18:07

Well, if it becomes an input to another PSBT, if the coordinator co-signs this new partially signed Bitcoin transaction, Then the 3,000 sats goes to the proxy, but the proxy has to put 10,000 sats into a new smart contract with John.

Speaker 0: 00:18:23

So he's just proxying the, he's proxying the Kelly's contract over to John.
10,000 sats are gonna come from the proxy, 3,000 sats are gonna come from John, 3,000 sats are gonna go to the proxy, 10,000 sats are gonna go to the smart contract, and we have the same smart contract as before, only now the proxy has replaced Kelly.

Speaker 0: 00:18:42

And John is on the other side.

Speaker 0: 00:18:46

Did you notice the switcheroo?

Speaker 0: 00:18:48

This is how we do proxying in this situation.

Speaker 0: 00:18:52

Kelly wanted to bet on the Republican, John wanted to bet on the Democrat.

Speaker 0: 00:18:55

The proxy did not care either way.

Speaker 0: 00:18:57

He just wants to make sure he doesn't lose any money in this thing.

Speaker 0: 00:19:00

So Kelly gave the proxy an option to bet on the Democrat and win 10,000 sets if the Democrat wins.

Speaker 0: 00:19:07

He doesn't want to do that though until, like you said, until he finds someone who wants to take the other side.

Speaker 0: 00:19:12

So he looks for John, he places the ad, John shows up, says, I want to do this.

Speaker 0: 00:19:17

He gave the proxy an option to bet on the Republican and win 10,000 stats if the Republican wins.

Speaker 0: 00:19:21

We represent all of this in partially signed Bitcoin transactions.

Speaker 0: 00:19:25

Once he's found them, he can co-sign both Bitcoin transactions, fund both smart contracts.

Speaker 0: 00:19:30

And now we're in this situation.

Speaker 0: 00:19:31

He got paid 3,000 sats from John, but it effectively went to Kelly.

Speaker 0: 00:19:35

And they both have a smart contract worth 10,000 sats to them if they are correct in their prediction.

Speaker 0: 00:19:41

So, this allows us to get around the fact that in DLCs, normally you have to find someone in advance and then put them in the smart contract.

Speaker 0: 00:19:49

By adding a coordinator, we eliminate that problem.

Speaker 0: 00:19:52

One of our problems with DLCs is solved.

Speaker 0: 00:19:55

Great.

Speaker 0: 00:19:56

How does the UI look for Kelly now?

Speaker 0: 00:19:58

Well, she bet on the Republicans, so if she comes back to this website, it will show her.

Speaker 0: 00:20:03

You bet on the Republican.

Speaker 0: 00:20:04

She has the option of selling her contract.

Speaker 0: 00:20:06

Currently, there's a 70% chance she's going to win, according to what we can see on the blockchain.

Speaker 0: 00:20:12

So far, she has earned 3,000 sets.

Speaker 0: 00:20:14

She got 3,000 sets from John, effectively, who took the other side of her contract.

Speaker 0: 00:20:21

She can withdraw that right now.

Speaker 0: 00:20:23

But yeah, what she really wants is to get her 10,000 back, so that she ends up with 3,000 sets of profit.

Speaker 0: 00:20:29

That would be great.

Speaker 0: 00:20:30

That's what she wants.

Speaker 0: 00:20:31

She hasn't profited yet, but she can withdraw the 3,000 sats she got from John.

Speaker 0: 00:20:37

What does it look like for John?

Speaker 0: 00:20:38

Well, he bet on the Democrat.

Speaker 0: 00:20:39

If he comes back, he has the option to sell his contract.

Speaker 0: 00:20:42

He has not earned anything so far.

Speaker 0: 00:20:44

He's just paid 3,000 sats to get into this position.

Speaker 0: 00:20:48

But, you know, he can wait and see what happens later.

Speaker 0: 00:20:50

Or he can sell his contract.

Speaker 0: 00:20:53

Now let's suppose later arrives and uh the Democrat gains in the polls and he's currently at 38%.

Speaker 0: 00:20:59

He's up from thirty thirty percent earlier.

Speaker 0: 00:21:02

Well what happens if John decides to click sell?

Speaker 0: 00:21:04

I will tell you after I answer this gentleman's question.

Speaker 0: 00:21:07

Before you get to that sir, the current uh four years has above that you've recovered from Yes, um Kelly put 10,000 sets into this smart contract and the coordinator put 10,000 sets into this smart contract.

Speaker 0: 00:21:26

Out of his own wallet, yeah.

Speaker 0: 00:21:29

Because he knows that if he loses in this one, he will win in this one, so it's a wash for him.

Speaker 0: 00:21:33

But he still has to be practicing.

Speaker 0: 00:21:38

Yeah, an unfortunate effect of this protocol is that the contracts have to uh there's effectively an over collateralization of 100%.

Speaker 0: 00:21:46

If there's going to be 10,000 sats at stake, he has to put 10,000 sats into the other side in order to make it so that you don't have to know your party ahead of time.

Speaker 0: 00:21:55

And he would probably charge some fee for providing this service.

Speaker 0: 00:21:58

You got a question?

Speaker 0: 00:22:02

Yeah, you just charge a fee for it, and that is what we typically do in L2 systems in Bitcoin anyway.

Speaker 0: 00:22:07

Okay, cool.

Speaker 0: 00:22:10

Uh so later the Democrat rises in the polls.

Speaker 0: 00:22:12

John wants to sell his position.

Speaker 0: 00:22:14

What happens if he clicks sell?

Speaker 0: 00:22:16

Well, he can enter his new price that he wants to sell his position at.

Speaker 0: 00:22:20

Let's say it's 4,000 sets.

Speaker 0: 00:22:22

If somebody buys his new contract, he will get 1,000 sats.

Speaker 0: 00:22:26

And how do we represent this in a partially signed Bitcoin transaction?

Speaker 0: 00:22:30

We just sign a new one.

Speaker 0: 00:22:33

John is now 40% confident that the Democrat will win.

Speaker 0: 00:22:36

He says, if the coordinator pays me 4,000 sats, he can take the rest of the money in the smart contract.

Speaker 0: 00:22:42

He creates and signs a partially signed Bitcoin transaction that lets the coordinator do this.

Speaker 0: 00:22:46

And once he's signed it, he can go offline.

Speaker 0: 00:22:48

The coordinator has everything he needs to finalize the state if he finds someone.

Speaker 0: 00:22:53

What are the inputs?

Speaker 0: 00:22:54

Well, the 10,000 sats from John's smart contract with the coordinator.

Speaker 0: 00:22:59

And the outputs of this PSBT are 4,000 sats are going to go to John.

Speaker 0: 00:23:03

The rest is going to go to the coordinator.

Speaker 0: 00:23:06

Every AgES contra smart contract has a 2 of 2 clause in it for this purpose so that you can change the terms of the contract later.

Speaker 0: 00:23:14

I didn't show that when I showed the smart contract, but they all have a 2 of 2 multi-sig clause so that you can change the state of the smart contract later if you need to.

Speaker 0: 00:23:22

So, uh look now the advertiser or the coordinator publishes an advertisement.

Speaker 0: 00:23:27

His advertisement says somebody wants to sell their Democrat will win contract.

Speaker 0: 00:23:31

If you pay them 4,000 sets, you get a chance to win 10,000 sets, which is what John had before.

Speaker 0: 00:23:37

So, now we're going to suppose somebody named Tommy decides he wants to buy this contract.

Speaker 0: 00:23:42

He's going to pay 4,000 sats to get into John's position.

Speaker 0: 00:23:46

And then the coordinator is going to co-sign this PSBT and make it happen.

Speaker 0: 00:23:52

Once again, there's a new switcheroo.

Speaker 0: 00:23:55

John wanted to sell his position, Tommy wanted to buy it.

Speaker 0: 00:23:59

The proxy effectively just passes the money from Tommy to John.

Speaker 0: 00:24:03

The proxy does not lose any money in this process because he's going to cancel this smart contract.

Speaker 0: 00:24:08

He's going to get the 6,000

Speaker 1: 00:24:10

Sat C, or he's

Speaker 0: 00:24:10

going to

Speaker 1: 00:24:11

get the money out of it.

Speaker 1: 00:24:12

But he's going

Speaker 0: 00:24:13

to fund this one.

Speaker 0: 00:24:15

So his position hasn't changed.

Speaker 0: 00:24:17

He still is on the hook for 10,000 stats in his contract with Tommy, with a potential gain of 10,000 stats in his contract with Kelly.

Speaker 0: 00:24:25

So he's in the same position he was in before, but he's swapped 4,000 stats to John.

Speaker 0: 00:24:32

So now John gets to see on his side, you know, you sold your contract.

Speaker 0: 00:24:36

Somebody.

Speaker 0: 00:24:36

Somebody bought it for 3,000 sats or 4,000 sats and he earned 1,000 sats total.

Speaker 0: 00:24:43

And that's great.

Speaker 0: 00:24:43

He predicted correctly that the Democrat would rise in the polls, and so he gets a little bit of profit for doing that.

Speaker 0: 00:24:49

Great.

Speaker 0: 00:24:51

He can withdraw before resolution day, as long as someone is willing to take the other side of his contract.

Speaker 0: 00:24:57

Now let's see what happens when the market resolves.

Speaker 0: 00:24:59

Well, the history of the market was Kelly put 10,000 stats into a smart contract and earned 3,000 sets when John bought that position.

Speaker 0: 00:25:07

John then sold his position for 4,000 stats and thus earned 1,000 sets.

Speaker 0: 00:25:11

And then Tommy bought John's position for 4,000 sets and he can win 10,000.

Speaker 0: 00:25:16

The possible outcomes are, if the Republican wins, Kelly gets her 10,000 sats back.

Speaker 0: 00:25:21

She already has 3,000 from when John bought it, so she ends up with 30% profit, which is just what she should expect when she was 70% confident.

Speaker 0: 00:25:29

The proxy loses in that contract, so he gets nothing out of it.

Speaker 0: 00:25:33

Tommy loses in his contract, so he gets nothing.

Speaker 0: 00:25:36

But the proxy who put the 10,000 sats into his contract with Tommy gets that 10,000 sats back.

Speaker 0: 00:25:41

And there's no loss for him.

Speaker 0: 00:25:43

If the Democrat wins, then Ken, I said Ken, that's supposed to be Kelly, not Ken.

Speaker 0: 00:25:48

Earlier, Kelly was a guy.

Speaker 0: 00:25:52

Kelly loses 7,000 sats.

Speaker 0: 00:25:55

Actually, I'm just going to change that real quick.

Speaker 0: 00:25:57

I'm just going to change Ken to Kelly.

Speaker 0: 00:26:02

Oh, that screws it up.
Eh.
Ken can she can be Ken for now.

Speaker 0: 00:26:08

Uh okay, so that is what happens.

Speaker 0: 00:26:10

Uh so that is the protocol.

Speaker 0: 00:26:12

That is an overview of it.

Speaker 0: 00:26:13

Uh we can do QA now and then I'm gonna do a demo of what I got working.

Speaker 0: 00:26:17

It doesn't all work but half half of over half about 60% of it does.

Speaker 0: 00:26:23

Uh so do we have any questions before I do the demo?

Speaker 0: 00:26:26

What's up?

Speaker 0: 00:26:33

The question is, after I've explained how to do it on the base layer, is it possible to lift this onto Lightning?

Speaker 0: 00:26:39

Yes, it is.

Speaker 0: 00:26:41

Anything you can do on the base layer, you can you can theoretically do on Lightning, but you'd need to update the implementations to allow you to do something other than just withdraw my money.
other than just withdraw my money, the Lightning implementations as they exist so far do not seem to give you much scripting capability to modify the terms of your HTLC.

Speaker 0: 00:27:01

But in theory you can.

Speaker 0: 00:27:03

I also think it'd be worth doing this on Arc because Arc was designed with With the ability to support all of the opcodes that Bitcoin script supports.

Speaker 0: 00:27:13

So, you could do all this on Arc more easily because you wouldn't have to modify the software to make it work.

Speaker 0: 00:27:18

So, I think doing it on Arc would be easier.

Speaker 0: 00:27:21

But you could do it on both.

Speaker 0: 00:27:22

You could do it on Lightning, you could do it on Arc.

Speaker 0: 00:27:24

I have an in-progress implementation of a Layer 2 version of this.

Speaker 0: 00:27:29

It has some trade-offs, at least the way that I've figured out how to design it.

Speaker 0: 00:27:34

It introduces new liveness assumptions.

Speaker 0: 00:27:37

When somebody buys a position, they sign a new state for their channel and they have to revoke that state, or otherwise they can get forced cl uh otherwise they're like liable to get force closed.

Speaker 0: 00:27:47

So they after so after they've updated it and then they go away, they have to come back later to see if somebody bought their position and then update it again to the to resolve to the new state.

Speaker 0: 00:27:57

It's kind of annoying, but it's not that big of a trade-off.

Speaker 0: 00:28:00

You just have to remember to come back online, otherwise he'll force close.

Speaker 0: 00:28:04

You won't lose any money, but you'll lose your channel, which is annoying.

Speaker 0: 00:28:08

So it introduces a few new Leibniz assumptions, but it does it does work theoretically on layer two.

Speaker 0: 00:28:14

Any other questions?

Speaker 0: 00:28:15

What's up?

Speaker 0: 00:28:24

It's probably possible.

Speaker 0: 00:28:25

I haven't thought about it.

Speaker 0: 00:28:26

So I don't know.

Speaker 0: 00:28:28

Pull requests welcome to figure out a way to do that.

Speaker 0: 00:28:31

I think it it sounds possible.

Speaker 0: 00:28:34

Usually you can think of these as binary options.

Speaker 0: 00:28:37

And usually you can make additional options by just extending the number of binary options.

Speaker 0: 00:28:43

But I don't know.

Speaker 0: 00:28:44

I haven't thought deeply into it, but intuitively it should be possible.

Speaker 0: 00:28:48

You got a question?

Speaker 0: 00:28:57

Yeah, you could use like USDT or something instead of Bitcoin.

Speaker 0: 00:29:00

I I think USDT is stupid.

Speaker 0: 00:29:02

I recommend just using Bitcoin.

Speaker 0: 00:29:05

Another question?

Speaker 0: 00:29:14

But the coordinator is one of the parties in this.

Speaker 0: 00:29:17

He's a party to both contracts.

Speaker 0: 00:29:23

You absolutely can use DLCs.

Speaker 0: 00:29:25

In a real implementation, you probably would use DLCs.

Speaker 0: 00:29:27

The only reason I use hash locks instead is because they're easier.

Speaker 0: 00:29:30

They're easier to implement and they're easier to understand too.

Speaker 0: 00:29:32

You don't have to go into like how key tweaking works and all that stuff.

Speaker 0: 00:29:36

And key aggregation and multi-party computation.

Speaker 0: 00:29:39

So I just did HTLCs for the demo, but in a real implementation it would be DLCs.

Speaker 0: 00:29:43

They could you can do uh anything you can do with a hash lock you can do with DLCs more efficiently.

Speaker 0: 00:29:47

Just more complicatedly.

Speaker 0: 00:29:48

Any other questions?

Speaker 0: 00:29:50

Got one?

Speaker 0: 00:29:51

What inspired the name of the map?

Speaker 0: 00:29:53

Oh, Agius.

Speaker 0: 00:29:54

Why is it called Ageus?

Speaker 0: 00:29:55

Uh it is named after a biblical prophet.

Speaker 0: 00:30:01

I don't know if it's going to show up.

Speaker 0: 00:30:02

My internet's kind of being slow.

Speaker 0: 00:30:04

But this guy, Agai, is one of the biblical prophets.

Speaker 0: 00:30:07

He is particularly known for making prophecies about the economic state of Israel.

Speaker 0: 00:30:13

If you want to read his book, it's only two chapters, so you can start reading the Bible, just reading this guy's book.

Speaker 0: 00:30:18

I wanted to name it after him because he's known for.

Speaker 0: 00:30:21

Making prophecies about economic conditions, and that's what prediction markets do.

Speaker 0: 00:30:24

Um, but I didn't like his name.

Speaker 0: 00:30:26

I think his name is pronounced Agai, but I've always said He Gai, and I didn't want it to be to be, I didn't like that, so I kind of looked up how to spell his name in other languages, and I found that his Latin spelling is Ageus, and I thought that sounds cool, so that's why I named it that.

Speaker 0: 00:30:40

So it's named after him.

Speaker 0: 00:30:41

Oh, yeah, look at that, Agai or Ageus.

Speaker 0: 00:30:44

There we go.

Speaker 0: 00:30:54

Oh, I I don't have a commercializ uh the question is what's my commercialization plan?

Speaker 0: 00:30:57

Hi, I'm Super TestNet.

Speaker 0: 00:30:59

I do not make money.

Speaker 0: 00:31:00

Uh I make stuff for free and put it online and I make it public domain.

Speaker 0: 00:31:04

I hereby dedicate the code, the protocol and the implementation into the public domain.

Speaker 0: 00:31:08

Any of you can go make millions of dollars off of it.

Speaker 0: 00:31:10

Don't involve me in that.

Speaker 0: 00:31:11

I just want to make cool things.

Speaker 0: 00:31:13

I'm happy to help though.

Speaker 0: 00:31:14

If you want help making it, I'm happy to provide guidance.

Speaker 0: 00:31:17

What's up?

Speaker 0: 00:31:27

I think that I couldn't entirely hear the question.

Speaker 0: 00:31:29

It sounded like you said, is this illegal?

Speaker 0: 00:31:41

Yeah, I don't know.

Speaker 0: 00:31:42

I don't know what the law says about this.

Speaker 0: 00:31:43

I I'm I like that it's non-custodial.

Speaker 0: 00:31:45

The coordinator does not have custody of user funds.

Speaker 0: 00:31:48

That's cool.

Speaker 0: 00:31:49

I don't know if the law says you that sometimes they have strange laws where they're like, you have to do it anyway.

Speaker 0: 00:31:55

Ev even though you don't have custody, you still have to do KYC on everyone and all that stuff.

Speaker 0: 00:31:58

I don't know what the laws are.

Speaker 0: 00:32:00

What's up?

Speaker 0: 00:32:04

Have the activity of that's involved in like publishing of an offer, like remaining aware of the offer on something other than a website such that the website in a way that coinator isn't exposing themselves after the consultant.

Speaker 0: 00:32:30

Is there a way to provide additional anonymity to the coordinator?

Speaker 0: 00:32:33

Yeah, probably.

Speaker 0: 00:32:34

But he has to have some sort of way of communicating with people.

Speaker 0: 00:32:40

So he's got to have some way of sending messages out and reliably expecting people to see them.

Speaker 0: 00:32:45

So I don't think he can be like constantly switching his key, which is a way that we typically try to achieve privacy, is never reuse your keys.

Speaker 0: 00:32:53

I think he kind of has to reuse his key, at least to sign messages, so that people can subscribe to a feed of offers of some sort.

Speaker 0: 00:32:59

I don't know, I haven't given much thought to how to ana anon anonymize him.

Speaker 0: 00:33:04

Another question?

Speaker 0: 00:33:06

Coordinator has to put up uh has the most liquidity available.

Speaker 0: 00:33:09

Do you give an example to everybody ten thousand the contract?

Speaker 0: 00:33:14

No, uh he's only putting ten thousand into one contract.

Speaker 0: 00:33:17

Yeah, so if I go back to uh the slide where he did the first switcheroo uh Kelly puts ten thousand into this contract, which goes to him if Kelly loses.

Speaker 0: 00:33:30

He puts 10,000 sets into this contract, which goes to this guy if the coordinator loses.

Speaker 0: 00:33:36

And that way he's always got to watch.

Speaker 0: 00:33:38

But that means he has he he funds this one but he does not need to fund this one.

Speaker 0: 00:33:47

Protocol but because of that liquidity it has to be a lot of stuff.

Speaker 0: 00:33:51

They're gonna want something better to pay off that name to track.

Speaker 0: 00:33:56

So that AI protocol would be like uh three hundred.

Speaker 0: 00:34:03

Yes, you can do it that way.

Speaker 0: 00:34:04

The way I do it in my demo is I have him give her a lightning invoice along with um all of his uh messages to her uh or one of his messages to her and then she has to pay that invoice otherwise he won't list her contract.

Speaker 0: 00:34:16

And then the same for Tommy.

Speaker 0: 00:34:18

When Tommy comes online he says pay me to do this thing with you otherwise I won't do it and that's how he can make money and cover the the cost of affronting the capital.

Speaker 0: 00:34:35

No, uh through the magic of uh atomic swaps, he can't uh he can't take the money without funding the smart contract.

Speaker 0: 00:34:42

So that see my Papa Swap demo for how I do that.

Speaker 0: 00:34:45

Uh but yeah, there you can you can make it so that you can atomically trade a on-chain Bitcoin transaction for a layer two payment and that's what I do.

Speaker 0: 00:34:53

In this protocol.

Speaker 0: 00:34:55

Question?

Speaker 0: 00:35:00

The question is, if you do another if you do a transfer, if we go from John to Tommy, is it another on-chain transaction?

Speaker 0: 00:35:06

Yes.

Speaker 0: 00:35:07

But that is also why I have a layer two design.

Speaker 0: 00:35:10

If you do it on layer two, then it's not an on-chain transaction.

Speaker 0: 00:35:12

It's a layer two transaction, and those tend to be really much cheaper.

Speaker 0: 00:35:17

Any other questions before we get to the demo?

Speaker 0: 00:35:19

You got one?

Speaker 0: 00:35:19

What's up?

Speaker 0: 00:35:31

I think so.

Speaker 0: 00:35:32

The question is can you have some s can you have s I think the question is can you have some way of crowdfunding this side of the smart contract so that the coordinator doesn't have to front the money?

Speaker 0: 00:35:40

Maybe, I haven't I haven't thought about that, but theoretically you could do some sort of coin join and have people get payouts if the they they it's like a bunch of coordinators who each contribute a small share and then they get payouts later.

Speaker 0: 00:35:51

Could probably do that.

Speaker 0: 00:35:52

I haven't thought about it.

Speaker 0: 00:35:54

That's kind of a cool idea.

Speaker 0: 00:35:58

Uh ready for the demo?

Speaker 0: 00:35:59

Wanna see the you wanna see the code?

Speaker 0: 00:36:00

Oh, we got one more?

Speaker 0: 00:36:10

Yeah, the question is: what about the Oracle problem?

Speaker 0: 00:36:12

I don't solve the Oracle problem.

Speaker 0: 00:36:14

The Oracle problem has a number of facets, but an Oracle can lie.

Speaker 0: 00:36:17

An Oracle can say the Democrat won, even if the Democrat didn't win.

Speaker 0: 00:36:22

And I don't I don't know what to do about that.

Speaker 0: 00:36:24

Another thing they can do is just disappear.

Speaker 0: 00:36:26

They can just not reveal anything.

Speaker 0: 00:36:27

And then you should each of these has a two of two clause, so you can kind of.
try and reset your money if they agree on some kind of reset way to do it, but it's really sucky if the coordinator disappears.

Speaker 0: 00:36:38

Some mitigations for that that other protocols have suggested is like have three oracles and any one of them can reveal the outcome.

Speaker 0: 00:36:47

But then like what if they disagree?

Speaker 0: 00:36:48

It becomes a thing.

Speaker 0: 00:36:49

So I don't know how to solve the oracle problem.

Speaker 0: 00:36:52

I didn't try to solve the oracle problem.

Speaker 0: 00:36:53

Just we assume the oracle's honest.

Speaker 0: 00:36:56

For this protocol.

Speaker 0: 00:36:57

And if there are ways to make him more likely to be honest, there might be ways to do that, but I don't know what they are.

Speaker 0: 00:37:07

Uh okay, I'm gonna do a demo now and uh I thought my demo would be in a lot further along than it is.

Speaker 0: 00:37:13

It's only like sixty percent ready.

Speaker 0: 00:37:15

Um but we're gonna do it.

Speaker 0: 00:37:17

Uh also before I do the demo I'm gonna tell you about my testnet.

Speaker 0: 00:37:21

Um I'm gonna do the demo on my testnet, Super's testnet.

Speaker 0: 00:37:25

And uh this is Super's testnet, uh the testnet generator.

Speaker 0: 00:37:29

Anyone can make a testnet with this.

Speaker 0: 00:37:31

Uh you can generate blocks At the speed of whatever you want to however you want to do it.

Speaker 0: 00:37:36

And every time you do, you'll get 50 bitcoins, 50 fake testnet bitcoins.

Speaker 0: 00:37:41

And uh this supports bitcoin scripts.

Speaker 0: 00:37:43

You can do bitcoin scripts in this.

Speaker 0: 00:37:45

Um you can also do stuff like generate a block every half second and just look at that blockchain go.

Speaker 0: 00:37:51

It's nice.

Speaker 0: 00:37:53

Uh so now I have 550 bitcoins.

Speaker 0: 00:37:55

And for every block you can click it and then examine all the transactions inside of it and stuff like that.

Speaker 0: 00:38:00

So I use this testnet to test things so that I never run out of coins.

Speaker 0: 00:38:04

And that's a nice property of it.

Speaker 0: 00:38:06

Let me refresh it, get back to starting state zero.

Speaker 0: 00:38:11

And we're gonna do this.

Speaker 0: 00:38:12

So the protocol, or the implementation of the protocol, certainly doesn't look very pretty.

Speaker 0: 00:38:18

It never does with me.

Speaker 0: 00:38:19

I always make things that look at this hideous design.

Speaker 0: 00:38:21

But there's three roles in it.

Speaker 0: 00:38:24

There's the Oracle, the Coordinator, and the Market, or the buyers and sellers, market participants.

Speaker 0: 00:38:30

So I'm going to open up three tabs to represent these people.

Speaker 0: 00:38:33

First, we're going to click and we're going to be an Oracle.

Speaker 0: 00:38:35

And we're going to make a contract or make a market that says, will the Republican Win against the Democrat.

Speaker 0: 00:38:45

At block height 10, we're gonna resolve the contract.

Speaker 0: 00:38:48

So that's they're gonna have use that to encode their contracts.

Speaker 0: 00:38:52

And we need to pick a coordinator for this market.

Speaker 0: 00:38:55

So I'm gonna enter a coordinator.

Speaker 0: 00:38:57

The coordinator needs to make lightning invoices, so I have him plug in an NWC string, Nostra Wallet Connect.

Speaker 0: 00:39:03

Doesn't need permissions for like spending though, because he's just receiving money into his Lightning Wallet.

Speaker 0: 00:39:07

So that's nice.

Speaker 0: 00:39:07

It doesn't it's no uh he's not giving anything to this website.

Speaker 0: 00:39:11

Um we're gonna get his coordinator ID and paste it into here.

Speaker 0: 00:39:15

And here's the market.

Speaker 0: 00:39:16

The market says will the Republican win against the Democrat?

Speaker 0: 00:39:20

We're gonna answer that whether Oracle's gonna reveal yes or no to that.

Speaker 0: 00:39:23

And uh he's got this thing called shareable data.

Speaker 0: 00:39:26

This would be some somewhere in like a URL parameter or kind of in the back end of the website.

Speaker 0: 00:39:31

Users would be downloading this content and parsing it to see what the market is about.

Speaker 0: 00:39:35

And eventually he's going to either reveal yes or he's going to reveal no.

Speaker 0: 00:39:39

These are the pre-images.

Speaker 0: 00:39:40

In a DLC context, these would be private keys.

Speaker 0: 00:39:43

Um well they would be signatures and the S value would constitute effectively a private key.

Speaker 0: 00:39:47

Anyway uh we're gonna do we're gonna reveal yes or no later.

Speaker 0: 00:39:50

So that's what the Oracle's job is.

Speaker 0: 00:39:52

Create the market and then say whether he's gonna reveal yes or no or he's going to hear the reason.

Speaker 0: 00:39:57

Is going to reveal yes or no later.

Speaker 0: 00:39:59

The coordinator's role is he's going to help people create these offers.

Speaker 0: 00:40:03

So

Speaker 1: 00:40:03

he's just got a button to do

Speaker 0: 00:40:04

that.

Speaker 0: 00:40:05

And then we've got the market makers.

Speaker 0: 00:40:07

So we're going to click view a market.

Speaker 0: 00:40:10

It's going to ask us to enter this thing.

Speaker 0: 00:40:14

On a real website, this would be like embedded into the website.

Speaker 0: 00:40:16

You click a button and it would just load this content for you.

Speaker 0: 00:40:20

Uh I have him paste it directly from the Oracle because I'm lazy.

Speaker 0: 00:40:25

Uh so he can see what the market is all about.

Speaker 0: 00:40:27

He can see that there are currently no offers in this marketplace.

Speaker 0: 00:40:30

He's gonna make one.

Speaker 0: 00:40:31

This would be him clicking the button and paying money into a QR code, but I'm doing it manually.

Speaker 0: 00:40:37

So he's gonna select yes.

Speaker 0: 00:40:38

He wants he thinks the or this is Kelly, I suppose, Kelly thinks the Republican is going to win.

Speaker 0: 00:40:44

Let's say she's 70% confident.

Speaker 0: 00:40:46

And she wants to create one offer at this rate.

Speaker 0: 00:40:50

She could make more, and then she'd just have to pay more.

Speaker 0: 00:40:53

But I'm going to have her just do one for simplicity.

Speaker 0: 00:40:57

Send 10,500 SATs to the address in your console.

Speaker 0: 00:41:00

So I have to open up my browser console.

Speaker 0: 00:41:03

And I know this everyone's like, this is ridiculous.

Speaker 0: 00:41:05

No one's gonna use this.

Speaker 0: 00:41:07

This is not how it would look, obviously, in a real world thing.

Speaker 0: 00:41:09

But I'm lazy and don't make things complete.

Speaker 0: 00:41:12

Uh all right, so she's gonna send money into this thing.

Speaker 0: 00:41:15

What's up?

Speaker 0: 00:41:21

Yeah, it's just I just that's all I did.

Speaker 0: 00:41:23

Uh but it doesn't you know you it just the Oracle just needs to get data to people somehow to say this is what I'm gonna this is what the market is about and what I'm gonna reveal.

Speaker 0: 00:41:31

So it doesn't have to be JSON encoded or base64 encoded or whatever, just some way to get p the info to the people.

Speaker 0: 00:41:38

Uh okay, so I'm going to send 10,500 sets into this address.

Speaker 0: 00:41:43

The extra 500 sets is for mining fees.

Speaker 0: 00:41:47

And I'm going to use a fee rate of one set per byte.

Speaker 0: 00:41:50

And here is my transaction.

Speaker 0: 00:41:52

It sends money straight from my Coinbase, which is a 50 Coinbase input, into well, to Kelly.

Speaker 0: 00:41:59

Gives her 10,500 sats.

Speaker 0: 00:42:01

Okay, so what is the TXID of this?

Speaker 0: 00:42:03

It is right here.

Speaker 0: 00:42:06

Copy that.

Speaker 0: 00:42:08

Kelly wants to know the transaction ID.

Speaker 0: 00:42:10

That's what it is.

Speaker 0: 00:42:11

The V out, if you've never heard of V outs before, it is the in it's the transact transaction, every transaction sends money to an address, and the addresses they send to are indexed zero through n.

Speaker 0: 00:42:26

And in our case, this is the address he sent money to, and that happens to be index number zero, so it's V out zero.

Speaker 0: 00:42:32

And she needs to know that.

Speaker 0: 00:42:33

So normally she would not be manually pasting this in.

Speaker 0: 00:42:37

Her uh her wallet would just detect it on the blockchain.

Speaker 0: 00:42:39

It would detect this data.

Speaker 0: 00:42:41

And that would be that's how that would work.
10,500 sets went into it.

Speaker 0: 00:42:46

Now she is supposed to be sending this data in her console to the coordinator.

Speaker 0: 00:42:51

Uh which he which she does by he's gonna open up his browser console, click this, enter the data from Kelly.

Speaker 0: 00:42:57

This tells about this has like signatures for entering this contract and signing the partially signed Bitcoin transactions and stuff.

Speaker 0: 00:43:05

And he gets a little message.

Speaker 0: 00:43:06

It says: someone wants to create one share in the market.

Speaker 0: 00:43:09

Will the Republican win against the Democrat?

Speaker 0: 00:43:11

Tells him what Oracle it's using.

Speaker 0: 00:43:13

Do you want to help?

Speaker 0: 00:43:15

He would have some fees of software that would automatically click late yes, as long as it's an oracle that he thinks is reliable.

Speaker 0: 00:43:21

So he's gonna automatically click yes.

Speaker 0: 00:43:23

It is now getting in a lightning invoice for her to pay, because I mentioned that he needs some way to earn fees for funding the capital.

Speaker 0: 00:43:30

So he's gonna do that.

Speaker 0: 00:43:32

Send the message to the market maker.

Speaker 0: 00:43:34

That's Kelly.

Speaker 0: 00:43:36

That's great.

Speaker 0: 00:43:37

We've done that.

Speaker 0: 00:43:39

And we click OK.
Okay.

Speaker 0: 00:43:40

I did that.

Speaker 0: 00:43:42

Now it tells Kelly she needs to save a copy of her backup file.

Speaker 0: 00:43:45

The backup file is this base64 encoded thing.

Speaker 0: 00:43:48

She's supposed to save that.

Speaker 0: 00:43:50

Uh why is my computer acting weird?

Speaker 0: 00:43:55

I don't know.

Speaker 0: 00:43:55

That's not what I expected it to do.

Speaker 0: 00:43:58

I'm going to save it.

Speaker 0: 00:43:59

It's just going to be saved in my browser console right there.

Speaker 0: 00:44:02

It's saved.

Speaker 0: 00:44:03

Good enough.

Speaker 0: 00:44:04

So you're going to save that.

Speaker 0: 00:44:05

Of course, in a real context, how would you save that in a real world context?

Speaker 0: 00:44:09

You'd probably have an account on this website and it would like encrypt it and upload it or something like that.

Speaker 0: 00:44:15

What?

Speaker 0: 00:44:16

What?

Speaker 0: 00:44:17

Noster.

Speaker 0: 00:44:18

Noster.

Speaker 0: 00:44:18

Yeah, she could upload it to her Noster account.

Speaker 0: 00:44:20

That'd be a great way to save data.

Speaker 0: 00:44:22

Put it on seven relays or something.

Speaker 0: 00:44:25

Okay, so now she's got a Bitcoin transaction to con uh to broadcast.

Speaker 0: 00:44:28

So we're gonna do that.

Speaker 0: 00:44:29

And she goes over here, broadcasts the Bitcoin transaction.

Speaker 0: 00:44:33

This puts the money into well it doesn't fund the smart contract, but it funds a two of two multisig which the Coordinator can use to fund the smart contract.

Speaker 0: 00:44:44

So you can show that.

Speaker 0: 00:44:45

This is where the money lives on chain.

Speaker 0: 00:44:46

It lives in this two of two multisig between her and the coordinator.

Speaker 0: 00:44:50

So that's that's nice.

Speaker 0: 00:44:53

Save a copy of your backup file.

Speaker 0: 00:44:55

We did that.

Speaker 0: 00:44:55

She would now pay the invoice.

Speaker 0: 00:44:58

So we go to him, says click OK when the invoice is paid.

Speaker 0: 00:45:00

So he checks to see if his invoice is paid.

Speaker 0: 00:45:02

And when he's detected that this transaction is confirmed.

Speaker 0: 00:45:06

So, we're going to confirm that transaction by mining a block.

Speaker 0: 00:45:11

Generate a block.

Speaker 0: 00:45:12

Now it's in a block.

Speaker 0: 00:45:12

You can see that the transaction count in this block is higher than the previous one.

Speaker 0: 00:45:16

So he can tell it's confirmed now.

Speaker 0: 00:45:19

And that's good.

Speaker 0: 00:45:21

He's happy.

Speaker 0: 00:45:21

Congratulations, your share is listed for sale.

Speaker 0: 00:45:24

You may now go offline and come back later to see if anyone bought it.

Speaker 0: 00:45:26

You can track your share status on this page or go view your share on the public market.

Speaker 0: 00:45:31

Uh so let's go let's go view her her contract.

Speaker 0: 00:45:36

Copy this, I'm gonna refresh this.

Speaker 0: 00:45:39

Uh she can click view her shares and it's gonna load it.

Speaker 0: 00:45:42

I'm storing them on Noster, as you mentioned.

Speaker 0: 00:45:45

I'm also doing using Noster for stuff.

Speaker 0: 00:45:47

Uh so she can tell that she is in the role of a market maker.

Speaker 0: 00:45:50

The terms of her contract are she's gonna predict yes, she's waiting for a counterparty who's gonna predict no.

Speaker 0: 00:45:55

She deposited 10,000 stats and she can view on the blockchain this current status.

Speaker 0: 00:46:00

And she has a resolve button, which currently would not really work, or it shouldn't work, because market hasn't resolved yet.

Speaker 0: 00:46:07

But she has a button there in case she ever wants for use later.

Speaker 0: 00:46:11

Now we're going to go and bring up Tommy.

Speaker 0: 00:46:13

Or not Tommy.

Speaker 0: 00:46:14

We're going to bring up John, who's going to buy into her contract.

Speaker 0: 00:46:16

So he's going to view the market.

Speaker 0: 00:46:19

View the same market she was looking at.

Speaker 0: 00:46:22

Will the Republican win against the Democrat?

Speaker 0: 00:46:24

Only now, check it out.

Speaker 0: 00:46:26

There's an offer for sale, which is Kelly's.

Speaker 0: 00:46:28

So if he decides to buy this contract, then he'll be predicting no, Kelly's predicting yes.

Speaker 0: 00:46:34

And he can view on the blockchain where the money is.

Speaker 0: 00:46:37

He can check that he's going to get 3,000 sats out of it.

Speaker 0: 00:46:40

He can view the smart contract.

Speaker 0: 00:46:41

So we'll have him do that, buy the smart contract, or buy the Yeah, he is buying a smart contract.

Speaker 0: 00:46:46

Sure, that's what he's doing.

Speaker 0: 00:46:48

It asks him to tell the coordinator that he wants to do this.

Speaker 0: 00:46:52

So we go back to the coordinator, paste this.

Speaker 0: 00:46:55

It's getting an invoice from Lightning, because once again, we want him to get paid for fronting the capital.

Speaker 0: 00:47:02

Send the message to the user.

Speaker 0: 00:47:04

Okay, it's going to do that.

Speaker 0: 00:47:06

Sent the message, pay the fee invoice.

Speaker 0: 00:47:08

He's gonna click OK.

Speaker 0: 00:47:09

He's gonna pretending he paid the fee invoice.

Speaker 0: 00:47:12

And then he wants to know that 10,000 sats have entered his smart contract.

Speaker 0: 00:47:17

So it hasn't entered there yet, but we're gonna go do that on his side.

Speaker 0: 00:47:21

Click OK.

Speaker 0: 00:47:23

Pretending the fee invoice is paid.

Speaker 0: 00:47:25

Now it wants him to put money into this address.

Speaker 0: 00:47:29

So we're gonna do that.
10,000 sats go into this.

Speaker 0: 00:47:33

Send 10,000 sats into this new smart contract with a fee rate of one sat per byte.

Speaker 0: 00:47:39

We can view this, by the way.

Speaker 0: 00:47:41

That's what it looks like on the blockchain.

Speaker 0: 00:47:43

You can see the smart contract is right there, and there's the 10,000 sats that went into it.

Speaker 0: 00:47:49

Okay, so we did that.

Speaker 0: 00:47:51

That's happy.

Speaker 0: 00:47:52

And this guy says, click OK when 10,000 sats entered the smart contract.

Speaker 0: 00:47:56

Well, he can now see that on the blockchain.

Speaker 0: 00:47:58

He wants it to confirm, though, so let's confirm that.

Speaker 0: 00:48:01

Generate a block.

Speaker 0: 00:48:02

Now it's in a block.

Speaker 0: 00:48:04

Okay.

Speaker 0: 00:48:05

Pay the payment invoice.

Speaker 0: 00:48:07

So he's got a paid invoice and get its pre-image.

Speaker 0: 00:48:09

I'm just going to pretend the pre-image is this.
1, 2, 3, 4.

Speaker 0: 00:48:17

We're gonna pretend it's that uh and I'm not validating the pre-image because it's just a demo and I'm not actually paying any money for this.

Speaker 0: 00:48:24

But congratulations, you are now a counterparty in this contract.

Speaker 0: 00:48:27

It is safe to go offline and on resolution day he's supposed to come back.

Speaker 0: 00:48:31

He could also sell his contract but I haven't implemented that part yet.

Speaker 0: 00:48:34

Just he redoes a new a new PSBT.

Speaker 0: 00:48:37

But I haven't implemented that so you can't do that part yet in this demo.

Speaker 0: 00:48:40

Sorry that it's unfinished.

Speaker 0: 00:48:42

This is this is how the sausage is made.

Speaker 0: 00:48:45

But if we go back to her contract, how do I well, this status should change, but I have to refresh the page and I forgot to save her data.

Speaker 0: 00:48:58

And so I can't reload the page, otherwise I will lose her contract.

Speaker 0: 00:49:02

So I'm going to, the only difference would be if she did refresh her page, this would now say counterparty found.

Speaker 0: 00:49:08

And she can resolve the contract when it's resolution day.

Speaker 0: 00:49:11

Uh okay, so he's happy.

Speaker 0: 00:49:13

Now he's going to pay, uh he's gonna send her the money.

Speaker 0: 00:49:18

He's gonna send the money to Kelly that she gets for doing her for um fi because he found someone who wanted to buy her contract.

Speaker 0: 00:49:25

So he's gonna do that.

Speaker 0: 00:49:28

Send money to her.
4,000 cents.

Speaker 0: 00:49:33

Here is the TXID.

Speaker 0: 00:49:37

The V out's zero, the amount is 4,000.

Speaker 0: 00:49:40

That's good.

Speaker 0: 00:49:41

So now We are in both con both smart contracts are now funded, 10,000 stats in each.

Speaker 0: 00:49:49

You can see the second one here.
10,000 sets in this smart contract as well.

Speaker 0: 00:49:54

So now both sides are funded, and the coordinator is now at a position where he does not have any losses possible.

Speaker 0: 00:50:01

He will win in one and lose in the other, or vice versa.

Speaker 0: 00:50:05

If he did not do this, if he did not send her her winnings, then he would be on the hook.

Speaker 0: 00:50:09

He would potentially lose in this smart contract without getting reimbursed from this contract.

Speaker 0: 00:50:13

Contract with Kelly.

Speaker 0: 00:50:14

So that would be very unwise for him.

Speaker 0: 00:50:17

His incentives are always to make it so that he doesn't lose money.

Speaker 0: 00:50:23

Great.

Speaker 0: 00:50:23

So we're in that situation.

Speaker 0: 00:50:25

And what is we're going to pretend that we reveal yes.

Speaker 0: 00:50:28

So we're going to have her resolve the contract now.

Speaker 0: 00:50:32

And she's going to say, here is the resolution pre-image.

Speaker 0: 00:50:36

She has to enter the transaction ID that funded her smart contract.

Speaker 0: 00:50:40

That was, which one was it?

Speaker 0: 00:50:45

We generate a block.

Speaker 0: 00:50:52

This smart contract, the TX ID was this one.

Speaker 0: 00:51:01

Here it is.

Speaker 0: 00:51:04

So there it is, and now she can enter the we're pretending she won, so she's gonna enter the Bitcoin address where she wants her money to go.

Speaker 0: 00:51:10

She's gonna send it right back to this website.

Speaker 0: 00:51:14

So here's where the money's gonna go.

Speaker 0: 00:51:17

And there's her Bitcoin transaction.

Speaker 0: 00:51:18

She can broadcast it.

Speaker 0: 00:51:20

And if this works, which it did, she just finalized the smart contract.

Speaker 0: 00:51:25

She won 10,000 sets minus a 500 set mining fee.

Speaker 0: 00:51:29

And she won.

Speaker 0: 00:51:31

And the Oracle would have to do the same thing with the other guy to get his 10,000 sets out of that.

Speaker 0: 00:51:37

But I haven't implemented that, so the Oracle just YOLOs his money and then forgets it.

Speaker 0: 00:51:43

But yeah, that is the current state of the protocol.

Speaker 0: 00:51:46

And that is all.

Speaker 0: 00:51:47

That's all, folks.

Speaker 0: 00:51:48

There's the demo done.

Speaker 0: 00:51:53

Thank you all for.

Speaker 0: 00:51:54

For your kind attention and patience with me as I show my terrible code.

Speaker 0: 00:51:59

Alright.

Speaker 0: 00:52:01

Go do something else now.
