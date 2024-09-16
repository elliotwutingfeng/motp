# motp

[![Pub Package](https://img.shields.io/pub/v/motp?style=for-the-badge)](https://pub.dev/packages/motp)
[![Coveralls](https://img.shields.io/coverallsCoverage/github/elliotwutingfeng/motp?logo=coveralls&style=for-the-badge)](https://coveralls.io/github/elliotwutingfeng/motp?branch=main)
[![LICENSE](https://img.shields.io/badge/LICENSE-MIT-GREEN?style=for-the-badge)](LICENSE)

A Dart library for generating [Mobile-OTP (mOTP)](https://motp.sourceforge.net) codes.

Mobile-OTP (mOTP) is a [one-time password](https://en.wikipedia.org/wiki/One-time_password) algorithm first introduced in 2003 for Java capable mobile devices like phones or PDAs. Unlike the newer and more well-known [HMAC-Based One-Time Password (HOTP)](https://datatracker.ietf.org/doc/html/rfc4226) and [Time-Based One-Time Password (TOTP)](https://datatracker.ietf.org/doc/html/rfc6238) algorithms, mOTP requires a user-provided PIN in addition to a counter and a secret to derive the one-time password.

## Requirements

- **Dart SDK:** 3.4+

## References

- [mOTP](https://motp.sourceforge.net)
- [mOTP URI format by Token2](https://www.token2.com/?content=motpqr)
