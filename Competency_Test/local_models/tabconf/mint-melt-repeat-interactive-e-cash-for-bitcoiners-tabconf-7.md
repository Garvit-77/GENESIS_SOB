---
title: "\U0001F4B5\U0001F3E6 Mint, Melt, Repeat: Interactive E-cash for Bitcoiners\
  \ | TABConf 7"
speakers:
  - Edil Medeiros
tags: []
source_file: https://www.youtube.com/watch?v=Uc6pk60l4to
media: https://www.youtube.com/watch?v=Uc6pk60l4to
categories: []
date: '2026-02-09'
summary: "Based on the transcript from TABConf 7, the following is a coherent summary\
  \ of the **Cashu protocol**, an interactive, Bitcoin-native eCash system designed\
  \ for privacy and scalability.\n\n---\n\n### **1. Core Concept: Digital Bearer Assets**\n\
  Cashu is a web-based eCash protocol that functions through **digital IOUs**. In\
  \ this system, a \"Mint\" acts as a trusted issuer. Users deposit an asset (typically\
  \ Bitcoin) into the Mint, which then issues signed digital notes. \n\nThese notes\
  \ are **bearer assets**: whoever holds the token owns the value. Each token consists\
  \ of a serial number and a digital signature from the Mint. To prevent double-spending,\
  \ the Mint maintains a database of spent serial numbers; the first person to present\
  \ a specific serial number is credited the value, and the token is then invalidated.\n\
  \n### **2. Cryptographic Privacy via Blinded Signatures**\nThe defining feature\
  \ of Cashu is its use of **Blinded Signatures** based on Elliptic Curve Cryptography\
  \ (ECC). This mechanism ensures that the Mint cannot track its users:\n*   **The\
  \ Process:** A user (Alice) generates a secret serial number and \"blinds\" it with\
  \ a random factor before sending it to the Mint (Bob). The Mint signs this blinded\
  \ message and returns it. Alice then \"unblinds\" the signature. \n*   **The Result:**\
  \ Alice now possesses a valid signature on a secret that the Mint has never seen.\
  \ When she later redeems the token, the Mint can verify the signature is valid using\
  \ its public key but has no record of which user originally requested that specific\
  \ token.\n*   **Denominations:** To further preserve anonymity, Mints issue tokens\
  \ in **powers of two** (1, 2, 4, 8, etc.). This prevents the Mint from identifying\
  \ users based on unique or oddly sized transaction amounts.\n\n### **3. The Cashu\
  \ Workflow: Mint, Melt, and Swap**\nThe protocol operates over HTTP using JSON data\
  \ structures and follows standardized specifications known as **NUTs** (Notation,\
  \ Understanding, and Terminology). \n\n*   **Minting (Depositing):** This is a two-step\
  \ process. A user requests a Lightning (BOLT11) invoice from the Mint. Once paid,\
  \ the wallet generates a blinded secret, which the Mint signs and returns as a \"\
  proof.\"\n*   **Melting (Redeeming):** To convert eCash back into Bitcoin, a user\
  \ provides a Lightning invoice to the Mint and submits their proofs. The Mint verifies\
  \ the tokens, adds them to the \"spent\" database, and pays the Lightning invoice.\
  \ \n*   **Swapping (Exchanging):** Users can exchange old tokens for new ones. This\
  \ is used to break large denominations into smaller \"change\" or to \"refresh\"\
  \ tokens to ensure privacy and prevent race conditions where two parties might attempt\
  \ to claim the same secret.\n\n### **4. System Architecture and Security**\n*  \
  \ **Data Structures:** A Cashu wallet stores \"proofs\" locally. These contain the\
  \ amount, a unique ID, the secret, and the signature. Because these are bearer assets,\
  \ if a user loses their local data without a backup of the secrets, the funds are\
  \ permanently lost.\n*   **Client-Mint Interaction:** The system is designed to\
  \ be lightweight and web-friendly. Mints provide public keys for different denominations,\
  \ and clients use these to verify the validity of tokens before accepting them.\n\
  \n### **5. Beyond Bitcoin: Multi-Asset Mints and Atomic Swaps**\nWhile primarily\
  \ used for Bitcoin, the Cashu protocol is asset-agnostic.\n*   **Asset Flexibility:**\
  \ Mints can issue tokens backed by fiat (USD, EUR), loyalty points, or even shares\
  \ in a mining pool. In a mining context, pools can issue eCash as IOUs for \"shares\"\
  \ contributed by miners.\n*   **Atomic Swaps:** Because assets like USD lack a native\
  \ Lightning Network, the protocol supports **Atomic Swaps**. This allows users to\
  \ trade different types of tokens (e.g., Bitcoin eCash for USD eCash) securely.\
  \ These swaps utilize Hash Time Locked Contracts (HTLCs), a feature already supported\
  \ by most Mint implementations, enabling a versatile and private digital exchange\
  \ ecosystem."
conference: TABConf 7
topics:
  - Cashu
  - Chaumian E-cash
  - Privacy
  - Blinded Signatures
  - Digital Cash
youtube:
  description: "\U0001F4CC Learn more about this workshop on GitHub: \u2B50\uFE0F\U0001F419\
    \nhttps://github.com/TABConf/7.tabconf.com/issues/22\n\n\U0001F4B5\U0001F576\uFE0F\
    \ Edil Medeiros leads a hands on workshop exploring digital bearer cash with Cashu\n\
    Real Chaumian e cash you can mint, send, swap, and melt in real time \u26A1\uFE0F\
    \U0001F512\n\n\U0001F9D1\u200D\U0001F4BB\U0001F6E0\uFE0F What you\u2019ll build\n\
    A minimal Cashu wallet that can:\n\U0001FA99 mint tokens\n\U0001F4E4 send\n\U0001F501\
    \ swap\n\U0001F525 melt\nAnd you\u2019ll actually use it with other participants\
    \ during the session \U0001F91D\n\n\U0001F9E0 What you\u2019ll learn\n\U0001FAE5\
    \ how blinded signatures protect transactions\n\U0001F3E6 vs \U0001FA99 account\
    \ based vs bearer based systems\n\u26A1\uFE0F why digital cash can be private,\
    \ instant, and trustless\n\n\U0001F3AF By the end\nYou\u2019ll trade tokens with\
    \ others and melt them back down\nPractical experience with the protocols shaping\
    \ Bitcoin\u2019s privacy future \U0001F680\U0001F7E0\n\n\U0001F9F0 Requirements\n\
    \U0001F40D Python or \U0001F7E8 JavaScript setup\n\U0001F4DA Cashu library\n\U0001F310\
    \ internet connection\n\n\u26A1\uFE0F\U0001F6E0\uFE0F\u26A1\uFE0F\U0001F6E0\uFE0F\
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
    - cashu mint
    - privacy
    - tokens
    - digital cash
    - python
    - code
    - workshop
  categories:
    - Science & Technology
  channel_name: TABConf
transcript_by: garvit via tstbtc v1.0.0
---

Speaker 0: 00:00:00

My name is Edium Deiros and this is the first time I'm doing this workshop and I have to confess that I um I'm not a specialist in NCASH but at uh quite the contrary actually.

Speaker 0: 00:00:15

I tri I propose to do this workshop here to force myself to learn at least the basics of uh cache.

Speaker 0: 00:00:22

I was curious about this kind of technology for uh quite some time.

Speaker 0: 00:00:28

Um what I'm trying to do here today is talk real quick about uh the eCache basic theory, how it does work, uh at least on the cache side.

Speaker 0: 00:00:43

Then we are going to talk about cachew specifically, which is uh it's it's okay because uh uh Okay, yeah.

Speaker 0: 00:00:52

Uh let's talk a little bit more about Cachew.

Speaker 0: 00:00:55

And Cachew is a web-based protocol, so we are going to have some HTTP endpoints to to look at.

Speaker 0: 00:01:05

And Tenavoo I s I wrote here coding together, but given the time I will be pretty much coding myself and showing whatever I'm doing.

Speaker 0: 00:01:16

Uh I think it will work better for the time.

Speaker 0: 00:01:19

So what I'm going to show you is uh how it does work to acquire some eCash tokens, what what we have to do to get some some money uh on this system.

Speaker 0: 00:01:32

And the other way around, how do I redeem my money back on these cashew banks that they call mints?

Speaker 0: 00:01:39

If you want to follow along, there is GitHub Ripple.

Speaker 0: 00:01:44

You can use this QR code if it makes it easier.

Speaker 0: 00:01:50

It is supposed to have a lot of different branches, and there's a start here branch.

Speaker 0: 00:01:55

Uh there's the master branch, where is the solution for uh a cache wallet that I wrote for this uh cache for this workshop.

Speaker 0: 00:02:03

Please don't use this in production.

Speaker 0: 00:02:05

It's totally unsafe thing to do, but it's uh made to be easier to easy to understand, uh not to be secure.

Speaker 0: 00:02:14

And it's of course not complete.

Speaker 0: 00:02:16

Uh of course PRs are welcome.

Speaker 0: 00:02:20

Sure.

Speaker 0: 00:02:26

Sorry?

Speaker 0: 00:02:29

It's not public.

Speaker 0: 00:02:32

It's not public.

Speaker 0: 00:02:35

Just a second.

Speaker 0: 00:02:39

Settings.

Speaker 0: 00:02:39

Oh my bad.

Speaker 0: 00:02:43

Change visibility.

Speaker 0: 00:02:45

Public.

Speaker 0: 00:02:47

I wanna make this change.

Speaker 0: 00:02:48

I have read whatever, make this public.

Speaker 0: 00:02:51

You might need this.

Speaker 0: 00:02:56

Maybe I need some help.

Speaker 0: 00:03:04

My bad.

Speaker 0: 00:03:22

Maybe it's public now.

Speaker 0: 00:03:24

Can you check it low?

Speaker 0: 00:03:28

Yeah, sorry my bad.

Speaker 0: 00:03:30

There is a start here branch that has some starter code and there are other branches and the README is supposed to guide you on whatever you should do if you're doing this by yourself.

Speaker 0: 00:03:44

I think everyone is okay with that.

Speaker 0: 00:03:48

Just real quick here, who I am.

Speaker 0: 00:03:50

My name is Edu Medeiros.

Speaker 0: 00:03:51

I'm a professor at the University of Brasilia.

Speaker 0: 00:03:54

It's the capital of Brazil.

Speaker 0: 00:03:55

It's a very nice modern city, a little bit communist architecture maybe.

Speaker 0: 00:04:04

There are some folks that like it.

Speaker 0: 00:04:07

It's it it does worth taking a weekend and and and visiting.

Speaker 0: 00:04:13

Uh I'm also head of research at Vintium.

Speaker 0: 00:04:15

Vintion is a nonprofit in Brazil that uh funds Uh open source developers, we have some grantees uh here.

Speaker 0: 00:04:22

Uh Pins was presenting a workshop earlier this today.

Speaker 0: 00:04:27

And we also work on Bitcoin education.

Speaker 0: 00:04:30

We have this program called the Bitcoin Dev Launchpad that we are going to have a new cohort running in two weeks.

Speaker 0: 00:04:37

Uh we have a lot of folks around that were in the first BDL uh cohort.

Speaker 0: 00:04:44

So, say hi to them.

Speaker 0: 00:04:46

I'm also a co-host of BitDevs in Brasilia and in Porto Agri, which is the city where I actually live.

Speaker 0: 00:04:53

And more recently, I became a collaborator at the MIT DCI on this global research network that we are putting together.

Speaker 0: 00:05:05

If you're more if you're interested in doing more academic research or you know someone that would be interested on on on working on academic settings, let me know.

Speaker 0: 00:05:16

Just reach me on uh Twitter or whatever.

Speaker 0: 00:05:20

I'll be here for the whole uh conference.

Speaker 0: 00:05:24

Okay, so let's talk about eCash.

Speaker 0: 00:05:26

How does this thing work?
quick.

Speaker 0: 00:05:28

It's based on a traditional banking system uh in which you have some kind of money and you go into this bank and make a deposit and the bank will print something uh here, uh some kind of bill and this bill is in IOU and the bank promises you that if you give this ma these bills or these notes back.
it will red you can redeem your real asset that you uh that you uh deposit in the first place.

Speaker 0: 00:06:03

And the nice stuff here is that Alice can take these bills and use it just like money to buy, for example, some food with charter.

Speaker 0: 00:06:14

I will call Alice Alice.

Speaker 0: 00:06:16

I will be Alice here.

Speaker 0: 00:06:18

I will be the user.

Speaker 0: 00:06:19

The mint or the bank is usually called Bob in the specifications.

Speaker 0: 00:06:28

I find it weird, but it's the way it is.

Speaker 0: 00:06:30

So I'll try to use this naming here.

Speaker 0: 00:06:35

Bob will be the mint.

Speaker 0: 00:06:39

And just like in real bill oh sorry, uh anyone the this bill is a better asset, so anyone, not uh not only asset, uh Alice, can go back into the bank and redeem the the the the the backing asset.

Speaker 0: 00:06:54

So this is pretty much what is going to what we are going to be uh doing on the but uh on a On this eCache setup.

Speaker 0: 00:07:06

Just like a real bill, the eCache is actually a signed serial number.

Speaker 0: 00:07:18

This is what we will be going to, this is what we are going to build.

Speaker 0: 00:07:23

We are going to choose a serial number.

Speaker 0: 00:07:26

And we are going to have the mint signing this thing.

Speaker 0: 00:07:29

And this signature is what makes it worth to uh go back into the mint and say, okay, you signed this, it's it's a contract with you that you uh uh you promise to redeem this this uh money back.

Speaker 0: 00:07:45

But contrary to uh banknotes, serial numbers, there are Actually issued by the bank, the bank here will not know which serial numbers are around in the bills that he already signed.

Speaker 0: 00:08:03

We are going to see how this is done.

Speaker 0: 00:08:05

So the cool part here is that the bank doesn't know who, at least who is owning, which bill, contrary to a physical bill.

Speaker 0: 00:08:17

So that uh they have this argument of privacy involved.

Speaker 0: 00:08:21

And I'm trying to show you how this where this comes, this this argument of privacy.

Speaker 0: 00:08:29

And this is pretty much why I'm interested on this.

Speaker 0: 00:08:32

But of course you can see this is a custodial thing.

Speaker 0: 00:08:35

In the in a Bitcoin set you deposit Bitcoin.

Speaker 0: 00:08:38

And you get these cashew tokens, and you can transact with cashew tokens, and then you can go back into the mint and take your Bitcoin back.

Speaker 0: 00:08:46

This is the basic idea.

Speaker 0: 00:08:49

Really quick into this ECC cryptography.

Speaker 0: 00:08:54

What we need to know here, you can see my mouse.

Speaker 0: 00:08:56

Oh, yeah, you can see my mouse.

Speaker 0: 00:08:58

Okay.

Speaker 0: 00:08:59

What you have to know to understand this thing is in elliptic curve cryptography we have two uh basic data structures.

Speaker 0: 00:09:09

Uh the most basic one is I will call it a scalar.

Speaker 0: 00:09:12

It's just uh an integer number uh and you can do pretty much what you expect with the integers, you can sum them, you have this notion of a zero which is neutral element, you have the the additive inver uh inverses, and you can also multiply them, and you have this notion also of an identity for multiplication and an in in multiplicative inverse.

Speaker 0: 00:09:38

Uh and we also have points and points are Actually, points in a curve, in a very specific curve.

Speaker 0: 00:09:47

So they have uh an x and y coordinate.

Speaker 0: 00:09:51

And they work like numbers for uh addition.

Speaker 0: 00:09:55

So you can sum that up.

Speaker 0: 00:09:57

There's an a notion of a neutral of an identity element, which we c we call uh a point at infinity.

Speaker 0: 00:10:06

And you have inverses of points.

Speaker 0: 00:10:08

But you cannot you don't have a A multiplication notion among these points.

Speaker 0: 00:10:15

You can sum them up, you can subtract, but you cannot multiply two points together.

Speaker 0: 00:10:19

It just doesn't make sense.

Speaker 0: 00:10:21

It's an operation that's not defined.

Speaker 0: 00:10:24

But given that we can sum up points, we can define what we call a point operation.

Speaker 0: 00:10:32

A point multiplication operation.

Speaker 0: 00:10:34

I always find it confusing, but it's a It's the multiplication of a scalar by a point and it gives us another point.

Speaker 0: 00:10:44

We usually call this in this setup this A small A a private key.

Speaker 0: 00:10:53

The result of the point multiplication will be a public key.

Speaker 0: 00:10:57

In Bitcoin it's just the same thing.

Speaker 0: 00:11:01

And it's usual to call this B point that we started with a generator point.

Speaker 0: 00:11:08

This is not the actual important to remember these names, but this operation here has the most important property that we use for cryptography, which is.

Speaker 0: 00:11:24

Given small A and big B, the private key, and a generator point, it's pretty easy to compute this new point C.

Speaker 0: 00:11:36

It's an easy operation.

Speaker 0: 00:11:38

But given B, and in this setup, everyone will know which point is this B.

Speaker 0: 00:11:45

It's a parameter for the curve.

Speaker 0: 00:11:47

But given B and given C, It's supposed to be impossible to uh to calculate A without going and trying a lot of A's and and just trying to brute force this thing.

Speaker 0: 00:12:02

It's this is called the discrete log problem for the elliptic curve.

Speaker 0: 00:12:07

And we are going to see this equation uh again and this will give us a notion of a signature that we are trying to Cat with the mint.

Speaker 0: 00:12:18

Okay, given that, how does this variant of e-cash works?

Speaker 0: 00:12:27

How do we acquire some e-cash?

Speaker 0: 00:12:30

So the idea is simple.

Speaker 0: 00:12:32

Alice go into the mint, deposit some funds, and then we start this process of minting a new token.

Speaker 0: 00:12:44

Alice chooses a secret message, which will be the serial number for this specific token that she's minting.

Speaker 0: 00:12:52

She takes a what I'm calling a blinding factor, which is just a random number.

Speaker 0: 00:12:58

The important property here is that the mint cannot predict what this blinding factor is.

Speaker 0: 00:13:04

So this just take a random number.

Speaker 0: 00:13:07

And then you do these operations.

Speaker 0: 00:13:09

You take the the message, you take the secret message, which can be whatever you want.

Speaker 0: 00:13:15

It's also a good idea to have a random number here and just convert it to a string.

Speaker 0: 00:13:20

And we are going to see this hashtag curve in more specific when we see the code, but it takes it transforms a message into a point on the ellipse.
elliptical curve, which we are going to call Y.

Speaker 0: 00:13:38

We take this blinding factor and call it R and we Alice compute this B prime, also a public key, it's also a point, by multiplying the blinding factor by GG is a pre-chosen point into the elliptical curve that we are calling the generator point for this curve.
and sum up with Y.

Speaker 0: 00:14:03

And she will have this B prime thing and she sends it to the mint.

Speaker 0: 00:14:09

And she says, okay, I want to mint something.

Speaker 0: 00:14:11

Here is what we are going to call a blinded message.

Speaker 0: 00:14:15

It's a message.

Speaker 0: 00:14:17

Here it is.

Speaker 0: 00:14:17

It's a point in the elliptic curve.

Speaker 0: 00:14:20

Okay.

Speaker 0: 00:14:22

The mint will take this and he will compute.

Speaker 0: 00:14:26

He will take his private key, which is A uh small A here and the Mint will multiply it by the blinded message, which is a point.

Speaker 0: 00:14:36

It gives us another point.

Speaker 0: 00:14:39

I'm not going into details because of the time about these uh D L EQ proofs, but uh these two n those are two numbers that uh the mint will send us back uh with uh together with C prime to prove that the mint is using the the right uh key to sign this message.

Speaker 0: 00:15:05

Because there's a since we, Alice, we don't know uh small A, we without this we have no way to validate that the mint is doing the the what is what it is supposed to do.

Speaker 0: 00:15:19

So uh there is this cryptographic scheme to to make this proof possible.

Speaker 0: 00:15:25

So I'll get this.

Speaker 0: 00:15:27

And if you look at the uh left side here, I'm keeping track of which information each party is has seen during this process, right?

Speaker 0: 00:15:39

So uh just by now L is has seen the secret message, the y point, the blinding factor and this b prime.

Speaker 0: 00:15:50

And the mint has seen this B prime that it took from Alice, and it produces produce the C prime point, this ES proofs, and sent it back to Alice.

Speaker 0: 00:16:04

So Alice has seen pretty much everything.

Speaker 0: 00:16:08

So now Alice goes into a process of unblinding this signature.

Speaker 0: 00:16:14

What she's going to do is she's taking this C prime that is the blinded signature that she got from the mint in the previous step and she's subtracting R, which is the blinding factor that she chose, multiplied by A big A, capital A, which is the public key.
of the mint associated with the this private key that is supposed was supposed used to sign this this blighted message.

Speaker 0: 00:16:46

And it will give give us this C, which is a point in a curve as well.

Speaker 0: 00:16:52

And Alice will take this pair, the secret message, and note that the mint has never seen this secret message before.

Speaker 0: 00:17:02

And we are combining this with this C, which is a point in the curve.

Speaker 0: 00:17:07

And also, the meet has never seen this point before.

Speaker 0: 00:17:13

It's just private information from Alice.

Speaker 0: 00:17:16

And Alice will claim this to be a token worth of whatever she deposited in the first place in the MIT.

Speaker 0: 00:17:27

So this is a quite easy and clever way to produce a serial number that the bank doesn't know.

Speaker 0: 00:17:39

And also we can make the bank to make a signature on this serial number, this secret message.

Speaker 0: 00:17:49

And also the bank doesn't know whatever he's signing for.

Speaker 0: 00:17:54

And also he doesn't never see the signature, the final signature itself.

Speaker 0: 00:17:59

So the bank does pretty much nothing at this point.

Speaker 0: 00:18:04

And this will be the the the eCache token.

Speaker 0: 00:18:07

So Cacho will also add some metadata together with this, but this is pretty much the whatever the token will be composed by these two informations here.

Speaker 0: 00:18:20

Given that oops, oh yeah, I have some steps here.

Speaker 0: 00:18:24

Why does this work?

Speaker 0: 00:18:26

Why does this work?

Speaker 0: 00:18:28

Yeah, maybe it's nice to go over this.

Speaker 0: 00:18:31

This is the operation Alice did to unblind the signature.

Speaker 0: 00:18:36

And if I replace C prime by what the mint did, Uh I have this equation here and if I also replace B prime for what Alice produced in the beginning of the protocol, I will have this.

Speaker 0: 00:18:54

If we rearrange this uh and we have this we are going to have this and you can note that this factor here will cancel with this factor here and we will end up with this.

Speaker 0: 00:19:08

This will this is what Alice will have uh uh at the end of this whole operation, which is a point in the curve that was generated from the secret message uh the secret message that that she chose and never revealed but for the mint, multiplied by the private key of the mint.

Speaker 0: 00:19:31

And this is a clever thing because uh The mint is not required to show the private key, of course.

Speaker 0: 00:19:38

And this is how it's done.

Speaker 0: 00:19:40

And this is very easy for the mint to verify.

Speaker 0: 00:19:44

If I give it, I just say, okay, this is a secret message.

Speaker 0: 00:19:47

Then what the mint can do is compute y itself from the secret message and check if y times its private key.

Speaker 0: 00:19:55

And check if Y times its private key matches with the C, with the signature that I also give him when I'm trying to redeem these tokens.

Speaker 0: 00:20:08

This is how I get this this uh my money back.

Speaker 0: 00:20:11

And this is how the means is sh uh can be assured that, oh, okay, that came from a uh previous deposit, so I I'm supposed to redeem.

Speaker 0: 00:20:21

I supposed to have funds.
to fulfill this.

Speaker 0: 00:20:25

Of course, we are trusting that the meet keeps those funds uh in place so that you can go and uh uh uh and actually redeem the thing.

Speaker 0: 00:20:36

But there is another catch here which is uh okay, animations, which is okay, what stops Alice Fung from double spending?

Speaker 0: 00:20:46

Because Alice can use this secret message with together with the with the signature as a token.

Speaker 0: 00:20:55

And I'll give for example take m this token and uh make a copy and handle it to Pins to pay for whatever.

Speaker 0: 00:21:04

And now I, Alice, have a copy of the token.

Speaker 0: 00:21:08

Pins will have a a copy of the token.

Speaker 0: 00:21:10

So we have two uh copies of the token.

Speaker 0: 00:21:13

I'm Actually, duplicating money right now.

Speaker 0: 00:21:16

How do we prevent us both getting our money back in the mint?

Speaker 0: 00:21:25

The rule is: whoever presents a valid token for a mint first will get the money back.

Speaker 0: 00:21:35

And then the mint will keep a database of secret messages that it already sends.

Speaker 0: 00:21:42

So this should be pretty unique.

Speaker 0: 00:21:45

So if you're trying to do this process here and you choose a secret message that was used before, it will go through this process.

Speaker 0: 00:21:58

And you will have a a token, but when you try to redeem it, the mint will say, Oh, I have already seen a note with this serial number, so it's already uh redeemed, it's invalid for me.

Speaker 0: 00:22:08

So you're screwed, by the way.

Speaker 0: 00:22:11

So the best way to uh probably the best way to s choose distributed messages is by taking real big uh random numbers.

Speaker 0: 00:22:20

So the probability of collision is uh it's quite small.

Speaker 0: 00:22:25

So this is not a problem.

Speaker 0: 00:22:26

This is pretty much how eCache works in any setup.

Speaker 0: 00:22:29

I'll talk more specifically now about the cache you protocol, but this there is also this Fatty Mint protocol which is similar, at least on this part, uh but they have different transport layers and other rules for what what what is a mint and what how a mint works.

Speaker 0: 00:22:49

But this is pretty much how the same way for the for at least for the tokens.

Speaker 0: 00:22:54

Okay.

Speaker 0: 00:22:57

The cache is a protocol that's specified by means of these nut documents, which you all can find here in this address, cachew bdc.github.io slash nuts.

Speaker 0: 00:23:15

And there are actually two sets of nuts.

Speaker 0: 00:23:17

There is a mandatory set that every Mint is supposed to implement.

Speaker 0: 00:23:22

And it has the basic functionality for this thing.

Speaker 0: 00:23:26

Nut zero covers cryptography that I just explained you.

Speaker 0: 00:23:30

And it covers models.

Speaker 0: 00:23:33

Models is are the data structures that will represent this the the tokens together with the uh With the metadata involved.

Speaker 0: 00:23:45

Nut one specifies how the mint should build its public keys, how many keys.

Speaker 0: 00:23:54

We are going to see this a lot of keys in just a moment.

Speaker 0: 00:24:00

Nut two specifies key sets.

Speaker 0: 00:24:03

We are also talking about this looking at the code.

Speaker 0: 00:24:07

And How to charge for fees to undergo this process.

Speaker 0: 00:24:14

Nut Free is talking about swapping tokens.

Speaker 0: 00:24:18

We are not covering today because of time, but it's how you can go into the mint and redeem new tokens.

Speaker 0: 00:24:27

Because as you just saw, when I make a payment using these eCash tokens, The receiver of the token has a now you have some a race condition here happening.

Speaker 0: 00:24:39

I have a copy of the of a valid token, you have a copy of a valid token, and whoever uh tries to re redeem it first will get the money.

Speaker 0: 00:24:50

So swiping is the uh process under which the receiver of the money goes into the mint and produces new tokens and invalidates the old tokens.

Speaker 0: 00:25:02

So this is pretty much what has to happen.

Speaker 0: 00:25:06

Minting is the process of minting.

Speaker 0: 00:25:09

We are going to more detail.

Speaker 0: 00:25:11

Melting is the process of giving tokens back and taking money back.

Speaker 0: 00:25:17

And there is this nut six which is some information about the token the nuts, the mint.

Speaker 0: 00:25:26

There's a whole lot of other nuts and other specifications.

Speaker 0: 00:25:31

For example, specifications for spending conditions, something like HTLCs, and all those kind of stuff.

Speaker 0: 00:25:38

Really cool stuff happening on this Casual ecosystem right now.

Speaker 0: 00:25:44

And I encourage you to go and look at it.

Speaker 0: 00:25:48

All right.

Speaker 0: 00:25:49

The second piece of information that you need to know is cache is a web protocol.

Speaker 0: 00:25:54

So there are s the mint is like a back end.

Speaker 0: 00:25:57

It has some HTTP endpoints and you just uh send some some JSON around and you just get some JSON around.

Speaker 0: 00:26:04

So this is pretty much what happens.

Speaker 0: 00:26:06

Uh I'm not exactly a web dev guy, so I had some hard time to uh get around so maybe I'm dumb but it's okay.

Speaker 0: 00:26:18

Here is a keyword code again for my repo just in case you uh need it again.

Speaker 0: 00:26:23

But okay.

Speaker 0: 00:26:25

If you want to follow along there is a mint uh online right now.

Speaker 0: 00:26:30

It's a test mint.

Speaker 0: 00:26:32

It's on this IP and if you are following with my code maybe you want to export this um This environment variable called cacheUDefaultMint and use this IP address with this port, and you have access to a mint.

Speaker 0: 00:26:48

And otherwise, you have to specify the mint all the time on this starter code, just to make the code a little bit cleaner.

Speaker 0: 00:26:59

I'll just give some time to folks who copied it.
185, 215, 164, 189, and the port is 3338.

Speaker 0: 00:27:20

Okay, okay, so let's see what we have uh on this repo.

Speaker 0: 00:27:27

I hope you can see what I see.

Speaker 0: 00:27:31

Uh if you go there right now, there's a wallet uh folder with some source code and pretty much six or seven uh files.

Speaker 0: 00:27:43

I'll go through them and then we are uh live coding something just to make it uh Fast.

Speaker 0: 00:27:51

Oops, I'm doing something wrong here.
Yeah.
Okay, the CLI.py.

Speaker 0: 00:28:00

I'm using Python here.

Speaker 0: 00:28:01

I'm not a Python guy, but I just thought it what it would be easier to explain uh things.

Speaker 0: 00:28:07

This is the main the main function of this wallet.

Speaker 0: 00:28:12

This is what we will be called when you call the wallet.

Speaker 0: 00:28:16

The wallet is called cachio slash WS for workshop.

Speaker 0: 00:28:22

This is what will be called.

Speaker 0: 00:28:24

We have a main function here.

Speaker 0: 00:28:26

It's just parse command line arguments.

Speaker 0: 00:28:29

And you have a whole bunch of commands that you can issue.

Speaker 0: 00:28:34

Maybe it's easier to show them here.

Speaker 0: 00:28:38

Uh this is pretty much what you will will you have available.

Speaker 0: 00:28:43

And the idea of the workshop is that you go and implement all these commands here, which covers uh pretty much all the basic functionalities uh of a cache your wallet.

Speaker 0: 00:28:54

It can be done in maybe a day or or uh two working days.

Speaker 0: 00:28:59

It's it's not that hard.

Speaker 0: 00:29:01

But uh just because I have fifty minutes more, I will uh try to uh go into the the the uh try to to make it uh uh a little bit faster.

Speaker 0: 00:29:13

Uh sorry.

Speaker 0: 00:29:15

Second uh thing that you will encounter here is the crypto.py file, which is the crypto library which it pretty much imports the this uh SECP256 library.

Speaker 0: 00:29:31

It extends it uh so that we can do uh use Python of Python operators for uh um summing points together and multiplying them.

Speaker 0: 00:29:45

The this is pretty much what's what's here.

Speaker 0: 00:29:48

And we have this hash2 curve.
uh function that I mentioned before.

Speaker 0: 00:29:53

And the way it works is this.

Speaker 0: 00:29:56

We have this message, which is which is the secret message that uh Alice chose in the beginning.

Speaker 0: 00:30:02

We concatenate it with uh a domain separator that's specified in one of the nuts.

Speaker 0: 00:30:07

We hash it with SHA256 and then we will try to Uh we will combine it with a counter, which starts with zero and then we will hash it again.

Speaker 0: 00:30:21

This hash will be interpreted as a number and we we just say okay is this number a valid x coordinate for the elliptic curve?

Speaker 0: 00:30:33

If it is it is uh it's the point that we the the result of the function.

Speaker 0: 00:30:39

If it is not, we just increment this counter and we try again.

Speaker 0: 00:30:45

It will eventually get you a point in the curve.

Speaker 0: 00:30:49

The probability of that happening is like a half each each time you try.

Speaker 0: 00:30:55

So you will You probably get a point, a valid point, out of this, but there is a timeout of 2 to the 16 tries.

Speaker 0: 00:31:08

And this is pretty much how it works.

Speaker 0: 00:31:10

So it maps messages into points in the curve.

Speaker 0: 00:31:14

And it's a deterministic mapping.

Speaker 0: 00:31:17

The second thing that you have here is this token file.
in which we have this class called oops called proof, which will be the final token that we are going to build with the cache you metadata.

Speaker 0: 00:31:36

You can see there is a secret field, which is the secret message that we chose.

Speaker 0: 00:31:43

C will be the unblinded signature that we produced together with the mint.

Speaker 0: 00:31:47

The ID is an identifier of which set of keys from the mint we are referring to, because the mint can keep a whole lot of different sets of public keys and private keys.

Speaker 0: 00:32:06

And I was thinking about, okay, how can we use this?

Speaker 0: 00:32:11

Why have different sets of of keys.

Speaker 0: 00:32:16

Because that involves some rotation of keys and and and it's a complication.

Speaker 0: 00:32:20

But I will just before this workshop I was talking to a guy, I forgot his name, but uh he's working on this eHash project.

Speaker 0: 00:32:32

Which is you get uh it for miners, uh for mining pools and you get you whenever you give uh a valid share for the mining pool, it gives you backs uh uh it's not a cache, it's an e-cash token.

Speaker 0: 00:32:49

Uh and that represents a valid an IOU that that can be redeemed after the the mine the pool itself finds a valid block and gets the the block reward.

Speaker 0: 00:33:00

And then you they it w uh the pool will have funds to redeem this this e-cash tokens.

Speaker 0: 00:33:08

And then uh then the guy mentioned, okay, but uh we have this is very specific problem which is okay, what do I do after I found this block and then I want to reset the epoch of the the of the uh of the the pool, I want to go into a new set of shares to consider for the next block.

Speaker 0: 00:33:30

And if I understood it well, they do this by rotating the the keys uh on on this on their mint.

Speaker 0: 00:33:38

Uh so this is a clever way of identifying uh which block belongs that share IOU that you received.

Speaker 0: 00:33:51

I don't know if how useful it it is, but it it's an interesting application at least.

Speaker 0: 00:33:55

And you have this amount that corresponds to how much you can redeem using this eCache token.

Speaker 0: 00:34:03

I'm not going to details here, but you pretty much have Methods to serialize and deserialize this thing to a JSON file, to a JSON data structure.

Speaker 0: 00:34:14

So this is pretty much it.

Speaker 0: 00:34:17

Next thing is this wallet data structure.

Speaker 0: 00:34:25

And this is, I'm sure that All of you can do a better job than I did here, but this is the data structure to persist some information on my side.

Speaker 0: 00:34:39

Because you saw Alice will have some private information, which are the tokens.

Speaker 0: 00:34:46

And if she loses the the her tokens, there is no way to get them back.

Speaker 0: 00:34:51

So she's effectively losing money.

Speaker 0: 00:34:54

So, we have to have a way to persist that data for later, for using this later.

Speaker 0: 00:35:00

And this is what I'm doing with this wallet data structure.

Speaker 0: 00:35:06

I have some information here about the mint, the units, it's in sets most of the time.

Speaker 0: 00:35:13

It's nothing more than a JSON file somewhere in my machine.

Speaker 0: 00:35:17

So, I keep a tab, some metadata, and I have this.
list of proofs.

Speaker 0: 00:35:23

And the proofs are how the tokens are called in the in the specifications.

Speaker 0: 00:35:27

So this is pretty much it.

Speaker 0: 00:35:29

I have methods to uh it's like a uh a stack of proofs so I can uh push things into the wallet, I can pop things uh from this wallet and this is pretty much it.

Speaker 0: 00:35:45

Next we have this client data structure.

Speaker 0: 00:35:54

As I said, Cachio is a web protocol.

Speaker 0: 00:35:58

So what I did here is a translation layer from HTTP endpoints and Python map functions.

Speaker 0: 00:36:08

So just Just to make it a little bit easier to deal with these endpoints and send stuff and get stuff back, communicating with the mint using code here.

Speaker 0: 00:36:21

So I pre-made a method for each endpoint that's important for the basic stuff.

Speaker 0: 00:36:31

Uh each one is specified in a in a specific nut.

Speaker 0: 00:36:34

So for example, uh there is this keys uh endpoint that's specified in nut one.

Speaker 0: 00:36:41

There is this zinfo which is nut six and we are going to see what they do in just a moment.

Speaker 0: 00:36:47

And finally we have this commands file, which is where the main logic of the commands live, well of the the of the the the world commands live.

Speaker 0: 00:36:59

So what I'm trying to what I'm I'm going to do is to uh code some stuff with you right now.

Speaker 0: 00:37:07

Uh let me start with the easiest with the easiest um command which is info which has an endpoint called info in the mint and it gives me back some information about mint the mint.

Speaker 0: 00:37:25

Okay, so let's implement it.

Speaker 0: 00:37:28

I will of course shit to make better use of time and I want to copy this and I want to select that and boom.
Boom.

Speaker 0: 00:37:45

What I did here, real quick.

Speaker 0: 00:37:47

I just called this init wallet function, which is a helper that, okay, tries to find the wal the wallet file.

Speaker 0: 00:37:54

If it doesn't exist, it creates a new one.

Speaker 0: 00:37:56

If it does exist, it loads and uh a data structure in memory.

Speaker 0: 00:38:00

It ni initializes the uh w the web client so I can make calls.

Speaker 0: 00:38:05

Uh uh for the mint.

Speaker 0: 00:38:07

Maybe this is not the best function I'm just realized.

Speaker 0: 00:38:12

Maybe it's init something, wallet and client, whatever.

Speaker 0: 00:38:16

Uh and then I use this uh the client info method just to uh and it will go into the the the endpoint.

Speaker 0: 00:38:26

This method doesn't require me to send in any information uh just it's a just uh get method, get HTTP request.

Speaker 0: 00:38:34

And I'm also printing whatever is in my wallet right now.

Speaker 0: 00:38:39

So if I save this and if I run that on my mint right now, this is what I get.

Speaker 0: 00:38:47

I get a JSON back.

Speaker 0: 00:38:49

As I said, a lot of JSON's going back and forth.

Speaker 0: 00:38:53

It has the name of the mint, a public key, version of the software that it's running.

Speaker 0: 00:38:58

There are a lot of implementations of mints out there.

Speaker 0: 00:39:01

Descriptions, contact information, message of the day, whatever, whatever, whatever.

Speaker 0: 00:39:07

Important thing here is which nuts this mint supports.

Speaker 0: 00:39:13

It's supposed to support all the mandatory nuts, 0 through 6.

Speaker 0: 00:39:18

But it can also support additional uh function functionality, additional features.

Speaker 0: 00:39:23

In this case, it supports fe uh NET 7, 8, 9, uh and so on and so on.

Speaker 0: 00:39:23

In this case, it supports feet Not seven, eight, nine, uh and so on and so on.

Speaker 0: 00:39:31

And here is oh, I already have some tokens.

Speaker 0: 00:39:35

I was not expecting this.
Okay.

Speaker 0: 00:39:37

This is what's on my wallet right now.

Speaker 0: 00:39:40

I have some uh information here, uh metadata.

Speaker 0: 00:39:43

I added so okay.

Speaker 0: 00:39:45

I need to know The mint, which mint is supposed to re I'm supposed to go and redeem these tokens.

Speaker 0: 00:39:53

And if I'm paying someone else, I'm supposed to tell, okay, this is the mint you're supposed to go and and redeem this thing.

Speaker 0: 00:40:02

And we have some proofs here, and proofs are the actual tokens.

Speaker 0: 00:40:05

And as you can see, I have some I have three tokens.

Speaker 0: 00:40:11

Each one worth worth uh eight sets right now.

Speaker 0: 00:40:14

And they have this amount, an ID that as we'll see, identify public keys in uh in the mint set, a secret, it's a serial number that I chose, uh and the blind signature that I built together with the with the with the mint.

Speaker 0: 00:40:32

Next, let's do this keys this keys method.

Speaker 0: 00:40:46

Also really simple, I just initialize everything and I call this keys endpoint.

Speaker 0: 00:40:52

I I am not required to send any information, I can just get some information back.

Speaker 0: 00:41:00

What I what the Mint gives me back is this.

Speaker 0: 00:41:04

And it's called a key set structure.

Speaker 0: 00:41:07

As you can see, it's a list of a more complicated structure, which has an identifier for this set of public keys in this case.
the units they are supposed to uh represent, for in this example sets, and a list of keys.

Speaker 0: 00:41:30

And you can see it's this is actually a dictionary.

Speaker 0: 00:41:33

There is a key for uh a public key for called one, a public key called two, four, and a lot of uh powers of two, and a lot of powers of two.

Speaker 0: 00:41:47

Uh and why is that?

Speaker 0: 00:41:50

Why is that?

Speaker 0: 00:41:52

In principle, I can go into the mint and make a token of whatever denomination I want.

Speaker 0: 00:41:59

So I can just go into the mint and say, Okay, give me a five hundred thirteen sets token, please.

Speaker 0: 00:42:06

And I can just mint that.

Speaker 0: 00:42:09

There are two pl problems with that.
two problems of doing that.

Speaker 0: 00:42:13

First one is if I want to use this to pay whatever uh payment which is not exactly 513 sets I I can't just use that.

Speaker 0: 00:42:28

I have to go back into the mint, return this uh five hundred ish token and mint new tokens.

Speaker 0: 00:42:37

With the with at least one that makes for the payment that I'm I'm interested in.

Speaker 0: 00:42:42

So this adds uh some friction into the thing.

Speaker 0: 00:42:45

The other thing here is if if I'm allowed to mint whatever denomination I want, it's It's reasonable to suppose each one in this room would meet a different amount.

Speaker 0: 00:43:06

A token with a different amount.

Speaker 0: 00:43:09

And that would allow the meet to identify us.

Speaker 0: 00:43:14

Because Not because it has seen my secret of serial number, but because, okay, there is some guy using this IP trying to do a token with that specific denomination.

Speaker 0: 00:43:31

And later on, I pass this for someone else, and that someone else will go into the main and try to redeem or refresh this token.

Speaker 0: 00:43:43

And it will give the mint that token and the mint can say, oh, nice.

Speaker 0: 00:43:48

I know that I can now track the payment path that underwent on the offline payment between the peers.

Speaker 0: 00:44:00

We don't want this to be possible.

Speaker 0: 00:44:03

So what what we do?

Speaker 0: 00:44:05

We mint tokens in powers of two, so we can represent pretty much any number.

Speaker 0: 00:44:10

And we split whatever denomination we want into this set of different tokens, but they are all standard tokens, at least in the amounts.

Speaker 0: 00:44:22

So this is why you have all those keys here.

Speaker 0: 00:44:26

In this example here, I will just use I will mint an eight sets token.

Speaker 0: 00:44:35

But if you it's not much it's uh the process we are going to to to go here is not much different to go and say, okay, I want three tokens of eight sets, one of sixteen, one of uh or ten with one set.

Speaker 0: 00:44:51

You can just uh do this in uh in a single operation.

Speaker 0: 00:44:56

So these are keys uh mint keys.

Speaker 0: 00:45:01

What do I need now?

Speaker 0: 00:45:04

Okay, let's go into the process of actually minting something.

Speaker 0: 00:45:09

It's not exactly involved, but there are some steps that we have to go under.

Speaker 0: 00:45:19

First, I have to pay the mint.

Speaker 0: 00:45:22

I have to deposit some funds in the mint.

Speaker 0: 00:45:24

It's the first thing that I have to do.

Speaker 0: 00:45:27

Oops, I'm not supposed to do that.

Speaker 0: 00:45:29

So okay, how does that start?

Speaker 0: 00:45:32

I go into the mint and I say, okay, please give me a lightning invoice and I'm supposed to pay this lightning invoice and you are going to receive some funds.

Speaker 0: 00:45:42

This is how I deposit things on this mint.

Speaker 0: 00:45:46

At least on the Bitcoin implementation of the thing.

Speaker 0: 00:45:49

So we need some way to go into the mint and ask for a vote.

Speaker 0: 00:45:54

Which is a lightning invoice together with some other information.

Speaker 0: 00:46:00

And of course, I'm going to shoot again.

Speaker 0: 00:46:05

And I have a helper function to do this for me.

Speaker 0: 00:46:09

This is it.

Speaker 0: 00:46:11

I have this mint quote bolt 11.

Speaker 0: 00:46:16

I'm not a Lightning guy, but I think Boat11 specifies the invoices themselves, right?

Speaker 0: 00:46:22

I tell them how much I want to deposit and the units of which money I'm I'm giving them and this is what I send to the mid.

Speaker 0: 00:46:37

And then let's do it.

Speaker 0: 00:46:41

And we are going mint quote amount 8.

Speaker 0: 00:46:51

This is what the mint gave me back.

Speaker 0: 00:46:52

There is a JSON which has a quote identifier.

Speaker 0: 00:46:57

I have to keep track of this.

Speaker 0: 00:47:00

To refer to a previous payment, I have a Lightning invoice here that I'm supposed to pay the amount, blah blah blah, and the state, which is unpaid right now.

Speaker 0: 00:47:13

I'm supposed to go unpaid and pay this, and the main will identify this payment, and it will mark it as paid, of course.

Speaker 0: 00:47:21

And then I can uh continue through the process with the process of uh actually minting the the the thing with the blinding signatures and all the stuff.

Speaker 0: 00:47:31

Since this is a test mint, it will automatically uh mark it as paid by right now.

Speaker 0: 00:47:38

And we can check it.

Speaker 0: 00:47:41

We have another endpoint in Cachew, which I which will be this one which will be this one uh mint quote uh get which is how it's called I believe and what I can do is say okay give me the status for this quote oops what I did wrong Sorry?

Speaker 0: 00:48:20

Yeah, huge.

Speaker 0: 00:48:23

Mint quote status, of course.

Speaker 0: 00:48:28

And you see I get pretty much the same information, but it said me it it just updates me of this state, if this is already paid.

Speaker 0: 00:48:36

In this case, it's already paid.

Speaker 0: 00:48:37

We already deposited some funds.
into the mint.

Speaker 0: 00:48:43

Now is the fun part, which is this function mint execute.

Speaker 0: 00:48:51

Where is it?

Speaker 0: 00:48:54

Mint execute.

Speaker 0: 00:48:55

This one.

Speaker 0: 00:48:56

Let's go this a little bit slower.

Speaker 0: 00:49:00

So let's remove this, remove this.

Speaker 0: 00:49:03

So Okay.

Speaker 0: 00:49:08

So to start with, oops.

Speaker 0: 00:49:16

What am I doing wrong with this?

Speaker 0: 00:49:28

Let's initialize the thing again, get a client, get a wallet, done.

Speaker 0: 00:49:35

We are supposed to get a quote, which I showed you how it's done in the command line here.

Speaker 0: 00:49:44

Then I'm getting the quote back.

Speaker 0: 00:49:49

It's always a good idea to check.
if the quote is paid before proceeding.

Speaker 0: 00:49:58

Otherwise I cannot it doesn't worth going into the process.

Speaker 0: 00:50:03

So I have deposited some funds in the mint.

Speaker 0: 00:50:10

The next step is okay let's generate a secret message that's going to be the serial number for the thing.

Speaker 0: 00:50:16

So I just take a 32 byte random number.

Speaker 0: 00:50:23

I pass it through this hash2 curve function.

Speaker 0: 00:50:28

This will give me the y point.

Speaker 0: 00:50:31

And I just take an R, a new private key.

Speaker 0: 00:50:36

In this case, when I ask for a new private key, it will just provide the random number for me.

Speaker 0: 00:50:43

Then I have to take the mint keys.

Speaker 0: 00:50:53

Now I go into the mint again, ask for the key set, ask for the key set, and I uh here I'm just processing splitting the taking separating these keys dictionary because I need the pub the meet public key to actually continue with this process.

Speaker 0: 00:51:17

Then next thing is I create a blinded secret.

Speaker 0: 00:51:26

I just hide my secret with this R factor that we saw before.

Speaker 0: 00:51:35

I have this I'm building here this output stuff, which is the actual information that the mint expects me to uh send it to to start the process, which has this B prime that we saw on the crypto part.

Speaker 0: 00:51:58

But it also has the amount that I want to uh mint.

Speaker 0: 00:52:02

I I have to say, okay, I I want to use this specific public key here.

Speaker 0: 00:52:08

Uh and I say okay I want to use this specific set of keys because the mint can uh use uh may have a lot of uh sets of keys uh at the same time.

Speaker 0: 00:52:21

So I just say okay, I want to use that specific set then next then next I send it to the mint to get the blinded signatures.

Speaker 0: 00:52:37

You see that I have to put it on a list uh so if I want to Mint a lot of tokens at the same time I just go into this process of making a lot of these outputs so I I just repeat this process a lot of times just a loop here and you build this list and you send the whole list of whatever you want to to the mint to the to the to the mint the mint will respond to me with this with the blinded signatures And next what I'm going to do is, okay, let's take the blinded signatures.

Speaker 0: 00:53:19

There will be a signatures field.

Speaker 0: 00:53:21

I take the first thing that the it that's uh it's returning me a list.

Speaker 0: 00:53:27

I gave I gave it a list.

Speaker 0: 00:53:28

It returns me a list with a blinded signature for each element of the list that I sent.

Speaker 0: 00:53:33

So I just sent a list with one element.

Speaker 0: 00:53:36

So just take this one element back.

Speaker 0: 00:53:39

And I turn this into a public key so that I can make some magic with it.

Speaker 0: 00:53:48

Now I have the blinded signature.

Speaker 0: 00:53:51

I have to unblind it, which is done by doing by taking the mint public key, which is A capital A.

Speaker 0: 00:54:06

I'm supposed to verify this DLEQ thing.

Speaker 0: 00:54:10

I'll just skip that.

Speaker 0: 00:54:16

Then I have this.

Speaker 0: 00:54:21

Yeah, sure.

Speaker 0: 00:54:23

But you have to speak a little bit louder.

Speaker 0: 00:54:32

Yeah, on that line, string quote amount, and then you're pulling pulling from the keys if you don't have one that matches exactly, right?

Speaker 0: 00:54:44

Sorry, I didn't.

Speaker 0: 00:54:45

So if the quote amount is three, you're not going to have that in the dictionary, right?

Speaker 0: 00:54:50

Yes, and then it will fail here.

Speaker 0: 00:54:56

If I understand well, if I'm if I'm uh trying to access something that doesn't exist in this dictionary, which is in the right in the right uh screen right now, is that the question?

Speaker 0: 00:55:07

Yeah, it'll fail.

Speaker 0: 00:55:09

It will fail, yeah.

Speaker 0: 00:55:10

So you're supposed to check if your uh your software is supposed to check this.
Okay.

Speaker 0: 00:55:15

If you're failing or not.

Speaker 0: 00:55:17

Sorry?

Speaker 0: 00:55:17

So making sure that the quote amount is an amount that's part of the key.
Yes.
Yeah.
Yes.
Okay.

Speaker 0: 00:55:26

And this quote amount is is the amount that I uh what I'm doing here is is I'm asking the maintenance okay, sign this thing for me using that specific key.

Speaker 0: 00:55:36

Uh but that that's tied to a specific amount.

Speaker 0: 00:55:40

So if I g give the amount some amount that the that the key doesn't know how to sign, it will fail uh sooner because I will uh just send this to the mint and this will return a JSON with an error.

Speaker 0: 00:55:55

And I can say, oh, okay, the mate doesn't know how to sign tokens for this denomination.

Speaker 0: 00:56:03

But this is why I'm we are you are supposed to get the key set first and see what the mint can do.

Speaker 0: 00:56:09

So you can o always verify and say, okay, I'm sure that the mint can do can sign this amount for me.
Sure.

Speaker 0: 00:56:19

So we got the C prime.

Speaker 0: 00:56:22

We can Oops.

Speaker 0: 00:56:26

Unblind the thing by doing this, which is the unblinding part of the thing and it ends up with this C, which is the point in the curve that represents the mint signature for the thing.

Speaker 0: 00:56:46

I have some verification steps there that I will just skip.

Speaker 0: 00:56:50

And I'll just go straight to this part here, which is building the final token data structure.

Speaker 0: 00:57:03

So I'm taking the secret that I generated, the unblinded signature, the key set of the mint and the amount, putting this together into a JSON.
saving this into my wallet and then persisting it into my wallet.

Speaker 0: 00:57:19

So by the end of this I'm also printing so that we can see that happens.

Speaker 0: 00:57:27

So if I didn't do anything wrong I can just do cashew mint I have to refer which uh quote I'm s I'm trying to consume.

Speaker 0: 00:57:43

These are the deposit that I did.

Speaker 0: 00:57:46

It will go into the internet and do all this this process and I have a new token here.

Speaker 0: 00:57:51

This is pretty much it.

Speaker 0: 00:57:53

And if I see my wallet again, I have this info.

Speaker 0: 00:57:58

I have this new token here and the way I use it to make a a payment for someone, I just send this JSON to someone.

Speaker 0: 00:58:08

If you go into the nuts, um I will not have time to go into this, but if you go into the nuts, there is this one of the specs that that tell you how to encode this JSON uh info.
include an actual address or these casual strings that you see around or make QR codes.

Speaker 0: 00:58:30

There's an encoding for that so that you can transfer these tokens to anyone else.

Speaker 0: 00:58:38

So you just take here, just take this, use send to someone else.

Speaker 0: 00:58:43

And what I do with those?

Speaker 0: 00:58:46

I can do pretty much two things.

Speaker 0: 00:58:48

I can go into the mint and refresh them, which in the cache problems they call it swap.

Speaker 0: 00:58:57

So you just go into the mint, send.

Speaker 0: 00:58:57

So you just go into the to the mint, send this uh this token, and you get a new one back.

Speaker 0: 00:59:04

And the process is pretty much the same that I'm I just did for the minting.

Speaker 0: 00:59:08

I have to generate the secret, a blended signature, send it together, and pretty much the same thing.

Speaker 0: 00:59:16

Or I can't go into the mint and redeem my money bag which is called melting.

Speaker 0: 00:59:25

So melting it goes like so.

Speaker 0: 00:59:31

The first thing that we have to do is I should go into the mint and say hey I want to get paid back in Bitcoin.
and Bitcoin specifically.

Speaker 0: 00:59:46

So I will send you a Lightning invoice and afterwards I will send you some tokens and please pay this Lightning invoice so I get my money back.

Speaker 0: 00:59:58

This is pretty much what is going to happen right now.

Speaker 0: 01:00:02

So I have something here.

Speaker 0: 01:00:09

Even though this is a test mint, it requires a valid invoice.

Speaker 0: 01:00:18

And so what I'm doing here, I'm just going to into wallet of Satoshi, taking a l uh lightning invoice and that's it.

Speaker 0: 01:00:28

And this is a real address that you can Deposit some tips if you appreciate the workshop.

Speaker 0: 01:00:38

Of course, by this time, this is the first time I'm doing this workshop.

Speaker 0: 01:00:43

Maybe feedback is way more appreciated than tips, but come on, tips are always nice.

Speaker 0: 01:00:48

So I'm just taking a Lightning invoice with that function there.

Speaker 0: 01:00:56

I'm supposed to go to the mint.

Speaker 0: 01:01:02

And say, okay, here is my invoice.

Speaker 0: 01:01:06

I want to take back that m d that much Bitcoin on the Lightning invoice.

Speaker 0: 01:01:15

My test mint is configured to not take fees, but the Mint is it can charge fees so you can you have to consider this fees uh for uh getting your money back.

Speaker 0: 01:01:30

Fees are thing, right?

Speaker 0: 01:01:33

So right now I can do uh get melt invoice for an amount of eight, I believe it oop oops, what I did wrong.

Speaker 0: 01:01:45

Does anybody see what I did wrong?

Speaker 0: 01:01:49

It's I know what's wrong because I rename I renamed this thing in the last minute Yeah, so I have this lightning invoice.

Speaker 0: 01:02:00

I've just save it for later and I have this melt quote so I can go to cashew blah melt quote Uh put an invoice here and it's supposed to return me something similar to the to the previous one, which has a quote and it says it's unpaid right now and it will stay like that because it's only supposed now it's the mint that's paying me

Speaker 1: 01:02:33

back.

Speaker 1: 01:02:33

So

Speaker 0: 01:02:34

uh it's supposed to only Pay me

Speaker 1: 01:02:37

back once I present the valid

Speaker 0: 01:02:39

tokens for this amount of eight sets.

Speaker 0: 01:02:43

So I have some tokens that I can spend.

Speaker 0: 01:02:46

So just do this real quick, which here is called mint execute.

Speaker 0: 01:02:57

So I initialize everything.

Speaker 0: 01:03:01

I get I have a list of proofs in my wallet.

Speaker 0: 01:03:05

So I'm just saying uh please give me the first proof that you find.

Speaker 0: 01:03:11

Right now I'm just minting eight sets proofs, but a real wallet should take this and do some kind of coin selection.

Speaker 0: 01:03:21

Try to select the the the the tokens required to for that specific amount.

Speaker 0: 01:03:27

I still don't have that implemented.

Speaker 0: 01:03:30

So what I'm going to try is uh okay.

Speaker 0: 01:03:39

Take those proofs, take the list of proofs, send it to the m mint endpoint that's called m uh melt slash malt eleven slash I want to I have to provide the quote ID that I have on the le on the right side here.

Speaker 0: 01:04:03

If everything goes okay, I will the main will pay me or I mean it will validate the those tokens, it will add those serial numbers into the database of uh invalid tokens.

Speaker 0: 01:04:15

So they cannot be redeemed anymore.

Speaker 0: 01:04:19

It will give me back a message just saying, okay, it it went well, we are going to see.

Speaker 0: 01:04:25

And then I do some cleaning in my wallet, just rem remove this proof, and then persist the the new state of the wallet.

Speaker 0: 01:04:36

It's important that you It's kind of a catch because when I was studying the source code of some projects to see how they work, I don't remember which one specifically.

Speaker 0: 01:04:48

It was a REST implementation which removed proofs from the wallet state before validating that the Lightning payment was already received.

Speaker 0: 01:05:02

But this is ki quite dangerous because you can because that lightning uh payment might fail you and you might already messed up with your tokens.

Speaker 0: 01:05:15

And if and and by this time if you lose your tokens, it's it's a better asset.

Speaker 0: 01:05:21

You have if you have no copy of this, you are going to lose your funds.

Speaker 0: 01:05:25

So it's uh always best to Send them to the mint and after you're pretty sure that you got your money back, just remove those proofs from your storage.

Speaker 0: 01:05:40

So take care of this.

Speaker 0: 01:05:43

And if this doesn't work, oops, what I'm going to do is I'll just Print some stuff and say okay this went sour and try again maybe so let's see that happening So I can do melt ID I have to I'm supposed to say please pay this back You can see it takes some time because it's supposed to be doing a lightning payment.

Speaker 0: 01:06:24

So here is the uh the quote and this is the confirmation from the mint that uh it it paid uh the quote.

Speaker 0: 01:06:36

Of course, I can uh real wallet implementation would go into the Lightning wallet and check, okay, this specific invoice was paid, but you can also uh double check this.

Speaker 0: 01:06:47

You you don't have to trust the the the the the mint itself.

Speaker 0: 01:06:53

Uh of course this is a test mint, it's not paying anything, but uh it's you can see what's happening here.

Speaker 0: 01:07:01

Uh I think I will wrap up.

Speaker 0: 01:07:04

This is pretty much the the the whole process.

Speaker 0: 01:07:07

What I did not show you.

Speaker 0: 01:07:09

I did not show you the process of going into the mint and refreshing those tokens.

Speaker 0: 01:07:17

But the process is pretty much the same as doing a new token.

Speaker 0: 01:07:25

You have to go and make a secret, blind it, send to the mint.

Speaker 0: 01:07:30

There is a different endpoint for swapping and you can go into the specifications.

Speaker 0: 01:07:36

You get back those blind signatures and you can you're supposed to unblind those signatures and make up new tokens.

Speaker 0: 01:07:45

And use those new tokens.

Speaker 0: 01:07:47

So this is pretty much it.

Speaker 0: 01:07:50

I think this is pretty much it.

Speaker 0: 01:07:53

I'm finishing ahead of time.

Speaker 0: 01:07:55

So maybe we have some time for questions if you want.

Speaker 0: 01:08:03

Anyone?

Speaker 0: 01:08:05

Sure.

Speaker 0: 01:08:09

I want to go back and review the Uh the key sets.

Speaker 0: 01:08:14

Sorry?

Speaker 0: 01:08:15

Oh, the key sets.

Speaker 0: 01:08:16

You want to see the key sets again.

Speaker 0: 01:08:19

Yeah, I'm not are these key sets So they always one I mean they're powers of two but is it always one two four eight sixteen or is it Yeah, they always go uh it's also a specification that they should go into powers of two because then you can represent any um denomination that you want.

Speaker 0: 01:08:44

So would you at least integer numbers, right?

Speaker 0: 01:08:47

Say it again.

Speaker 0: 01:08:47

What did you say?

Speaker 0: 01:08:49

I didn't hear you.

Speaker 0: 01:08:50

At least integer numbers you can represent pretty much anyone.

Speaker 0: 01:08:54

Meaning if you combine you'd do eight and plus two.

Speaker 0: 01:09:00

Or you can mint uh two tokens of four and two tokens of two of one for example.

Speaker 0: 01:09:08

Okay, that makes sense.

Speaker 0: 01:09:10

That makes sense.

Speaker 0: 01:09:12

It's like going into the bank and say, oh, I want to take a hundred bucks.

Speaker 0: 01:09:17

But the bank can give me a 100 buck note or ten bucks notes or a hundred one or a mix of those denominations, right?

Speaker 0: 01:09:28

This is pretty much the same thing.

Speaker 0: 01:09:31

Yeah, right.

Speaker 0: 01:09:33

It's actually a good thing to have different tokens in your wallet, denominations, so that you are more equipped to do different payments without going into the mint again and trying to replace those tokens because you don't have a note.

Speaker 0: 01:09:54

As you can see, this is an interesting thing that I just came on.

Speaker 0: 01:10:00

It would be cool if we could exchange tokens, right?

Speaker 0: 01:10:04

Because suppo and this is a problem that I had I had I had a student last uh semester that did a project which was uh swapping protocol for e-cash tokens, this specific tokens.

Speaker 0: 01:10:17

And what's the problem?

Speaker 0: 01:10:19

I I started with the pro this exact problem is I want to pay you $40 for 40 sets or maybe I don't know.

Speaker 0: 01:10:30

I want to pay you 30 sets but I only have a token of 32 sets.

Speaker 0: 01:10:38

Right now what I supposed to do?

Speaker 0: 01:10:40

I'm supposed to go into my meal again give it back the thirty two sets and make up other tokens so that I can combine them and pay thirty for you with a lot of different tokens.

Speaker 0: 01:10:55

But what we did is, suppose that you already have some some tokens yourself, you you also have some cash, why could you not give me some change?

Speaker 0: 01:11:08

We thought we requiring us to go into our mints.

Speaker 0: 01:11:13

And we develop an atomic swap protocol on top of this to do exactly that.

Speaker 0: 01:11:22

It's kind of silly just to say, oh, I want to make some change because all the wallets just go into the mint, refresh tokens and make the payment.

Speaker 0: 01:11:32

But there is one interesting case that's not covered and it's it's not maybe there there are some people that are thinking about it is the unit here the actual funds that are backing this tokens all the mints that I know work with Bitcoin.

Speaker 0: 01:11:54

Of course, this is a Bitcoin war technology.

Speaker 0: 01:11:57

But they are not required to.

Speaker 0: 01:12:00

There is nothing stopping you of having a mint in which you go and deposit dollars or Euros or Hayes or whatever or miles from the American Airlines company or whatever you want and issue these e-cash tokens.

Speaker 0: 01:12:20

And one interesting use case would be, okay, now I have a mint of dollars and a mint of Bitcoin, and I want to exchange dollars for bitcoins.

Speaker 0: 01:12:31

So instead of going to the mints and doing lightning protocol swaps that the mints already do, we cannot do that in this setup because dollars don't have a lightning network.
to call them it uh theirs, right?

Speaker 0: 01:12:48

So what we do, we we use this uh atomic swap protocol so that we exchange those tokens atomically and then we just uh live live our lives without we are re we require some support from the mains, but it's the s the the features are uh already specified.

Speaker 0: 01:13:12

So we have we we need something similar to an HTLC to perform this.

Speaker 0: 01:13:17

But the meets already implement that.

Speaker 0: 01:13:19

It's not special for this kind of protocol.

Speaker 0: 01:13:22

But it's something that I have some people working on.

Speaker 0: 01:13:27

I hope to have this kind of banks in the future.

Speaker 0: 01:13:33

Anyone else?

Speaker 0: 01:13:39

Okay guys, thank you.

Speaker 0: 01:13:41

If you have some feedback, just open an issue on the repo, harsh feedback, whatever feedback you want, it's pretty much appreciated so that I can improve this for other editions of the workshop.

Speaker 0: 01:13:53

Thank you for having me.
