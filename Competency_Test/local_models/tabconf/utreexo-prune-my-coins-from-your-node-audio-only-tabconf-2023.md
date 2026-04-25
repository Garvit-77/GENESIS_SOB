---
title: Utreexo - Prune my coins from your node (audio only) TABconf 2023
speakers:
  - Calvin Kim
tags: []
source_file: https://www.youtube.com/watch?v=aR4uoLRFu2g
media: https://www.youtube.com/watch?v=aR4uoLRFu2g
categories: []
date: '2023-10-26'
summary: "Presented at TABconf 2023, the presentation on **Utreexo** outlines a transformative\
  \ approach to Bitcoin node scalability by reimagining how the network handles Unspent\
  \ Transaction Output (UTXO) data.\n\n### **The Challenge: The Expanding UTXO Set**\n\
  Standard Bitcoin nodes currently face a significant bottleneck: while they can \"\
  prune\" old block data, they cannot prune the UTXO set. This set\u2014required to\
  \ validate new transactions\u2014is growing exponentially, placing heavy demands\
  \ on RAM and Disk IO. This growth effectively prevents low-end hardware from running\
  \ full nodes as the database becomes too large and slow to navigate.\n\n### **The\
  \ Utreexo Solution: A Hash-Based Accumulator**\nUtreexo solves this by converting\
  \ the UTXO set into a \"fancy Merkle tree,\" or an accumulator.\n*   **Drastic Size\
  \ Reduction:** Instead of storing gigabytes of data, a Utreexo node only needs to\
  \ store the **roots** of the Merkle tree. This allows billions of UTXOs (hundreds\
  \ of gigabytes) to be represented by just a few hundred bytes.\n*   **The \"Burden\
  \ of Proof\" Shift:** Utreexo changes the network incentive structure. Currently,\
  \ the entire network pays the storage cost for every user's coins. Utreexo shifts\
  \ this responsibility: if you wish to spend a coin, you (or your wallet) must provide\
  \ the Merkle proof that the coin exists.\n\n### **Performance and Implementation**\n\
  The implementation of Utreexo offers significant hardware and speed advantages:\n\
  *   **Disk and Hardware Flexibility:** By eliminating the need for constant random\
  \ reads from a database (like LevelDB), Utreexo allows traditional hard drives (HDDs)\
  \ to perform nearly as fast as SSDs. \n*   **Parallel Validation:** Because UTXO\
  \ roots can be committed to the binary, nodes can validate different segments of\
  \ the blockchain simultaneously. This enables a **62% faster Initial Block Download\
  \ (IBD)**, which can scale linearly by adding more computers.\n*   **Deployment:**\
  \ Utreexo is 100% optional and requires **no soft fork** or consensus changes. It\
  \ utilizes \"Bridge Nodes\" to generate proofs for Utreexo-enabled nodes. A working\
  \ implementation, `utreexod`, already supports the Electrum protocol.\n\n### **Technical\
  \ Trade-offs**\nThe primary cost of Utreexo is a significant increase in **bandwidth**.\
  \ Because Merkle proofs must accompany every transaction, the data required for\
  \ IBD roughly doubles, and transaction overhead increases about fourfold. There\
  \ is also a marginal increase in CPU usage due to the additional hashing required\
  \ to verify proofs.\n\n### **Conclusion**\nThe session concluded with a technical\
  \ overview of the algorithms used for adding and deleting UTXOs, specifically highlighting\
  \ a \"moving up\" algorithm that increases efficiency. Following the presentation,\
  \ the speaker thanked Calvin for his contributions and, noting a lack of further\
  \ inquiries from the audience, wrapped up the session."
conference: TABConf 2023
topics:
  - Utreexo
  - UTXO Accumulators
  - Pruning
  - Statelessness
youtube:
  description: 'Utreexo is a proposed hash-based accumulator for the Bitcoin UTXO
    set. The talk will focus on how exactly the accumulator algorithms work so that
    the audience gains a better understanding of how the consensus-critical algorithm
    works. I will go into detail on how: addition, deletion, prove, and verify functions
    work as well as how we''ve implemented the data structure in code. The audience
    can expect to take away how the algorithms work, how they are implemented, and
    how/why we got to the current algorithms today, which are different from what
    the original utreexo paper outlined.

    About the Speaker

    Social Links


    Github: github.com/kcalvinalvin

    Twitter: twitter.com/kcalvinalvinn


    https://github.com/TABConf/2023.tabconf.com/issues/89'
  tags: []
  categories:
    - Education
  channel_name: TABConf
transcript_by: your_username via tstbtc v1.0.0
---

Speaker 0: 00:00:00

Ladies and gentlemen, up next on the main stage, we have Calvin presenting Utrexo.

Speaker 0: 00:00:07

Enjoy.

Speaker 0: 00:00:13

Hello everyone.

Speaker 0: 00:00:14

Uh lovely to see your faces.

Speaker 0: 00:00:16

So um I named the talk Utrexo.

Speaker 0: 00:00:19

You could prune my coins from your node.

Speaker 0: 00:00:22

So you could literally prune my coins from your node, but So I'll get into that.

Speaker 0: 00:00:26

But uh before we start, I'm sort of trying to see how much I have to shill it or how much I want to explain it.

Speaker 0: 00:00:35

So do you know what Utrexo does?

Speaker 0: 00:00:38

Or like do you already know all right, all right, like a good good amount of people.

Speaker 0: 00:00:43

Okay, so just get started.

Speaker 0: 00:00:45

So agenda for today, I will shill and then explain.

Speaker 0: 00:00:50

Uh the main shelling points are that it's like smaller nodes and um some performance ones.

Speaker 0: 00:00:55

I'll also get into uh what the trade-offs are and how we deploy and what I think about it.

Speaker 0: 00:01:01

And um that's in the aligning incentives.

Speaker 0: 00:01:04

And uh we'll finally get into how it works.

Speaker 0: 00:01:06

So smaller full nodes.

Speaker 0: 00:01:09

Uh this is my full node.

Speaker 0: 00:01:11

I just took a screencap of it.

Speaker 0: 00:01:13

And over here, of course, is the blocks.

Speaker 0: 00:01:15

Folder, and this is where all your blocks live.

Speaker 0: 00:01:18

So this is a prune node, so I'm able to prune all these blocks up until two days ago.

Speaker 0: 00:01:24

And then we have the chain state.

Speaker 0: 00:01:25

It's like 7.4 gigs now.

Speaker 0: 00:01:27

And so this chain state is something that we really can't prune.

Speaker 0: 00:01:30

And so the UTXO set lives in the chain state.

Speaker 0: 00:01:33

And I think we could just skip over it.

Speaker 0: 00:01:36

But transaction output, TXO.

Speaker 0: 00:01:40

There's a typical transaction.

Speaker 0: 00:01:42

And then you have these outputs of a transaction, which is called the transaction outputs.

Speaker 0: 00:01:46

And then you have a set of them.

Speaker 0: 00:01:47

So all of them combined is just the UTXO set.

Speaker 0: 00:01:51

So the UTXO set is just the combination of all the transaction outputs and these are the actual bitcoins you're able to spend.

Speaker 0: 00:01:59

So UTXO set is unprunable for now.

Speaker 0: 00:02:02

So you need to keep that.

Speaker 0: 00:02:03

So the previous slide that I showed where it it has a seven point four gigs of um Uh chain state, you can't prune that.

Speaker 0: 00:02:10

You have to keep that.

Speaker 0: 00:02:10

So as it grows, and it does grow, and as you could see, it's um it's growing rather exponentially.

Speaker 0: 00:02:18

So uh it's able to grow as much as the block sizes are.

Speaker 0: 00:02:22

So we're we could grow ten uh like two megabytes, I think, around uh in ten minutes.

Speaker 0: 00:02:30

So the idea, the basic idea, is to turn the UTXO set into a Merkle tree.

Speaker 0: 00:02:35

It's not just a Merkle tree, it's like a fancy Merkle tree.

Speaker 0: 00:02:38

That's how I that's how I sell it to people.

Speaker 0: 00:02:40

So I like this meme where it's this Merkle trees and UTXO is a fancy Merkle tree.

Speaker 0: 00:02:47

So why Merkleize it?

Speaker 0: 00:02:48

So if we Merkleize it, then we're able to put a bound to the UTXO set growth.

Speaker 0: 00:02:52

So we saw just with the graph, we saw like this exponential growth.

Speaker 0: 00:02:57

But now we're able to put a bound on that.

Speaker 0: 00:02:59

So uh this is another meme that I showed to explain Utrexo.

Speaker 0: 00:03:02

So it's like without Utrexo you have a big book, but with Utrexo you have a small book.

Speaker 0: 00:03:07

But because it's uh it's a constant size, even if the book grows, when your book grows without the Utrexo, with Utrexo your book uh remains constant.

Speaker 0: 00:03:16

So even if it grows a l lot long a lot bigger, then you're still able to have that small size.

Speaker 0: 00:03:22

So it takes O of n, which is the n is the number of all UTXOs ever, and well all the UTXOs in the current chain state, and then you're able to turn that into log two of n.

Speaker 0: 00:03:36

So it's very small.

Speaker 0: 00:03:38

So this is sort of a assumption, and these are the, I guess, the best numbers that you could have.

Speaker 0: 00:03:43

But if you have 8 billion UTXOs, just one One UTXO per person, then you'll have something about 472 gigabytes.

Speaker 0: 00:03:52

Then if you take that and if you have that as a UTRXO thing, then you'll have 416 bytes.

Speaker 0: 00:03:58

So a lot of size savings.

Speaker 0: 00:04:01

So this is one of the things that's in the long run, you do need it for Bitcoin because, hey, we have a prune node, but the prune node is still 400 gigabytes.

Speaker 0: 00:04:12

So with UTRXO, it becomes.

Speaker 0: 00:04:14

Manageable.

Speaker 0: 00:04:16

So that's the small nodes.

Speaker 0: 00:04:18

And there's some performance wins that actually come from these small nodes.

Speaker 0: 00:04:22

So one of the big performance wins is that it has the same performance whether it's on a hard disk drive or SSD.

Speaker 0: 00:04:28

And the whole reason for this is because you're just avoiding the Skyo.

Speaker 0: 00:04:32

The chain state is currently just the key value database with level DB.

Speaker 0: 00:04:36

And we don't have.
random reads anymore with U-Trix.

Speaker 0: 00:04:40

So uh like okay, so I get it, so so prove it.

Speaker 0: 00:04:44

So uh what I did was um I was doing IV D and uh it was comparing uh the performance degradation running on a SSD versus uh a hard disk drive.

Speaker 0: 00:04:54

So uh prune nodes have to flush a lot more because when you're pruning you also have to flush the UTXO set and so this forces those uh disk IO to happen.
36% slower for current Bitcoin core nodes.

Speaker 0: 00:05:07

So this is my test methodology was: hey, I run this IBD on an MVME SSD, and then I'll run it again on a hard disk drive.

Speaker 0: 00:05:16

So when we done that, on a hard disk drive, it was 36% slower.

Speaker 0: 00:05:20

With UtrexL nodes, it's about 3% slower.

Speaker 0: 00:05:23

And this is due to some block index flushes that are happening, which it it is actually possible to not even have those.

Speaker 0: 00:05:31

And so it's a lot lot of savings in disk IO.

Speaker 0: 00:05:37

And so even if you have a really, really cheap disk, like a really slow hard disk drive, you're able to maintain that same speed.

Speaker 0: 00:05:45

And because you're not writing as much, if you're running on a Raspberry Pi and say you have a micro SD card, that SD card will last a lot longer for you.

Speaker 0: 00:05:53

So this is exactly what we flush for UTRXO.

Speaker 0: 00:05:56

This is just in Go, and it's just a lot of roots, the block height, or yeah, the roots and the number of leaves there are.

Speaker 0: 00:06:04

So what we s what we see here on the screen, we actually serialize that and this is what we write to the disk.

Speaker 0: 00:06:12

The next thing that I sort of want to show is the parallel block validation.

Speaker 0: 00:06:18

So the current block validation, it has to happen sequentially.

Speaker 0: 00:06:21

So we go from block zero and then one and then two.

Speaker 0: 00:06:26

And then so on and so forth until we reach the tip, it's like 800,000.

Speaker 0: 00:06:30

But with parallel block validation, what we do is the idea is sort of like assume UTXO, where you have a UTXO set.

Speaker 0: 00:06:38

But because the UTXO set is just a UTXO root, we're able to commit that into the binary directly.

Speaker 0: 00:06:45

And we're able to process any blocks that are after that UTXO set.

Speaker 0: 00:06:51

So with UTRXO, it doesn't have to be sequential.

Speaker 0: 00:06:54

So if we have the roots at 100,000 and 200,000, and these are untrusted roots at the start, so these come with the binary, but we don't necessarily have to trust it because we'll verify that it actually matches up.

Speaker 0: 00:07:07

So if we sync, Then we go, we sync block one.

Speaker 0: 00:07:12

At the same time, we block, we also validate block 100,000 and 1 and 200,000 and 1.

Speaker 0: 00:07:18

And so on and so forth, until we get to the block 100,000 and 200,000 and 300,000.

Speaker 0: 00:07:24

So from here, what we do is we compare the roots.

Speaker 0: 00:07:28

That's the one that we had at the beginning and the one that we calculated.

Speaker 0: 00:07:32

And so if they're the same, That means uh it's trusted.

Speaker 0: 00:07:36

If they're different, that means we're we know our binary was wrong.

Speaker 0: 00:07:39

So we just stop, we crash.

Speaker 0: 00:07:42

And then we do the same exact thing for block 200,000.

Speaker 0: 00:07:45

We look at the roots, we compare it.

Speaker 0: 00:07:47

If they're the same, great, we saved a lot of time because we're able to parallelly validate that blocks ranges 200,000 to 300,000.

Speaker 0: 00:07:56

So um this all results in about 62% faster IVD uh in my testing.

Speaker 0: 00:08:01

Uh this was about two years ago, and so the numbers may have changed, but um this is the rough sort of numbers that we have.

Speaker 0: 00:08:09

Another thing another fun thing that we could do is because it's just parallel, uh we don't even have to do it on the same computer necessarily.

Speaker 0: 00:08:16

And so the idea was that we'll have a sort of a coordinator and that will send off work to other computers so those blocks can be validated.

Speaker 0: 00:08:23

And wh I did this with uh a desktop and I had and a laptop that I had and it's about two X faster when using two computers for IV D versus one computer for IV D.

Speaker 0: 00:08:33

And this is the graph that I have and the um uh on if you see machine one that took about four hundred twenty six minutes versus Bitcoin Core uh version twenty one at three hundred eighty two minutes.

Speaker 0: 00:08:45

And if we use two computers it's like about half the time.

Speaker 0: 00:08:48

So it was it was able to be It was able to do the I B D about twice as fast.

Speaker 0: 00:08:53

So this is sort of a shit posting that I have.

Speaker 0: 00:08:56

But uh so how much can you parallelize?

Speaker 0: 00:09:00

And how much can you parallelize based on the AMDL's law is you can only parallelize what is able to be parallelly validated.

Speaker 0: 00:09:07

If there's something that is that has to be done in sequence, then that can't that can't be sped up using more computers.

Speaker 0: 00:09:13

Um but a lot of it Can be used.

Speaker 0: 00:09:17

So there's very little, it's it's really just the block header download that can't be parallelized.

Speaker 0: 00:09:22

So if you keep adding computers, it keeps getting faster.

Speaker 0: 00:09:26

So presumably if we added uh in the previous slides here, if we have three computers, we'll be three x faster.

Speaker 0: 00:09:32

If we have four computers, it'll be four x faster.

Speaker 0: 00:09:34

If we have five computers, so on and so forth.

Speaker 0: 00:09:37

So what's the catch?

Speaker 0: 00:09:39

It's great, it's small.

Speaker 0: 00:09:41

It's you could use uh SSD and a hard drive and it'll be about the same performance.

Speaker 0: 00:09:46

Uh you could like do this like weird like fancy validation stuff.

Speaker 0: 00:09:49

What's the catch?

Speaker 0: 00:09:50

The catch is that you have more data download.

Speaker 0: 00:09:53

So a user XO node also has to download the Merkle proofs and those proofs uh take up a little bit of space.

Speaker 0: 00:09:59

So uh as of block uh seven hundred seventy one hundred thousand uh it's about si three hundred sixty four gigs.

Speaker 0: 00:10:05

So I think at 700,000 it was about 400 gigs, so it's about one x.

Speaker 0: 00:10:11

About about about two hu like two hundred times more that you would have to download during uh IP D.
Uh for transaction, uh when you're doing like mempool stuff and when you get a transaction, that transaction will also have a Merkle proof attached to it.

Speaker 0: 00:10:26

When you do that, it's about four X.

Speaker 0: 00:10:28

So typical transaction being two hundred 200 to 300 kilobytes, you'll be downloading about 800 kilobytes.

Speaker 0: 00:10:35

There are some optimizations that are being explored that we haven't really got to now, and those optimizations are just caching.

Speaker 0: 00:10:41

So if we cache some of the proof that we have, then we're trading off memory usage for bandwidth savings.

Speaker 0: 00:10:50

So there are optimizations being explored.

Speaker 0: 00:10:54

So this is the sort of the meme that I give when I explain it to people.

Speaker 0: 00:10:58

You're increasing your bandwidth a bit.

Speaker 0: 00:11:00

I I don't think it's um it it it's uh it's uh i it's an insignificant amount of change in your bandwidth.

Speaker 0: 00:11:06

And your CPU you're doing more hashes, but I also think that's sort of i insignificant.

Speaker 0: 00:11:11

And you're saving a lot in disk IO and RAM usage.

Speaker 0: 00:11:15

You're saving a lot.

Speaker 0: 00:11:16

And this h and this allows Um as you've seen before, all these um efficiency gains.

Speaker 0: 00:11:24

Um so okay, those actually play.

Speaker 0: 00:11:27

So deployment.

Speaker 0: 00:11:28

How do we actually get this into people?

Speaker 0: 00:11:31

It's a hundred percent optional.

Speaker 0: 00:11:33

It's a hundred percent optional.

Speaker 0: 00:11:35

So you could just ignore it if you don't want it.

Speaker 0: 00:11:37

And uh if you want it, you could run it, but uh there is no there's absolutely zero forks.

Speaker 0: 00:11:43

So no no drama uh anywhere to be seen with UTRXO.

Speaker 0: 00:11:49

So um these bridge nodes uh so h how do we do it without a software?

Speaker 0: 00:11:53

We use something called bridge nodes, and these bridge nodes will generate proofs for new tr new blocks and transactions.

Speaker 0: 00:11:59

And uh these bridge nodes uh have to keep the entire uh entire Merkel tr Merkel forest and the entire UTXO set.

Speaker 0: 00:12:07

But these can be pruned.

Speaker 0: 00:12:09

And we have an implementation right now, and it's implemented as an indexer at that link.

Speaker 0: 00:12:16

What's also being developed at the moment is we have a separate binary that connects to Bitcoin Core, and that will be a bridge node.

Speaker 0: 00:12:22

So it doesn't necessarily have to be part of a full node implementation as well.

Speaker 0: 00:12:28

So aligning incentives is something that I really Uh felt that it was exciting.

Speaker 0: 00:12:34

And right now, there is no burden of UTXO storage for an individual.

Speaker 0: 00:12:40

So when you create a transaction, you're making if it's like a one and two out, you're making two UTXOs.

Speaker 0: 00:12:47

And there is no burden of storage for you.

Speaker 0: 00:12:50

There is the burden of transaction fees to make that UTXO, but besides that, there is no burden anymore.

Speaker 0: 00:12:57

We have all these companies like Coinbase and like Binance and because there is no burden of storage, we have like these like stamps and you want JPEGs in your UTXO set.

Speaker 0: 00:13:06

And that's the whole point.

Speaker 0: 00:13:07

It's like you store my JPEG w uh and you will store it for me.

Speaker 0: 00:13:12

And so uh if we so what UtrexO does is it switches the burden to everyone storing every UTXO in every coin.
to each storing their own.

Speaker 0: 00:13:23

So with UTRXO, um my coins are in the UTXO set, but you could prune those away for your node.

Speaker 0: 00:13:30

So I kinda like this in that it it it it helps this incentive where right now, uh if you have enough transaction fees, then it really doesn't matter in the sense that, hey, like I I don't have to store it, like other people can store it for me.

Speaker 0: 00:13:46

But now you also have to store it for yourself.

Speaker 0: 00:13:49

And so it increases the cost of creating more UTXOs, which is beneficial for the entire network as a whole.

Speaker 0: 00:13:56

So finally, how does it work?

Speaker 0: 00:14:00

Algorithms, consensus algorithms.

Speaker 0: 00:14:02

So add a UTXO, delete a UTXO, and prove that the UTXO actually exists.

Speaker 0: 00:14:08

So I'm going through add a UTXO.

Speaker 0: 00:14:12

Just uh raise of hands if you know how Merkle trees work.

Speaker 0: 00:14:15

Like do we know Merkle trees?

Speaker 0: 00:14:17

Alright, quite a few of you.

Speaker 0: 00:14:18

Okay, so we'll we'll we'll do this quick.

Speaker 0: 00:14:20

So if you have uh four things to hash, uh if you have four elements in the set, so let's say we have A, B, C, and D.

Speaker 0: 00:14:26

And this could be U T X O's A, B, C, and D, or just anything.

Speaker 0: 00:14:31

So it could be like four messages.

Speaker 0: 00:14:32

It's like, okay, like Alice has like five bitcoins, Bob has two bitcoins.

Speaker 0: 00:14:37

It could be anything, and you would hash it.

Speaker 0: 00:14:40

And we hash each of the pairs, so A and B go together.

Speaker 0: 00:14:43

So we put A, B, and we put it through a hash function, and that becomes E.
Same thing with C and D, and that becomes F.

Speaker 0: 00:14:50

Until we have one left, and that's the root.

Speaker 0: 00:14:53

So this is how a normal Merkle tree construction would work with Utrecht.

Speaker 0: 00:14:57

So it's a little bit different.

Speaker 0: 00:14:58

So if you have just one element, then That that's the root.

Speaker 0: 00:15:03

You just have that one, that's single root.

Speaker 0: 00:15:05

If you have two UTXOs, you concatenate them the same thing you would do with the normal Merkle tree construction.

Speaker 0: 00:15:12

You would put them together, hash it to create a new root.

Speaker 0: 00:15:15

So if you have two U two elements in the set, then your tree would look like so.

Speaker 0: 00:15:20

And those two elements that you just hashed, they could throw away.

Speaker 0: 00:15:23

So you don't need to keep them anywhere.

Speaker 0: 00:15:24

You just keep the roots.

Speaker 0: 00:15:26

So so if you have two UTXOs, what you're actually storing looks like so.

Speaker 0: 00:15:31

It's just one root.

Speaker 0: 00:15:33

Uh but if we have three UTXOs, um so you're what what it differs from a normal Merkle tree construction is that you're able to add more elements even if you only keep the roots.

Speaker 0: 00:15:45

So if you have three, then you just add on another one and that becomes its own root.

Speaker 0: 00:15:50

Because we don't we don't have anything to hash with.

Speaker 0: 00:15:53

If we have four, yeah, it becomes its own root.

Speaker 0: 00:15:55

If we have four, then we add it, and because we have something that it could hash with, uh we concatenate, hash, and then draw away the leaves, and then now we have these two that we could hash together, concatenate, hash, draw away, and then we have one root left.

Speaker 0: 00:16:11

Uh same thing with five.

Speaker 0: 00:16:12

Uh five we don't have anything we could hash with, so we just Stick it on the side.

Speaker 0: 00:16:16

Uh six, now we have something to hash with.

Speaker 0: 00:16:20

And so, and then throw away the leaves, and then now we have two roots.

Speaker 0: 00:16:22

If we have seven, then we don't have anything it could hash with, and so it becomes its own root.

Speaker 0: 00:16:27

So we have three roots that we're saving.

Speaker 0: 00:16:30

If it's eight, then now finally we have something we could hash with.

Speaker 0: 00:16:34

Concatenate, hash, move up, delete, concatenate, hash, delete.

Speaker 0: 00:16:39

And then we have a pair that we could hash.

Speaker 0: 00:16:41

Now concatenate, hash, delete.

Speaker 0: 00:16:43

Now we have one root.

Speaker 0: 00:16:45

So uh this is how the data structure would look like, but you would only keep the root.

Speaker 0: 00:16:52

And so that's the addition.

Speaker 0: 00:16:55

Addition's pretty simple.

Speaker 0: 00:16:56

Uh it's also the same exact algorithm that's used in uh Blake 3 hashing.

Speaker 0: 00:17:00

So it's it's not completely new and it's very It's been battle-tested.

Speaker 0: 00:17:06

So deletion and verification.

Speaker 0: 00:17:08

Deletion happens with verifying the existence.

Speaker 0: 00:17:11

So thankfully with Bitcoin, you don't just randomly delete things.

Speaker 0: 00:17:15

When you're deleting, you also have to sort of see that it actually exists.

Speaker 0: 00:17:19

Because we're not, so when you're spending a coin, you're like, oh, yeah, yeah, this coin actually exists.

Speaker 0: 00:17:24

And now because we spend it, we delete it.

Speaker 0: 00:17:28

So, a Merkle tree proof overview.

Speaker 0: 00:17:30

So, if you're proving A, remember with Merkle trees, you just need to keep the roots.

Speaker 0: 00:17:35

Someone gives you the proof of B and F, and then you fetch A, you hash the E, then you get the roots, then you compare the root with the root that you have, and if they're the same, the proof is valid.

Speaker 0: 00:17:47

If they're different, the proof is invalid.

Speaker 0: 00:17:50

So, this is.

Speaker 0: 00:17:52

About the same as how the the proving is the same.

Speaker 0: 00:17:55

And um deletion is a little different because uh deletion is novel with U-Trixo, at least with hash-based uh accumulators.

Speaker 0: 00:18:02

So deleting A.

Speaker 0: 00:18:04

The only requirement is that you keep the roots.

Speaker 0: 00:18:06

So if you have the root, you can do deletion of any element.

Speaker 0: 00:18:10

And someone will well someone will uh when you're deleting A, someone will actually provide the proof for you.

Speaker 0: 00:18:16

And in this case, if it's in a block, You will get it from the proof that you that comes with the block.

Speaker 0: 00:18:21

So you calculate A from the Bitcoin block.

Speaker 0: 00:18:24

You receive the proofs for A, which is B, J, and N.

Speaker 0: 00:18:28

And then as you would have done with the normal Merkle trade, you hash that up to I, you get M, and then you get the root.

Speaker 0: 00:18:35

And once you have the root, you compare it with the one that you already saved.

Speaker 0: 00:18:39

If they're equal, then okay, yeah, I am now.
confident that A actually exists in the set.

Speaker 0: 00:18:45

But if they're different, then the peer lie to you and just banned a peer.

Speaker 0: 00:18:49

So calculate the root after deletion is because you're deleting A, you move B up to I.

Speaker 0: 00:18:56

And that's it, that's deletion.

Speaker 0: 00:18:58

And since we move B up to I, we delete the old A and B.

Speaker 0: 00:19:03

Now we hash again because M is now uh a hash of B and J.

Speaker 0: 00:19:07

And not i and j.

Speaker 0: 00:19:09

And then we recalculate the root as well.

Speaker 0: 00:19:12

And then once we have the root, we copy that root over to be saved.

Speaker 0: 00:19:16

And that's it.

Speaker 0: 00:19:17

That's finished.

Speaker 0: 00:19:17

That's just deletions.

Speaker 0: 00:19:20

So after deleting A, this is what your tree would look like.

Speaker 0: 00:19:23

And it's just now you have instead of eight elements, now you have seven elements, but your tree is now imbalanced, and it looks like that.

Speaker 0: 00:19:31

So if we're deleting, Uh we have some fancy stuff for bashing deletions.

Speaker 0: 00:19:36

So if you're deleting not a single element, but if you're deleting multiple elements, then uh it's a little different.

Speaker 0: 00:19:41

And if you have bash deletions, then you s again, you start off with the root, you get EFG and H from the block, Bitcoin block, because that's what you're deleting.

Speaker 0: 00:19:50

And then you receive the proof.

Speaker 0: 00:19:51

And the proof is a lot smaller because you're deleting a bunch of things at the same time.

Speaker 0: 00:19:56

You calculate K and L.
Calculate n, get the root, compare with the root that you already have saved, and if they're the same, then you're confident that it actually exists.

Speaker 0: 00:20:10

Then when you're actually deleting, then now you have to calculate the new root.

Speaker 0: 00:20:14

Since E, F, G, and H is b all d being deleted, it actually means that K and L is being deleted.

Speaker 0: 00:20:20

Because those are just Concatenated and hashed versions of EF and GNH.

Speaker 0: 00:20:26

So remove old nodes for EF, GNH.

Speaker 0: 00:20:29

After that, we're deleting N.

Speaker 0: 00:20:32

And now, since we're deleting N, we move M up to the root.

Speaker 0: 00:20:37

And we copy M over to be saved.

Speaker 0: 00:20:40

And that's it.

Speaker 0: 00:20:42

So after deleting all those four elements, now we have, we started off with eight, and now we deleted five.

Speaker 0: 00:20:47

So we have now three elements in the Merkle tree, and that's what it looks like.

Speaker 0: 00:20:49

Looks like.

Speaker 0: 00:20:51

And that's it.

Speaker 0: 00:20:51

That's it for consensus.

Speaker 0: 00:20:53

So uh that's implemented in 174 lines of Python if you're interested.

Speaker 0: 00:20:58

And it's in that repo.

Speaker 0: 00:21:00

And that's it for consensus.

Speaker 0: 00:21:02

Uh those are my slides.

Speaker 0: 00:21:04

There's a lot of links in the slides.

Speaker 0: 00:21:06

Uh for the deletion algorithms I have a guest that you could look at which um uh provides the actual source code that to do the same exact thing.

Speaker 0: 00:21:14

So if you I encourage you guys to take a look if you're curious and interested.

Speaker 0: 00:21:19

And that's it for my talk and I'll take some questions.

Speaker 0: 00:21:27

I think we have like four minutes.

Speaker 0: 00:21:30

Any I just shout it out loud I guess.

Speaker 0: 00:21:38

Right.

Speaker 0: 00:21:46

Right, um, so ordering is important, and you only modify the tree on every block.

Speaker 0: 00:21:56

And in that block, there's the natural ordering of the transactions, and that's the order that we go off of.

Speaker 0: 00:22:14

Um so so so short answer, no.
Uh but there are some properties of the trees that we're relying on and um there's some fancy stuff that we're doing that's that Keep still keeps that, um still keeps those properties that we use.

Speaker 0: 00:22:31

And so, uh long story short, no, uh, it's the same, but um, yeah.

Speaker 0: 00:22:51

Oh, so the The the thing that's different from the original UTRXO paper is the deletions are different.

Speaker 0: 00:22:58

Um in the original paper, if you look at the appendix, it'll show you how batch deletions work and how you in the original paper you would swap elements, so you would swap the deleted leaves out with the new leaves that are being added.

Speaker 0: 00:23:12

And uh we're not doing that anymore because um it it it it was you would get bigger proofs with Bitcoin stuff and it was less efficient in in terms of performance.

Speaker 0: 00:23:23

So we've we now we're now doing this like moving up kind of algorithm and it's it's both faster and it it has a proof size savings.

Speaker 0: 00:23:46

Um so if you don't have any bridge nodes on the network, yeah, it doesn't work.

Speaker 0: 00:23:51

Um but uh I I will mention that the bridge nodes are only responsible for generating proofs for new blocks and new transactions.

Speaker 0: 00:24:00

Uh once those are propagated uh they're saved with the Uh, just the normal UTRXO nodes that only keep the roots, and they're able to, you know, they can be an archival UTRXO node.

Speaker 0: 00:24:11

So, Utrexo only affects the chain state.

Speaker 0: 00:24:14

So, you can still choose to have historical blocks and proofs for those historical blocks.

Speaker 0: 00:24:19

And for the mempool transactions, you keep the proof along with the transaction in your mempool.

Speaker 0: 00:24:40

So you could do it with the software, and that would be a way to do it with the software, and you would just force the miners to generate the proofs.

Speaker 0: 00:24:49

But we wanted to stay away from softworks.

Speaker 0: 00:25:00

And there's like yeah, it just shot it out.
Yep.

Speaker 0: 00:25:26

Right.

Speaker 0: 00:25:28

Uh just for the sake of the presentation I did a hundred thousand blocks.

Speaker 0: 00:25:32

Um for the actual testing that we that I showed you for the faster I V D, uh the the increments were in thousand blocks.

Speaker 0: 00:25:40

Uh but uh what we really want to do is do single increments.

Speaker 0: 00:25:43

So you could you could verify any single block in the entire um I B D.

Speaker 0: 00:25:48

So that's the that's the current goal.

Speaker 0: 00:25:50

But uh the implementation.

Speaker 0: 00:25:56

Just sake for the for the sake of the presentation.

Speaker 0: 00:26:02

Yeah, this type of system of course has the property that um wallets can potentially store you know, the partial proofs required for spending.

Speaker 0: 00:26:10

Have you actually tried um like prototyping any of that to just see what that would look like?

Speaker 0: 00:26:14

Yeah, the wallet is actually all implemented and um it's in the it's it's in that repo of like uh the the GitHub organization UtrexL.

Speaker 0: 00:26:24

It's under UtrexLD.

Speaker 0: 00:26:25

And uh we've implemented it as a it ha the wallet has a state.

Speaker 0: 00:26:31

And then using that state, we're able to support the Electrum protocol.

Speaker 0: 00:26:35

So it essentially acts as an Electrum personal server.

Speaker 0: 00:26:38

And when you start up your node, you just give it your master public key, and it will scan and look for your own UTXOs that you control.

Speaker 0: 00:26:48

And it will update those proofs as you go.
Cool.

Speaker 0: 00:26:56

Is that it?

Speaker 0: 00:26:57

If no further questions, thank you to Calvin.
