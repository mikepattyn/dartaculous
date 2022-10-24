<!-- omit in toc -->
# Contributing to SquareAlfa Dart Framework

First off, thanks for taking the time to contribute! ❤️

All types of contributions are encouraged and valued. See the [Table of Contents](#table-of-contents) for different ways to help and details about how this project handles them. Please make sure to read the relevant section before making your contribution. It will make it a lot easier for us maintainers and smooth out the experience for all involved. The community looks forward to your contributions. 🎉

> And if you like the project, but just don't have time to contribute, that's fine. There are other easy ways to support the project and show your appreciation, which we would also be very happy about:
> - Star the project
> - Tweet about it
> - Refer this project in your project's readme
> - Mention the project at local meetups and tell your friends/colleagues
> - Join our discord server at https://discord.gg/EwWADep5Kh


<!-- omit in toc -->
## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [I Have a Question](#i-have-a-question)
- [I Want To Contribute](#i-want-to-contribute)
  - [Reporting Bugs](#reporting-bugs)
  - [Suggesting Enhancements](#suggesting-enhancements)
  - [Your First Code Contribution](#your-first-code-contribution)
  - [Improving The Documentation](#improving-the-documentation)
- [Styleguides](#styleguides)
  - [Commit Messages](#commit-messages)
- [Join The Project Team](#join-the-project-team)


## Code of Conduct

This project and everyone participating in it is governed by the
[SquareAlfa Dart Framework Code of Conduct](https://gitlab.com/squarealfa/dart_framework/-/blob/main/CODE_OF_CONDUCT.md).
By participating, you are expected to uphold this code. Please report unacceptable behavior
to info at squarealfa.com.


## I Have a Question

> If you want to ask a question, we assume that you have read the available [Documentation](https://gitlab.com/squarealfa/dart_framework/).

Before you ask a question, it is best to search for existing [Issues](https://gitlab.com/squarealfa/dart_framework/-/issues) that might help you. In case you have found a suitable issue and still need clarification, you can write your question in this issue. It is also advisable to search the internet for answers first.

If you then still feel the need to ask a question and need clarification, we recommend the following:

- Open an [Issue](https://gitlab.com/squarealfa/dart_framework/-/issues/new).
- Provide as much context as you can about what you're running into.
- Provide project and platform versions (dart, go, os), depending on what seems relevant.

We will then take care of the issue as soon as possible, but this is not any kind of commitment.

If you need help getting started, join our Discord server at https://discord.gg/EwWADep5Kh.

## I Want To Contribute

> ### Legal Notice <!-- omit in toc -->
> When contributing to this project, you must agree that you have authored 100% of the content, that you have the necessary rights to the content and that the content you contribute may be provided under the project license.
> The license adopted for this project is the Mozilla Public License, version 2.0. A sub-project, mongo_go, is licensed with the Apache License, version 2.

### Reporting Bugs

<!-- omit in toc -->
#### Before Submitting a Bug Report

A good bug report shouldn't leave others needing to chase you up for more information. Therefore, we ask you to investigate carefully, collect information and describe the issue in detail in your report. Please complete the following steps in advance to help us fix any potential bug as fast as possible.

- Make sure that you are using the latest version.
- Determine if your bug is really a bug and not an error on your side e.g. using incompatible environment components/versions (Make sure that you have read the [documentation](https://gitlab.com/squarealfa/dart_framework/). If you are looking for support, you might want to check [this section](#i-have-a-question)).
- To see if other users have experienced (and potentially already solved) the same issue you are having, check if there is not already a bug report existing for your bug or error in the [bug tracker](https://gitlab.com/squarealfa/dart_framework/issues?q=label%3Abug).
- Also make sure to search the internet (including Stack Overflow) to see if users outside of the GitHub community have discussed the issue.
- Collect information about the bug:
  - Stack trace (Traceback)
  - OS, Platform and Version (Windows, Linux, macOS, x86, ARM)
  - Version of the interpreter, compiler, SDK, runtime environment, package manager, depending on what seems relevant.
  - Possibly your input and the output
  - Can you reliably reproduce the issue? And can you also reproduce it with older versions?

<!-- omit in toc -->
#### How Do I Submit a Good Bug Report?

> You must never report security related issues, vulnerabilities or bugs including sensitive information to the issue tracker, or elsewhere in public. Instead sensitive bugs must be sent by email to info@squarealfa.com.

We use GitLab issues to track bugs and errors. If you run into an issue with the project:

- Open an [Issue](https://gitlab.com/squarealfa/dart_framework/issues/new).
- Explain the behavior you would expect and the actual behavior.
- Please provide as much context as possible and describe the *reproduction steps* that someone else can follow to recreate the issue on their own. This usually includes your code. For good bug reports you should isolate the problem and create a reduced test case.
- Provide the information you collected in the previous section.


### Suggesting Enhancements

This section guides you through submitting an enhancement suggestion for SquareAlfa Dart Framework, **including completely new features and minor improvements to existing functionality**. Following these guidelines will help maintainers and the community to understand your suggestion and find related suggestions.

<!-- omit in toc -->
#### Before Submitting an Enhancement

- Make sure that you are using the latest version.
- Read the [documentation](https://gitlab.com/squarealfa/dart_framework/) carefully and find out if the functionality is already covered, maybe by an individual configuration.
- Perform a [search](https://gitlab.com/squarealfa/dart_framework/issues) to see if the enhancement has already been suggested. If it has, add a comment to the existing issue instead of opening a new one.
- Find out whether your idea fits with the scope and aims of the project. It's up to you to make a strong case to convince the project's developers of the merits of this feature. Keep in mind that we want features that will be useful to the majority of our users and not just a small subset. If you're just targeting a minority of users, consider writing an add-on/plugin library.

<!-- omit in toc -->
#### How Do I Submit a Good Enhancement Suggestion?

Enhancement suggestions are tracked as [GitHub issues](https://gitlab.com/squarealfa/dart_framework//issues).

- Use a **clear and descriptive title** for the issue to identify the suggestion.
- Provide a **step-by-step description of the suggested enhancement** in as many details as possible.
- **Describe the current behavior** and **explain which behavior you expected to see instead** and why. At this point you can also tell which alternatives do not work for you.
- **Explain why this enhancement would be useful** to most SquareAlfa Dart Framework users. You may also want to point out the other projects that solved it better and which could serve as inspiration.

### Your First Code Contribution

#### Preparing your machine
You should be able to use any of the major desktop operating systems to be able to contribute to this project. However, you will probably find it easier to get everything set up when using a Linux or a MacOS machine.

Here are the tools you will need:
- The [Dart SDK](https://dart.dev/get-dart) to be installed on your development machine. 
- Make utility. Make should already be available or typically very easily installed on Linux and MacOS machines. For Windows users, the easiest way to get make would likely be via [Scoop](https://scoop.sh/), by running ```scoop install make```.
- Protocol Buffer compiler, available at https://developers.google.com/protocol-buffers/docs/downloads.
- Dart protocol buffer compiler plugin, by running ```dart pub global activate protoc_plugin```.
- The ```firebase_go_admin``` and ```mongo_go``` packages also use Go language besides Dart. If you intend to contribute to those packages you will also need:
  - Go language, found at https://go.dev/.
  - GCC
  - Go protocol buffer compiler plugin, by running ```go install google.golang.org/protobuf/cmd/protoc-gen-go@latest```.

#### Versioning
This project uses [Melos](https://melos.invertase.dev/) to help manage and publish updated versions of its packages. Please do not increment version numbers on pubspec.yaml, nor change CHANGELOG files manually. Instead, Melos drives those via your [commit messages](#commit-messages).





### Improving The Documentation
The SquareAlfa Dart Framework has a really big set of features and cover most features that are needed to use Dart as a fullstack language. Documentation is the single most important aspect of this project where we really could use a lot of help.

You are welcome to:
- Add comments to the code with the intent of rendering those with ```dart doc```. Most of the packages in this project are very poorly documented at this point. However, one of the packages, mongo_go, is actually well documented and you can use it as a reference on the intended style.
- Propose and implement a Getting Started tutorial that would be easy to follow and would lead users to actually get a project running.
- Create tutorials and video content.
- Create tools that assist the user in getting started.
- Propose and implement an independent documentation site.

## Styleguides
### Commit Messages
All you need to do is give hints to melos on your commit messages, by typing [conventional commit messages](https://www.conventionalcommits.org/en/v1.0.0/). See https://www.conventionalcommits.org/en/v1.0.0. As a guideline, you may format your commit messages, for non-breaking changes as follows:
- ```fix: [message]``` for bug fixes that do not introduce new features.
- ```feat: [message]``` for commits that introduce new features.
- ```chore: [message]``` for improvements to the code that will neither fix bugs nor introduce features (for instance, when refactoring code to cleanup, make it more readably, without actually changing its behaviour).

For commits that contain breaking changes, you may simply add an exclamation mark to the ```fix``` and ```feat``` prefixes, thus formatting the messages as ```fix!: [message]``` or ```feat!: [message]```. Please do be diligent in identifying when your changes are breaking. It is a complete no-no to introduce a breaking change without identifying it as such. In fact, an attempt should be made not to outright break. Instead, try to introduce new versions of your interfaces and add a ```@deprecated``` annotation to identify interface elements that will be removed on a later version. This will allow our users for an adaptation period, where the new version of the interface is already available, but while the client code still runs, albeit with deprecation warnings.

You may use all other features from conventional commits.

## Join The Project Team
Join our Discord server at https://discord.gg/EwWADep5Kh.
 

<!-- omit in toc -->
## Attribution
This guide is based on the **contributing-gen**. [Make your own](https://github.com/bttger/contributing-gen)!
