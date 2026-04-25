---
title: 'UTREEXO: Simplifying Running A Node w/ Tadge Dryja'
speakers:
  - Tadge Dryja
tags: []
source_file: https://www.youtube.com/watch?v=HGVc26A8w8E
media: https://www.youtube.com/watch?v=HGVc26A8w8E
categories: []
date: '2024-12-03'
summary: "In this transcript, Tadge Dryja, co-author of the Lightning Network, details\
  \ **Utreexo**, a project aimed at making Bitcoin full nodes more accessible and\
  \ efficient. By reimagining how nodes track unspent coins, Utreexo lowers the hardware\
  \ barriers that currently prevent many users from participating in the network.\n\
  \n### **The Motivation: Why Node Accessibility Matters**\nDryja emphasizes that\
  \ running a node is essential for two reasons:\n*   **Sovereignty and Rule Enforcement:**\
  \ Simply holding private keys is not enough to truly \"own\" your Bitcoin. A node\
  \ allows a user to independently verify the 21-million-coin cap and other network\
  \ rules without trusting a third party.\n*   **Privacy:** Without a node, users\
  \ must query external servers for their transaction history, which leaks their IP\
  \ addresses and financial data.\n\nCurrently, the primary barrier to entry is the\
  \ **UTXO set (chainstate)**\u2014the database of all unspent coins. While blockchain\
  \ history can be pruned, the UTXO set must be stored and indexed to verify new transactions.\
  \ As this set grows (currently over 12GB), it creates a resource bottleneck that\
  \ makes it difficult for low-end hardware to keep up.\n\n### **The Solution: Utreexo\u2019\
  s Cryptographic Accumulator**\nUtreexo solves the UTXO bottleneck by shifting how\
  \ data is stored and verified:\n*   **Compact Representation:** Instead of storing\
  \ the entire 12GB UTXO set, a Utreexo node uses a cryptographic accumulator (a modified\
  \ Merkle tree). This reduces the required state size to just a few megabytes.\n\
  *   **Proof-Based Validation:** The responsibility for data storage shifts to the\
  \ spender. When a user spends Bitcoin, they must provide an \"inclusion proof\"\
  \ showing their coin exists within the accumulator.\n*   **No-Fork Integration:**\
  \ Utreexo is a \"no-fork\" upgrade that works alongside the existing network. It\
  \ utilizes **\"bridge nodes\"** to act as translators, taking standard transactions\
  \ and attaching the necessary proofs so that compact Utreexo nodes can verify them.\n\
  \n### **Benefits and Technical Trade-offs**\nThe implementation of Utreexo offers\
  \ significant improvements to the network\u2019s scalability and user experience:\n\
  *   **Hardware Accessibility:** It enables full nodes to run on mobile phones or\
  \ Raspberry Pis without performance lag or heavy disk I/O requirements.\n*   **Faster\
  \ Syncing:** By allowing parallelized Initial Block Download (IBD), nodes can verify\
  \ parts of the chain history out of order, drastically reducing setup time.\n* \
  \  **The Trade-off:** The primary cost is **bandwidth overhead**. Downloading history\
  \ with Utreexo proofs requires roughly 20% more data than a standard node.\n\n###\
  \ **Current Development and Future Impact**\nUtreexo is a non-profit, open-source\
  \ project. While a functional full node (based on the `btcd` implementation) is\
  \ currently available on GitHub, Dryja notes that the project is still in the **development\
  \ and BIP-writing stage**. It is operational and demonstrates that Bitcoin can be\
  \ significantly optimized without a hard fork, but it is not yet recommended for\
  \ high-stakes production use.\n\nUltimately, by making the UTXO set easier to manage,\
  \ Utreexo could eventually make a future increase in Bitcoin\u2019s on-chain capacity\
  \ (Layer 1 scaling) more technically and economically feasible without risking network\
  \ centralization. This technical evolution sits alongside a growing interest in\
  \ Bitcoin within the corporate world, as businesses increasingly look toward the\
  \ asset for treasury management and financial strategy."
conference: The Bitcoin Conference
topics:
  - Utreexo
  - UTXO
  - Node Operation
  - Scaling
youtube:
  description: 'In this comprehensive talk, Tadge explains the technical challenges
    of current Bitcoin nodes, the elegant solution UTXO provides, and why this matters
    for Bitcoin''s future. Whether you''re a developer or just getting started with
    Bitcoin, this presentation offers valuable insights into Bitcoin''s infrastructure
    and the importance of node decentralization.


    Speaker: Tadge Dryja


    Lower your time preference and lock-in your Bitcoin 2025 conference tickets today!!!
    Use promo code BM10 for 10% off your tickets!

    Click Here: http://b.tc/conference/2025


    #Bitcoin #Cryptocurrency #BlockchainTechnology #UTXO #BitcoinNode #CryptoEducation
    #BitcoinDevelopment #Blockchain #BitcoinCore #NodeOperation #Decentralization
    #DigitalCurrency #CryptoInnovation #BitcoinInfrastructure #BlockchainScaling'
  tags:
    - Bitcoin node
    - UTXO
    - cryptocurrency
    - blockchain technology
    - Bitcoin core
    - node operation
    - Bitcoin development
    - blockchain scaling
    - Bitcoin infrastructure
    - decentralization
    - Bitcoin technical
    - crypto education
    - digital currency
    - blockchain nodes
  categories:
    - Entertainment
  channel_name: The Bitcoin Conference
transcript_by: your_username via tstbtc v1.0.0
---

Speaker 0: 00:00:00

Hi, I'm Tad Shreija.

Speaker 0: 00:00:01

Um I'm gonna talk about Utree XO and how making it easier to run a node.

Speaker 0: 00:00:05

Um whatever.

Speaker 0: 00:00:09

I can walk around, ask people questions.

Speaker 0: 00:00:11

Um yeah, so the talk's called Utree XO because you gotta run a node.

Speaker 0: 00:00:15

Um and quick intro about me, I'm Tad Shreija.

Speaker 0: 00:00:19

Um I've been working on Bitcoin for a while, I don't know, ten, twelve, thirteen years.

Speaker 0: 00:00:23

Um I've written some papers on Bitcoin like You may have heard of the Lightning Network, so I wrote that with Joseph Boone back eight years ago now.

Speaker 0: 00:00:31

Discrete log contracts, which people are maybe talking about, like DeFi stuff now, and UTRIXO as well.

Speaker 0: 00:00:36

And development and education.

Speaker 0: 00:00:38

So I've been working on this stuff for a while.

Speaker 0: 00:00:41

And I'll talk today about UTRIXO.

Speaker 0: 00:00:43

I'm put I'm putting this because basically, like, why am I here?

Speaker 0: 00:00:47

Like, why did I fly?
from America to Amsterdam and I'm jet-lagged and I'm really tired and falling asleep.

Speaker 0: 00:00:52

Well, it's because I want to talk to people.

Speaker 0: 00:00:56

I can go online and make a video and present this stuff.

Speaker 0: 00:00:59

But it's fun to go to conferences and talk to people and get people's ideas.

Speaker 0: 00:01:04

And especially sometimes there's technical conferences.

Speaker 0: 00:01:06

This one's sort of more, well I don't really know because this is the first time I've been here, but more mixed in terms of people who are interested in the technology, people who are interested in economics.

Speaker 0: 00:01:15

Cultures kind of stuff.

Speaker 0: 00:01:16

So, for example, the one in Miami, I went to a year or two ago and I wore this shirt that says Bitcoin Core.

Speaker 0: 00:01:23

And several people came and asked, What's Bitcoin Core?

Speaker 0: 00:01:25

And I was like, Oh, it's the software you can download and you run it, and that's what Bitcoin started with.

Speaker 0: 00:01:31

And they're like, Oh, and they started running it.

Speaker 0: 00:01:33

So it's like, oh, yeah, you need to learn this stuff.

Speaker 0: 00:01:36

And I think part of this is like Bitcoin's feedback mechanism isn't great.

Speaker 0: 00:01:41

There's sort of developers who work on Bitcoin Core, work on Lightning, and then there's a lot of users.

Speaker 0: 00:01:46

And a lot of times they don't interact that much.

Speaker 0: 00:01:48

It's not like a company.

Speaker 0: 00:01:49

There's no analytics in Bitcoin Core.

Speaker 0: 00:01:52

It's not like reporting back to FanQuake what you're clicking on.

Speaker 0: 00:01:58

And that's of course we're not going to put analytics in Bitcoin software.

Speaker 0: 00:02:03

But because of that, we don't really know what people are doing sometimes.

Speaker 0: 00:02:06

I think it's good to talk to people using this stuff, talk to people not using this stuff.

Speaker 0: 00:02:09

So, why aren't you using these things?

Speaker 0: 00:02:12

So, that's why I'm here.

Speaker 0: 00:02:14

So, on that note, I've seen, I don't know if anyone has this t-shirt.

Speaker 0: 00:02:20

I just made the slides this morning.

Speaker 0: 00:02:22

But I've seen this t-shirt.

Speaker 0: 00:02:23

Okay, maybe not in this room, but out there, there's people with these t-shirts, right?

Speaker 0: 00:02:26

And it's got a little infinity 21 million thing.

Speaker 0: 00:02:31

So a question, I don't know how interactive.

Speaker 0: 00:02:33

This is only like 40 people in this room, right?

Speaker 0: 00:02:35

It's not that big, so you can like yell and ask questions and stuff.

Speaker 0: 00:02:39

Yeah, so who here runs a full node?

Speaker 0: 00:02:43

Oh, shoot.

Speaker 0: 00:02:44

Well, I don't need to convince you guys anything.

Speaker 0: 00:02:46

Okay.

Speaker 0: 00:02:48

Who does not run a full node?

Speaker 0: 00:02:49

But it's like, oh, I probably should.

Speaker 0: 00:02:51

Okay, so good.

Speaker 0: 00:02:53

Okay, so maybe after this conference, you'll go home and run one.

Speaker 0: 00:02:57

Because it is kind of a pain, and what I've been working on is trying to make it less of a pain.

Speaker 0: 00:03:03

And so here's the motivation.

Speaker 0: 00:03:05

It's like, you've heard it said that, you know, not your keys, not your coins.

Speaker 0: 00:03:10

But I say to you, if you have keys without a node, what reward have you?

Speaker 0: 00:03:14

Do not even the Ethereans do the same.

Speaker 0: 00:03:17

So it's not just, you know, just having a key is really the bare minimum.

Speaker 0: 00:03:21

You need to have a node.

Speaker 0: 00:03:23

Behind this, and why?

Speaker 0: 00:03:24

So, what's the reason to run a node?

Speaker 0: 00:03:27

You enforce the rules, right?

Speaker 0: 00:03:28

This whole 21 million thing, the only reason there's 21 million is because you personally are running software that enforces that rule, right?

Speaker 0: 00:03:37

That says, okay, when you're mining a new block right now, you get, what is it, 3.125 new coins, right?

Speaker 0: 00:03:42

There's no There is code, right?

Speaker 0: 00:03:46

And you can say, oh, the code is law, it's set in stone, but it's really only if you run it.

Speaker 0: 00:03:50

If everyone's just saying, oh, I'll have an ETF, I'll use Coinbase, then that 21 million limit is easily broken, right?

Speaker 0: 00:03:57

Because you're not enforcing it yourself.

Speaker 0: 00:04:00

And what happens is, if, like, I remember the first halving when it went from 50 to 25, and I stayed up, it was like, Midnight-ish with my time zone when that happened.

Speaker 0: 00:04:11

It was around Thanksgiving 2012.

Speaker 0: 00:04:14

And I stayed up and saw this block come out, and I was like, oh, 25 bitcoins.

Speaker 0: 00:04:18

Like, it works.

Speaker 0: 00:04:20

My node wouldn't have seen that block if it weren't 25 Bitcoins.

Speaker 0: 00:04:23

So if it were 50, you just have to read about how blocks aren't coming out or something.

Speaker 0: 00:04:28

But you're the one who enforces this stuff.

Speaker 0: 00:04:31

And it's not just enforce rules like 20 million signatures.

Speaker 0: 00:04:34

It's also, you check if you're receiving Bitcoin.

Speaker 0: 00:04:39

If you're not running a node, you're sort of trusting someone to say, oh yeah, you've got this Bitcoin.

Speaker 0: 00:04:44

And especially what happens a lot with software is you're losing privacy.

Speaker 0: 00:04:48

So in the previous talk, one of the lines was like, you generate these addresses and then you query the blockchain.

Speaker 0: 00:04:54

And that's actually quite complex.

Speaker 0: 00:04:57

What does it mean to query the blockchain?

Speaker 0: 00:04:59

In many pieces of software, it just asks a server.

Speaker 0: 00:05:03

So you have some address index.

Speaker 0: 00:05:05

And so you say, hey, here's these 50 addresses I own.

Speaker 0: 00:05:09

Does any of them have any money on it?

Speaker 0: 00:05:11

And then you just ask that to the server.

Speaker 0: 00:05:13

And it's like, oh no, don't do that.

Speaker 0: 00:05:14

Because if you're asking a server that, now that server just in their logs is like, oh, here's some IP address that asks for these 50 addresses.

Speaker 0: 00:05:22

So I know all 50 of these addresses are the same person.

Speaker 0: 00:05:25

I know where they were, what time they queried it.

Speaker 0: 00:05:27

Like, you just lose all your privacy.

Speaker 0: 00:05:30

So it's really frustrating that so many pieces of software work this way.

Speaker 0: 00:05:35

So, really, the way to do it is run your own node.

Speaker 0: 00:05:37

Run your own elect you know, if you need to run your own address index, you can do that as well.

Speaker 0: 00:05:42

Okay, so run a node.

Speaker 0: 00:05:45

Seems super obvious, right?

Speaker 0: 00:05:46

But you download Bitcoin, you run it, but most people don't.

Speaker 0: 00:05:50

Probably in this room, a lot of people do, which is awesome.

Speaker 0: 00:05:52

I do as well.

Speaker 0: 00:05:53

But why don't people do this?

Speaker 0: 00:05:54

So I think actually one of the biggest is UX.

Speaker 0: 00:05:57

I've talked to a lot of people, like family members, friends, who want to, and they just get terrified.

Speaker 0: 00:06:03

They're like, okay, I'm running it.

Speaker 0: 00:06:04

What does this mean?

Speaker 0: 00:06:05

What's going on?

Speaker 0: 00:06:06

It says, do I want descriptor addresses?

Speaker 0: 00:06:09

I don't know.

Speaker 0: 00:06:09

I don't want to lose my money.

Speaker 0: 00:06:10

Okay, close.

Speaker 0: 00:06:11

Just stay on exchange.

Speaker 0: 00:06:12

So I think UX and education is a big one.

Speaker 0: 00:06:16

I'm not really a UX designer, but I want to help work on that as well.

Speaker 0: 00:06:20

And then the other one is resources.

Speaker 0: 00:06:22

So running a full node does kind of take up a lot of resources for a computer.

Speaker 0: 00:06:26

And that's what I'm going to try to fix.

Speaker 0: 00:06:28

So that's the goal of UTrexO.

Speaker 0: 00:06:30

But I'm also wondering, having worked on this for several years, maybe UX is a much bigger deal.

Speaker 0: 00:06:37

Maybe you work on Utrexo and do all this cool stuff and only a few more people run nodes because of it.

Speaker 0: 00:06:42

I don't know, right?

Speaker 0: 00:06:43

So that's the hard part for me.

Speaker 0: 00:06:44

Like I don't really know what I'm supposed to work on.

Speaker 0: 00:06:47

Are these things helpful?

Speaker 0: 00:06:48

I don't know.

Speaker 0: 00:06:50

But yeah, so any but I think it is a cool, helpful thing to do.

Speaker 0: 00:06:53

Because so Utrix O is a paper actually wrote in 2019.

Speaker 0: 00:06:58

I think it's not as well known, probably because it was written in 2019 and that was right before COVID.

Speaker 0: 00:07:03

And so I didn't really give talks about it.

Speaker 0: 00:07:06

Um because you know 2020, 2021, no one no one really goes anywhere.

Speaker 0: 00:07:10

Um but uh the it's an on-chain scalability idea.

Speaker 0: 00:07:14

Um so the idea in UTreexO is no full nodes store this cryptographic accumulator instead of a full UTXO set.

Speaker 0: 00:07:21

I will explain what those things mean in a second.

Speaker 0: 00:07:24

Um and wallets now have an extra job, so more than what was just described in the last uh talk.

Speaker 0: 00:07:30

Instead of just storing private keys, they also store proofs of the coins they control, of the UTXOs they control, and provide those proofs to others.

Speaker 0: 00:07:38

And so if you have a lot of UTXOs, you have more proofs to track.

Speaker 0: 00:07:41

And this sort of lines up nicely.

Speaker 0: 00:07:43

So I'll explain some of these terms now.

Speaker 0: 00:07:46

So what are UTXOs?

Speaker 0: 00:07:47

I think, okay, I wonder what the overlap.

Speaker 0: 00:07:51

I didn't remember exactly who's running a node, but who knows what a UTXO is?

Speaker 0: 00:07:55

Okay, so probably it's very similar.

Speaker 0: 00:07:57

Like, if you're running a node, you'll know what a UTXO is, and maybe if you don't, you're not quite sure.

Speaker 0: 00:08:01

But UTXOs, if Bitcoin really takes over the world, like we all are expecting it to, this will be the term for money in the future.

Speaker 0: 00:08:10

So, hey, you got any UTXOs?

Speaker 0: 00:08:11

You know, like, it just means money, because that's what Bitcoin is.

Speaker 0: 00:08:15

And UTXOs are where Bitcoins live.

Speaker 0: 00:08:18

So, this is an older updated.

Speaker 0: 00:08:21

Many parts of the slide, but I forgot this because this is from a year or two ago.

Speaker 0: 00:08:24

So they're tiny, right?

Speaker 0: 00:08:25

There's these tiny little entries that you have to keep track of to keep track of Bitcoin.

Speaker 0: 00:08:30

They're 60, 70 bytes each, just sort of the transaction ID of where it came from and the script, which is sort of your address, and how many Bitcoins are there.

Speaker 0: 00:08:42

So they're small, but there's 90 million.

Speaker 0: 00:08:44

Actually, I think there's well over 100 million now.

Speaker 0: 00:08:46

It keeps going up.

Speaker 0: 00:08:47

It can go up and down.

Speaker 0: 00:08:48

So, if people consolidate their UTXOs, the total number of UTXOs can go down.

Speaker 0: 00:08:52

But the general trend is it's gone up a lot.

Speaker 0: 00:08:55

So, there's, I think this is old, this is, you know, there's like 120 or something now.

Speaker 0: 00:08:59

And the UTXO set is a big, perhaps the biggest bottleneck in running a Bitcoin node, because you've got to keep track of all these tiny little entries.

Speaker 0: 00:09:08

So, if you run a Bitcoin node, And you go into your Bitcoin folder and you say du dash, that's you know, how much space is this taking up?

Speaker 0: 00:09:16

And you'll have a blocks folder.

Speaker 0: 00:09:18

And right now, as of like a couple of days ago, it's about 642 gigabytes of blocks and about 12 gigabytes of chain state.

Speaker 0: 00:09:25

And so the blocks is what you know of as the blockchain.

Speaker 0: 00:09:29

It's literally just all these files called BLK, da-da-da.

Speaker 0: 00:09:32

And it's just all those blocks back from 2009 to today.

Speaker 0: 00:09:35

Uh and that's big and this seems like the big problem, right?

Speaker 0: 00:09:39

But it's actually not which is kind of counterintuitive.

Speaker 0: 00:09:42

Um also of these seven six hundred gigs probably 100 gigs are these like rev files which you could totally delete but no one bothers.

Speaker 0: 00:09:49

Um the thing is with this you can prune it so you can run a pruned node.

Speaker 0: 00:09:53

It's loses no security at all No privacy.

Speaker 0: 00:09:57

There's like really no disadvantage to running a pruned node And you can get this 642 gigs all the way down to a couple of gigs.

Speaker 0: 00:10:04

You just basically, as you've verified all the old blocks, you can throw them away.

Speaker 0: 00:10:08

You can delete them.

Speaker 0: 00:10:09

And that's been implemented in Bitcoin Core for years.

Speaker 0: 00:10:13

I don't remember exactly.
2015, 14, you know, quite old.

Speaker 0: 00:10:18

So you can delete that.

Speaker 0: 00:10:19

And also, even if you don't delete it, it takes up space, but you can put it on like a hard drive, you know, a spinning hard drive.

Speaker 0: 00:10:24

It's really not used much.

Speaker 0: 00:10:26

These 12 gigabytes of chain state, however, cannot be deleted right now.

Speaker 0: 00:10:30

If you delete these, right now in Bitcoin Core, you can't verify transactions, because you don't know if it's spending things that exist or not.

Speaker 0: 00:10:37

So this 12 gigs is actually the big bottleneck, not the 642 gigs.

Speaker 0: 00:10:43

And also, if you look, compare it to like two years ago, the blockchain was a bit smaller, right?

Speaker 0: 00:10:49

Especially in the last two years, we've seen all the Ordinals and stuff that sort of bloats block size.

Speaker 0: 00:10:55

But also, this state has gotten a lot bigger faster.

Speaker 0: 00:10:58

And right now, it's like it's only 12 gigs.

Speaker 0: 00:11:00

That doesn't seem like a big deal.

Speaker 0: 00:11:01

It could get big very fast.

Speaker 0: 00:11:04

The only limit to the expansion of this chain state is the one megabyte block size limit.

Speaker 0: 00:11:09

So you could, in theory, get, you know, 100 gigabytes a year or something.

Speaker 0: 00:11:15

We're not, and that's good.

Speaker 0: 00:11:16

Um but yeah, it there's no hard limit on what this can go up to.

Speaker 0: 00:11:21

Um okay, so right now in Bitcoin, everyone keeps track of everything.

Speaker 0: 00:11:25

If you're running a full node, you've got that 12 gigs, you've got everyone's UTXOs stored in your database.

Speaker 0: 00:11:31

Um it's kind of inefficient, but we we're okay with it.

Speaker 0: 00:11:34

Um and sort of like in Bitcoin you're like be your own bank and it's like yeah, it actually means you're sort of being a bank, you're keeping track of everyone's accounts.
on your computer.

Speaker 0: 00:11:43

Computers are powerful enough that we can all do that.

Speaker 0: 00:11:45

But it is inefficient, right?

Speaker 0: 00:11:46

It's sort of like you have a million users and a million users each keeping track of a million other users, so now that's a trillion different sort of total entries.

Speaker 0: 00:11:56

It's sort of this O of n squared thing.

Speaker 0: 00:11:58

What if instead you only keep track of your own UTXOs?

Speaker 0: 00:12:02

And so then when people spend money, they prove that their UTXOs exist.

Speaker 0: 00:12:06

Right now, when you want to spend money, you create a transaction, you sign it.

Speaker 0: 00:12:10

And the signing is a proof that you owned that UTXO.

Speaker 0: 00:12:15

But in UTreexO, what you do is you also prove that the UTXO exists in the first place.

Speaker 0: 00:12:18

So you still have the signatures, but you add this extra inclusion proof.

Speaker 0: 00:12:23

Okay.

Speaker 0: 00:12:23

So the basic idea of UTreexO is put the whole UTXO set in a giant Merkle tree.

Speaker 0: 00:12:29

It's a little more involved than that.

Speaker 0: 00:12:31

A standard Merkle tree doesn't really support addition and deletion dynamically.

Speaker 0: 00:12:34

But in UtrexO, we do.

Speaker 0: 00:12:37

So it's a bit sort of modified Merkle tree.

Speaker 0: 00:12:41

I have a couple slides.

Speaker 0: 00:12:42

I'm just going to go through them real fast, because we don't have.

Speaker 0: 00:12:45

Yeah, the implementation is very fun.

Speaker 0: 00:12:46

I think it's really cool.

Speaker 0: 00:12:47

There's lots of fun binary tricks with bit shifts and stuff like that.

Speaker 0: 00:12:52

It's on GitHub.

Speaker 0: 00:12:53

And you can definitely ask me and I can explain stuff, but I don't really have that much time to go into it.

Speaker 0: 00:12:59

Anyway, you have trees, but you need multiple trees.

Speaker 0: 00:13:01

So you have to have like four elements, you only need one tree.

Speaker 0: 00:13:04

If you have five elements, you need two trees.

Speaker 0: 00:13:06

All trees are perfect.

Speaker 0: 00:13:08

And if you have now six, you can say, okay, well, I've got these three things.

Speaker 0: 00:13:11

I can combine those two to get one.

Speaker 0: 00:13:14

If I have seven things, okay, now I have three.

Speaker 0: 00:13:17

And so what's kind of nice is the number seven in binary is 111.

Speaker 0: 00:13:22

So there's.

Speaker 0: 00:13:23

The number of one bits in the binary representation of the number of UTXOs is the number of trees you will need.

Speaker 0: 00:13:30

Which is, it all kinds of lines up.

Speaker 0: 00:13:33

Yeah, and if you go to eight, then you can see like, oh, well, if I have eight now, I can sort of turn it all into one big perfect tree.

Speaker 0: 00:13:39

So now I have eight elements.

Speaker 0: 00:13:40

I can go to that and I have one element.

Speaker 0: 00:13:43

So the UTreexO nodes only keep track of the root, you know, this topmost element per tree.

Speaker 0: 00:13:49

Deletion is a bit more complex.

Speaker 0: 00:13:51

Basically, when you delete something, you promote its peer.

Speaker 0: 00:13:55

So, like, if I delete this one, I take this one and move it up.

Speaker 0: 00:14:00

And it all lines up really nicely because if I want to delete something, so let's say I'm deleting this one, the proof is like here, here, here.

Speaker 0: 00:14:09

The proofs give me the way to like.
reconstruct the Merkle tree without the thing that I just deleted.

Speaker 0: 00:14:16

And what's really nice about Bitcoin is that you only need to prove that you have Bitcoins when you are deleting them.

Speaker 0: 00:14:23

So that there's no like, you know, a lot of um people think bitcoins has balances, because a lot of websites will say like, oh, what's the balance of my Bitcoin address?

Speaker 0: 00:14:31

But that's not how it works, right?

Speaker 0: 00:14:32

It's all UTXO based.

Speaker 0: 00:14:34

And so you only can the only thing you can do with a UTXO is delete it.

Speaker 0: 00:14:37

You know, you spend it and create new ones.

Speaker 0: 00:14:39

So it really, um it's it fits really nicely with this.

Speaker 0: 00:14:43

Um one of the problems so so then you know you have this cool system, okay, we write this.

Speaker 0: 00:14:49

How do you switch to using this?

Speaker 0: 00:14:51

Is this like a soft fork?

Speaker 0: 00:14:52

Is this a hard fork?

Speaker 0: 00:14:53

I don't want to write any software that is a soft fork because it's a mess.

Speaker 0: 00:14:58

So actually you can do this without any kind of fork at all.

Speaker 0: 00:15:00

And people are running U3XO today.

Speaker 0: 00:15:03

Uh there's no fork needed.

Speaker 0: 00:15:04

Um the issue is transiting, you know, transition to this.

Speaker 0: 00:15:08

So if I'm the first accumulator node, I say, okay, I now have this Merkle tree, and when you give me a transaction, you need to prove that the inputs exist.

Speaker 0: 00:15:16

Um if I'm the first one, nobody will give me any proofs, so I can't validate.

Speaker 0: 00:15:20

So what we need is what's called a bridge node.

Speaker 0: 00:15:24

Um at least temporarily and probably for a long time, maybe forever.

Speaker 0: 00:15:28

So the idea is you have a node that sort of bridges the two sides of the network, the existing traditional side and the UTreeXO side.

Speaker 0: 00:15:37

And bridge nodes don't say that they are bridge nodes, they just sort of appear anonymously and they take regular transactions, stick proofs on them, and broadcast them to the other side so that everyone can validate them.

Speaker 0: 00:15:49

So this is sort of how it works right now.

Speaker 0: 00:15:51

I don't know how many bridge nodes.

Speaker 0: 00:15:52

I run one, Calvin runs one.

Speaker 0: 00:15:53

There's probably two or three of them.

Speaker 0: 00:15:55

There's not very many.

Speaker 0: 00:15:57

And then these compact nodes, we call them, are running behind these bridge nodes, and those are connected to the regular Bitcoin network.

Speaker 0: 00:16:03

In theory, you could transition to everything being this and not needing a bridge node.

Speaker 0: 00:16:07

I don't think that's going to happen.

Speaker 0: 00:16:09

But then from the perspective of the UTreexO nodes, they don't know who a bridge node is.

Speaker 0: 00:16:15

They just are connected to each other, and they are sending these proofs and transactions around.

Speaker 0: 00:16:19

And so, from the perspective of these nodes, it does pretty much everything a normal Bitcoin node does.

Speaker 0: 00:16:24

You won't even know you're using this.

Speaker 0: 00:16:27

So, that's kind of the not as exciting part about UTreexo, whereas Lightning or DLC, you can do all these crazy new things.

Speaker 0: 00:16:33

With UTreexO, it really just is like, oh, I'm running a node, and instead of taking up 100 gigabytes, it takes up one megabyte.

Speaker 0: 00:16:41

That's cool, right?

Speaker 0: 00:16:42

It still works the same, but it's much smaller and much faster.

Speaker 0: 00:16:45

But it doesn't really do anything all that different.

Speaker 0: 00:16:50

Yeah, so the bridge nodes, there's no reward for running this.

Speaker 0: 00:16:52

It's not too hard to run it.

Speaker 0: 00:16:54

It takes about 25 gigs of space.

Speaker 0: 00:16:56

So people can run those.

Speaker 0: 00:16:58

It's the same as running a full node now and providing blocks to people.

Speaker 0: 00:17:01

You don't get a reward, but you sort of help Bitcoin, and it's very low cost.

Speaker 0: 00:17:05

I run a node and serve blocks and I don't notice.

Speaker 0: 00:17:09

So yeah, so the biggest downside in U3XO is you've got these extra proofs.

Speaker 0: 00:17:14

And how big are they?

Speaker 0: 00:17:15

So during IBD, that's initial block download, when you're first running a full node and downloading the whole history, the worst case you can get around three times the size.

Speaker 0: 00:17:25

So if it's like 600 gigs, this would push it up closer to terabyte and a half, maybe closer to two terabytes.

Speaker 0: 00:17:31

So that's bad.

Speaker 0: 00:17:32

So IBD proof overhead is pretty big, but can be reduced.

Speaker 0: 00:17:36

So that's worst case if you don't do any tricks.

Speaker 0: 00:17:39

And this is a fun plot that I really like that sort of shows how you can optimize these things.

Speaker 0: 00:17:45

So what it's a plot of is here's the histogram.

Speaker 0: 00:17:48

Here's the number of UTXOs.

Speaker 0: 00:17:50

And this plot is a year or two old.

Speaker 0: 00:17:52

I think it's, you know, the numbers have gone up a little.

Speaker 0: 00:17:55

I assume the shape is very much still the same.

Speaker 0: 00:17:58

Here is how, if I cut it off, here is how long the UTXO lives.

Speaker 0: 00:18:02

So, if you think of a UTXO as like being born and dying, a UTXO is born when someone sends you Bitcoin, right?

Speaker 0: 00:18:08

And that transaction gets confirmed in a block.

Speaker 0: 00:18:10

And a UTXO dies when you spend that UTXO.

Speaker 0: 00:18:14

And so, how long does UTXO live?

Speaker 0: 00:18:17

If you look on a blockchain explorer, like, okay, this UTXO got created and then deleted.

Speaker 0: 00:18:22

So the most common, actually, zero would be even higher.

Speaker 0: 00:18:26

The most common is zero.

Speaker 0: 00:18:27

That a UTXO is created and destroyed in the same block, which is like, seems unefficient.

Speaker 0: 00:18:32

And one block, two blocks, three blocks, four blocks, five, six has a bump because everyone waits six blocks and then spends their Bitcoin.

Speaker 0: 00:18:38

I don't know why.

Speaker 0: 00:18:40

And then there's a bump at 100, which makes sense because of miners and stuff.

Speaker 0: 00:18:43

But the idea is the vast majority of Bitcoin are spent.

Speaker 0: 00:18:47

Very quickly.

Speaker 0: 00:18:48

There's sort of a lot of churn at the top.

Speaker 0: 00:18:50

And then there's Satoshi's coins over here where they're very old and never get touched.

Speaker 0: 00:18:55

And that really helps with caching with UTreeXO and making the proofs much smaller because most of the activity is going to be these things that you just saw.

Speaker 0: 00:19:05

You just saw UTreeXO created, and then you get deleted right after.

Speaker 0: 00:19:09

Yeah, so with this caching, you can reduce the overhead to like 20%.

Speaker 0: 00:19:13

So, it's like an extra hundred gigs in IBD instead of thousands.

Speaker 0: 00:19:19

You can also parallelize IBD.

Speaker 0: 00:19:21

So, this is something Calvin worked on, where right now, when you're downloading the blockchain, you download block one, then two, then three.

Speaker 0: 00:19:27

And you need to do it in order.

Speaker 0: 00:19:29

You can't tell if block 10 is valid if you haven't verified block nine yet.

Speaker 0: 00:19:34

With U3XO, you can do it out of order because the state is so small, you can just Send the entire state as one packet and say, here's the state of block 100, and here's block 100, see if it's valid or not.

Speaker 0: 00:19:46

So you can validate over multiple cores in parallel or multiple machines.

Speaker 0: 00:19:50

It's kind of fun.

Speaker 0: 00:19:51

You can do it very fast.

Speaker 0: 00:19:53

Yeah, so the basic idea, the goal is to make running nodes very small and fast.

Speaker 0: 00:19:59

So some people are like, can you do this on a phone?

Speaker 0: 00:20:01

Like, yes, it makes it much smaller, much less disk I.O.

Speaker 0: 00:20:04

You're still validating everything, though.

Speaker 0: 00:20:06

So, the thing I worry about with a phone is maybe battery.

Speaker 0: 00:20:09

You're still checking all the signatures, so it kind of kills battery.

Speaker 0: 00:20:13

But you could, it makes it easier to run on a phone anyway.

Speaker 0: 00:20:15

Maybe you sync up when you plug it to charge at night.

Speaker 0: 00:20:18

It reduces the technical limitations, and it might make the code simpler.

Speaker 0: 00:20:21

You can kind of get rid of the whole database, which is like the big scary consensus part.

Speaker 0: 00:20:26

It also feels like Bitcoin is meant to support this.

Speaker 0: 00:20:28

When working on this, it's like.

Speaker 0: 00:20:30

Things sort of fit in really nicely.

Speaker 0: 00:20:31

The way the UTXO model works really lends itself well to these accumulators.

Speaker 0: 00:20:36

Your inclusion proof is all the data you need.

Speaker 0: 00:20:39

So it's a nice thing there.

Speaker 0: 00:20:41

Okay, so wrapping up, yeah, we need to reduce the technical hurdles to running a node.

Speaker 0: 00:20:47

Not enough people run them.

Speaker 0: 00:20:49

I don't know if UX might be a big reason, but it's also like, hey, I don't want to use.

Speaker 0: 00:20:53

My whole computer, and so people buy like a Raspberry Pi and it doesn't really work that well.

Speaker 0: 00:20:57

I think UTrixO will help running on a Raspberry Pi really a lot.

Speaker 0: 00:21:01

And it also, another reason I'm working on this is it could open up like L1 on-chain scaling.

Speaker 0: 00:21:06

So one of the big things, you know, years ago with scalability and block size and everything is we don't want to re-increase the block size because people are like right on the edge of being able to run nodes on their computer.

Speaker 0: 00:21:18

To have a big $10,000 server to run a Bitcoin node, that's not gonna be decentralized.

Speaker 0: 00:21:24

And so there's really a need to make it easy to run Bitcoin nodes.

Speaker 0: 00:21:29

And if we make it really easy, potentially you can also say, hey, maybe there's like a a block size increase down the road that is not as you know can be doable if it's like economic and technical and constraints.

Speaker 0: 00:21:40

I don't know, people don't talk about that as much, but People were talking about it years ago and it's like, hey, let's get rid of these technical limitations so we can do this or we can look at this in the future.

Speaker 0: 00:21:51

Okay, so yeah.

Speaker 0: 00:21:53

It's unlike Lightning and discrete log contracts.

Speaker 0: 00:21:56

I don't think you can make money off of it.

Speaker 0: 00:21:58

So I don't think there's like Utrexo.fund or like there aren't like 50 different companies and startups working on Utrexo.

Speaker 0: 00:22:04

It's like myself and basically three or four other people working on it open source.

Speaker 0: 00:22:09

So right now there is a full node that is using UTreexo.

Speaker 0: 00:22:12

It's based on BTCD code and it's on GitHub.

Speaker 0: 00:22:15

I gave, you know, bitgithub.com slash Utreexo.

Speaker 0: 00:22:18

And it's running.

Speaker 0: 00:22:18

You know, people can use it.

Speaker 0: 00:22:19

I wouldn't put a lot of money, you know, I wouldn't use it as your main node yet.

Speaker 0: 00:22:23

It's still very much under development and we're writing the bips.

Speaker 0: 00:22:26

But it exists and it works and it's sort of proving that like, yeah, you can do these pretty impressive changes to Bitcoin without any forks or anything like that.

Speaker 0: 00:22:34

So, yeah, if you want to try it out or ask me questions about it, great.

Speaker 0: 00:22:38

So, thanks a lot.

Speaker 0: 00:23:45

Is your company ready for the next evolution in financial strategy?

Speaker 0: 00:23:49

Bitcoin for Corporations is your partner in securing the future of your business.

Speaker 0: 00:23:54

With exclusive membership benefits, our comprehensive masterclass, and a network of trusted service providers, we provide the insights.

Speaker 0: 00:24:02

And resources to help you incorporate Bitcoin into your financial strategy, ensuring stability and long-term value.

Speaker 0: 00:24:09

Strengthen your business, innovate with confidence.

Speaker 0: 00:24:12

Bitcoin for corporations, protecting your treasury and positioning you for the future.
