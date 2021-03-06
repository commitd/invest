/**
 * Copyright (c) 2017-present, Facebook, Inc.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

/* List of projects/orgs using your project for the users page */
const users = [
  // {
  //   caption: 'User1',
  //   image: '/test-site/img/docusaurus.svg',
  //   infoLink: 'https://www.facebook.com',
  //   pinned: true,
  // },
]

const siteConfig = {
  title: 'Invest' /* title for your website */,
  tagline: 'Modular framework for server and ui development',
  url: 'https://commitd.github.com/invest' /* your website url */,
  baseUrl: '/invest/' /* base url for your project */,
  projectName: 'Invest',
  headerLinks: [
    { doc: 'about', label: 'About' },
    { doc: 'dev.reading-list', label: 'Development' },
    { doc: 'ui.index', label: 'UI' },
    { doc: 'server.index', label: 'Server' },
    { href: 'https://github.com/commitd/invest-server', label: 'Server Source' },
    { href: 'https://github.com/commitd/invest-ui', label: 'UI Source' }
  ],
  users,
  /* path to images for header/footer */
  // headerIcon: 'img/docusaurus.svg',
  // footerIcon: 'img/docusaurus.svg',
  // favicon: 'img/favicon.png',
  /* colors for website */
  colors: {
    primaryColor: '#000000',
    secondaryColor: '#ddd'
  },
  // This copyright info is used in /core/Footer.js and blog rss/atom feeds.
  copyright: 'Copyright © ' + new Date().getFullYear() + ' Committed',
  organizationName: 'commitd', // or set an env variable ORGANIZATION_NAME
  projectName: 'invest', // or set an env variable PROJECT_NAME
  highlight: {
    // Highlight.js theme to use for syntax highlighting in code blocks
    theme: 'default'
  },
  scripts: ['https://buttons.github.io/buttons.js'],
  // You may provide arbitrary config keys to be used as needed by your template.
  repoUrl: 'https://github.com/commitd/invest'
}

module.exports = siteConfig
