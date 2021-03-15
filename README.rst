============
dhall-mbsync
============

This repository is a dhall package to generate configurations for the `mbsync`_ tool for
synchronizing IMAP4 and Maildir mailboxes. Mostly an exercise in understanding how to build
arbitrary configuration formats with dhall but, who knows, someone may find it useful!

**Supported isync version is 1.3.x**

Usage
=====

The package can be imported via::

    let mbsync =
      https://raw.githubusercontent.com/autophagy/dhall-mbsync/main/package.dhall

The mbsync package exposes a bunch of types, but the core ones are ``MaildirStore``
for maildir stores, ``Account`` for IMAP4 accounts, ``IMAPStore`` for IMAP stores,
``Channel`` for defining the links between maildir and imap stores, and
``Group`` for coagulating the channels into a group.
There is also a general ``Mbsync`` type, consisting of those other types.

The package also exposes a couple of rendering functions that take a record of
one of the core types and returns a text,
such as ``mkMbsync`` for ``Mbsync -> Text``.

The `example`_ configuration illustrates how to use them.
Using the example, an mbsync configuration can be created via::

   > dhall text --file example.dhall

.. _mbsync: https://isync.sourceforge.io/mbsync.html
.. _example: example.dhall
