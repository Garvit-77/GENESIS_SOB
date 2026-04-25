---
title: Nixify Bitcoin Related Codebases - TABCONF 6
speakers: []
tags: []
source_file: https://www.youtube.com/watch?v=j_nIZXt9HLA
media: https://www.youtube.com/watch?v=j_nIZXt9HLA
categories: []
date: '2025-05-13'
summary: "This summary combines the key insights from Jose Isteropoulos\u2019s workshop,\
  \ \"Nixify Bitcoin Related Codebases,\" at TABCONF 6. The session explores how Nix\
  \ provides a superior alternative to traditional containerization for building secure,\
  \ reproducible, and developer-friendly Bitcoin applications.\n\n### **1. The Case\
  \ for Nix in Bitcoin Development**\nNix represents a paradigm shift from **imperative**\
  \ environment management (manual installation) to a **declarative, functional**\
  \ approach. While tools like Docker isolate environments, they often lack \"precise\
  \ reproducibility\"\u2014for instance, a standard package manager might install\
  \ different versions of a dependency on different days. \n\nIn the context of Bitcoin,\
  \ where security and consistency are mission-critical, Nix offers:\n*   **Reproducibility:**\
  \ Guarantees the same environment regardless of the host machine.\n*   **Immutability:**\
  \ Values and dependencies remain unchanged once defined.\n*   **The Sandbox:** All\
  \ builds (derivations) occur in an isolated environment with no internet access.\
  \ This ensures every dependency is explicitly declared and hashed, preventing \"\
  works on my machine\" inconsistencies.\n\n### **2. Core Framework: Derivations and\
  \ Flakes**\nThe workshop highlights two fundamental components of the Nix ecosystem:\n\
  *   **Derivations:** The basic building blocks or \"recipes\" for packages, specifying\
  \ the source, inputs, and build phases.\n*   **Flakes:** A standardized interface\
  \ for Nix projects that uses a `flake.lock` file. This file records specific timestamps\
  \ and GitHub commit hashes, acting as the ultimate source of truth to ensure the\
  \ project remains identical over time across different systems.\n\n### **3. Development\
  \ Workflow and Automation**\nThe transition to Nix simplifies both local development\
  \ and Continuous Integration (CI):\n*   **Nix Commands:** Developers primarily use\
  \ `nix develop` to enter a shell, `nix build` to compile, and `nix run` to execute\
  \ packages.\n*   **`devShells` and Automation:** Through `shellHooks`, Nix can automate\
  \ the setup of a development environment. For example, entering a shell can automatically\
  \ provide necessary tools (Rust, Cargo) and even launch a Bitcoin daemon in \"regtest\"\
  \ mode.\n*   **Multi-Architecture Support:** By using tools like `flake-utils`,\
  \ developers can ensure their codebases work seamlessly across different architectures,\
  \ such as Apple Silicon and Linux AMD64, without manual reconfiguration.\n\n###\
  \ **4. Hands-on Application: Nixifying a Rust Project**\nThe speaker demonstrates\
  \ these concepts by building a Rust application that interacts with `bitcoin-cli`.\
  \ \n*   **Automated Dependency Management:** Users do not need to install Rust or\
  \ Bitcoin Core on their local systems. Nix fetches these dependencies and stores\
  \ them in the isolated **Nix Store** (`/nix/store`).\n*   **Efficiency:** Nix uses\
  \ content hashes to identify dependencies. If a dependency already exists in the\
  \ store, Nix reuses it rather than rebuilding it, saving significant time and resources.\n\
  *   **External Integration:** Non-Nix resources (like `.gz` archives) can be incorporated\
  \ by specifying a URL and a SHA hash. If the external file is tampered with or changed,\
  \ the hash mismatch will cause the build to fail, ensuring security and integrity.\n\
  \n### **5. Key Takeaways and Benefits**\nNix offers significant advantages over\
  \ tools like Docker or Terraform for high-stakes software:\n*   **Simplified Onboarding:**\
  \ New contributors can set up a complex, fully functional environment with a single\
  \ command, removing the friction of manual toolchain installation.\n*   **Longevity\
  \ and Reliability:** By locking every dependency to a specific hash, Nix ensures\
  \ that a project can be built and run years later with the exact same results.\n\
  *   **Community Resources:** The existence of Nix community templates for various\
  \ languages (Rust, Go, Python) provides a \"thin\" and accessible starting point\
  \ for developers looking to nixify their existing codebases."
conference: TABConf 6
topics:
  - Nix
  - Continuous Integration
  - Bitcoin Core
  - Nix Flakes
  - Nix Derivations
youtube:
  description: "This workshop will teach users how to incorporate\_[Nix](https:/ /nixos.org/)\_\
    into their codebase.\n\nIt is especially geared towards Bitcoin developers since\
    \ running tests and checks against bitcoin core and other dependencies or interaction\
    \ tooling is not trivial;\n\nboth in CI and locally.\n\n What would an attendee\
    \ learn from this workshop?\n\n- What are Nix derivations\n- What are Nix flakes\n\
    - How to add a flake to your codebase\n- How to package bitcoin software with\
    \ Nix derivations, we'll provide examples with bitcoin core\n- How to run CI with\
    \ Nix both locally and in GitHub Actions\n\n Difficulty Level\n\nIntermediate:\
    \ At least some knowledge needed to not be lost, technical skills, Comp Sci, IT\
    \ related experience is greatly beneficial.\n\n Is there anything attendees should\
    \ read up on before they attend this talk?\n\nThere is an interesting (but opinionated)\
    \ learning resource:\_[Zero to Nix](https://zero-to-nix.com/). It's useful for\
    \ attendees interested in learning and having hands-on before the workshop, with\
    \ a\_[good guide](https://zero-to-nix.com/start/install)\_covering most of the\
    \ nix ecosystem and explanation pages of\_[Nix concepts](https://zero-to-nix.com/concepts).\n\
    \n Is there anything attendees should set up before the workshop?\n\nPlease install\
    \ Nix, we suggest using the\n\n[Determinate Systems' Nix installer](https://github.com/DeterminateSystems/nix-installer)\n\
    \nthat already adds\_`flakes`\_and\_`nix-command`\_extra functionality required\
    \ for the workshop.\n\nIt is a very convenient and robust\_`curl`\_to\_`bash`\_\
    one liner\n\n(of course, be aware of these \"automated internet scripts\", don't\
    \ trust, verify!).\n\n Relevant Links\n\n- Nix:\_[https://nixos.org](https://nixos.org/)\n\
    - `nixpkgs`\_Reference Manual:\_https://nixos.org/manual/nixpkgs/stable\n- Nix\
    \ Flake Templates:\_https://github.com/NixOS/templates\n- Official documentation\
    \ for getting things done with Nix:\_[https://nix.dev](https://nix.dev/)\n- Zero\
    \ to Nix Guide:\_[https://zero-to-nix.com](https://zero-to-nix.com/)\n\n About\
    \ the Speakers\n\nNot in a specific relevant order:\n\n- Jose Storopoli ([@storopoli](https://github.com/storopoli)):\
    \ PhD in computational stats, recovering ex-academic, Nix and Rust enthusiast,contributor\
    \ to\_`rust-bitcoin`\_and BDK, works at\_[@alpenlabs](https://github.com/alpenlabs)\_\
    on Bitcoin-native zero-knowledge rollups.\n- Leonardo Lima ([@oleonardolima](https://github.com/oleonardolima)):\
    \ Sofware Engineer, Rust & Nix enthusiast, contributor at BDK & Fedimint,supported\
    \ by\_[Vinteum](https://vinteum.org/).\n\n Social Links\n\nGithub:\n\n- https://github.com/storopoli\n\
    - https://github.com/oleonardolima\n\nNostr:\n\n- https://primal.net/p/npub1ez8efu9rjxu64g0lalty2ffmr2tgkzjz92rkafyfyz5463wr8ars8zls5t\n\
    \nWebsite:\n\n- [https://storopoli.io](https://storopoli.io/)\n\nTABCONF 6 GitHub\
    \ link\nhttps://github.com/TABConf/6.tabconf.com/issues/41"
  tags: []
  categories:
    - Education
  channel_name: TABConf
transcript_by: your_username via tstbtc v1.0.0
---

Speaker 0: 00:00:05

So hi everyone, welcome.

Speaker 0: 00:00:08

This is the how to NixFy your uh code base.

Speaker 0: 00:00:14

And I do have a very tab inspired uh subtitle.

Speaker 0: 00:00:17

My name is Jose Jose Istoropouli.

Speaker 0: 00:00:20

Uh you can find more about me at isteropoulos.io.

Speaker 0: 00:00:23

I work at Open Labs.

Speaker 0: 00:00:25

We are building a zero knowledge Bitcoin native rollup.

Speaker 0: 00:00:30

It's called Strata.

Speaker 0: 00:00:32

And if you want to take a look, go to openlabs.io to find more about us.

Speaker 0: 00:00:39

The slides, it's pretty much like a Markdown file.

Speaker 0: 00:00:42

And you can grab those at this URL here.

Speaker 0: 00:00:46

I'm going to pause a little bit here so that everyone has their URL.

Speaker 0: 00:00:51

Uh it's uh reduce it.

Speaker 0: 00:00:53

T O forward slash uh M V so Mike Victor Quebec Kilo Hotel and if you by any means cannot type this, go to my GitHub profile, which is my last name, which is also hard to type, but but it's it's it's one of the latest guests.

Speaker 0: 00:01:17

You can find there.

Speaker 0: 00:01:19

But I think everyone can access this, right?

Speaker 0: 00:01:21

This link is not broken.

Speaker 0: 00:01:23

I tested today.

Speaker 0: 00:01:24

Okay, great.

Speaker 0: 00:01:25

So let's give a couple of seconds for folks to type that in.

Speaker 0: 00:01:31

And please, if you don't have Nix installed, I'm going to show you how to do it, but you should have done that before coming here.

Speaker 0: 00:01:39

I know that no nobody reads the issue for the for the thing, but it was one of the things that I highly recommend you guys doing.

Speaker 0: 00:01:49

Okay, I'm gonna move forward.

Speaker 0: 00:01:50

If someone needs the link as well, uh let me know, then I'll I'll come back here.

Speaker 0: 00:01:58

So what is the agenda for today?

Speaker 0: 00:02:00

I'm gonna be like sitting down because I need to do like Copy and paste and running code, so it's easy to do that.

Speaker 0: 00:02:08

First of all, I'm gonna go over why Nix, why makes it unique, some basics of the language.

Speaker 0: 00:02:15

I just put like placeholders of five minutes, but this is just like a quick rundown of the basics.

Speaker 0: 00:02:21

I'm gonna show you what is a Nix derivation, what is a flake.

Speaker 0: 00:02:27

How to run Nix both locally and also in CI.

Speaker 0: 00:02:32

And the bulk of the workshop, we are gonna do a hands-on and build your own flake.

Speaker 0: 00:02:37

We are gonna follow like a very simple flake that I did here.

Speaker 0: 00:02:43

But this we were enabled to start tinkering, kind of like a kickstart for you to use Nix and get acquainted with a Nix flake.

Speaker 0: 00:02:52

And then we're gonna do a wrap-up, like some final questions and maybe some feedback.

Speaker 0: 00:02:57

But feel free to raise your hands, interrupt me at any time.

Speaker 0: 00:03:01

We do have a mic here.

Speaker 0: 00:03:03

We are recording this to YouTube.

Speaker 0: 00:03:05

So if you guys don't want to have your audio in the recording, just say something without at the mic, and I'm gonna say the question was that.

Speaker 0: 00:03:17

Will follow through.

Speaker 0: 00:03:19

So first of all, why Nix?

Speaker 0: 00:03:22

What is the issue with Docker, virtual machines, and what are the limitations?

Speaker 0: 00:03:27

So Dockers and VMs, they do isolate the environment, but they don't have precise reproducibility.

Speaker 0: 00:03:35

And here's an example.

Speaker 0: 00:03:37

Every Docker image at some point has something like run.

Speaker 0: 00:03:41

Pseudo-apt installs something.

Speaker 0: 00:03:44

And that is not reproducible because if you are at a different point of time or space, if you are in another continent and you hit another CDN or another mirror, you get a different version of the package.

Speaker 0: 00:03:59

Or if someone did this yesterday or one month from now, they get a whole different system.

Speaker 0: 00:04:04

In the day-to-day, That that might not be an issue, but if you want fully reproducible environments, this is not good enough.

Speaker 0: 00:04:13

Yes, you can do uh like log files with Docker, but it's not the default.

Speaker 0: 00:04:19

The default with Nix is everything being reproducible.

Speaker 0: 00:04:24

Uh we do have some issues of works on my machine and some dependency hell in Docker, but that is not.

Speaker 0: 00:04:31

The major uh that is not like um the primary experience, but sometimes you might get uh this this issue in Docker.

Speaker 0: 00:04:43

And what Nix brings, so folks who like functional programming, there's a pure functional programming.

Speaker 0: 00:04:49

There is no impure functions, no side effects.

Speaker 0: 00:04:52

Uh it is rep reproducible.

Speaker 0: 00:04:55

Every build is guaranteed to have the same the same environment everywhere.

Speaker 0: 00:04:59

And it's immutable.

Speaker 0: 00:05:01

It's a functional programming pure function, so it's immutable by design.

Speaker 0: 00:05:07

And finally, it has native support for Apple Silicon, Apple Intel, ARM Linux, or Intel Linux as well.

Speaker 0: 00:05:15

And I might need to reduce.
zoom here, yeah.

Speaker 0: 00:05:23

And there is like a bunch of uh reliability.

Speaker 0: 00:05:26

Uh you you don't have what is called environment drift, so things changing.

Speaker 0: 00:05:31

And you get reproducibility at both uh system level, but also at the package level as well.

Speaker 0: 00:05:37

And it's perfect for Bitcoin projects because we need to have a reproducible system and we need things to not shift underneath us.

Speaker 0: 00:05:45

For all of the Bitcoin projects.

Speaker 0: 00:05:49

Some language basics.

Speaker 0: 00:05:52

I really gonna defer this for you to do your own research, go to my Nix wiki and figure out the language.

Speaker 0: 00:05:59

It's not that hard.

Speaker 0: 00:06:01

But here are some aspects.

Speaker 0: 00:06:04

You define, it's decorative and lazy evaluate.

Speaker 0: 00:06:07

That means that you define what you want.

Speaker 0: 00:06:09

Not how, so it's not imperative.

Speaker 0: 00:06:11

You just say, I want this, I want that.

Speaker 0: 00:06:13

It's lazily evaluated.

Speaker 0: 00:06:14

You can specify a bunch of things, and if you don't need those things, they will never be evaluated, they will never run.

Speaker 0: 00:06:21

So it's lazily evaluated.

Speaker 0: 00:06:25

And here's a very simple derivation.

Speaker 0: 00:06:27

We are going to go over derivations in the next slide, I think.

Speaker 0: 00:06:30

But for example, this is a Nix derivation that Takes as input a set called packages and outputs another derivation, which is pretty much I'm making a shell.

Speaker 0: 00:06:42

It outputs a development shell that has the package hello world from the Nix packages, and this is a very simple hello world in Nix.

Speaker 0: 00:06:54

It's functional, so the values do not change after definition.

Speaker 0: 00:06:58

Because they you don't have side effects.

Speaker 0: 00:07:02

And you can compose, it's modular, composable.

Speaker 0: 00:07:04

You you can compose small functions to build larger systems.

Speaker 0: 00:07:08

You can compose modules and link them together and so on.

Speaker 0: 00:07:13

And that's kind of like the language basics in a nutshell.

Speaker 0: 00:07:20

Everything is an expression.

Speaker 0: 00:07:22

That it's lazily evaluated.

Speaker 0: 00:07:25

We have some data types, the basic ones, like strings, lists, sets, which is similar to dictionaries if you come from Python, or hash tables if you come from the Java world, and so on.

Speaker 0: 00:07:36

And this is exactly like an expression, Nix.

Speaker 0: 00:07:41

I'm declaring variables, and I'm seeing an expression here.

Speaker 0: 00:07:44

And if you grab this, thing here and you go to a Nix repo and you copy and paste this and you execute, you get hello world.

Speaker 0: 00:07:54

So it's that simple.

Speaker 0: 00:08:02

The language is very simple, but it enables you to build more stuff upon it.

Speaker 0: 00:08:09

So let's go over what is a derivation.

Speaker 0: 00:08:12

So, a derivation is kind of like the fundamental unit in X.
Everything is derivations.

Speaker 0: 00:08:17

If you kind of like squint your eyes a little bit, and what a derivation is, it's a recipe for a package or an environment or anything or any other thing, also, but mostly we use for package and derivations and environments.

Speaker 0: 00:08:36

And it specifies.

Speaker 0: 00:08:37

How it's built, what is the inputs, and what is the output.

Speaker 0: 00:08:43

So here is a derivation.

Speaker 0: 00:08:46

We are using the make derivation function from this standard environment.

Speaker 0: 00:08:51

And it specifies stuff like package name, conversion, the source, the source files that you need for that derivation.

Speaker 0: 00:09:03

The build inputs, and then you have several phases.

Speaker 0: 00:09:07

You have the build phase, you have the install phase, the pre-build phase.

Speaker 0: 00:09:10

There's a bunch of those.

Speaker 0: 00:09:12

But mainly, you're gonna need at least one build phase, or one install phase, or both of them.

Speaker 0: 00:09:18

And here is a very simple make file derivation where the build phase is the command make, and the install phase is make install.

Speaker 0: 00:09:28

So this is how you pretty much plug and play a Nix derivation on top of a project that has like make files, for example.

Speaker 0: 00:09:37

And the important thing is that the derivation is run in a sandbox environment that has no connection to the outside world.

Speaker 0: 00:09:46

So there is no like curl this into that and so on.

Speaker 0: 00:09:50

So there is no internet access.

Speaker 0: 00:09:52

And you specify all of the inputs if they need to be fetched from the internet or from some Git repo or from GitHub somewhere.

Speaker 0: 00:09:59

And then you lock it down with a hash for the whole derivation.

Speaker 0: 00:10:05

And Nix is gonna fetch it everything, run the derivation like phases.

Speaker 0: 00:10:12

And if there is an error, it will show the error.

Speaker 0: 00:10:16

But what And what's really nice if it builds correctly, then you are ready to ship it natively for all of the target architectures that I just said, like Apple Silicon, Apple Intel, and so on.

Speaker 0: 00:10:29

But it's really important for you guys to know that you don't have internet access.

Speaker 0: 00:10:33

So you cannot say, yeah, just run this.

Speaker 0: 00:10:36

You cannot say something like, instead of make here, you just say, no, just run curl.

Speaker 0: 00:10:42

Something and pipe it to bash.

Speaker 0: 00:10:44

It's not gonna work because there is no internet access.

Speaker 0: 00:10:46

You need to make it as an input.

Speaker 0: 00:10:48

And the input needs to be hashed because it needs to have some sort of integrity as well.

Speaker 0: 00:11:00

We need the inputs, the dependencies that we need, how to compile the package, that's the build process, and the outputs, what gets produced.

Speaker 0: 00:11:09

Binaries, libraries, and so on.

Speaker 0: 00:11:12

As I said, it is isolated in a sandbox environment with no internet access, and that's kind of like the anatomy of a Nix derivation.

Speaker 0: 00:11:25

So let's go over to a flake.

Speaker 0: 00:11:28

A flake is a way for us to standardize the interface for Nix projects.

Speaker 0: 00:11:35

And it's really nice because it's reproducible and composable.

Speaker 0: 00:11:37

Reproducible because every flake has a log file with the hashes of everything that it uses as inputs.

Speaker 0: 00:11:46

And also composable because since it has inputs and outputs, we can use flakes to build other flakes.

Speaker 0: 00:11:57

So for example, your flake outputs something that is an input for another flake and so on.

Speaker 0: 00:12:03

And you can, a lot of GitHub projects have flakes.

Speaker 0: 00:12:07

If you see a file called flake.nix, it's pretty much a recipe of how to use that project or that package or that library as a flake in your Nix project.

Speaker 0: 00:12:19

So I probably you probably have seen some flake.nix in some GitHub repos.

Speaker 0: 00:12:26

This is what it's doing.

Speaker 0: 00:12:27

And a flake has kind of like three.

Speaker 0: 00:12:29

Fields, the description, which is pretty much a string, that's some metadata, what this project is about.

Speaker 0: 00:12:36

And then you have two other, the inputs and the outputs.

Speaker 0: 00:12:39

What this flake takes as inputs.

Speaker 0: 00:12:42

This could be like a bunch of things, could be like a Git repo, another flake, could be a Nix package repo as well.

Speaker 0: 00:12:50

And you can version control those.

Speaker 0: 00:12:53

So here I'm tagging 24.05 and Nix follows kind of like a bi week every two so two releases per year, so on May and on November.

Speaker 0: 00:13:08

So the next one is gonna be 24.11, maybe next month.

Speaker 0: 00:13:13

And then in the outputs, pretty much you say what it takes.

Speaker 0: 00:13:16

As input, so here it takes the Nix package and the package that it's gonna build.

Speaker 0: 00:13:21

It's gonna build just a Linux AMD architecture package, and this is gonna be the default.

Speaker 0: 00:13:28

When you call like Nix build or Nix run on this flake, it's gonna output this one, and it's just gonna output a shell with the hello world Nix package available for you.
Yeah.

Speaker 0: 00:13:44

Yes, the mic is over there.

Speaker 0: 00:13:50

I think you need to turn it on, maybe.

Speaker 0: 00:13:53

Test, test.

Speaker 0: 00:13:55

So you said no um Internet access, but the inputs a URL.

Speaker 0: 00:14:01

So does that mean you're allowed to use the Internet to set up your inputs and then no Internet while you make it?

Speaker 0: 00:14:07

How it works is that it will fetch all of the inputs before starting the sandbox environment for building stuff or for running stuff or for building your environment.

Speaker 0: 00:14:22

So all of the inputs, they need to be declared.

Speaker 0: 00:14:25

You cannot have like uncertainty or undefined behavior.

Speaker 0: 00:14:30

So you cannot have something that does A wild curl and grab something that might change.

Speaker 0: 00:14:37

So you can specify anything as input, but you need to specify.

Speaker 0: 00:14:42

And it needs to go either through these inputs here or through those in the derivation, through those build inputs here.

Speaker 0: 00:14:51

You cannot do something like, okay, in the phase, just do a curl, get this, and that, it's not gonna work.

Speaker 0: 00:14:56

You need to like, Specify in the inputs.

Speaker 0: 00:15:00

Then it's going to fetch it before starting the results for the derivation.

Speaker 0: 00:15:05

Does that sound more clear for you?

Speaker 0: 00:15:07

Great.

Speaker 0: 00:15:09

Yeah, it took me a while to figure that out.

Speaker 0: 00:15:11

I was like, why this is failing?

Speaker 0: 00:15:13

It works in my machine, but it doesn't work on Nix.

Speaker 0: 00:15:17

I have a question.

Speaker 0: 00:15:18

Well, feel free to define it later, but since we'll find place, I was going to.
curious if there is a way to hide certain flat inputs.

Speaker 0: 00:15:28

Let's say for example, like if I put like a big online, but let's say part of my place to spike you like next big project, but I don't want people to know, you know, to target me.

Speaker 0: 00:15:41

Is there a way to like hide that as a secret or by the virtue of using Flatus?

Speaker 0: 00:15:48

That is gonna be somewhere in your repository, like in my lockdown?

Speaker 0: 00:15:53

I mean, one thing that you can do, yes, it's gonna be in your log file.

Speaker 0: 00:15:59

So, one thing that you can do is you can git ignore it.

Speaker 0: 00:16:05

So, suppose you have like a config.toml that has sensitive content.

Speaker 0: 00:16:10

You can do a git a gitignore on that one, you can provide in your flake a config.tomo.example.

Speaker 0: 00:16:19

So it's a template.

Speaker 0: 00:16:21

And on your flake, you you on your local repo, since it's git ignore, you pretty much know that that file is there and you can specify that file in your flake, in your local flake.

Speaker 0: 00:16:37

And with the SHA of the file, so if that file change, the SHA will change and the derivation will fail because the inputs don't match the SHA signature.

Speaker 0: 00:16:51

You can do that.

Speaker 0: 00:16:53

And just be careful because if you do that, you might generate a flake log that might leak some of the contents.

Speaker 0: 00:17:01

So just be aware that you also need to be extra careful with committing flake logs if you have some sort of like git ignored uh config file that has sensitive sensitive content.

Speaker 0: 00:17:14

Okay, but it sounds like there's some of the check out this did not yes I will do that.

Speaker 0: 00:17:22

Like for example, I know there's a project called like these socks and not an algebra.

Speaker 0: 00:17:27

Until I came for it, quite the aspects of its configuration.

Speaker 0: 00:17:31

But it sounds like as far as flick inputs, that goes beyond the scope.

Speaker 0: 00:17:36

No way.

Speaker 0: 00:17:37

You can do that, but I use it.

Speaker 0: 00:17:39

I don't SOPS.

Speaker 0: 00:17:41

I I play around the SOPs, but I use AGE Nix.

Speaker 0: 00:17:46

You can use AGE Nix as well.

Speaker 0: 00:17:48

And there is a way for you to do that as a flick.

Speaker 0: 00:17:51

Input as like a flake something, but go to the AGE Nix repo and check that out.

Speaker 0: 00:17:58

This is beyond the scope of the workshop.

Speaker 0: 00:18:01

But there is a way, and yes, you went in the right trail.

Speaker 0: 00:18:05

Appreciate it.

Speaker 0: 00:18:09

So the flakes, it has like the inputs.

Speaker 0: 00:18:13

Typically, you grab those from like Git repo.

Speaker 0: 00:18:16

And outputs, and outputs could be like packages, whole system configurations because Nix is kind of like a meta thing.

Speaker 0: 00:18:25

It is a package manager, it is an OS, it is a way for you to do like environment reproducible stuff, and so on.

Speaker 0: 00:18:35

And you can also build apps with Nix.

Speaker 0: 00:18:40

You can do you as I said, the Flakes allows you to like compose a lot of things and it guarantees reproducibility.

Speaker 0: 00:18:50

And that's pretty much it about Flake.

Speaker 0: 00:18:54

We're gonna build one from scratch right now.

Speaker 0: 00:18:57

But before diving into that, I'm gonna touch base on how to run Nix locally and in Siak.

Speaker 0: 00:19:04

First, we need to stop Nix.

Speaker 0: 00:19:05

It was one of the pre-events for this workshop, if you want to follow along.

Speaker 0: 00:19:10

Use the deterministic systems Nix installer.

Speaker 0: 00:19:13

Careful, this is a curl to a bash pipe.

Speaker 0: 00:19:16

So it's gonna run editoring code from some dude in the internet in your machine.

Speaker 0: 00:19:21

So check that first.

Speaker 0: 00:19:24

And once you are good to go, you should have like several commands like mix develop, mix run.

Speaker 0: 00:19:31

You might need to restart your shell because to load like uh nix bod in the patch uh uh file as well in the path environment file group.

Speaker 0: 00:19:42

And you should have stuff like nix develop, nix run and mix uh build as well.

Speaker 0: 00:19:50

How you do it is pretty much you go like nick develop or nick still, and if you dot, this is going to be like the current directory, and by default, it's going to go to.

Speaker 0: 00:19:56

This is going to be like the current directory and by default it's gonna go to the default re uh recipes.

Speaker 0: 00:20:02

So if you do NixBuild dot, it's gonna build your default package.

Speaker 0: 00:20:07

So this this is doing Nix shell.

Speaker 0: 00:20:09

It's not NixOS, it's Nix Shell.

Speaker 0: 00:20:12

What you do?

Speaker 0: 00:20:13

This is Nix Shell.

Speaker 0: 00:20:15

This is what I'm doing.

Speaker 0: 00:20:15

Instead of will get from uh a Nix shell.

Speaker 0: 00:20:19

And we are going to go over this a little bit at the window in the workshop.

Speaker 0: 00:20:23

We are going to build a shell and a package.

Speaker 0: 00:20:25

And I'm going to show you how to do that.

Speaker 0: 00:20:27

But when you do next develop something, you want a environment new you want a development shell.

Speaker 0: 00:20:33

So an environment that has all the things that you need.

Speaker 0: 00:20:37

If it is like Bitcoin D running, it has Bitcoin D running with all the conf configurations that you need.

Speaker 0: 00:20:43

If it has uh if you need something, I don't know, if it's if you need to spin up a bunch of things, so for example, FedEx, uh does kind of like uh they have like a Nix crazy thing that if you don't like Nix that all it's gonna spin up a lot of things, gonna drop you into a uh Mbrox console with a lot of things running, kind of like a matrix, like screensaver and boom, you're good to go.

Speaker 0: 00:21:09

Uh how to do this in CI?

Speaker 0: 00:21:11

Uh it it's it's really easy because uh it just this is like a very basic how to run Nix on CI on GitHub actions.

Speaker 0: 00:21:20

You pretty much do uh the classic uh checkout the repo and then you install Nix using the Demonite Systems Nix installer action.

Speaker 0: 00:21:29

And there you go, you have Nix ready and you can do like Nix build.

Speaker 0: 00:21:32

Or Nix build some other thing if you want to.

Speaker 0: 00:21:36

And this is pretty much how a lot of packages and a lot of projects they they deal with uh testing Nix stuff in CI.

Speaker 0: 00:21:46

And I think this is my almost my last slide because uh before we we dive into access mode and and running stuff.

Speaker 0: 00:21:55

So how are you gonna do it?

Speaker 0: 00:21:58

Uh, we're gonna build.

Speaker 0: 00:21:59

So, this is now the bulk of the workshop.

Speaker 0: 00:22:00

Let's build a flick together.

Speaker 0: 00:22:03

Uh, it's gonna be a very simple Rust project that runs a Bitcoin D command.

Speaker 0: 00:22:07

Why Rust?

Speaker 0: 00:22:08

Because I know Rust, so I can help you.

Speaker 0: 00:22:10

I'm not very good at JavaScript.

Speaker 0: 00:22:12

Actually, every day that I don't touch JavaScript is a good day for me.

Speaker 0: 00:22:16

So, Um but you can do this whatever approach you want.

Speaker 0: 00:22:23

You you can do this for like ESCO, the Nix, uh Python, JavaScript, all the languages, uh Nix is is available, you have language.

Speaker 0: 00:22:34

Um so okay, let's start uh and you don't even need to have like ROS installed, you just need to have Nix installed for this workshop.

Speaker 0: 00:22:44

So let's copy this.

Speaker 0: 00:22:46

This is the classical cargo init.

Speaker 0: 00:22:48

So go into a directory, create a new temporary directory, C D into that, and then just run this.

Speaker 0: 00:22:55

Next run, next packages.

Speaker 0: 00:22:56

So I'm going to run the next package card derivation, but I'm going to run the cargo package in that derogation, and I'm going to run with the cargo init command.

Speaker 0: 00:23:09

Just to create like a a Rust binary.

Speaker 0: 00:23:12

And if I do this Oh, come on.

Speaker 0: 00:23:16

Oh, sorry.

Speaker 0: 00:23:18

The cargo and then you're doing it.

Speaker 0: 00:23:20

There you go.

Speaker 0: 00:23:21

I double typed it cargo.

Speaker 0: 00:23:23

I'm gonna fix that later.

Speaker 0: 00:23:25

There you go, and if we if we do like an L S, we have a let's do do I have three here?

Speaker 0: 00:23:32

Yes, I have three, there you go.

Speaker 0: 00:23:33

Uh we have a cargo terminal.

Speaker 0: 00:23:35

Uh I have my slides here, so ignore that.

Speaker 0: 00:23:38

And we have like a source and name.

Speaker 0: 00:23:40

And if we open uh if I type it, if you open source and name, we have like pretty much like a hello word here, and it works.

Speaker 0: 00:23:52

So this is our basic uh cargo deal something, but I just did on in a Directory, but you can do that.

Speaker 0: 00:24:03

Cargo in need if you have already a directory ready to go.

Speaker 0: 00:24:11

Okay, and if we do something like cargo run, it should work.

Speaker 0: 00:24:19

There you go, it works.

Speaker 0: 00:24:21

So we can, we don't even need to have like a Rust install, we can just call Rust or cargo from.
uh Nix as well.
Yes.
Yeah.
Ye this second cargo does not exist, so it's just Nixon, Nix packages, cargo in it.

Speaker 0: 00:24:42

And since we are like ahead of schedule, I'm just gonna go back to the slides uh URL so that everyone has this uh come on.

Speaker 0: 00:24:54

There you go.

Speaker 0: 00:24:55

This slides they are on a backdoor file in this uh link here.

Speaker 0: 00:24:59

So it's uh reduce it.to forward slash mike victor cadet kilo hotel.

Speaker 0: 00:25:07

And this should redirect you to a gist.

Speaker 0: 00:25:10

And the backdoor files, they have all the code that you need to add, so it's way easier to copy and paste from that file than uh copy and paste marriage from like a random screen a couple of feet away.

Speaker 0: 00:25:24

I don't think about the double package side.

Speaker 0: 00:25:32

Does anyone have any issues with the parallel package with this command here?

Speaker 0: 00:25:37

Yes.

Speaker 0: 00:25:37

Downloading it to the store.

Speaker 0: 00:25:39

Yeah, it's it's it's going to take a while because you you need to download it, but Uh have a try Nix one, Nix packages.

Speaker 0: 00:25:51

How how do you store Nix?

Speaker 0: 00:25:56

Yes, so depending on how you install Nix, you need you need to I advise to use the Nix, the Pepperlin systems installer.

Speaker 0: 00:26:05

And the Lix community is a baby.

Speaker 0: 00:26:07

They will probably make this the official installer because it enables extra functionality, which is the next commands and the flicks.

Speaker 0: 00:26:15

And probably you are missing that one.

Speaker 0: 00:26:17

So you you you need to go to the FC, Nix, Nixconf and just Google how to activate Nix command and I think you already have expert help with you.

Speaker 0: 00:26:27

So yeah.

Speaker 0: 00:26:29

But this should run, right?

Speaker 0: 00:26:32

I'm not going crazy.

Speaker 0: 00:26:33

Without the extra card.

Speaker 0: 00:26:35

Yeah, this NICS package algorithm should run, right?

Speaker 0: 00:26:40

It's like 44 megabits element right now.

Speaker 0: 00:26:43

Yes, it's not all the whole like up of the NICS package's latest archive snapshot, and then we should run it at a couple seconds.

Speaker 0: 00:27:03

Just this second cargo does not exist.

Speaker 0: 00:27:05

It was a package.

Speaker 0: 00:27:07

Actually, I'm gonna fix that.

Speaker 0: 00:27:40

Yes, okay, cool.

Speaker 0: 00:27:43

Okay, so.

Speaker 0: 00:27:46

Let's open our main file.

Speaker 0: 00:27:48

Let me reduce the I need to reduce a little bit here.

Speaker 0: 00:27:53

There we go.

Speaker 0: 00:27:54

Let's copy.

Speaker 0: 00:27:56

Oh, this is like a maintenance.

Speaker 0: 00:27:58

Okay, I'm gonna do like this.

Speaker 0: 00:28:03

Actually, this is not gonna work either.

Speaker 0: 00:28:07

One sec.

Speaker 0: 00:28:12

There you go.

Speaker 0: 00:28:13

I have it here, so I can copy this guy here.

Speaker 0: 00:28:19

So let's open our um name here and let's paste everything.

Speaker 0: 00:28:29

So what is this scope here doing?

Speaker 0: 00:28:37

Uh since I'm running this in a very lightweight virtual machine, uh uh VPS I don't want to have external dependencies, I don't want to deal with with cargo uh compilation versus uh compilation, so this is just gonna use like the standard library.

Speaker 0: 00:28:53

It's going to like output uh Bitcoin CLI command, get blockchain info.

Speaker 0: 00:28:59

And it's gonna pipe to the standard out, and it's gonna grab the the standard out, pipe it to a to a string, and then it's gonna print out the string something like output from bit from Bitcoin CLI and the output string.

Speaker 0: 00:29:13

This is pretty much it.

Speaker 0: 00:29:15

Yeah?

Speaker 0: 00:29:18

No.

Speaker 0: 00:29:20

The question was, should we have Bitcoin DE install and when we open?

Speaker 0: 00:29:23

No, because Nix will handle that for us.

Speaker 0: 00:29:26

And that's exactly the point.

Speaker 0: 00:29:27

If you want this, it's gonna fail.

Speaker 0: 00:29:29

And how do we fix that?

Speaker 0: 00:29:30

We fix that with Nix.

Speaker 0: 00:29:32

Because then you will force everyone to go download Bitcoin and install Bitcoin in your system and do this and that.

Speaker 0: 00:29:42

Whereas the purpose of this workshop is to say, hey, This is the flake and just do like next run and all the dependencies will will will be handled in the next operation.

Speaker 0: 00:29:54

Well that was a great question.

Speaker 0: 00:29:55

Thank you.

Speaker 0: 00:29:57

Thank you.

Speaker 0: 00:29:57

So okay, this is uh our uh file here.

Speaker 0: 00:30:02

I don't think that anyone has any questions, a simple Rust script that calls Bitcoin CLI with the rash test.
option get blockchain info and then

Speaker 1: 00:30:12

pipes this to the output and then

Speaker 0: 00:30:14

just puts the output.

Speaker 0: 00:30:15

Now if

Speaker 1: 00:30:17

I do the

Speaker 0: 00:30:19

cargo run it's gonna fail.

Speaker 0: 00:30:23

There you go it failed because we don't have Bitcoin installed.

Speaker 0: 00:30:28

So how do we fix that?

Speaker 0: 00:30:32

Yeah, we run it and it's gonna fail.

Speaker 0: 00:30:35

And how do we fix this?

Speaker 0: 00:30:38

We create we grab one of the flick templates.

Speaker 0: 00:30:43

There is a lot of those.

Speaker 0: 00:30:44

There is like NixOx linklets, this GitHub repo that has tons of those.

Speaker 0: 00:30:48

You can also go to the Nix community, Flakes linklets as well.

Speaker 0: 00:30:53

They have like templates for everything.

Speaker 0: 00:30:55

Everything that you can think of, they have templates.

Speaker 0: 00:30:58

JavaScript, TypeScript, Python.

Speaker 0: 00:31:00

Haskell, Rust, Go, whatever you want.

Speaker 0: 00:31:03

They have templates.

Speaker 0: 00:31:04

I'm gonna grab the trivial template because we're gonna build up on this.

Speaker 0: 00:31:08

So I want a very like thin stuff that we can delete and build from scratch.

Speaker 0: 00:31:14

So let's copy this guy here and run here.

Speaker 0: 00:31:21

So now if we do a tree again, Oh crap.

Speaker 0: 00:31:25

Um let's go on LS.

Speaker 0: 00:31:27

So now if we go on ls I have like uh one new file called flick.nix.

Speaker 0: 00:31:35

And if we open that file, we have pretty much descriptions, inputs, outputs.

Speaker 0: 00:31:41

Everything that we just uh saw that afflict needs and afflict has uh are those three uh things.

Speaker 0: 00:31:50

So we can we can start changing those.

Speaker 0: 00:31:52

So let's change the description.

Speaker 0: 00:31:53

I don't know am I awesome.

Speaker 0: 00:32:00

There you go.

Speaker 0: 00:32:01

My awesome cyberpunk with my project.

Speaker 0: 00:32:04

And I'm gonna use as input uh NixOS unstable.

Speaker 0: 00:32:09

So but of course here you can you can lock it to like twenty four dot oh five, twenty four dot eleven.

Speaker 0: 00:32:16

And so on.

Speaker 0: 00:32:17

If you don't want to YOUML and live on unstable NIX, it's not that unstable, but yeah, you might want to not not go unstable.

Speaker 0: 00:32:28

And what is what is it this this uh trivial language gives us gives us uh two derivations.

Speaker 0: 00:32:35

So gives us uh two Linux derivations, which I'm running Apple Silicon is not going to work.

Speaker 0: 00:32:42

So the first thing that we're going to do is fix those things.

Speaker 0: 00:32:45

But it gives us a hello.

Speaker 0: 00:32:48

So this is pretty much like a hello package.

Speaker 0: 00:32:50

And it gives us a default derivation that just points to the hello derivation.

Speaker 0: 00:32:56

So this gives us just one derivation.

Speaker 0: 00:33:01

This is what the flake is doing.

Speaker 0: 00:33:05

Any questions so far?

Speaker 0: 00:33:09

All right, let's uh change this a little bit.

Speaker 0: 00:33:12

First thing that we are gonna do is of oh, actually, I'm in a I'm in a Mac sniper, but I'm in a Linux VM.

Speaker 0: 00:33:22

So this might work.

Speaker 0: 00:33:25

So one thing that I that I can do is I can I can quit.

Speaker 0: 00:33:30

And I can do a mixed run like this, and this should work.

Speaker 0: 00:33:35

Oh, sorry about that.

Speaker 0: 00:33:37

I I thought that I had already doubled the data.

Speaker 0: 00:33:44

So this will work in my machine, but probably in your machine won't not all machines will work because as as we saw, this is hard coded for uh X66 Linux, and if you're running like R Linux or Apple Silicon or AB, you are one of the crazy guys that is running a Wisconsin, it's not gonna work.

Speaker 0: 00:34:06

Let's tweak a little bit.

Speaker 0: 00:34:08

There you go.

Speaker 0: 00:34:11

And while we wait, do you have any questions, comments?

Speaker 0: 00:34:21

So I guess can you talk more about the how you handle the different architectures then within the flake?

Speaker 0: 00:34:27

If you you know you have these competing things everybody's on an M1 or M2 or something like that and you're running on X is like.

Speaker 0: 00:34:34

That's a great question.

Speaker 0: 00:34:35

So how many uh yeah, this would work in x86.

Speaker 0: 00:34:41

And let's see if the comment okay is still running.

Speaker 0: 00:34:44

But the the problem is that we need something that pretty much works in all architectures.

Speaker 0: 00:34:51

How we do we know this?

Speaker 0: 00:34:52

We have a a company called Numpy.

Speaker 0: 00:34:54

They are like very hardcore NIX people.

Speaker 0: 00:34:57

And they do have uh flake booty, which is a a a flake that provides a lot of utilities.

Speaker 0: 00:35:04

And one of those is the uh each default system.

Speaker 0: 00:35:08

And this function is It takes like any system and outputs derivations for that system.

Speaker 0: 00:35:15

And what we are doing here is in the outputs we are wrapping this into a functional into a into an input function.

Speaker 0: 00:35:25

Remember that this is a pure functional programming language.

Speaker 0: 00:35:29

So what we are doing is okay, we we have like each default system.

Speaker 0: 00:35:35

And now we are grabbing a system.

Speaker 0: 00:35:40

And for any system, we are defining a NIX package as packages.

Speaker 0: 00:35:45

And we are inheriting that system.

Speaker 0: 00:35:47

So if this is like a Apple Sequo, this is going to be like uh Arch sixty four dash Darby.

Speaker 0: 00:35:54

If this is like a Linux AMD uh architecture, it's gonna be like X8664 dash Linux and so on.

Speaker 0: 00:36:02

So this is going to create a next packages derivation specific for your environment and also it's going to output a default package for your environment called package.hello.

Speaker 0: 00:36:17

So if we copy this, this should work.

Speaker 0: 00:36:20

Let's just take a look.

Speaker 0: 00:36:22

Okay, now if I do next one, it works.

Speaker 0: 00:36:25

And if I do uh of course I know about XM6, we have a flex set for for Apple folks, so if I do next build, yes, it's got build, and now we see that when you build we have a result.

Speaker 0: 00:36:39

So if I do a tree result oh, that was not good, okay.

Speaker 0: 00:36:44

So let's do ls result, uh we get pretty much the derivation which is that package hello itself.

Speaker 0: 00:36:50

And the package hello itself has a beam subdirectory and a shared subdirectory with like name pages and so on, because it's a mixed package.

Speaker 0: 00:37:00

And if we pretty much know like a result, a beam, and here we have only one binary hello, it is the same thing.

Speaker 0: 00:37:08

So we can both run a derivation, but also build it into a special result.

Speaker 0: 00:37:15

Directory.

Speaker 0: 00:37:16

This is what the Nix run and Nix build command do.

Speaker 0: 00:37:23

Now let's fix this.

Speaker 0: 00:37:24

Let me grab my code here.

Speaker 0: 00:37:27

There we go.

Speaker 0: 00:37:31

Oh hang on.

Speaker 0: 00:37:32

I don't want I want my description.

Speaker 0: 00:37:34

And descriptions in us.

Speaker 0: 00:37:35

I don't want the other stuff.

Speaker 0: 00:37:39

So let's change.
our flake again.

Speaker 0: 00:37:44

Uh come on, flake.nets.

Speaker 0: 00:37:47

There goes so let's grab those things.

Speaker 0: 00:37:54

Copy those in.

Speaker 0: 00:37:56

And if I'm not copy paste wrong, this should work.

Speaker 0: 00:38:00

So just to recap, we get the flake module.

Speaker 0: 00:38:04

So this is gonna add one input to our next.

Speaker 0: 00:38:08

And this is a nice a nice place to show the flake dot lock maybe.

Speaker 0: 00:38:14

So here's the flake lock uh dot lock.

Speaker 0: 00:38:16

So as as you can see, we have a log file of all the inputs.

Speaker 0: 00:38:22

So if we are using the mix packages input, we have it here.

Speaker 0: 00:38:26

It's a we have like a timestamp when it was last modified.

Speaker 0: 00:38:31

We have a hash.

Speaker 0: 00:38:33

Of the state.

Speaker 0: 00:38:34

So this is fully rep reproducible.

Speaker 0: 00:38:37

We have which Git GitHub owner is.

Speaker 0: 00:38:42

This is the NixOS which repository.

Speaker 0: 00:38:46

The competit that we are pushing from.

Speaker 0: 00:38:50

And this is a GitHub repo.

Speaker 0: 00:38:53

And we get some metadata.

Speaker 0: 00:38:54

And let's go back.

Speaker 0: 00:38:56

Now, So now we are adding a new input.

Speaker 0: 00:39:05

So we are gonna have a new input in our log file we can take a look later.

Speaker 0: 00:39:10

And this is going to like create everything.

Speaker 0: 00:39:12

So let's see if this works.

Speaker 0: 00:39:14

So let's do now.

Speaker 0: 00:39:15

Next run again.

Speaker 0: 00:39:17

And there we go.

Speaker 0: 00:39:18

It just printed for us that it added inputs, voters.

Speaker 0: 00:39:22

I go to systems and so on, and there you go, it works.

Speaker 0: 00:39:26

And it should work also in your Apple Sleecom or any other.

Speaker 0: 00:39:26

And it should work also in your Apple Sleek or any other architecture apart from XAC scale.

Speaker 0: 00:39:38

Okay, let's just take a look at the flake.log real quick.

Speaker 0: 00:39:42

And as you can see now, we have like new stuff.

Speaker 0: 00:39:45

We have the next package here, and we also have the System and OTILs, these are the showing points that maybe the flake that we added brings to our flake to our local flag, which is our awesome cycleponc Bitmark project flake.

Speaker 0: 00:40:04

So that's how the relationship between NIX flake.nix and flake.log works.

Speaker 0: 00:40:13

So let's move on.

Speaker 0: 00:40:15

Okay, now what do we need to do?

Speaker 0: 00:40:19

Let's first add a development environment.

Speaker 0: 00:40:22

How we do this is we what we need in our development environment, we need Bitcoin D running in rash test, because that's what our package is running.

Speaker 0: 00:40:31

It's calling like a Bitcoin D command from the main function in our main binary in Rust.

Speaker 0: 00:40:37

So we just add this in one of the derivations.

Speaker 0: 00:40:41

So, one of the derivations, dash shells, this runs when you do nix develop.

Speaker 0: 00:40:47

When you do nix run or nix build, it's gonna run one of the packages derivations, outputs.

Speaker 0: 00:40:53

But when we do next develop, it's gonna run one of the dash shells once.

Speaker 0: 00:40:58

So, let's go ahead here and copy this back here.

Speaker 0: 00:41:03

And let's open again our flake.nets.

Speaker 0: 00:41:14

And now I have a new direction.

Speaker 0: 00:41:18

Uh we had the default package, I'm gonna add a new one, and this is the Dev Shell.

Speaker 0: 00:41:23

And what I'm doing here, I'm saying, okay, I need a development environment that is a big uh packages, make shop, and what it takes is it takes up building box.

Speaker 0: 00:41:34

So I need carbon and I need Bitcoin E.

Speaker 0: 00:41:36

And Bitcoin D is available.

Speaker 0: 00:41:38

Bitcoin CLI, Bitcoin D, Bitcoin and Bitcoin, which brings everything, they are all available in the uh Nix packages.

Speaker 0: 00:41:46

So if you want to find a package, you go to uh search dot NixOS dot uh org.

Speaker 0: 00:41:55

So let's say let's let's go next.

Speaker 0: 00:41:59

Which package do you guys want?

Speaker 0: 00:42:01

LDK.

Speaker 0: 00:42:02

LDK Browser.

Speaker 0: 00:42:07

Uh LDK it's a T it it's a TLA, so it's gonna be hard.

Speaker 0: 00:42:14

But it is there somewhere.

Speaker 0: 00:42:15

I don't know.

Speaker 0: 00:42:16

Which one you said?

Speaker 0: 00:42:18

I said Mult Browser.

Speaker 0: 00:42:21

Sorry.

Speaker 0: 00:42:22

There you go.

Speaker 0: 00:42:23

Mobile is easy because there's like way more strings.

Speaker 0: 00:42:26

It's not that DLA.

Speaker 0: 00:42:27

DLA is three lettering everything.

Speaker 0: 00:42:30

So uh there you go, we have like Mopad VPN and Mopad browser, there you go.

Speaker 0: 00:42:35

And if you click on this one, it's gonna show you, hey, if you wanna like Mobet, you just do like Mopad browser, if you wanna put like this in an Excel configuration, there you go.

Speaker 0: 00:42:44

Package is oh, I mean it's only package Mopad browser.

Speaker 0: 00:42:49

So you have like tons of those packages there and you can use any one of those.

Speaker 0: 00:42:53

You can also use other flakes as inputs.

Speaker 0: 00:42:55

Don't forget about that.

Speaker 0: 00:42:59

So we are adding cargo and bitcoin in and we have a shell hook.

Speaker 0: 00:43:05

And whenever I instantiate this shell, I need you to run some stuff because it not only supplies does to have bitcoin install, it needs to be running, right?

Speaker 0: 00:43:13

The demo needs to be running.

Speaker 0: 00:43:14

So the shellbook is a this is a Nix multi-line string.

Speaker 0: 00:43:19

So single apostrophes, single single codes.

Speaker 0: 00:43:24

Uh double single codes, it's like a multi-line string, and Nix is like triple double quotes in Python.

Speaker 0: 00:43:30

Uh and this fancy thing is that I'm doing like a string interpolation.

Speaker 0: 00:43:36

So I'm grabbing here whatever is Run whatever is, wherever you are storing the XG's Bitcoin D, replace here for that file path and forward slash bin bitcoin.

Speaker 0: 00:43:53

And you can find like all the stuff that is inside the derivations if you go under like the list packages and if you click on source.

Speaker 0: 00:44:01

So if you click here, On where is the source?

Speaker 0: 00:44:05

Here, source.

Speaker 0: 00:44:06

Your holder.

Speaker 0: 00:44:08

So, and here you just like inspect the source, and here you see that they do have somewhere here, like something that will show you where is the mean level.

Speaker 0: 00:44:24

You have like a binary here, there go this line here.

Speaker 0: 00:44:27

You you know that the the derivation has a bi a binary subdirectory.

Speaker 0: 00:44:32

So that's most of those things will have like a forward slash bin and then we'll we need to run the bit point binary from the bin directory subdirectory in that derivation and we want to specify some flags, rash text and demo mode.

Speaker 0: 00:44:47

And this should be enough.

Speaker 0: 00:44:49

I think right now if we save this guy and exit, And if we do cargo run again, oh first, really important, mix the belt.

Speaker 0: 00:44:59

So I run this and this is going to double Bitcoin D.

Speaker 0: 00:45:04

There you go, it's going to double Bitcoin D, there you go, Bitcoin for a start.

Speaker 0: 00:45:08

So the shop book worked.

Speaker 0: 00:45:10

Now if we do we should have cargo here, yes, we do have cargo because the specified is one of the built inputs.

Speaker 0: 00:45:17

And if you look higher one, boom, it works.

Speaker 0: 00:45:20

There we go.

Speaker 0: 00:45:21

We have a that shell.

Speaker 0: 00:45:23

That's great.

Speaker 0: 00:45:24

But we also need a package, right?

Speaker 0: 00:45:27

Because that that handle half of the equation.

Speaker 0: 00:45:30

We have a a shell environment, uh reproducible environment for development.

Speaker 0: 00:45:35

So this takes care of developers trying to go into into your uh package.

Speaker 0: 00:45:40

But also we need uh Users.

Speaker 0: 00:45:44

So how users are going to consume a package?

Speaker 0: 00:45:46

Now we we need to go back to that um like to flip to that uh package derivation, right?

Speaker 0: 00:45:54

So we need to fix uh this kind of because we want to do next common and hacking that run with all the Bitcoin D on the dependencies that we need.

Speaker 0: 00:46:08

So we are gonna do this next, but I'm gonna pause a little bit and take questions or comments if there are any.

Speaker 0: 00:46:14

Yeah, go ahead.

Speaker 0: 00:46:26

You mentioned that I don't have internet, so how d do we like have to deal with that?

Speaker 0: 00:46:31

Because as you show in fact, the people would like No, this is uh REST desk.
Oh.
Okay.

Speaker 0: 00:46:42

So it's only when you are t running the command they are not connected to the internet and now they can connect to the internet or no.

Speaker 0: 00:46:49

Only derivations, they are running a sandbox environment.

Speaker 0: 00:46:53

So to build this shell, this a developer shell?

Speaker 0: 00:46:59

I don't have access to the interact.

Speaker 0: 00:47:01

Yeah.

Speaker 0: 00:47:02

So if here I do something like uh curl full, then I'm screwed.

Speaker 0: 00:47:09

This is not gonna work.

Speaker 0: 00:47:11

But once the shell is created, so I'm in the shell I have it here.

Speaker 0: 00:47:19

So it works.

Speaker 0: 00:47:20

Okay.

Speaker 0: 00:47:21

So to build a shell, it's a mix derivation a derivation they have a sent box in running them.

Speaker 0: 00:47:26

They don't have access to Internet.

Speaker 0: 00:47:28

All this stuff that they need to fetch from the Internet or from Outside, they need to to to be specified as inputs.

Speaker 0: 00:47:34

But it basically has to be file is running, it doesn't have internet, and now it's already run like it's W is already done.

Speaker 0: 00:47:42

Now we have the Internet.

Speaker 0: 00:47:44

Yes, now the shell has Internet because to build the shell with all the dependencies to have something like Bitcoin.

Speaker 0: 00:47:54

To grab these and to and do it in the shell box, it is a derivation.

Speaker 0: 00:47:59

Build a shell that derives, but to use the shell, it's just a normal shell.

Speaker 0: 00:48:03

It has like indirect access and everything.

Speaker 0: 00:48:06

And the pattern is there with us because this is a lot of tests now, right?

Speaker 0: 00:48:11

Yes, yeah, on a rush test.

Speaker 0: 00:48:14

Thank you.

Speaker 0: 00:48:24

Yes, you can.

Speaker 0: 00:48:26

So, yes, you can.

Speaker 0: 00:48:33

You can specify several of those.

Speaker 0: 00:48:37

I struggle not to do that.

Speaker 0: 00:48:39

But, yes, you will do something.

Speaker 0: 00:48:41

So, the question was.

Speaker 0: 00:48:42

Am I only typed one derivation in package or one derivation shell?

Speaker 0: 00:48:47

No.

Speaker 0: 00:48:47

You can do something like mix develop fool here, and then it's it's going to like create another shell called foo.

Speaker 0: 00:48:58

So you could do that.

Speaker 0: 00:49:01

I might try to do that towards the end of the workshop because right now I need to cover also the derivations as well, but yes, you can do that.

Speaker 0: 00:49:09

One that you do that?

Speaker 0: 00:49:11

Huh?

Speaker 0: 00:49:11

One let you do that.

Speaker 0: 00:49:14

So a very good use case is supposed to have like a minimum supported Ruth's version.

Speaker 0: 00:49:19

You want to have a shell that grabs your Ruth's version from whatever version you need, and then you can do like Nix, Develop, MSRV.

Speaker 0: 00:49:30

And this is something that that that that we even had it working in our working VR in VK.
that was trying to link spy stuff on Mika.

Speaker 0: 00:49:38

And if you run this, you get like everything all set up, all the environment variables all set up for you using the minimal support rest version.

Speaker 0: 00:49:46

Or if you do just this, you get like latest latest stable.

Speaker 0: 00:49:49

So this is a use case.

Speaker 0: 00:49:53

And we had Jordan back again.

Speaker 0: 00:49:56

Yeah, in the flight top mode, what is the difference between middle and spice and Uh super yield.

Speaker 0: 00:50:04

So the question is, uh let me go to my flake again.

Speaker 0: 00:50:08

Uh what is the difference between uh package and build inputs?

Speaker 0: 00:50:13

So default package is a derivation.

Speaker 0: 00:50:17

And that shell is another derivation.

Speaker 0: 00:50:19

And this is a shell and this is a package.

Speaker 0: 00:50:22

The shell runs with NIST develop.

Speaker 0: 00:50:24

And whenever you call Nix build or Nix run, it's it's gonna call the um it's gonna call the package derivations.

Speaker 0: 00:50:35

And these derivations they have they can have build inputs.

Speaker 0: 00:50:39

And the building quotes it's but it's uh one it's the building quotes for derivation makes shell here.

Speaker 0: 00:50:46

Does that answer your question?

Speaker 0: 00:50:48

Uh, but inside the device shell.
you have for example build inputs is one property.

Speaker 0: 00:50:55

Uh shell hook is another property.

Speaker 0: 00:50:57

Yes.

Speaker 0: 00:50:57

And again, just remember, but is it there another property package packages?

Speaker 0: 00:51:04

Uh no, they are all build inputs.

Speaker 0: 00:51:06

One thing you can do, you can have something called native build inputs and you c and you can add stuff here also if you want to add This is for like stuff that you need to build natively for your architecture, like I2 dependencies and so on.

Speaker 0: 00:51:22

Honestly, I don't know very much the difference between building books and native building books, but uh um it's something that you can do it here.
Yeah.

Speaker 0: 00:51:41

One question I have for you is: Is it possible to want to flake through the REPL to kind of like step through what's happening?

Speaker 0: 00:51:51

Yes, but it is possible.

Speaker 0: 00:51:55

I think so.

Speaker 0: 00:51:55

Okay, gotcha.

Speaker 0: 00:51:56

And then my last question is: is there a way offline to check available properties?

Speaker 0: 00:52:04

Like, given that question we were just talking about with the Dev Shell.

Speaker 0: 00:52:08

Then we check the properties on that.
Yes.
Uh and uh no I don't want to save changes.

Speaker 0: 00:52:16

So if you do like Nix check noise up Nix Nix like um there's a Nix thing that will list all the outputs after what check it is.

Speaker 0: 00:52:31

Does anyone remembers?

Speaker 0: 00:52:34

Next flake show?

Speaker 0: 00:52:36

Yes, Nixflake Show.

Speaker 0: 00:52:38

There we go, we have everything.

Speaker 0: 00:52:39

So as you can see I'm building from all the architectures.

Speaker 0: 00:52:42

I'm building for Darby, for Xing6 Linux, and here I have a Dev Shell that will output something.

Speaker 0: 00:52:49

And I have a my package is a package hallowed certain version.

Speaker 0: 00:52:54

Thank you.
Yeah.

Speaker 0: 00:52:56

So let's move to the final part.

Speaker 0: 00:52:58

Okay, how do I make this the package work?

Speaker 0: 00:53:02

So, okay, we made the dev shop work.

Speaker 0: 00:53:03

Now let's let's do the package.

Speaker 0: 00:53:06

How do I do this?

Speaker 0: 00:53:07

I'm gonna copy this, I'm gonna go o over what I'm doing.

Speaker 0: 00:53:11

So let's go back here.

Speaker 0: 00:53:14

Let's copy this guy here.

Speaker 0: 00:53:20

There you go.

Speaker 0: 00:53:22

Now This guy is out, and we have this guy here.

Speaker 0: 00:53:27

And I'm just it's not complain if it doesn't have like the right indentation.

Speaker 0: 00:53:46

So, what I'm doing here is I'm I'm calling a build Rust package.

Speaker 0: 00:53:51

This is defined in the Nix system library.

Speaker 0: 00:53:54

So this is a Nix package.

Speaker 0: 00:53:56

And I'm giving a name.

Speaker 0: 00:53:57

I'm giving I'm giving a version.

Speaker 0: 00:53:59

And also this specific build Rust package, it needs a cargo log file.

Speaker 0: 00:54:05

And I can also lock it with with a SHA hash if I want to.

Speaker 0: 00:54:09

I can even go port in File Hat and lock it with with a SHA.
if I want to, to guarantee integrity, that if this thing changes, the derivation will fail.

Speaker 0: 00:54:20

Uh stores is gonna be like my current uh directory.

Speaker 0: 00:54:24

And Nix is so nice that this thing here is a file pad and it's a specific type.

Speaker 0: 00:54:30

And we so Nix is built for like reproducible system that it that the the the paths is a dedicated native file type.

Speaker 0: 00:54:39

Because strings are complicated for you to specify uh f and directories.

Speaker 0: 00:54:46

And the building ports here, I'm doing Rust C, cargo and bitcoin.

Speaker 0: 00:54:49

I can I can delete Rust C because if I call cargo, Rust C will will be brought with cargo as well.

Speaker 0: 00:54:55

And the pre-build, what I'm doing is I'm creating a I'm I'm putting ideological uh data, and this out here is an environment environment variable.

Speaker 0: 00:55:06

That will output for the result, the special directory that will be created.

Speaker 0: 00:55:11

So I'm creating that subdirectory data in my result, in the output of my derivation.

Speaker 0: 00:55:16

And then I'm doing this interpolation thing, calling Bitcoin D binary BitcoinD, rash test, demo, and the data there is my output data.

Speaker 0: 00:55:27

And that's pretty much it.

Speaker 0: 00:55:29

And this And since a build rebus package handles all the uh cargo run under the code for us, this should work.

Speaker 0: 00:55:41

So, are there any questions here?

Speaker 0: 00:55:45

Yeah.

Speaker 0: 00:56:00

It's been using one of the outputs.

Speaker 0: 00:56:03

So we we have here outputs, we have two outputs, the default package and the uh the app shop.

Speaker 0: 00:56:12

These are the choice.

Speaker 0: 00:56:14

They are wrapped around this uh function here called uh lead each default system.

Speaker 0: 00:56:21

So this flip will run in all architectures like Apple, Silicon or on Linux, XM6 Linux, and I'm also doing some variable binding here.

Speaker 0: 00:56:33

So I'm saying, okay, every time you see packages, please use the packages for the architecture that you are running on.

Speaker 0: 00:56:40

So this is like a simple like binding so that packages is correctly binded to your target architecture that you are running this way.

Speaker 0: 00:56:51

And now the final thing, once this is done, let's let's do a next build.

Speaker 0: 00:56:56

So let's save a quit.

Speaker 0: 00:56:58

Let's do a next build.

Speaker 0: 00:57:00

If I type it right here, there you go.

Speaker 0: 00:57:04

And oh oh, we don't have a cargo mock?

Speaker 0: 00:57:09

Oh yes.

Speaker 0: 00:57:10

Um next is is is annoying.

Speaker 0: 00:57:12

Sometimes you you need to do git add stuff.

Speaker 0: 00:57:15

So now it will see the Kylo lock.

Speaker 0: 00:57:19

This is because Flakes, they're tiny integrated with with Git version control.

Speaker 0: 00:57:25

So every time they they don't you have like a crazy error that cannot find something, turn into a git add.

Speaker 0: 00:57:31

Yeah, it took me a couple of days to figure that out on my own back in the days.

Speaker 0: 00:57:35

So now we have like a result package and There you go.

Speaker 0: 00:57:40

We have like a result.

Speaker 0: 00:57:43

We have the data.

Speaker 0: 00:57:45

Before we have the binary.

Speaker 0: 00:57:46

And now if we want like result bin and NixifyTechConf, remember this was the name of the package that we gave.

Speaker 0: 00:57:57

So Nix built Rust package, grabbed our our name file from Rust, build up Carcond, and outputted the binary name as Nick's workshop and oh, no, sorry, this is the repo name.

Speaker 0: 00:58:14

This is the directory that I've in.
Sorry, my my bad.

Speaker 0: 00:58:18

So if you run this, there you go, it works.

Speaker 0: 00:58:21

It has Bitcoin running and it works.

Speaker 0: 00:58:24

So um and we don't have Rust installed in this machine, nor we have Bitcoin in all Is handled by Nix.

Speaker 0: 00:58:33

And just summarize so that we can go like questions and I need to leave the stage four minutes.

Speaker 0: 00:58:41

So just a key takeaways: you can have reliability and reproducibility in Nix, and this is hard to combine.

Speaker 0: 00:58:49

Docker doesn't give you a terraform, doesn't give you that quiet enough, and so on.

Speaker 0: 00:58:56

It is perfect for mission-critical and things that you want to.

Speaker 0: 00:58:55

Uh it is perfect for like mission critical and things that you want to have like longevity, like Bitcoin projects.

Speaker 0: 00:59:03

Uh I'm a very big fan of decorative and lazily and functional programming uh stuff.

Speaker 0: 00:59:12

So it this is really good.

Speaker 0: 00:59:13

It's a paradigm shift in how you manage your reproducible environments.

Speaker 0: 00:59:18

It's easy for you to want more new new developers, new contributors.

Speaker 0: 00:59:21

It's easy for your users to consume your package and so on if you need like a lot of dependencies and so on.

Speaker 0: 00:59:28

And also we do have kind of like very well curated and maintained Nix Bitcoin stuff.

Speaker 0: 00:59:35

So the Bitcoin community, the developers there are already like into Nix, so you'll find a lot of stuff in bitcoin that is already provided by next bitcoin and that's it uh i have two minutes for questions and maybe something yeah uh what is it first yeah and we can continue to control uh Yeah, so what Nix does is that you have a forward slash Nix directory here, and if you go to the Nix store, uh this is gonna show like everything that you have that that Nix is handling.

Speaker 0: 01:00:25

So all the dependencies for all the stuff that are you're running Nix in in this machine is here.

Speaker 0: 01:00:30

So somewhere I need a Python 3.12 here, so as you can see here.

Speaker 0: 01:00:36

And it's Phoenix contributed Apple Pal, so somewhere in my machine in Middle Exp.

Speaker 0: 01:00:41

And you have like the the shop.

Speaker 0: 01:00:45

So Nix is collected that it doesn't build the building ports twice.

Speaker 0: 01:00:52

So it it goes over and says, Okay, I'm here this der this derivation with this hash.

Speaker 0: 01:00:57

It goes over to the store, do I have this?

Speaker 0: 01:01:00

Oh, my God.

Speaker 0: 01:01:00

Okay, so I need to build it.

Speaker 0: 01:01:02

And then it builds our.

Speaker 0: 01:01:03

Do I have this?

Speaker 0: 01:01:04

Oh, yes, I have.

Speaker 0: 01:01:04

Okay, I'm going to use it.

Speaker 0: 01:01:06

So it's all going to build it again.

Speaker 0: 01:01:15

Just following up on what you were saying about reproducibility, I was curious what progress Nix has made on.

Speaker 0: 01:01:25

Source code level reproducibility, like because sometimes you know how you'll have something dependent on something else, and somewhere down the chain, it might just be some binary.

Speaker 0: 01:01:36

And I know there's an alternative project called Geeks that has made work both on like archival of past versions on a source level, but also trying to remove binaries out of the Dependency chain.

Speaker 0: 01:01:51

So I was curious if you knew of any league-related developments with that.

Speaker 0: 01:01:56

I mean, this is my final question, but I'm gonna, I don't know, do it.

Speaker 0: 01:01:59

We do have something known here, right?

Speaker 0: 01:02:02

Yeah.

Speaker 0: 01:02:03

Yeah, so this is my final question.

Speaker 0: 01:02:05

I'm gonna take your question offline.

Speaker 0: 01:02:06

So, final question is: so, this, if you have something external that does not use Lix, you can add it.

Speaker 0: 01:02:14

You can say fetch this binary, fetch this archive, this GZ from here.

Speaker 0: 01:02:19

And the sharks this one.

Speaker 0: 01:02:21

So if the thing changes, your dedication will fail.

Speaker 0: 01:02:25

So you can do that.

Speaker 0: 01:02:26

I don't know if there is like other things.

Speaker 0: 01:02:29

So the quicks thing, I know that it exits, but I never use it, so I cannot comment on that.
Yes.

Speaker 0: 01:02:34

That's it.

Speaker 0: 01:02:35

Thank you, post.
