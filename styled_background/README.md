# styled_background

## Background Image

### DEV-168789: AI: Mobile Accounts & Top Bar Customizations: Implement Scaffold (or Page) Background Color and Image

Ticket: [AI: Mobile Accounts & Top Bar Customizations: Implement Scaffold (or Page) Background Color and Image](https://jira.alkami.com/browse/DEV-168789)

- Apply background color, add an background image and image opacity: 2pt
- Set the background image size: 3pt
- Set the background image position: 3pt

**Story:**

As FI, I want the mobile app to apply background color and background image on the accounts list page as specified in the Theme Builder.

**Acceptance criteria:**

The page applies `mobileAcctBgColor` _background color_ when it is specified in the theme tokens.

The page applies `mobileAcctBgImageFileName` _background image_ if such is specified in the theme tokens.

The background image opacity is set by `mobileAcctBgImageOpacity` (0 to 1) token or if not specified it is set to 1 by default.

The background image size is set by `mobileAcctBgImageSize` design token:

```js
"contain"
"cover"
or custom: "Npx Npx" "N%  N%" "auto auto" and combinations of these
```

The background image position is controlled by `mobileAcctBgImagePosX` and `mobileAcctBgImagePosY`. These tokens can have the following either named values, pixels or percentage, positive or negative:

```js
mobileAcctBgImagePosX - The x-axis horizontal positioning of the background image such as: left, center, right, 10px, 10%, -10px, -10%
mobileAcctBgImagePosY - The y-axis positioning of the background image such as: top, center, bottom, 10px, 10%, -10px, -10%
```

The background image is applied additional offset by `mobileAcctBgImageXOffset` and `mobileAcctBgImageYOffset`. These tokens can have pixel values either positive or negative:

```js
mobileAcctBgImageXOffset - Additional x-axis offset from the background image x-axis position such as 10px, -10px
mobileAcctBgImageYOffset - Additional y-axis offset from the background image y-axis position such as 10px, -10px
```

**Dev notes:**

Implement directly in the `AlkamiScaffold` and not ion the `AccountListPage`. The page should tell the scaffold the parameters and the scaffold should apply background color and render the background image.

The background image does not scroll when the page scrolls.

The area where the image is positioned is between the top bar and the bottom bar. Thereof the background image goes under the page header (including extended top bar area on accounts list layout "cards" layout).

See:

- [Protopie with card layout](https://alkami.protopie.cloud/p/250ce9fa7dea35ac2e77acbe)
- [Protopie with list layout](https://alkami.protopie.cloud/p/060ee9f6ced2df3ded59e97c)
