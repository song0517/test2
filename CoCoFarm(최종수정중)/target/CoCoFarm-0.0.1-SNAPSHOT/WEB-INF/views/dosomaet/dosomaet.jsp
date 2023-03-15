<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
/*
	STRUCTURE:
	0. At-rules
	1. Global custom properties
	2. Global and inherited styles
	3. Composition / Layout primitives
	4. Utility classes
	5. Blocks
	6. Exceptions
*/

/* ============ 0. AT-RULES ============ */

@import "https://cdn.jsdelivr.net/npm/@xz/fonts@1/serve/inter.min.css";

/* ============ 1. GLOBAL CUSTOM PROPERTIES ============ */

:root {
	--color-scheme: light dark;

	/* Font Family */
	--ff-sans: "Inter", ui-sans-serif, system-ui, -apple-system, "Segoe UI", "Roboto", "Helvetica", "Arial", sans-serif, "Apple Color Emoji", "Segoe UI Emoji";
	--ff-mono: ui-monospace, "SFMono-Regular", "Consolas", "Liberation Mono", "Menlo", monospace;

	/* Font Weight */
	--fw-700: 700;
	--fw-600: 600;
	--fw-500: 500;
	--fw-400: 400;

	/* Base Size */
	--base-size: 1rem;

	/* Scale Ratio */
	--ratio: 1.25;

	/* Size Scale */
	--s-900: calc(var(--base-size) * var(--ratio) * var(--ratio) * var(--ratio) * var(--ratio) * var(--ratio));
	--s-800: calc(var(--base-size) * var(--ratio) * var(--ratio) * var(--ratio) * var(--ratio));
	--s-700: calc(var(--base-size) * var(--ratio) * var(--ratio) * var(--ratio));
	--s-600: calc(var(--base-size) * var(--ratio) * var(--ratio));
	--s-500: calc(var(--base-size) * var(--ratio));
	--s-400: var(--base-size);
	--s-300: calc(var(--base-size) / var(--ratio));
	--s-200: calc(var(--base-size) / var(--ratio) / var(--ratio));
	--s-100: calc(var(--base-size) / var(--ratio) / var(--ratio) / var(--ratio));

	/* Line Height */
	--lh-large: 1.5;
	--lh-small: 1.25;

	/* Inline size */
	--page-max-inline-size: 50rem;

	/* Padding */
	--padding-xxxl: 2em;
	--padding-xxl: 1.75em;
	--padding-xl: 1.5em;
	--padding-lg: 1.25em;
	--padding-md: 1em;
	--padding-sm: 0.75em;
	--padding-xs: 0.5em;
	--padding-xxs: 0.25em;
	--padding-xxxs: 0.125em;

	/* Colors (light) */
	--c-tx-1: hsl(212deg 40% 10%);
	--c-tx-2: hsl(212deg 20% 40%);
	--c-bg-1: hsl(212deg 25% 100%);
	--c-bg-2: hsl(212deg 25% 97%);
	--c-bg-3: hsl(212deg 25% 95%);
	--c-bg-a: hsl(212deg 25% 80% / 33.33%);
	--c-bd-1: hsl(212deg 25% 85%);
	--c-bd-2: hsl(212deg 25% 90%);
	--c-lk-1: hsl(212deg 92% 42%);
	--c-lk-2: hsl(212deg 100% 32%);
	--c-lk-tx: hsl(212deg 0% 100%);
	--c-brand: hsl(175deg 100% 45%);
	--c-accent: hsl(175deg 100% 30%);
	--c-selection: hsl(175deg 80% 45% / 50%);
	--c-selection-text: #000;
	--c-highlight: hsla(55deg 100% 50% / 25%);
	--c-warning-tx: hsl(50deg 45% 25%);
	--c-warning-bg: hsl(50deg 90% 85%);

	/* Border With */
	--bw-1: 0.0625rem;
	--bw-2: 0.125rem;
	--bw-3: 0.1875rem;
	--bw-4: 0.25rem;

	/* Border Radius */
	--border-radius: 0.25rem;

	/* Transitions */
	--tr-duration: 0.1s;
	--tr-timing-function: ease-in;
}

@media (prefers-color-scheme: dark) {
	:root {
		/* Colors (dark) */
		--c-tx-1: hsl(212deg 25% 95%);
		--c-tx-2: hsl(212deg 15% 65%);
		--c-bg-1: hsl(212deg 15% 10%);
		--c-bg-2: hsl(212deg 15% 15%);
		--c-bg-3: hsl(212deg 15% 20%);
		--c-bg-a: hsl(212deg 15% 40% / 33.33%);
		--c-bd-1: hsl(212deg 10% 30%);
		--c-bd-2: hsl(212deg 10% 25%);
		--c-lk-1: hsl(212deg 97% 70%);
		--c-lk-2: hsl(212deg 100% 80%);
		--c-lk-tx: hsl(212deg 15% 10%);
		--c-brand: hsl(175deg 100% 45%);
		--c-accent: hsl(175deg 100% 45%);
		--c-selection: hsl(175deg 80% 45% / 50%);
		--c-selection-text: #fff;
		--c-highlight: hsla(55deg 100% 50% / 25%);
		--c-warning-tx: hsl(38deg 43% 74%);
		--c-warning-bg: hsl(41deg 45% 22%);
	}
}

/* ============ 2. GLOBAL AND INHERITED STYLES ============ */

/* All
   ======================================== */

::selection {
	color: var(--c-selection-text);
	background-color: var(--c-selection);
}

/* Document
   ======================================== */

html {
	font-family: var(--ff-sans);
	font-weight: var(--fw-400);
	line-height: var(--lh-large);
	color: var(--c-tx-1);
	accent-color: var(--c-accent);
	caret-color: var(--c-brand);
	color-scheme: var(--color-scheme);
}

/* Sections
   ======================================== */

body {
	
}

h1,
h2,
h3,
h4,
h5,
h6 {
	font-weight: var(--fw-700);
	line-height: var(--lh-small);
}

h1 {
	font-size: var(--s-700);
	/* font-size: calc(var(--base-size) * 3); */
}

h2 {
	font-size: var(--s-600);
	/* font-size: calc(var(--base-size) * 2.25); */
}

h3 {
	font-size: var(--s-500);
	/* font-size: calc(var(--base-size) * 1.75); */
}

h4 {
	font-size: var(--s-400);
	/* font-size: calc(var(--base-size) * 1.25); */
}

h5 {
	font-size: var(--s-300);
	/* font-size: calc(var(--base-size) * 1.125); */
}

h6 {
	font-size: var(--s-200);
	/* font-size: calc(var(--base-size) * 1); */
}

/* Grouping content
   ======================================== */

hr {
	block-size: var(--bw-2);
	background-color: var(--c-bd-1);
	border: none;
}

pre {
	padding-block: var(--padding-md);
	padding-inline: var(--padding-lg);
	font-family: var(--ff-mono);
	font-size: 0.875em;
	background-color: var(--c-bg-3);
	border-radius: var(--border-radius);
}

blockquote {
	padding-inline: var(--padding-md);
	margin-inline: 0;
	color: var(--c-tx-2);
	text-align: start;
	border-inline-start: var(--bw-4) solid var(--c-bd-1);
}

blockquote > :first-child {
	margin-block-start: 0;
}

blockquote > :last-child {
	margin-block-end: 0;
}

ol,
ul,
menu {
	padding-inline-start: var(--padding-xxxl);
}

dt {
	font-weight: var(--fw-700);
}

dd {
	margin-inline-start: var(--padding-xl);
}

/* Text-level semantics
   ======================================== */

a {
	color: var(--c-lk-1);
	transition: color var(--tr-duration) var(--tr-timing-function);
}

a:hover {
	color: var(--c-lk-2);
}

b,
strong {
	font-weight: var(--fw-700);
}

code,
samp,
kbd {
	font-family: var(--ff-mono);
	font-size: 0.875em;
}

code {
	padding-block: var(--padding-xxxs);
	padding-inline: var(--padding-xxs);
	background-color: var(--c-bg-a);
	border-radius: var(--border-radius);
}

pre code {
	padding: 0;
	margin: 0;
	font-size: inherit;
	color: inherit;
	background: inherit;
	border-radius: 0;
}

kbd {
	display: inline-block;
	padding-block: var(--padding-xxs);
	padding-inline: var(--padding-xs);
	font-family: var(--ff-sans);
	line-height: 1;
	white-space: nowrap;
	border: var(--bw-1) solid var(--c-bd-1);
	border-radius: var(--border-radius);
	box-shadow: inset 0 calc(-1 * var(--bw-1)) 0 var(--c-bd-1);
}

mark {
	padding-inline: var(--padding-xxs);
	color: inherit;
	background-color: var(--c-highlight);
}

/* Embedded content
   ======================================== */

iframe {
	border: var(--bw-1) solid var(--c-bd-1);
}

/* Tabular data
   ======================================== */

th,
td {
	padding-block: var(--padding-xs);
	padding-inline: var(--padding-sm);
	border: var(--bw-1) solid var(--c-bd-1);
}

th,
thead,
tfoot {
	font-weight: var(--fw-600);
}

th,
thead :is(tr, td),
tfoot tr {
	background-color: var(--c-bg-2);
}

@supports (td:has(+ th)) {
	td:has(+ th) {
		background-color: var(--c-bg-2);
	}
}

caption {
	padding-block: var(--padding-xxs);
	font-weight: var(--fw-600);
}

/* Forms
   ======================================== */

fieldset {
	border: var(--bw-2) solid var(--c-bd-2);
	border-radius: var(--border-radius);
}

legend {
	font-weight: var(--fw-600);
}

label {
	display: inline-block;
}

input,
textarea,
select,
button {
	padding-block: var(--padding-xs);
	padding-inline: var(--padding-sm);
	line-height: var(--lh-small);
	color: inherit;
	background-color: var(--c-bg-2);
	border: var(--bw-2) solid transparent;
	border-radius: var(--border-radius);
	transition:
		color var(--tr-duration) var(--tr-timing-function),
		background-color var(--tr-duration) var(--tr-timing-function),
		border-color var(--tr-duration) var(--tr-timing-function);
}

select {
	/*     padding: revert;
    background-color: revert;
    border: revert;
    border-radius: revert; */
}

button,
[type="button"],
[type="image"],
[type="submit"],
[type="reset"] {
	display: inline-flex;
	gap: 1ch;
	align-items: center;
	justify-content: center;
	padding-inline: var(--padding-md);
	font-weight: var(--fw-600);
	text-align: center;
	background-color: var(--c-bg-1);
	border-color: var(--c-bd-1);
}

[type="image"] {
	padding: revert;
	background-color: revert;
	border: revert;
}

[type="submit"] {
	color: var(--c-bg-1);
	background-color: var(--c-tx-1);
	border-color: var(--c-tx-1);
}

:is(input, textarea, select, button):hover {
	border-color: var(--c-bd-1);
}

:is(input, textarea, select, button):focus {
	background-color: var(--c-bg-1);
	border-color: var(--c-brand);
}

select:hover {
	/*     background-color: revert;
    border-color: revert; */
}

select:focus {
	/*     background-color: revert;
    border-color: revert; */
}

:is(button, [type="button"], [type="image"], [type="submit"], [type="reset"]):hover {
	background-color: var(--c-bg-2);
}

:is(button, [type="button"], [type="image"], [type="submit"], [type="reset"]):focus {
	background-color: var(--c-bg-2);
}

[type="image"]:hover {
	background-color: revert;
	border-color: revert;
}

[type="image"]:focus {
	background-color: revert;
	border-color: revert;
}

[type="submit"]:hover {
	color: inherit;
	background-color: var(--c-bg-1);
	border-color: var(--c-tx-1);
}

[type="submit"]:focus {
	color: inherit;
	background-color: var(--c-bg-1);
	border-color: var(--c-tx-1);
}

[type="color"] {
	inline-size: 3em;
	block-size: 1.5em;
	padding: var(--padding-xxs);
}

[type="color"]::-webkit-color-swatch-wrapper {
	padding: 0;
}

[type="color"]:is(::-webkit-color-swatch, ::-moz-color-swatch) {
	border: var(--bw-1) solid var(--c-bd-1);
	border-radius: calc(var(--border-radius) / 2);
}

:disabled,
[aria-disabled],
[aria-disabled="true"] {
	opacity: 0.333;
}

:focus-visible {
	/* --outline-width: var(--border-width, 1px);

	outline: var(--outline-width) solid var(--c-brand);
	outline-offset: calc(-1 * var(--outline-width)); */
	border-color: var(--c-brand);
	outline: none;
}

/* Interactive elements
   ======================================== */

details {
	padding-inline: var(--padding-xs);
}

summary {
	padding-block: var(--padding-xxs);
	padding-inline: var(--padding-xs);
	margin-inline: calc(-1 * var(--padding-xs));
	transition: background-color var(--tr-duration) var(--tr-timing-function);
}

summary:hover {
	background-color: var(--c-bg-2);
}

summary ~ * {
	margin-block: 0;
}

/* Scripting
   ======================================== */

canvas {
	border: var(--bw-1) solid var(--c-bd-1);
}

/* ============ 3. COMPOSITION / LAYOUT PRIMITIVES ============ */

/* Flow
   ======================================== */

.flow > * + * {
	/*     --flow-space: calc(var(--ratio) * 1em); */
	margin-block-start: var(--flow-space, 1em);
}

.flow > li + li {
	/*     --flow-space: calc(var(--ratio) * 0.5em); */
}

.flow > h3 {
	/*     --flow-space: calc(var(--ratio) * 1em); */
}

.flow > h2 {
	/*     --flow-space: calc(var(--ratio) * 1em); */
}

/* Stack
   ======================================== */

[class*="l-stack"] {
	display: flex;
	flex-direction: column;
	justify-content: flex-start;
}

[class*="l-stack"] > * {
	margin-block: 0;
}

[class*="l-stack"] > * + * {
	margin-block-start: var(--space, 1rem);
}

.l-stack-xxxl > * + * {
	--space: var(--s-800);
}

.l-stack-xxl > * + * {
	--space: var(--s-700);
}

.l-stack-xl > * + * {
	--space: var(--s-600);
}

.l-stack-lg > * + * {
	--space: var(--s-500);
}

.l-stack-md > * + * {
	--space: var(--s-400);
}

.l-stack-sm > * + * {
	--space: var(--s-300);
}

.l-stack-xs > * + * {
	--space: var(--s-200);
}

.l-stack-xxs > * + * {
	--space: var(--s-100);
}

/* Cluster
   ======================================== */

[class*="l-cluster"] {
	display: flex;
	flex-wrap: wrap;
	align-items: flex-start;
}

[class*=l-cluster] > * {
	margin-block: 0;
}

.l-cluster-xl {
	gap: var(--s-600);
}

.l-cluster-lg {
	gap: var(--s-500);
}

.l-cluster-md {
	gap: var(--s-400);
}

.l-cluster-sm {
	gap: var(--s-300);
}

.l-cluster-xs {
	gap: var(--s-200);
}

.l-cluster-xxs {
	gap: var(--s-100);
}

/* Grid
   ======================================== */

[class*="l-grid"] {
	--size: 100%;
	--gap: var(--space, var(--flow-space, 1rem));

	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(min(100%, calc(var(--size) - var(--gap))), 1fr));
	gap: var(--gap);
}

.l-grid-2 {
	--size: calc(var(--page-max-inline-size) / 2);
}

.l-grid-3 {
	--size: calc(var(--page-max-inline-size) / 3);
}

.l-grid-4 {
	--size: calc(var(--page-max-inline-size) / 4);
}

.l-grid-5 {
	--size: calc(var(--page-max-inline-size) / 5);
}

.l-grid-6 {
	--size: calc(var(--page-max-inline-size) / 6);
}

/* Sidebar
   ======================================== */

[class*="l-with-sidebar-"] {
	display: flex;
	flex-wrap: wrap;
	align-items: flex-start;
}

[class*="l-with-sidebar-"] > * {
	flex-grow: 1;
}

.l-with-sidebar-left > :nth-child(2) {
	flex-basis: 0;
	flex-grow: 999;
	min-inline-size: 66.666%;
}

.l-with-sidebar-right > :nth-child(1) {
	flex-basis: 0;
	flex-grow: 999;
	min-inline-size: 66.666%;
}

/* Input-Button
   ======================================== */

.l-input-button {
	display: flex;
	flex-wrap: wrap;
	gap: var(--s-200);
}

.l-input-button > * {
	flex-grow: 1;
}

.l-input-button > input {
	flex-basis: 0;
	flex-grow: 999;
	min-inline-size: 66.666%;
}

.l-input-button > [type="number"] {
	min-inline-size: 50%;
}

/* ============ 4. UTILITY CLASSES ============ */

/* Standard utility classes
   ======================================== */

.visually-hidden {
	position: absolute !important;
	inline-size: 1px !important;
	block-size: 1px !important;
	overflow: hidden !important;
	clip-path: inset(50%) !important;
	white-space: nowrap !important;
}

.warning {
	color: var(--c-warning-tx);
	background-color: var(--c-warning-bg);
}

.wrapper {
	inline-size: 90%;
	max-inline-size: var(--page-max-inline-size);
	margin-inline: auto;
}

/* Design tokens utility classes
   ======================================== */

.flex-justify-center {
	justify-content: center;
}

.gap-100 {
	gap: var(--s-100);
}

.gap-200 {
	gap: var(--s-200);
}

.gap-300 {
	gap: var(--s-300);
}

.gap-400 {
	gap: var(--s-400);
}

.gap-500 {
	gap: var(--s-500);
}

.gap-600 {
	gap: var(--s-600);
}

.gap-700 {
	gap: var(--s-700);
}

.gap-800 {
	gap: var(--s-800);
}

.text-200 {
	font-size: var(--s-200);
}

.text-300 {
	font-size: var(--s-300);
}

.text-400 {
	font-size: var(--s-400);
}

.text-500 {
	font-size: var(--s-500);
}

.text-600 {
	font-size: var(--s-600);
}

.text-700 {
	font-size: var(--s-700);
}

.text-800 {
	font-size: var(--s-800);
}

.weight-regular {
	font-weight: var(--fw-400);
}

.weight-medium {
	font-weight: var(--fw-500);
}

.weight-semibold {
	font-weight: var(--fw-600);
}

.weight-bold {
	font-weight: var(--fw-700);
}

/* This pen is using external base CSS stylesheet(s) in the CSS Settings */
:root {
	/* Inline size */ -
	-page-max-inline-size: 100%;
}

* {
	margin: 0;
}

body {
	padding-block: var(- -padding-lg);
}

caption {
	text-align: start;
}
</style>
</head>
<body class="wrapper flow">
	<h1>Advanced and accessible tables</h1>

	<h2>My spending record</h2>

	<table>
		<caption>How I chose to spend my money</caption>
		<thead>
			<tr>
				<th scope="col">Purchase</th>
				<th scope="col">Location</th>
				<th scope="col">Date</th>
				<th scope="col">Evaluation</th>
				<th scope="col">Cost (€)</th>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<td colspan="4">SUM</td>
				<td>118</td>
			</tr>
		</tfoot>
		<tbody>
			<tr>
				<th scope="row">Haircut</th>
				<td>Hairdresser</td>
				<td>12/09</td>
				<td>Great idea</td>
				<td>30</td>
			</tr>
			<tr>
				<th scope="row">Lasagna</th>
				<td>Restaurant</td>
				<td>12/09</td>
				<td>Regrets</td>
				<td>18</td>
			</tr>
			<tr>
				<th scope="row">Shoes</th>
				<td>Shoeshop</td>
				<td>13/09</td>
				<td>Big regrets</td>
				<td>65</td>
			</tr>
			<tr>
				<th scope="row">Toothpaste</th>
				<td>Supermarket</td>
				<td>13/09</td>
				<td>Good</td>
				<td>5</td>
			</tr>
		</tbody>
	</table>

	<h2>Items sold summary</h2>

	<table>
		<caption>Items Sold August 2016</caption>
		<thead>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<th colspan="3" scope="colgroup">Clothes</th>
				<th colspan="2" scope="colgroup">Accessories</th>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<th scope="col">Trousers</th>
				<th scope="col">Skirts</th>
				<th scope="col">Dresses</th>
				<th scope="col">Bracelets</th>
				<th scope="col">Rings</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th rowspan="3" scope="rowgroup">Belgium</th>
				<th scope="row">Antwerp</th>
				<td>56</td>
				<td>22</td>
				<td>43</td>
				<td>72</td>
				<td>23</td>
			</tr>
			<tr>
				<th scope="row">Gent</th>
				<td>46</td>
				<td>18</td>
				<td>50</td>
				<td>61</td>
				<td>15</td>
			</tr>
			<tr>
				<th scope="row">Brussels</th>
				<td>51</td>
				<td>27</td>
				<td>38</td>
				<td>69</td>
				<td>28</td>
			</tr>
			<tr>
				<th rowspan="2" scope="rowgroup">The Netherlands</th>
				<th scope="row">Amsterdam</th>
				<td>89</td>
				<td>34</td>
				<td>69</td>
				<td>85</td>
				<td>38</td>
			</tr>
			<tr>
				<th scope="row">Utrecht</th>
				<td>80</td>
				<td>12</td>
				<td>43</td>
				<td>36</td>
				<td>19</td>
			</tr>
		</tbody>
	</table>

	<h2>도매가격</h2>

	<table>
		<caption>Items Sold August 2016</caption>
		<thead>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<th colspan="3" id="clothes">Clothes</th>
				<th colspan="2" id="accessories">Accessories</th>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<th id="trousers">Trousers</th>
				<th id="skirts">Skirts</th>
				<th id="dresses">Dresses</th>
				<th id="bracelets">Bracelets</th>
				<th id="rings">Rings</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th rowspan="3" id="belgium">Belgium</th>
				<th id="antwerp">Antwerp</th>
				<td headers="clothes trousers belgium antwerp">56</td>
				<td headers="clothes skirts belgium antwerp">22</td>
				<td headers="clothes dresses belgium antwerp">43</td>
				<td headers="accessories bracelets belgium antwerp">72</td>
				<td headers="accessories rings belgium antwerp">23</td>
			</tr>
			<tr>
				<th id="gent">Gent</th>
				<td headers="clothes trousers belgium gent">46</td>
				<td headers="clothes skirts belgium gent">18</td>
				<td headers="clothes dresses belgium gent">50</td>
				<td headers="accessories bracelets belgium gent">61</td>
				<td headers="accessories rings belgium gent">15</td>
			</tr>
			<tr>
				<th id="brussels">Brussels</th>
				<td headers="clothes trousers belgium brussels">51</td>
				<td headers="clothes skirts belgium brussels">27</td>
				<td headers="clothes dresses belgium brussels">38</td>
				<td headers="accessories bracelets belgium brussels">69</td>
				<td headers="accessories rings belgium brussels">28</td>
			</tr>
			<tr>
				<th rowspan="2" id="netherlands">The Netherlands</th>
				<th id="amsterdam">Amsterdam</th>
				<td headers="clothes trousers netherlands amsterdam">89</td>
				<td headers="clothes skirts netherlands amsterdam">34</td>
				<td headers="clothes dresses netherlands amsterdam">69</td>
				<td headers="accessories bracelets netherlands amsterdam">85</td>
				<td headers="accessories rings netherlands amsterdam">38</td>
			</tr>
			<tr>
				<th id="utrecht">Utrecht</th>
				<td headers="clothes trousers netherlands utrecht">80</td>
				<td headers="clothes skirts netherlands utrecht">12</td>
				<td headers="clothes dresses netherlands utrecht">43</td>
				<td headers="accessories bracelets netherlands utrecht">36</td>
				<td headers="accessories rings netherlands utrecht">19</td>
			</tr>
		</tbody>
	</table>
</body>
</html>