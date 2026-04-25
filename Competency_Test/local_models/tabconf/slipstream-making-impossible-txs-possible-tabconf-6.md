---
title: Slipstream  Making impossible TXs, Possible - TABConf 6
speakers: []
tags: []
source_file: https://www.youtube.com/watch?v=6-AU0Vpyzr0
media: https://www.youtube.com/watch?v=6-AU0Vpyzr0
categories: []
date: '2025-05-13'
summary: "Here is a coherent summary of the key points from the TABConf 6 presentation\
  \ by **Portland Hodl** regarding Marathon Digital Holdings\u2019 (MARA) \"Slipstream\"\
  \ service:\n\n### **Overview of Slipstream**\nSlipstream is a specialized suite\
  \ of tools\u2014comprising a modified Bitcoin Core implementation, a public portal,\
  \ and an API\u2014designed to allow Marathon to mine \"non-standard\" transactions.\
  \ While these transactions follow Bitcoin\u2019s consensus rules (the \"physics\"\
  \ of the network), they are typically filtered out by standard node relay policies\
  \ to protect lower-end hardware from Potential Denial-of-Service (DoS) attacks.\n\
  \n### **Economic Motivation and Performance**\nMarathon views Slipstream as a profitable\
  \ arbitrage opportunity, capturing fees from transactions that standard nodes refuse\
  \ to relay. \n*   **Profitability:** Since its launch in February 2024, the service\
  \ has generated 16.2 BTC in total revenue, resulting in approximately 11.5 BTC in\
  \ pure profit above standard market expectations. \n*   **Pricing:** To bypass standard\
  \ relay hurdles, users pay a premium, typically a submission fee or a rate roughly\
  \ 2.5 times the current market fee.\n\n### **Strategic and Ethical Goals**\nBeyond\
  \ direct profit, Slipstream serves several strategic purposes:\n*   **Innovation:**\
  \ It provides a sandbox for developers to experiment with complex Bitcoin Scripts\
  \ (such as double `OP_RETURN`) that are valid but often ignored.\n*   **Censorship\
  \ Resistance:** It offers an alternative path for transactions that might be filtered\
  \ by other mining pools.\n*   **Operational Independence:** By mining these unique\
  \ blocks, Marathon demonstrates that it constructs its own block templates independently\
  \ rather than relying on larger entities like Antpool.\n\n### **Technical Implementation\
  \ and Network Impact**\nSlipstream leverages Marathon\u2019s high-end server hardware,\
  \ which can validate complex scripts that would stall a standard \"Raspberry Pi\"\
  \ node. However, this approach has trade-offs:\n*   **Mempool Fragmentation:** By\
  \ creating a \"private mempool,\" Slipstream can complicate fee estimation for the\
  \ rest of the network. \n*   **Propagation Delays:** Because other nodes do not\
  \ have these non-standard transactions in their mempools, there is a slight \"block\
  \ propagation\" delay (approx. 500ms to 1.2s) as the network validates the 4MB blocks\
  \ from scratch.\n\n### **Risk Mitigation and Safety**\nMarathon prioritizes network\
  \ stability to avoid the financial loss of mining invalid blocks:\n*   **Internal\
  \ Policies:** The pool filters transactions that could trigger \"quadratic signature\
  \ hashing\" or other validation bottlenecks.\n*   **Soft Fork Protocol:** During\
  \ the activation of future soft forks, Marathon intends to revert to standard Bitcoin\
  \ clients to eliminate the risk of chain splits or invalid block production.\n\n\
  ### **Future Outlook: MARA and DATUM**\nThe presentation concluded with insights\
  \ into emerging technologies. While the speaker, Portland Hodl, characterized **DATUM**\
  \ as a \"cool proxy solution,\" he expressed skepticism that Marathon would adopt\
  \ it for its internal mining operations in the near future."
conference: TABConf
topics:
  - Nonstandard Transactions
  - Relay Policy
  - Consensus Rules
  - Mining
  - Mempool
youtube:
  description: "This talk would be about the history, tradeoffs, and lessons learned\
    \ regarding mining nonstandard transactions to the Bitcoin timechain in exchange\
    \ for extra fee revenue. The primary focus being on relay policy rules vs consensus\
    \ policy rules.\n\n What would an attendee learn from this talk?\n\n- Why do relay\
    \ rules exist?\n- Broad overview of consensus rules.\n- The deep history of mining\
    \ nonstandard transactions in Bitcoin.\n- Problems of mining nonstandard transactions\n\
    \    - Mining an invalid block\n    - Upgrade Hooks\n    - Forking off the network\n\
    \    - Creating a block that attack Bitcoin miners DoS\n    - Block propagation\
    \ issues\n    - Social issues about the use cases for Bitcoin\n    - Private mempool\
    \ and associated fragmentation\n    - Forces to centralize mining\n- Benefits\
    \ of mining nonstandard transactions\n    - Fee revenue\n    - Less restrictive\
    \ use of the Bitcoin protocol (innovation)\n    - Censorship resistance\n    -\
    \ Why Bitcoin needs independent template generating hashers\n- So I am sold, How\
    \ would I build my own Slipstream?\n\n Is there anything folks should read up\
    \ on before they attend this talk?\n\nNothing is needed as everything will be\
    \ covered in the talk,\n\n Relevant Links\n\n About the Speaker\n\n Social Links\n\
    \n[Github](https://github.com/russeree)\n\n[Twitter](https://x.com/portland.hodl)\n\
    \n\nTABCONF 6 GitHub link\nhttps://github.com/TABConf/6.tabconf.com/issues/124"
  tags: []
  categories:
    - Education
  channel_name: TABConf
transcript_by: your_username via tstbtc v1.0.0
---

Speaker 0: 00:00:57

Mera accepts non-standard transactions.

Speaker 0: 00:00:59

This has been possible since even the days of Elegius, who was ran by Luke Dash Jr., they would accept these non-standard transactions.

Speaker 0: 00:01:06

FduPool, as well as notorious for taking these in as well.

Speaker 0: 00:01:09

Technically, though, Slipstream is a set of utilities to accept a larger funnel of transactions into the mempool used during block production.

Speaker 0: 00:01:17

Slipstream itself, which is kind of this little bundle of tools.

Speaker 0: 00:01:22

That can be used, contains a Bitcoin Core implementation that's been modified to accept these transactions, a portal, which is a general website where the public can go to to paste in their hex to get their transaction accepted if it is non-standard or standard for that matter, and an API where users can call that basically portal via a REST call to get their transaction put into a block or potentially mined.

Speaker 0: 00:01:48

So, while Slipstream was originally designed to emulate accept non-standard TXN equals one, which is basically your node will accept all transactions as long as they are consensus valid, there are some limitations with Slipstream and Marathon to protect the Bitcoin network, quote unquote.

Speaker 0: 00:02:05

I will go into that a bit later in this talk, because though I do want all the transactions, I think that some transactions personally are not good for the Bitcoin network.

Speaker 0: 00:02:15

So, why do this though?

Speaker 0: 00:02:18

Well, to get a transaction into Slipstream, Marathon does charge an extra submission fee, or the fee rate of your transaction to enter the mempool and get mined must be 2.5x.

Speaker 0: 00:02:29

That was the experiment portion of this.

Speaker 0: 00:02:31

So, the side effect that came about because of Slipstream as well.

Speaker 0: 00:02:35

Is that it created a private mempool.

Speaker 0: 00:02:38

And this was a little bit of an afterthought, but still became a pretty big issue initially, which was the fact that you can cause mempool fragmentation.

Speaker 0: 00:02:46

So if Marathon technically did have enough hash, like 20, 30%, and Slipstream or whatever you want to call the non-standard transaction service, was taking in a bunch of volume, the rest of the network couldn't see these fee rates and such.

Speaker 0: 00:03:00

It would be difficult to estimate fees.

Speaker 0: 00:03:01

And the last most important part, I came up with a name.

Speaker 0: 00:03:04

So I like it.

Speaker 0: 00:03:07

So, an example of a non-standard transaction for anybody who hasn't kind of seen one, typically on mempool.space, you'll see the little blue dot in the bottom left-hand corner there.

Speaker 0: 00:03:16

That's what'll show up.

Speaker 0: 00:03:18

It represents that the transaction that was mined in that block was different than what mempool.space expected.

Speaker 0: 00:03:25

Mempool.space on their node runs a default policy.

Speaker 0: 00:03:28

There are limitations to the transactions they will take.

Speaker 0: 00:03:31

And they see a slipstream transaction, a non-standard transaction, and boom, it is different.

Speaker 0: 00:03:36

So it'll highlight it blue.

Speaker 0: 00:03:37

So in that case, that one was a transaction that had 10,000 out points of op true that can be spent by anybody.

Speaker 0: 00:03:46

So next is policy sets in Bitcoin.

Speaker 0: 00:03:48

This is a pretty broad overview.

Speaker 0: 00:03:51

Or, like, uh, abstraction, I apologize.

Speaker 0: 00:03:53

But in essence, Bitcoin has two policies for transactions.

Speaker 0: 00:03:58

The first policy is relay policy.

Speaker 0: 00:04:01

That is the transactions that your node, Bitcoin node, will accept into it and into the mempool, and then relay back out.

Speaker 0: 00:04:09

Then there is consensus rules, which are essentially like the rules of physics, right?

Speaker 0: 00:04:14

It's all the things technically possible.

Speaker 0: 00:04:16

Within that scope.

Speaker 0: 00:04:18

And so consensus rules are anything you can produce a valid block with, and consensus rules are validated at the time of a block being accepted into a node.

Speaker 0: 00:04:27

Why that is very important is there is a difference in the total set of things that can be accepted into the mempool versus the total set of things that can be mined.

Speaker 0: 00:04:37

And some early examples of this are like double op returns.

Speaker 0: 00:04:42

People would put two up returns in a transaction.

Speaker 0: 00:04:44

F2Pool in like 2015 mined a full one megabyte transaction into a block.

Speaker 0: 00:04:49

At the time, there was no Segwit.

Speaker 0: 00:04:51

It is still the largest transaction by weight units on Bitcoin.

Speaker 0: 00:04:56

So with that said, why do we have these policy rules?

Speaker 0: 00:05:01

Well, relay policy in general is to protect the little nodes in the network.

Speaker 0: 00:05:06

So I use these little Raspberry Pis, and they're relaying a transaction across to get to the Bitcoin miner.

Speaker 0: 00:05:12

The goal of relay policy is to essentially reduce the complexity or size of transactions.

Speaker 0: 00:05:17

As such, you can have them entering the mempool very quickly and efficiently across this chain to the miner without having that little potato catch on fire or stop basically being dossed, denial of service by these transactions.

Speaker 0: 00:05:30

There actually are transactions in Bitcoin you can produce today that will cause a node to potentially stall out during the validation process, or appear to stall out.

Speaker 0: 00:05:38

It may eventually finish.

Speaker 0: 00:05:41

So, but what about blocks?

Speaker 0: 00:05:43

How are they different?

Speaker 0: 00:05:44

Well, blocks are easier to evaluate because caveats everywhere.

Speaker 0: 00:05:50

But blocks are easier to evaluate because of the frequency at which they come in.

Speaker 0: 00:05:54

So a block is once every 10 minutes.

Speaker 0: 00:05:57

So even if you have 10,000 non-standard transactions in a block, it's once per 10 minutes, so it's not gonna hurt the network.

Speaker 0: 00:06:03

With that said, the mempool, you can continuously RBF and change the state of that mempool hundreds, thousands of times a second.

Speaker 0: 00:06:11

So if you can find an opportunity as an attacker to make that node not relay blocks or transactions.

Speaker 0: 00:06:18

That is a big problem.

Speaker 0: 00:06:19

So, relay policy typically protects from that.

Speaker 0: 00:06:23

So, kind of another note about relay policy is that it's a tool to prevent denial service attacks, but it's also has been in the past used as a tool to kind of guide the direction of Bitcoin script.

Speaker 0: 00:06:35

So, an example of this is like the op return limit.

Speaker 0: 00:06:38

There hasn't been a good justification to core developers to say that, hey, why should anybody have more than 80 bytes in an op return.

Speaker 0: 00:06:45

I don't believe that personally to be the case, especially if somebody wants to pay to have that script put on Bitcoin.

Speaker 0: 00:06:51

So, in the last note, why don't miners have to worry about these kind of relay policy rules?

Speaker 0: 00:06:57

Well, miners run typically with a lot better hardware than the average Raspberry Pi on the network.

Speaker 0: 00:07:02

So, an AWS instance, self-hosted on-prem with some Xeons, taking in a lot of transactions or deep chains of.

Speaker 0: 00:07:09

Child pays for parent or ancestors, not a problem.

Speaker 0: 00:07:16

So, consensus rules, these are what determine block validity.

Speaker 0: 00:07:21

So, just like I said, the relay rules are a set of what can enter the mempool.

Speaker 0: 00:07:26

When a node gets a block, it evaluates that block by what are called consensus rules.

Speaker 0: 00:07:30

This is a bigger set of rules than what relay policy is.

Speaker 0: 00:07:33

And so I went over the validation period already.

Speaker 0: 00:07:36

It's once every 10 minutes, so that shouldn't be a problem.

Speaker 0: 00:07:39

I would say that's actually wrong.

Speaker 0: 00:07:40

There are currently transactions in Bitcoin that can be crafted in a way to DOS a block into taking over 10 minutes to validate.

Speaker 0: 00:07:46

If you want to look into the details of this, you can go look up the Great Consensus Cleanup.

Speaker 0: 00:07:51

There's also a note that the actual structure of these transactions has been redacted, but if you're interested in contributing or helping solve this problem, You could potentially get on a members list to deep dive this, how to solve this issue.

Speaker 0: 00:08:05

The notorious ones that cause problems: op check multisig, op check sig, and legacy script, and opcode separator.

Speaker 0: 00:08:12

You can use these to essentially invalidate the signature cache or check a signature, which is the most expensive operation.

Speaker 0: 00:08:19

And as such, if you can get a lot of this done or invalidate the cache, ask for a signature, invalidate again.

Speaker 0: 00:08:25

A lot of times, you can cause a very problematic block on the network where you send it off.

Speaker 0: 00:08:30

Other miners can take a very long time to process that.

Speaker 0: 00:08:33

And then, obviously, I think, I haven't brought this up yet, but one of the biggest issues that you can do when you run into running a service like Slipstream, invalid blocks.

Speaker 0: 00:08:43

So this is the number one do not do at Marathon.

Speaker 0: 00:08:47

And yeah, in the past, this was one example.

Speaker 0: 00:08:50

Of that, if you modify your instance of Bitcoin or you start doing things differently, you end up with a block that doesn't validate these consensus rules, and all that energy goes up in smoke.

Speaker 0: 00:09:01

So being very careful not to do that.

Speaker 0: 00:09:05

Also, don't fork the network.

Speaker 0: 00:09:07

So much about the rules, why slipstream?

Speaker 0: 00:09:09

I got a little thought experiment here.

Speaker 0: 00:09:11

I got two transactions on the screen.

Speaker 0: 00:09:13

They're both a million-weight units.

Speaker 0: 00:09:15

Transaction one's paying one Bitcoin, transaction two's paying ten Bitcoin.

Speaker 0: 00:09:19

Which one are you guys gonna take?

Speaker 0: 00:09:22

Yeah, it's pretty easy, right?
10 Bitcoin for transaction two.

Speaker 0: 00:09:24

They're the exact same size, they're gonna take exactly one-fourth of your potential space of the block.

Speaker 0: 00:09:28

Very reasonable.

Speaker 0: 00:09:29

And by the way, shout out to Gloria Zhao, who did this at a talk at, I believe, MIT.

Speaker 0: 00:09:34

Very rational.

Speaker 0: 00:09:35

Yeah, and that's what this leads into.

Speaker 0: 00:09:36

It's all about the Bitcoins, baby.

Speaker 0: 00:09:37

So the primary motive for me to demonstrate with Slipstream was miners are rational, and that I believed that there was an arbitrage opportunity between consensus policy and relay policy.

Speaker 0: 00:09:48

AKA, we could charge to take in additional transactions in the zone that relay policy doesn't encompass.

Speaker 0: 00:09:57

So overall, these are all on-chain, by the way.

Speaker 0: 00:09:59

You can literally deep dive.

Speaker 0: 00:10:01

There have been no out-of-band payments.

Speaker 0: 00:10:02

Everything's been in the fees.

Speaker 0: 00:10:04

But yeah, 16.2 extra bitcoins have been earned since the launch of Slipstream, February 22nd, 2024.

Speaker 0: 00:10:09

If you compare that to mempool.space's expected fees for those same blocks, we have earned 11.5 extra in profit.

Speaker 0: 00:10:16

The large majority of these earnings came from large transactions that would consume an entire block.

Speaker 0: 00:10:23

That means a full 4 million weight units.

Speaker 0: 00:10:25

There have been basically roughly 24.

Speaker 0: 00:10:27

I was generous and gave some partials in there as well.

Speaker 0: 00:10:30

But the majority of transactions by number actually belong to op returns and just general non-standard TXs, like the one Rindel made to trick mempool.space into thinking opcat had existed, but it had not yet.

Speaker 0: 00:10:43

And so, with that said, like one example, one block was 3.125 Bitcoin, where the expected fees were, well, I think closer to like 0.2, 0.3%, 1600% increase.

Speaker 0: 00:10:54

And then on mempool.space, You can typically find us on the list of the miner dominance, because we'll have the actual green on average fees per block.

Speaker 0: 00:11:03

All the other miners are typically minus 1.5 to 2%.

Speaker 0: 00:11:06

Ours are always positive.

Speaker 0: 00:11:09

So, like, one of the things I wanted to do with Slipstream was allow people to innovate.

Speaker 0: 00:11:15

And along with some pay-to-ms stuff that they were trying to take away in Bitcoin as part of the standardness rules.

Speaker 0: 00:11:21

This post I remember from Luke Dash Jr.
always has been one of my favorites.

Speaker 0: 00:11:25

Blocking out non-standard transactions in general just harms potential innovation.

Speaker 0: 00:11:30

I don't completely believe that to be true, and he also no longer maintains this position, but I also think that Bitcoin is script.

Speaker 0: 00:11:37

Bitcoin should be used programmatically to create cool things.

Speaker 0: 00:11:40

If Slipstream can enable that, that is what I want.

Speaker 0: 00:11:45

Slipstream is pushed back against censorship resistance.

Speaker 0: 00:11:48

So, Slipstream in of itself is a little bit of a method of censorship resistance as it does take in a larger set of total transactions compared to our peers that don't.

Speaker 0: 00:11:58

It also inadvertently showed that Marathon is not an ANP pool derivative, or likely not an AMPOL derivative.

Speaker 0: 00:12:05

So, yeah, 0xB10C did some analysis in one of his blog articles.

Speaker 0: 00:12:10

Everything in yellow is a cross-pollination, aka that pool is basically mining the same templates as Ant Pool.

Speaker 0: 00:12:16

So Marathon definitely is doing its own thing in terms of block template construction and not subscribing to the general Ant Pool-like templates, I guess, or just being Ant Pool, which is good right now, because we need more miners to think independently.

Speaker 0: 00:12:32

And then Slipstream doesn't do any KYC.

Speaker 0: 00:12:34

So if you use the Slipstream portal, submit your transaction, it is literally hex goes in, okay, it validates, goes into mempool, or it doesn't.

Speaker 0: 00:12:42

With that said, do note that use a VPN or use your own IP address or whatever.

Speaker 0: 00:12:47

Just we technically could collect that.

Speaker 0: 00:12:50

Terms of service.

Speaker 0: 00:12:52

There is a terms of service that must be accepted as well as noted by my employee Mike.

Speaker 0: 00:12:58

Yeah, and then so the last kind of portion I want to bring up is Slipstream also has somewhat fulfilled my goal of getting the discussion about mempool policy and consensus to converge.

Speaker 0: 00:13:08

I think long-term consensus and mempool policy both should converge, but at least people are understanding the difference between these two.

Speaker 0: 00:13:16

So, what about ethics and the time chain?

Speaker 0: 00:13:18

Um Slipstream, I pretty much built to be open to all.

Speaker 0: 00:13:22

So as a note, Slipstream does have just a regular node that is upfront and Bitcoin facing.

Speaker 0: 00:13:27

This is not the template generating node, but it will accept Slipstream transactions.

Speaker 0: 00:13:32

Um it was meant to be accessible by anybody with an internet connection.

Speaker 0: 00:13:35

And um yeah it even just picked up like a random transaction last night from uh the Gloria Zows Uh, truck transaction, it just picked it up and yeah, it's pretty cool.

Speaker 0: 00:13:49

What?

Speaker 0: 00:13:50

That's mainnet, V3.

Speaker 0: 00:13:52

The ironic part is though, Gloria Zao was trying to get a Bitcoin Core 0.28 node to take this, but it actually was a 0.261, but it just had a really loose mempool policy.

Speaker 0: 00:14:05

Um the next thing, uh, real quick, mempool fragmentation.

Speaker 0: 00:14:08

So this was probably one of the biggest issues I heard of initially.

Speaker 0: 00:14:11

And the issue is that when these slipstream transactions come in, Marathon has no incentive to broadcast broadly because that would be lost profits.

Speaker 0: 00:14:20

And second, we don't want to be dossing all the little nodes on the network.

Speaker 0: 00:14:24

So I don't want the slipstream node, as I call it, to be shooting off transactions to all these little Raspberry Pis, potentially making the potato not work as well.

Speaker 0: 00:14:34

So, just yeah, put it in our mempool, we can process it.

Speaker 0: 00:14:36

When the block comes, whatever's in it, they can validate that.

Speaker 0: 00:14:39

So, yeah, essentially, it comes down to one thing though: that Marathon right now doesn't have enough hash rate to be a big problem to offset the fee market or basically create an opaque fee market for block space.

Speaker 0: 00:14:53

There is an API call as well to the Slipstream endpoint where you can literally say, get Marathon's mempool.

Speaker 0: 00:14:59

Fee rate if you're actually concerned about are they diverging from the general Bitcoin network?

Speaker 0: 00:15:03

And lastly, the volume going through Slipstream is too small, even as a part of that 5%, to have any notable impact in terms of, oh wow, I gotta worry about the Slipstream block making my transaction not go through.

Speaker 0: 00:15:18

Next thing is not attacking Bitcoin.

Speaker 0: 00:15:20

This is a big part of Slipstream.

Speaker 0: 00:15:22

There are DOS blocks.

Speaker 0: 00:15:24

And the first example of a denial of service block, I would say, was F2Pool's 12-second block.

Speaker 0: 00:15:28

I did a little example on the left here.

Speaker 0: 00:15:31

But essentially, what that is, is they took a bunch of inputs, and this is called the oh, I forget, the quadratic.

Speaker 0: 00:15:42

What is it?

Speaker 0: 00:15:47

Yeah, quad it's like a quadratic signature hashing problem.

Speaker 0: 00:15:50

Essentially, like it's a number of inputs squared and it can create validation times that are quite a bit longer than our typical blocks.

Speaker 0: 00:15:57

And F2Pool at height 364292 created this giant just single one megabyte block with 7,000 inputs that took at the time around 12 seconds to validate.

Speaker 0: 00:16:07

So while your normal blocks would come in, A couple hundred milliseconds done, this one would just sit there and chug.

Speaker 0: 00:16:13

This is what you do not want Marathon to put onto the broader network through a service like Slipstream.

Speaker 0: 00:16:18

And then the other attacks that can be problematic with extra signature data to a TX, as long as it's still valid.

Speaker 0: 00:16:26

So, since it's a legacy transaction, as long as the signature still evaluates to true as the first object, you technically.

Speaker 0: 00:16:34

Could allow users to stuff in extra data into a second script sig item, because that would still be on the stack, and would malleate the TXID and also allow somebody to carry extra data along.

Speaker 0: 00:16:48

It's not incentivized, though, because the fee rate would go down, because there's extra data for those inputs.

Speaker 0: 00:16:54

And then, with that said, at the mempool policy level for Slipstream, these have been mitigated.

Speaker 0: 00:17:01

I hope.

Speaker 0: 00:17:05

Not attacking Bitcoin continued.

Speaker 0: 00:17:06

Soft forks.

Speaker 0: 00:17:08

So basically, soft forks can be activated, and there could be soft forks potentially even within just nodes generally mining.

Speaker 0: 00:17:15

This was seen with testnet 4, where the Bitcoin Core devs released a new version of testnet 4 at the version release of 28 that changed the window that a block could be moved forward.

Speaker 0: 00:17:26

Or the timestamp could be moved forward from two hours to 10 minutes, and test F4 literally to split into two.

Speaker 0: 00:17:32

This could be the same thing with different opcodes as well.

Speaker 0: 00:17:35

This was discussed quite a bit after Rhindell did the op SuccessX transaction.

Speaker 0: 00:17:41

What this did was he took the opcode that is opcat 0x7e and then shoved it into a slipstream transaction.

Speaker 0: 00:17:48

And if that opcode had been active on taproot or was in the middle of a soft fork, potentially our side may have been invalid because we weren't validating that his script even followed the rules of whatever 0x7e.

Speaker 0: 00:18:01

I believe this would only be likely or ever possible during the activation period of a soft fork.

Speaker 0: 00:18:09

So to conclude, the success of Slipstream has been that there's a model to profitability above What relay policy allows.

Speaker 0: 00:18:17

So, again, my original theory that there is an arbitrage opportunity between consensus and sorry, consensus and relay policy, and people will pay extra.

Speaker 0: 00:18:26

I do believe long-term Slipstream will show that relay policy or consensus both need to converge and destroy that arbitrage opportunity.

Speaker 0: 00:18:35

Also, I like the fact that many developers have done quite a few party tricks with Slipstream.

Speaker 0: 00:18:39

I've seen a lot of.
10 minutes.

Speaker 0: 00:18:43

Wow.

Speaker 0: 00:18:43

Okay.

Speaker 0: 00:18:44

I'm coming up hot.
Okay.

Speaker 0: 00:18:47

So with that said, many devs have enjoyed the functionality of Slipstream from op success X to double op returns to just a bunch of op trues.

Speaker 0: 00:18:56

And overall, being a portal to direct trans uh sorry, last thing is uh slipstream overall, beyond just being a portal for direct transaction submissions, has pretty much, I think, rebranded marathon.

Speaker 0: 00:19:07

As a company, away from just like, oh, these guys are the OFAC guys, blah, blah, blah, to I guess now we're the evil non-standard transaction guys.

Speaker 0: 00:19:14

So, but with that said, though, at least it's complete a 180 from let's filter all the things, or some of the things, to let's just take whatever as long as it's possible to mine.

Speaker 0: 00:19:26

And thanks to the whole team at Mera who made this entire thing possible.

Speaker 0: 00:19:31

So that is it for the Slipstream talk.

Speaker 0: 00:19:36

That was a little faster than I expected.

Speaker 0: 00:19:37

So can I do QA?

Speaker 0: 00:19:41

Okay.

Speaker 0: 00:19:42

Questions from the audience, ladies and gentlemen.

Speaker 0: 00:19:44

Let's go with Shores.

Speaker 0: 00:19:52

Um so if I say the word compact block propagation, Does that ring a bell?

Speaker 0: 00:19:59

And and I I guess my second question would be are you seeing a delay in your in the blocks that Mara is producing when they have these non-standard transactions in them?

Speaker 0: 00:20:11

That would be a yes and a yes.

Speaker 0: 00:20:13

So I believe if I'm correct, compla p compact block filters are basically nodes will have the transactions in their mempool and will seek those first.

Speaker 0: 00:20:22

Anything missing.

Speaker 0: 00:20:23

They will ask the network to propagate them to them.

Speaker 0: 00:20:25

Yes, exactly, which could add a slight delay.

Speaker 0: 00:20:28

Yep, and so with Marathon, sometimes there are literally four megabytes worth of non-standard transactions in a block.

Speaker 0: 00:20:34

That is pretty big.

Speaker 0: 00:20:35

Yes, the delay is between 500 milliseconds and about 1.2 seconds on average for one of those bigger ones.

Speaker 0: 00:20:42

How do you measure that?

Speaker 0: 00:20:44

I have another node on the network that is connected to Mera.

Speaker 0: 00:20:49

But is not accepting the, it doesn't have the mempool policy that Slipstream does.

Speaker 0: 00:20:53

It's just a regular 0.27 node.

Speaker 0: 00:20:55

And I look at the log timestamps, it's pretty crude, but.

Speaker 0: 00:21:01

You're measuring, it's a direct connection, or are you measuring how long it takes for that block to arrive through a couple of hops over the network?

Speaker 0: 00:21:09

That is a direct connection.

Speaker 0: 00:21:11

Okay.

Speaker 0: 00:21:11

So I'm assuming what you're going into is that it magnifies as you go each hop by that amount.

Speaker 0: 00:21:17

It could be.

Speaker 0: 00:21:18

I mean, uh what matters ultimately is how well miners are connected to each other, um which you know I'm I'm not sure how that works these days.

Speaker 0: 00:21:27

Um I don't think I have any special knowledge of any other miners IPs.

Speaker 0: 00:21:31

If they want to share, please do.

Speaker 0: 00:21:42

Have you gotten any interest from miners in submitting their block templates?

Speaker 0: 00:21:48

No, I have not gotten any interest from other miners to submit block templates.

Speaker 0: 00:21:57

I was surprised to hear you say that people got.

Speaker 0: 00:22:01

Op success transactions through Slipstream because uh last week I was actually trying to do an op success one twenty six, which is opcat.

Speaker 0: 00:22:11

And I don't know if it's a difference between the slipstream API and the web UI, but uh it seemed like the node was giving discourage op success, like the policy was still set to not allow.

Speaker 0: 00:22:26

Op success, I don't know if you know about that.

Speaker 0: 00:22:29

Yes, I'm very well aware.

Speaker 0: 00:22:31

After the first op success trick by Rindell, I'm reevaluating some of that policy, specifically for the developer hooks that can be utilized ahead of time.

Speaker 0: 00:22:42

And if that is problematic to Mera.

Speaker 0: 00:22:44

That's an internal decision as part of kind of some of those different limitations.

Speaker 0: 00:22:50

That's interesting.

Speaker 0: 00:22:51

So you were saying as like a danger to making invalid blocks or something or forking, but if it was interpreted as op success, then worst case wouldn't it be like if you haven't updated your node in time when a soft fork is going through, then yeah, you would be on a different fork.

Speaker 0: 00:23:11

Correct.

Speaker 0: 00:23:13

So that's what you're worried about.

Speaker 0: 00:23:15

Um not technically.

Speaker 0: 00:23:16

I just want to evaluate that policy a little bit more in terms of what its effects are on Marathon and the Bitcoin core development, like Bitcoin core developers and those op codes being used later.

Speaker 0: 00:23:28

Um I'm pretty sure at this point there shouldn't be a problem, though there are other people who have expressed concern about using op success early.

Speaker 0: 00:23:36

Interesting.

Speaker 0: 00:23:37

Okay, I'm just saying because I'm trying to construct a prediction market for the activation of OpCat where it's oracleized by the Bitcoin protocol, treating it as op success versus opcat.

Speaker 0: 00:23:51

So I'm very subscribed to your developments of what you figure out there.

Speaker 0: 00:23:56

Okay, yeah, and I can be in contact with you on that.

Speaker 0: 00:23:58

So, but with that said, yeah, in limbo for op success right now.

Speaker 0: 00:24:05

Portland, how can people get hold of you if they want to follow up after the talk?

Speaker 0: 00:24:10

Twitter is probably the best space, or just find me in general, and I can link you up.

Speaker 0: 00:24:14

GitHub, I also have an email.

Speaker 0: 00:24:16

Or email like slipstream.com.

Speaker 0: 00:24:18

I'd like just email that email.

Speaker 0: 00:24:19

I'm the one who checks it.

Speaker 0: 00:24:21

Slipstream at Mara.com.
Yep.
Sorry, that was slipstream at mara.com.
Yep, right at the top of slipstream.mara.com, the portal.

Speaker 0: 00:24:30

You should be able to find it pretty easy.

Speaker 0: 00:24:31

I do check that email, so.

Speaker 0: 00:24:34

But yeah, in terms of your ops 6SX, I am very well aware of that transaction.

Speaker 0: 00:24:38

So.

Speaker 0: 00:24:40

Last question.

Speaker 0: 00:24:43

Have you given any thought to what you would do if we ever attempted to activate a soft fork client?

Speaker 0: 00:24:50

Would you want to turn off strip slipstream, or what do you think about that?

Speaker 0: 00:24:54

Or during an activation of a software client, 100%.

Speaker 0: 00:24:57

Yeah, the service, I would not want to risk forking the network.

Speaker 0: 00:25:01

It can be re-implemented fairly trivially.

Speaker 0: 00:25:03

There's, in terms of Slipstream's complexity, in terms of the modifications to the Bitcoin node, it's probably no more than 150 or so lines total.

Speaker 0: 00:25:14

There's like an extra function too, but it's, I'd rather just download the standard client, use that, and then.

Speaker 0: 00:25:21

After figure out.

Speaker 0: 00:25:22

Well, that's interesting.

Speaker 0: 00:25:23

It has implications for minor selected block templates as well, which can't be turned off, presumably.

Speaker 0: 00:25:32

Hmm?

Speaker 0: 00:25:33

Like, what do you mean by minor-selected block templates?

Speaker 0: 00:25:36

Like datum or SV2, if we ever get traction there.

Speaker 0: 00:25:40

Oh, w I think.

Speaker 0: 00:25:42

This might be non-correlated if I'm correct, but the fact is, Marathon is a completely like, think of it like a giant solo miner.

Speaker 0: 00:25:49

Just one Bitcoin node with a bunch of hash rate.

Speaker 0: 00:25:51

There is no pool.

Speaker 0: 00:25:52

And so nobody can even join.

Speaker 0: 00:25:54

So the rest of the network has one of two options when Mera produces a block.

Speaker 0: 00:25:58

They can either accept Mera's block or they can reject it.

Speaker 0: 00:26:01

The goal is always to make sure it's accepted.

Speaker 0: 00:26:05

But yeah, in terms of data, That I don't believe Mera will ever support that for the internal Mera pool.

Speaker 0: 00:26:12

But datum is pretty cool as a proxy solution.

Speaker 0: 00:26:15

Okay.

Speaker 0: 00:26:16

Ladies and gentlemen, please let's thank Portland Hoddle for this beginning talk.

Speaker 0: 00:26:23

Thank you.

Speaker 0: 00:26:24

Thank you.
