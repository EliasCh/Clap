<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile</title>
<link rel="shortcut icon" href="https://s3.eu-west-3.amazonaws.com/faviconicon/favicon3.ico?" type="image/x-icon">
  <link rel="icon" href="https://s3.eu-west-3.amazonaws.com/faviconicon/favicon3.ico?" type="image/x-icon">
</head>
<style>
html {
    position: relative;
    min-height: 100%;
}
body {
    margin: 0 0 100px; /* bottom = footer height */
    
   background-image: url("banner.jpg");
}
footer {
    position: absolute;
    left: 0;
    bottom: 0;
    height: 60px;
    width: 100%;
    background-color:#eaecef;
}
/* Resets (http://meyerweb.com/eric/tools/css/reset/ | v2.0 | 20110126 | License: none (public domain)) */

	html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,b,u,i,center,dl,dt,dd,ol,ul,li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,article,aside,canvas,details,embed,figure,figcaption,footer,header,hgroup,menu,nav,output,ruby,section,summary,time,mark,audio,video{margin:0;padding:0;border:0;font-size:100%;font:inherit;vertical-align:baseline;}article,aside,details,figcaption,figure,footer,header,hgroup,menu,nav,section{display:block;}body{line-height:1;}ol,ul{list-style:none;}blockquote,q{quotes:none;}blockquote:before,blockquote:after,q:before,q:after{content:'';content:none;}table{border-collapse:collapse;border-spacing:0;}body{-webkit-text-size-adjust:none}

/* Box Model */

	*, *:before, *:after {
		-moz-box-sizing: border-box;
		-webkit-box-sizing: border-box;
		box-sizing: border-box;
	}

/* Container */

	body {
		/* min-width: (containers) */
		min-width: 1200px;
	}

	.container {
		margin-left: auto;
		margin-right: auto;
		
		/* width: (containers) */
		width: 1200px;
	}

	/* Modifiers */

		/* 125% */
			.container.\31 25\25 {
				width: 100%;
				
				/* max-width: (containers * 1.25) */
				max-width: 1500px;

				/* min-width: (containers) */
				min-width: 1200px;
			}

		/* 75% */
			.container.\37 5\25 {
				
				/* width: (containers * 0.75) */
				width: 900px;

			}

		/* 50% */
			.container.\35 0\25 {
				
				/* width: (containers * 0.50) */
				width: 600px;

			}

		/* 25% */
			.container.\32 5\25 {
				
				/* width: (containers * 0.25) */
				width: 300px;

			}

/* Grid */

	.row {
		border-bottom: solid 1px transparent;
	}
	
	.row > * {
		float: left;
	}
	
	.row:after, .row:before {
		content: '';
		display: block;
		clear: both;
		height: 0;
	}
	
	.row.uniform > * > :first-child {
		margin-top: 0;
	}
	
	.row.uniform > * > :last-child {
		margin-bottom: 0;
	}

	/* Gutters */

		/* Normal */
		
			.row > * {
				/* padding: (gutters.horizontal) 0 0 (gutters.vertical) */
				padding: 0 0 0 2em;
			}

			.row {
				/* margin: -(gutters.horizontal) 0 0 -(gutters.vertical) */
				margin: 0 0 0 -2em;
			}
			
			.row.uniform > * {
				/* padding: (gutters.vertical) 0 0 (gutters.vertical) */
				padding: 2em 0 0 2em;
			}

			.row.uniform {
				/* margin: -(gutters.vertical) 0 0 -(gutters.vertical) */
				margin: -2em 0 0 -2em;
			}
			
		/* 200% */
		
			.row.\32 00\25 > * {
				/* padding: (gutters.horizontal) 0 0 (gutters.vertical) */
				padding: 0 0 0 4em;
			}

			.row.\32 00\25 {
				/* margin: -(gutters.horizontal) 0 0 -(gutters.vertical) */
				margin: 0 0 0 -4em;
			}

			.row.uniform.\32 00\25 > * {
				/* padding: (gutters.vertical) 0 0 (gutters.vertical) */
				padding: 4em 0 0 4em;
			}

			.row.uniform.\32 00\25 {
				/* margin: -(gutters.vertical) 0 0 -(gutters.vertical) */
				margin: -4em 0 0 -4em;
			}

		/* 150% */
		
			.row.\31 50\25 > * {
				/* padding: (gutters.horizontal) 0 0 (gutters.vertical) */
				padding: 0 0 0 1.5em;
			}

			.row.\31 50\25 {
				/* margin: -(gutters.horizontal) 0 0 -(gutters.vertical) */
				margin: 0 0 0 -1.5em;
			}

			.row.uniform.\31 50\25 > * {
				/* padding: (gutters.vertical) 0 0 (gutters.vertical) */
				padding: 1.5em 0 0 1.5em;
			}

			.row.uniform.\31 50\25 {
				/* margin: -(gutters.vertical) 0 0 -(gutters.vertical) */
				margin: -1.5em 0 0 -1.5em;
			}

		/* 50% */
		
			.row.\35 0\25 > * {
				/* padding: (gutters.horizontal) 0 0 (gutters.vertical) */
				padding: 0 0 0 1em;
			}

			.row.\35 0\25 {
				/* margin: -(gutters.horizontal) 0 0 -(gutters.vertical) */
				margin: 0 0 0 -1em;
			}

			.row.uniform.\35 0\25 > * {
				/* padding: (gutters.vertical) 0 0 (gutters.vertical) */
				padding: 1em 0 0 1em;
			}

			.row.uniform.\35 0\25 {
				/* margin: -(gutters.vertical) 0 0 -(gutters.vertical) */
				margin: -1em 0 0 -1em;
			}

		/* 25% */
		
			.row.\32 5\25 > * {
				/* padding: (gutters.horizontal) 0 0 (gutters.vertical) */
				padding: 0 0 0 0.5em;
			}

			.row.\32 5\25 {
				/* margin: -(gutters.horizontal) 0 0 -(gutters.vertical) */
				margin: 0 0 0 -0.5em;
			}

			.row.uniform.\32 5\25 > * {
				/* padding: (gutters.vertical) 0 0 (gutters.vertical) */
				padding: 0.5em 0 0 0.5em;
			}

			.row.uniform.\32 5\25 {
				/* margin: -(gutters.vertical) 0 0 -(gutters.vertical) */
				margin: -0.5em 0 0 -0.5em;
			}

		/* 0% */
		
			.row.\30 \25 > * {
				/* padding: (gutters.horizontal) 0 0 (gutters.vertical) */
				padding: 0;
			}

			.row.\30 \25 {
				/* margin: -(gutters.horizontal) 0 0 -(gutters.vertical) */
				margin: 0;
			}

	/* Cells */

		.\31 2u, .\31 2u\24, .\31 2u\28 1\29, .\31 2u\24\28 1\29 { width: 100%; clear: none; }
		.\31 1u, .\31 1u\24, .\31 1u\28 1\29, .\31 1u\24\28 1\29 { width: 91.6666666667%; clear: none; }
		.\31 0u, .\31 0u\24, .\31 0u\28 1\29, .\31 0u\24\28 1\29 { width: 83.3333333333%; clear: none; }
		.\39 u, .\39 u\24, .\39 u\28 1\29, .\39 u\24\28 1\29 { width: 75%; clear: none; }
		.\38 u, .\38 u\24, .\38 u\28 1\29, .\38 u\24\28 1\29 { width: 66.6666666667%; clear: none; }
		.\37 u, .\37 u\24, .\37 u\28 1\29, .\37 u\24\28 1\29 { width: 58.3333333333%; clear: none; }
		.\36 u, .\36 u\24, .\36 u\28 1\29, .\36 u\24\28 1\29 { width: 50%; clear: none; }
		.\35 u, .\35 u\24, .\35 u\28 1\29, .\35 u\24\28 1\29 { width: 41.6666666667%; clear: none; }
		.\34 u, .\34 u\24, .\34 u\28 1\29, .\34 u\24\28 1\29 { width: 33.3333333333%; clear: none; }
		.\33 u, .\33 u\24, .\33 u\28 1\29, .\33 u\24\28 1\29 { width: 25%; clear: none; }
		.\32 u, .\32 u\24, .\32 u\28 1\29, .\32 u\24\28 1\29 { width: 16.6666666667%; clear: none; }
		.\31 u, .\31 u\24, .\31 u\28 1\29, .\31 u\24\28 1\29 { width: 8.3333333333%; clear: none; }

		.\31 2u\24 + *, .\31 2u\24\28 1\29 + *,
		.\31 1u\24 + *, .\31 1u\24\28 1\29 + *,
		.\31 0u\24 + *, .\31 0u\24\28 1\29 + *,
		.\39 u\24 + *, .\39 u\24\28 1\29 + *,
		.\38 u\24 + *, .\38 u\24\28 1\29 + *,
		.\37 u\24 + *, .\37 u\24\28 1\29 + *,
		.\36 u\24 + *, .\36 u\24\28 1\29 + *,
		.\35 u\24 + *, .\35 u\24\28 1\29 + *,
		.\34 u\24 + *, .\34 u\24\28 1\29 + *,
		.\33 u\24 + *, .\33 u\24\28 1\29 + *,
		.\32 u\24 + *, .\32 u\24\28 1\29 + *,
		.\31 u\24  + *,  .\31 u\24\28 1\29 + * {
			clear: left;
		}
			
		.\-11u { margin-left: 91.6666666667% }
		.\-10u { margin-left: 83.3333333333% }
		.\-9u { margin-left: 75% }
		.\-8u { margin-left: 66.6666666667% }
		.\-7u { margin-left: 58.3333333333% }
		.\-6u { margin-left: 50% }
		.\-5u { margin-left: 41.6666666667% }
		.\-4u { margin-left: 33.3333333333% }
		.\-3u { margin-left: 25% }
		.\-2u { margin-left: 16.6666666667% }
		.\-1u { margin-left: 8.3333333333% }
		@import url(font-awesome.min.css);
@import url("http://fonts.googleapis.com/css?family=Lato:300,700");

/*
	Drift by Pixelarity
	pixelarity.com @pixelarity
	License: pixelarity.com/license
*/

/* Basic */

	body {
		background: #fff;
	}

		body.is-loading * {
			-moz-animation: none !important;
			-webkit-animation: none !important;
			-o-animation: none !important;
			-ms-animation: none !important;
			animation: none !important;
			-moz-transition: none !important;
			-webkit-transition: none !important;
			-o-transition: none !important;
			-ms-transition: none !important;
			transition: none !important;
		}

	body, input, select, textarea {
		color: #646464;
		font-family: "Lato", Helvetica, sans-serif;
		font-size: 15pt;
		font-weight: 300;
		line-height: 1.75em;
	}

	a {
		-moz-transition: color 0.2s ease-in-out, border-color 0.2s ease-in-out;
		-webkit-transition: color 0.2s ease-in-out, border-color 0.2s ease-in-out;
		-o-transition: color 0.2s ease-in-out, border-color 0.2s ease-in-out;
		-ms-transition: color 0.2s ease-in-out, border-color 0.2s ease-in-out;
		transition: color 0.2s ease-in-out, border-color 0.2s ease-in-out;
		color: #ff9900;
		text-decoration: none;
		border-bottom: dotted 1px;
	}

		a:hover {
			text-decoration: none;
			color: #ff9900 !important;
			border-bottom-color: transparent;
		}

	strong, b {
		color: #545454;
		font-weight: 700;
	}

	em, i {
		font-style: italic;
	}

	p {
		margin: 0 0 2em 0;
	}

	h1, h2, h3, h4, h5, h6 {
		color: #545454;
		font-weight: 700;
		line-height: 1em;
		margin: 0 0 1em 0;
		letter-spacing: -0.01em;
	}

		h1 a, h2 a, h3 a, h4 a, h5 a, h6 a {
			color: inherit;
			text-decoration: none;
		}

	h2 {
		font-size: 1.75em;
		line-height: 1.5em;
	}

	h3 {
		font-size: 1.25em;
		line-height: 1.5em;
	}

	h4 {
		font-size: 1.1em;
		line-height: 1.5em;
	}

	h5 {
		font-size: 0.9em;
		line-height: 1.5em;
	}

	h6 {
		font-size: 0.7em;
		line-height: 1.5em;
	}

	sub {
		font-size: 0.8em;
		position: relative;
		top: 0.5em;
	}

	sup {
		font-size: 0.8em;
		position: relative;
		top: -0.5em;
	}

	hr {
		border: 0;
		border-bottom: solid 1px rgba(144, 144, 144, 0.25);
		margin: 2em 0;
	}

		hr.major {
			margin: 3em 0;
		}

	blockquote {
		border-left: solid 4px rgba(144, 144, 144, 0.25);
		font-style: italic;
		margin: 0 0 2em 0;
		padding: 0.5em 0 0.5em 2em;
	}

	code {
		background: rgba(144, 144, 144, 0.075);
		border-radius: 0.5em;
		border: solid 1px rgba(144, 144, 144, 0.25);
		font-family: "Courier New", monospace;
		font-size: 0.9em;
		margin: 0 0.25em;
		padding: 0.25em 0.65em;
	}

	pre {
		-webkit-overflow-scrolling: touch;
		font-family: "Courier New", monospace;
		font-size: 0.9em;
		margin: 0 0 2em 0;
	}

		pre code {
			display: block;
			line-height: 1.75em;
			padding: 1em 1.5em;
			overflow-x: auto;
		}

	.align-left {
		text-align: left;
	}

	.align-center {
		text-align: center;
	}

	.align-right {
		text-align: right;
	}

/* Section/Article */

	section.special, article.special {
		text-align: center;
	}

	header p {
		color: #949494;
		position: relative;
		margin: 0 0 1.5em 0;
	}

	header h2 + p {
		font-size: 1.25em;
		margin-top: -1em;
		line-height: 1.75em;
	}

	header h3 + p {
		font-size: 1.1em;
		margin-top: -0.85em;
		line-height: 1.5em;
	}

	header h4 + p,
	header h5 + p,
	header h6 + p {
		font-size: 0.9em;
		margin-top: -0.75em;
		line-height: 1.5em;
	}

	header.major {
		text-align: center;
	}

		header.major h2 {
			font-size: 2.35em;
		}

		header.major p {
			margin: -1em 0 3.5em 0;
		}

/* Form */

	form {
		margin: 0 0 2em 0;
	}

	label {
		color: #545454;
		display: block;
		font-size: 0.9em;
		font-weight: 700;
		margin: 0 0 1em 0;
	}

	input[type="text"],
	input[type="password"],
	input[type="email"],
	input[type="number"],
	select,
	textarea {
		-moz-appearance: none;
		-webkit-appearance: none;
		-o-appearance: none;
		-ms-appearance: none;
		appearance: none;
		background: rgba(144, 144, 144, 0.075);
		border-radius: 0.5em;
		border: none;
		border: solid 1px rgba(144, 144, 144, 0.25);
		color: inherit;
		display: block;
		outline: 0;
		padding: 0 1em;
		text-decoration: none;
		border-color:#ff9900;
	}

		input[type="text"]:invalid,
		input[type="number"]:invalid,
		input[type="password"]:invalid,
		input[type="email"]:invalid,
		select:invalid,
		textarea:invalid {
			box-shadow: none;
		}

		input[type="text"]:focus,
		input[type="password"]:focus,
		input[type="email"]:focus,
		input[type="number"]:focus,
		select:focus,
		textarea:focus {
			border-color: #ff9900;
			box-shadow: 0 0 0 1px #ff9900;
		}

	.select-wrapper {
		text-decoration: none;
		display: block;
		position: relative;
	}

		.select-wrapper:before {
			-moz-osx-font-smoothing: grayscale;
			-webkit-font-smoothing: antialiased;
			font-family: FontAwesome;
			font-style: normal;
			font-weight: normal;
			text-transform: none !important;
		}

		.select-wrapper:before {
			content: '\f078';
			color: rgba(144, 144, 144, 0.25);
			display: block;
			height: 2.75em;
			line-height: 2.75em;
			pointer-events: none;
			position: absolute;
			right: 0;
			text-align: center;
			top: 0;
			width: 2.75em;
		}

		.select-wrapper select::-ms-expand {
			display: none;
		}

	input[type="text"],
	input[type="password"],
	input[type="email"],
	input[type="number"],
	select {
		height: 2.75em;
	}

	textarea {
		padding: 0.75em 1em;
	}

	input[type="checkbox"],
	input[type="radio"] {
		-moz-appearance: none;
		-webkit-appearance: none;
		-o-appearance: none;
		-ms-appearance: none;
		appearance: none;
		display: block;
		float: left;
		margin-right: -2em;
		opacity: 0;
		width: 1em;
		z-index: -1;
	}

		input[type="checkbox"] + label,
		input[type="radio"] + label {
			text-decoration: none;
			color: #646464;
			cursor: pointer;
			display: inline-block;
			font-size: 1em;
			font-weight: 300;
			padding-left: 2.4em;
			padding-right: 0.75em;
			position: relative;
		}

			input[type="checkbox"] + label:before,
			input[type="radio"] + label:before {
				-moz-osx-font-smoothing: grayscale;
				-webkit-font-smoothing: antialiased;
				font-family: FontAwesome;
				font-style: normal;
				font-weight: normal;
				text-transform: none !important;
			}

			input[type="checkbox"] + label:before,
			input[type="radio"] + label:before {
				background: rgba(144, 144, 144, 0.075);
				border-radius: 0.5em;
				border: solid 1px rgba(144, 144, 144, 0.25);
				content: '';
				display: inline-block;
				height: 1.65em;
				left: 0;
				line-height: 1.58125em;
				position: absolute;
				text-align: center;
				top: 0;
				width: 1.65em;
			}

		input[type="checkbox"]:checked + label:before,
		input[type="radio"]:checked + label:before {
			background: #494d53;
			border-color: #494d53;
			color: #ffffff;
			content: '\f00c';
		}

		input[type="checkbox"]:focus + label:before,
		input[type="radio"]:focus + label:before {
			border-color: #ff9900;
			box-shadow: 0 0 0 1px #ff9900;
		}

	input[type="checkbox"] + label:before {
		border-radius: 0.5em;
	}

	input[type="radio"] + label:before {
		border-radius: 100%;
	}

	::-webkit-input-placeholder {
		color: #949494 !important;
		opacity: 1.0;
	}

	:-moz-placeholder {
		color: #949494 !important;
		opacity: 1.0;
	}

	::-moz-placeholder {
		color: #949494 !important;
		opacity: 1.0;
	}

	:-ms-input-placeholder {
		color: #949494 !important;
		opacity: 1.0;
	}

	.formerize-placeholder {
		color: #949494 !important;
		opacity: 1.0;
	}

/* Box */

	.box {
		border-radius: 0.5em;
		border: solid 1px rgba(144, 144, 144, 0.25);
		margin-bottom: 2em;
		padding: 2em;
	}

		.box > :last-child,
		.box > :last-child > :last-child,
		.box > :last-child > :last-child > :last-child {
			margin-bottom: 0;
		}

		.box.alt {
			border: 0;
			border-radius: 0;
			padding: 0;
		}

		.box.post {
			margin-left: auto;
			margin-right: auto;
			text-align: center;
		}

			.box.post .image:first-child {
				border-bottom-left-radius: 0;
				border-bottom-right-radius: 0;
				margin: -2em 0 2em -2em;
				width: calc(100% + 4em);
			}

				.box.post .image:first-child img {
					border-bottom-left-radius: 0;
					border-bottom-right-radius: 0;
				}

/* Icon */

	.icon {
		text-decoration: none;
		border-bottom: none;
		position: relative;
	}

		.icon:before {
			-moz-osx-font-smoothing: grayscale;
			-webkit-font-smoothing: antialiased;
			font-family: FontAwesome;
			font-style: normal;
			font-weight: normal;
			text-transform: none !important;
		}

		.icon > .label {
			display: none;
		}

/* Image */

	.image {
		border-radius: 0.5em;
		border: 0;
		display: inline-block;
		position: relative;
	}

		.image img {
			position: relative;
			border-radius: 0.5em;
			display: block;
		}

		.image.left {
			float: left;
			padding: 0 1.5em 1em 0;
			top: 0.25em;
		}

		.image.right {
			float: right;
			padding: 0 0 1em 1.5em;
			top: 0.25em;
		}

		.image.left, .image.right {
			max-width: 40%;
		}

			.image.left img, .image.right img {
				width: 100%;
			}

		.image.fit {
			display: block;
			margin: 0 0 2em 0;
			width: 100%;
		}

			.image.fit img {
				display: block;
				width: 100%;
			}

/* List */

	ol {
		list-style: decimal;
		margin: 0 0 2em 0;
		padding-left: 1.25em;
	}

		ol li {
			padding-left: 0.25em;
		}

	ul {
		list-style: disc;
		margin: 0 0 2em 0;
		padding-left: 1em;
	}

		ul li {
			padding-left: 0.5em;
		}

		ul.alt {
			list-style: none;
			padding-left: 0;
		}

			ul.alt li {
				border-top: solid 1px rgba(144, 144, 144, 0.25);
				padding: 0.5em 0;
			}

				ul.alt li:first-child {
					border-top: 0;
					padding-top: 0;
				}

		ul.icons {
			cursor: default;
			list-style: none;
			padding-left: 0;
		}

			ul.icons li {
				display: inline-block;
				padding: 0 1.25em 0 0;
			}

				ul.icons li:last-child {
					padding-right: 0 !important;
				}

				ul.icons li .icon {
					border-radius: 0.5em;
					border: solid 1px rgba(144, 144, 144, 0.25);
					color: #949494 !important;
					display: inline-block;
					font-size: 1.25em;
					height: 2.75em;
					line-height: 2.75em;
					text-align: center;
					width: 2.75em;
				}

				ul.icons li a.icon {
					-moz-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
					-webkit-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
					-o-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
					-ms-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
					transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
				}

					ul.icons li a.icon:hover {
						background-color: rgba(144, 144, 144, 0.075);
					}

					ul.icons li a.icon:active {
						background-color: rgba(144, 144, 144, 0.2);
					}

		ul.actions {
			cursor: default;
			list-style: none;
			padding-left: 0;
		}

			ul.actions li {
				display: inline-block;
				padding: 0 1em 0 0;
				vertical-align: middle;
			}

				ul.actions li:last-child {
					padding-right: 0;
				}

			ul.actions.small li {
				padding: 0 0.5em 0 0;
			}

			ul.actions.vertical li {
				display: block;
				padding: 1em 0 0 0;
			}

				ul.actions.vertical li:first-child {
					padding-top: 0;
				}

				ul.actions.vertical li > * {
					margin-bottom: 0;
				}

			ul.actions.vertical.small li {
				padding: 0.5em 0 0 0;
			}

				ul.actions.vertical.small li:first-child {
					padding-top: 0;
				}

			ul.actions.fit {
				display: table;
				margin-left: -1em;
				padding: 0;
				table-layout: fixed;
				width: calc(100% + 1em);
			}

				ul.actions.fit li {
					display: table-cell;
					padding: 0 0 0 1em;
				}

					ul.actions.fit li > * {
						margin-bottom: 0;
					}

				ul.actions.fit.small {
					margin-left: -0.5em;
					width: calc(100% + 0.5em);
				}

					ul.actions.fit.small li {
						padding: 0 0 0 0.5em;
					}

		ul.menu {
			line-height: 1em;
			list-style: none;
			padding: 0;
		}

			ul.menu li {
				border-left: solid 1px rgba(144, 144, 144, 0.25);
				display: inline-block;
				margin-left: 1em;
				padding-left: 1em;
			}

				ul.menu li:first-child {
					border-left: 0;
					margin-left: 0;
					padding-left: 0;
				}

	dl {
		margin: 0 0 2em 0;
	}

/* Table */

	.table-wrapper {
		-webkit-overflow-scrolling: touch;
		overflow-x: auto;
	}

	table {
		margin: 0 0 2em 0;
		width: 100%;
	}

		table tbody tr {
			border: solid 1px rgba(144, 144, 144, 0.25);
			border-left: 0;
			border-right: 0;
		}

			table tbody tr:nth-child(2n + 1) {
				background-color: rgba(144, 144, 144, 0.075);
			}

		table td {
			padding: 0.75em 0.75em;
		}

		table th {
			color: #545454;
			font-size: 0.9em;
			font-weight: 700;
			padding: 0 0.75em 0.75em 0.75em;
			text-align: left;
		}

		table thead {
			border-bottom: solid 2px rgba(144, 144, 144, 0.25);
		}

		table tfoot {
			border-top: solid 2px rgba(144, 144, 144, 0.25);
		}

		table.alt {
			border-collapse: separate;
		}

			table.alt tbody tr td {
				border: solid 1px rgba(144, 144, 144, 0.25);
				border-left-width: 0;
				border-top-width: 0;
			}

				table.alt tbody tr td:first-child {
					border-left-width: 1px;
				}

			table.alt tbody tr:first-child td {
				border-top-width: 1px;
			}

			table.alt thead {
				border-bottom: 0;
			}

			table.alt tfoot {
				border-top: 0;
			}

/* Button */

	input[type="submit"],
	input[type="reset"],
	input[type="button"],
	.button {
		-moz-appearance: none;
		-webkit-appearance: none;
		-o-appearance: none;
		-ms-appearance: none;
		appearance: none;
		-moz-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
		-webkit-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
		-o-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
		-ms-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
		transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
		background-color: transparent;
		border-radius: 0.5em;
		border: solid 1px rgba(144, 144, 144, 0.25) !important;
		color: #545454 ;
		cursor: pointer;
		display: inline-block;
		font-size: 0.8em;
		font-weight: 700;
		height: 3.5em;
		letter-spacing: 0.1em;
		line-height: 3.5em;
		overflow: hidden;
		padding: 0 2em;
		text-align: center;
		text-decoration: none;
		text-overflow: ellipsis;
		text-transform: uppercase;
		white-space: nowrap;
	}

		input[type="submit"]:hover,
		input[type="reset"]:hover,
		input[type="button"]:hover,
		.button:hover {
			background-color: rgba(144, 144, 144, 0.075);
			color: #545454 !important;
		}

		input[type="submit"]:active,
		input[type="reset"]:active,
		input[type="button"]:active,
		.button:active {
			background-color: rgba(144, 144, 144, 0.2);
		}

		input[type="submit"].icon,
		input[type="reset"].icon,
		input[type="button"].icon,
		.button.icon {
			padding-left: 1.35em;
		}

			input[type="submit"].icon:before,
			input[type="reset"].icon:before,
			input[type="button"].icon:before,
			.button.icon:before {
				margin-right: 0.5em;
			}

		input[type="submit"].fit,
		input[type="reset"].fit,
		input[type="button"].fit,
		.button.fit {
			display: block;
			margin: 0 0 1em 0;
			width: 100%;
		}

		input[type="submit"].small,
		input[type="reset"].small,
		input[type="button"].small,
		.button.small {
			font-size: 0.8em;
		}

		input[type="submit"].big,
		input[type="reset"].big,
		input[type="button"].big,
		.button.big {
			font-size: 1em;
			height: 3.5em;
			line-height: 3.5em;
			padding: 0 2.25em;
		}

		input[type="submit"].special,
		input[type="reset"].special,
		input[type="button"].special,
		.button.special {
			background-color: #ff9900;
			color: #ffffff !important;
		}

			input[type="submit"].special:hover,
			input[type="reset"].special:hover,
			input[type="button"].special:hover,
			.button.special:hover {
				background-color: #E46B6F;
			}

			input[type="submit"].special:active,
			input[type="reset"].special:active,
			input[type="button"].special:active,
			.button.special:active {
				background-color: #DC3F45;
			}

		input[type="submit"].disabled, input[type="submit"]:disabled,
		input[type="reset"].disabled,
		input[type="reset"]:disabled,
		input[type="button"].disabled,
		input[type="button"]:disabled,
		.button.disabled,
		.button:disabled {
			background-color: #646464 !important;
			box-shadow: inset 0 -0.15em 0 0 rgba(0, 0, 0, 0.15);
			color: #fff !important;
			cursor: default;
			opacity: 0.25;
		}

/* Feature */

	.feature {
		text-decoration: none;
		padding-left: 6.5em;
		position: relative;
		text-align: left;
	}

		.feature:before {
			-moz-osx-font-smoothing: grayscale;
			-webkit-font-smoothing: antialiased;
			font-family: FontAwesome;
			font-style: normal;
			font-weight: normal;
			text-transform: none !important;
		}

		.feature:before {
			border-radius: 0.5em;
			border: solid 1px rgba(144, 144, 144, 0.25);
			color: #ff9900;
			display: inline-block;
			font-size: 2.25em;
			height: 2em;
			left: 0;
			line-height: 2em;
			position: absolute;
			text-align: center;
			top: 0;
			width: 2em;
		}

		.feature h3 {
			margin: 0 0 0.7em 0;
		}

/* Slider */

	.slider {
		position: relative;
	}

		.slider .viewer {
			position: relative;
			border-radius: 0.5em;
			border: solid 1.5em #fff;
			height: 20em;
			margin: 0 auto;
			overflow: hidden;
			width: 80%;
		}

		.slider .slide img {
			border-radius: 0.375em;
			display: block;
			width: 100%;
		}

		.slider .nav-next,
		.slider .nav-previous {
			text-decoration: none;
			background: #fff;
			border-radius: 100%;
			color: #ddd;
			cursor: pointer;
			display: block;
			font-size: 3em;
			height: 1.25em;
			line-height: 1.15em;
			margin-top: -0.5em;
			position: absolute;
			text-align: center;
			top: 50%;
			width: 1.25em;
		}

			.slider .nav-next:before,
			.slider .nav-previous:before {
				-moz-osx-font-smoothing: grayscale;
				-webkit-font-smoothing: antialiased;
				font-family: FontAwesome;
				font-style: normal;
				font-weight: normal;
				text-transform: none !important;
			}

			.slider .nav-next:before,
			.slider .nav-previous:before {
				position: relative;
			}

		.slider .nav-next {
			right: 0;
		}

			.slider .nav-next:before {
				content: '\f105';
				right: -0.05em;
			}

		.slider .nav-previous {
			left: 0;
		}

			.slider .nav-previous:before {
				content: '\f104';
				left: -0.05em;
			}

/* Wrapper */

	.wrapper {
		padding: 5em 0 3em 0;
	}

		.wrapper.style1 {
			background: #f2f2f2;
		}

			.wrapper.style1 .box {
				background: #ffffff;
				border: 0;
			}

		.wrapper.style2 {
			background: #ffffff;
		}

		.wrapper.style3 {
			background: #ff9900;
			color: #d1f2f5;
		}

			.wrapper.style3 h1, .wrapper.style3 h2, .wrapper.style3 h3, .wrapper.style3 h4, .wrapper.style3 h5, .wrapper.style3 h6 {
				color: #ffffff;
			}

			.wrapper.style3 header p {
				color: #b5ebef;
			}

			.wrapper.style3 .button {
				border-color: white !important;
				color: #ffffff !important;
			}

				.wrapper.style3 .button:hover {
					background-color: rgba(255, 255, 255, 0.075);
				}

				.wrapper.style3 .button:active {
					background-color: rgba(255, 255, 255, 0.2);
				}

/* Header */

	#skel-layers-wrapper {
		padding-top: 3em;
	}

	body.landing #skel-layers-wrapper {
		padding-top: 0;
	}
	@-moz-keyframes reveal-header { 0% { top: -5em; } 100% { top: 0; } }
	@-webkit-keyframes reveal-header { 0% { top: -5em; } 100% { top: 0; } }
	@-o-keyframes reveal-header { 0% { top: -5em; } 100% { top: 0; } }
	@-ms-keyframes reveal-header { 0% { top: -5em; } 100% { top: 0; } }
	@keyframes reveal-header { 0% { top: -5em; } 100% { top: 0; } }

	#header {
		background-color: #fff;
		box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.05);
		color: inherit;
		cursor: default;
		height: 3em;
		left: 0;
		line-height: 3em;
		position: fixed;
		top: 0;
		width: 100%;
		z-index: 10000;
	}

		#header.reveal {
			-moz-animation: reveal-header 0.5s;
			-webkit-animation: reveal-header 0.5s;
			-o-animation: reveal-header 0.5s;
			-ms-animation: reveal-header 0.5s;
			animation: reveal-header 0.5s;
		}

		#header.alt {
			-moz-animation: none;
			-webkit-animation: none;
			-o-animation: none;
			-ms-animation: none;
			animation: none;
			background-color: transparent;
			box-shadow: none;
			color: #fff;
		}

		#header h1 {
			color: inherit;
			font-size: 1em;
			height: inherit;
			left: 1.25em;
			line-height: inherit;
			margin: 0;
			padding: 0;
			position: absolute;
			top: 0;
		}

			#header h1 span {
				font-weight: 300;
			}

			#header h1 a {
				border: 0;
			}

		#header nav {
			height: inherit;
			line-height: inherit;
			position: absolute;
			right: 1.5em;
			top: 0;
			vertical-align: middle;
		}

			#header nav > ul {
				list-style: none;
				margin: 0;
				padding-left: 0;
			}

				#header nav > ul > li {
					border-radius: 0.5em;
					display: inline-block;
					margin-left: 2em;
					padding-left: 0;
				}

					#header nav > ul > li a {
						border: 0;
						color: inherit;
						display: inline-block;
						text-decoration: none;
					}

						#header nav > ul > li a.icon:before {
							margin-right: 0.5em;
						}

					#header nav > ul > li:first-child {
						margin-left: 0;
					}

					#header nav > ul > li .button {
						height: 2.25em;
						line-height: 2.25em;
						margin-bottom: 0;
						padding: 0 1em;
						position: relative;
						top: -0.075em;
						vertical-align: middle;
					}

					#header nav > ul > li > ul {
						display: none;
					}

		#header .container {
			position: relative;
		}

			#header .container h1 {
				left: 0;
			}

			#header .container nav {
				right: 0;
			}

	.dropotron {
		background: #fff;
		border-radius: 0.5em;
		box-shadow: 0 0 3px 1px rgba(0, 0, 0, 0.05);
		list-style: none;
		margin-top: -0.75em;
		min-width: 10em;
		padding: 0.75em 0;
	}

		.dropotron li {
			padding: 0;
		}

			.dropotron li a {
				-moz-transition: none !important;
				-webkit-transition: none !important;
				-o-transition: none !important;
				-ms-transition: none !important;
				transition: none !important;
				border: 0;
				box-shadow: inset 0 1px 0 0 rgba(144, 144, 144, 0.2);
				color: inherit;
				display: block;
				line-height: 2.25em;
				padding: 0 1em;
			}

			.dropotron li:first-child > a {
				box-shadow: none;
			}

			.dropotron li.active > a, .dropotron li:hover > a {
				background: #ff9900;
				color: #ffffff !important;
			}

		.dropotron.level-0 {
			font-size: 0.9em;
			margin-top: 1em;
		}

			.dropotron.level-0:before {
				-moz-transform: rotate(45deg);
				-webkit-transform: rotate(45deg);
				-o-transform: rotate(45deg);
				-ms-transform: rotate(45deg);
				transform: rotate(45deg);
				background: #fff;
				content: '';
				display: block;
				height: 0.75em;
				position: absolute;
				right: 1.5em;
				top: -0.375em;
				width: 0.75em;
				box-shadow: inset 1px 1px 0 0 rgba(0, 0, 0, 0.075);
				box-shadow: -1px -1px 2px 0 rgba(0, 0, 0, 0.05);
			}

/* Banner */

	#banner {
		background-attachment: scroll,						fixed;
		background-color: #494d53;
		background-image: url("images/overlay.png"), url("../images/banner.jpg");
		background-position: top left,					center center;
		background-repeat: repeat,						no-repeat;
		background-size: auto,						cover;
		color: #d1d2d4;
		padding: 16em 0;
		position: relative;
		text-align: center;
	}

		#banner:after {
			-moz-transition: opacity 2s ease-in-out;
			-webkit-transition: opacity 2s ease-in-out;
			-o-transition: opacity 2s ease-in-out;
			-ms-transition: opacity 2s ease-in-out;
			transition: opacity 2s ease-in-out;
			background: #3d4045;
			content: '';
			height: 100%;
			left: 0;
			opacity: 0;
			position: absolute;
			top: 0;
			width: 100%;
			z-index: 1;
		}

		#banner :last-child {
			margin-bottom: 0;
		}

		#banner h1, #banner h2, #banner h3, #banner h4, #banner h5, #banner h6 {
			color: #ffffff;
		}

		#banner .inner {
			position: relative;
			z-index: 2;
		}

		#banner .button {
			border-color: white !important;
			color: #ffffff !important;
		}

			#banner .button:hover {
				background-color: rgba(255, 255, 255, 0.075);
			}

			#banner .button:active {
				background-color: rgba(255, 255, 255, 0.2);
			}

		#banner h2 {
			font-size: 3.25em;
			line-height: 1.25em;
			margin: 0 0 0.5em 0;
			padding: 0;
		}

		#banner p {
			font-size: 1.5em;
			margin-bottom: 1.75em;
		}

	body.is-loading #banner:after {
		opacity: 1.0;
	}

/* One */

	#one {
		padding-bottom: 0;
	}

		#one .slider .viewer {
			border-bottom-left-radius: 0;
			border-bottom-right-radius: 0;
			border-bottom: 0;
		}

		#one .slider .slide img {
			border-bottom-left-radius: 0;
			border-bottom-right-radius: 0;
		}

/* Main */

	#main > .container {
		position: relative;
		background: #ffffff;
		border-radius: 0.5em;
		margin-bottom: 2em;
		padding: 3em;
	}

		#main > .container > :last-child,
		#main > .container > :last-child > :last-child,
		#main > .container > :last-child > :last-child > :last-child {
			margin-bottom: 0;
		}

/* CTA */

	#cta {
		padding: 4em 0;
		text-align: center;
		vertical-align: middle;
	}

		#cta h2 {
			display: inline-block;
			margin: 0 1em 0 0;
			vertical-align: middle;
		}

		#cta .actions {
			display: inline-block;
			margin: 0;
		}

/* Footer */

	#footer {
		color: #949494;
		padding: 4em 0;
		text-align: center;
	}

		#footer .icons {
			margin: 0 0 4em 0;
		}

		#footer .menu a {
			color: inherit;
		}

		#footer .copyright {
			font-size: 0.8em;
		}
		
/*
	Drift by Pixelarity
	pixelarity.com @pixelarity
	License: pixelarity.com/license
*/

/* Basic */

	body, input, select, textarea {
		font-size: 12pt;
	}
	.error {
	color:#ff9900;}

/* Banner */

	#banner {
		padding: 12em 0;
	}
/* Label */
	label {
	color:#ffffff;
	} 
.headHtml {
    position: absolute;
    left: 0;
    top: 0;
    height: 80px;
    width: 100%;
    background-color: #f2f2f2;
}
.formInput {
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

.formSubmit  {
    
    background-color: #0066A2;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

.formUpvote  {    
    background-color: #008CBA;
    color: white;
    padding: 7px 10px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}
.classiRight {
	position : absolute ;
	right: 5px;
	top : 5 px ;
	background-color: #0066A2;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}
.classiLeft {
	position : absolute ;
	top : 5 px  ; 
	left : 5 px;
	background-color: #0066A2;
    color: white;
    padding: 14px 20px;
    margin: 8px 0px 8px 8px ;
    border: none;
    border-radius: 4px;
    cursor: pointer; 
}
.button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
.username {
	position:absolute ;width:100%;left:50%;
}
</style>
</head>
<script type="text/javascript">
/*
Drift by Pixelarity
pixelarity.com @pixelarity
License: pixelarity.com/license
*/

(function($) {

skel.init({
	reset: 'full',
	breakpoints: {
		global: { href: 'css/style.css', containers: 1400, grid: { gutters: ['2em', 0] } },
		xlarge: { media: '(max-width: 1680px)', href: 'css/style-xlarge.css', containers: 1200 },
		large: { media: '(max-width: 1280px)', href: 'css/style-large.css', containers: 960, grid: { gutters: ['1.5em', 0] }, viewport: { scalable: false } },
		medium: { media: '(max-width: 980px)', href: 'css/style-medium.css', containers: '90%', grid: { zoom: 2 } },
		small: { media: '(max-width: 736px)', href: 'css/style-small.css', containers: '90%!', grid: { gutters: ['1.25em', 0], zoom: 3 } },
		xsmall: { media: '(max-width: 480px)', href: 'css/style-xsmall.css' }
	},
	plugins: {
		layers: {
			
			// Config.
				config: {
					transformTest: function() { return skel.vars.isMobile; }
				},
			
			// Navigation Button.
				navButton: {
					breakpoints: 'medium',
					height: '4em',
					html: '<span class="toggle" data-action="toggleLayer" data-args="navPanel"></span>',
					position: 'top-left',
					side: 'top',
					width: '6em'
				},

			// Navigation Panel.
				navPanel: {
					animation: 'overlayX',
					breakpoints: 'medium',
					clickToHide: true,
					height: '100%',
					hidden: true,
					html: '<div data-action="navList" data-args="nav"></div>',
					orientation: 'vertical',
					position: 'top-left',
					side: 'left',
					width: 250
				}

		}
	}
});

$(function() {
	
	var $window = $(window),
		$body = $('body'),
		$banner = $('#banner'),
		$header = $('#header');

	// Disable animations/transitions until the page has loaded.
		$body.addClass('is-loading');
		
		$window.on('load', function() {
			window.setTimeout(function() {
				$body.removeClass('is-loading');
			}, 500);
		});

	// Forms (IE<10).
		var $form = $('form');
		if ($form.length > 0) {

			$form.find('.form-button-submit')
				.on('click', function() {
					$(this).parents('form').submit();
					return false;
				});
	
			if (skel.vars.IEVersion < 10) {
				$.fn.n33_formerize=function(){var _fakes=new Array(),_form = $(this);_form.find('input[type=text],textarea').each(function() { var e = $(this); if (e.val() == '' || e.val() == e.attr('placeholder')) { e.addClass('formerize-placeholder'); e.val(e.attr('placeholder')); } }).blur(function() { var e = $(this); if (e.attr('name').match(/_fakeformerizefield$/)) return; if (e.val() == '') { e.addClass('formerize-placeholder'); e.val(e.attr('placeholder')); } }).focus(function() { var e = $(this); if (e.attr('name').match(/_fakeformerizefield$/)) return; if (e.val() == e.attr('placeholder')) { e.removeClass('formerize-placeholder'); e.val(''); } }); _form.find('input[type=password]').each(function() { var e = $(this); var x = $($('<div>').append(e.clone()).remove().html().replace(/type="password"/i, 'type="text"').replace(/type=password/i, 'type=text')); if (e.attr('id') != '') x.attr('id', e.attr('id') + '_fakeformerizefield'); if (e.attr('name') != '') x.attr('name', e.attr('name') + '_fakeformerizefield'); x.addClass('formerize-placeholder').val(x.attr('placeholder')).insertAfter(e); if (e.val() == '') e.hide(); else x.hide(); e.blur(function(event) { event.preventDefault(); var e = $(this); var x = e.parent().find('input[name=' + e.attr('name') + '_fakeformerizefield]'); if (e.val() == '') { e.hide(); x.show(); } }); x.focus(function(event) { event.preventDefault(); var x = $(this); var e = x.parent().find('input[name=' + x.attr('name').replace('_fakeformerizefield', '') + ']'); x.hide(); e.show().focus(); }); x.keypress(function(event) { event.preventDefault(); x.val(''); }); });  _form.submit(function() { $(this).find('input[type=text],input[type=password],textarea').each(function(event) { var e = $(this); if (e.attr('name').match(/_fakeformerizefield$/)) e.attr('name', ''); if (e.val() == e.attr('placeholder')) { e.removeClass('formerize-placeholder'); e.val(''); } }); }).bind("reset", function(event) { event.preventDefault(); $(this).find('select').val($('option:first').val()); $(this).find('input,textarea').each(function() { var e = $(this); var x; e.removeClass('formerize-placeholder'); switch (this.type) { case 'submit': case 'reset': break; case 'password': e.val(e.attr('defaultValue')); x = e.parent().find('input[name=' + e.attr('name') + '_fakeformerizefield]'); if (e.val() == '') { e.hide(); x.show(); } else { e.show(); x.hide(); } break; case 'checkbox': case 'radio': e.attr('checked', e.attr('defaultValue')); break; case 'text': case 'textarea': e.val(e.attr('defaultValue')); if (e.val() == '') { e.addClass('formerize-placeholder'); e.val(e.attr('placeholder')); } break; default: e.val(e.attr('defaultValue')); break; } }); window.setTimeout(function() { for (x in _fakes) _fakes[x].trigger('formerize_sync'); }, 10); }); return _form; };
				$form.n33_formerize();
			}

		}

	// Scrolly links.
		$('.scrolly').scrolly();
	
	// Header.
	// If the header is using "alt" styling and #banner is present, use scrollwatch
	// to revert it back to normal styling once the user scrolls past the banner.
		if ($header.hasClass('alt')
		&&	$banner.length > 0) {

			$window.on('load', function() {

				$banner.scrollwatch({
					delay:		0,
					range:		0.98,
					anchor:		'top',
					on:			function() { $header.addClass('alt reveal'); },
					off:		function() { $header.removeClass('alt'); }
				});

				skel.change(function() {
					
					if (skel.isActive('medium'))
						$banner.scrollwatchSuspend();
					else
						$banner.scrollwatchResume();
					
				});

			});
		
		}
		
	// Dropdowns.
		$('#nav > ul').dropotron({
			alignment: 'right'
		});
		
	// Slider.
		var $sliders = $('.slider');
		
		if ($sliders.length > 0) {
			
			$sliders.slidertron({
				mode: 'fadeIn',
				seamlessWrap: true,
				viewerSelector: '.viewer',
				reelSelector: '.viewer .reel',
				slidesSelector: '.viewer .reel .slide',
				advanceDelay: 0,
				speed: 400,
				fadeInSpeed: 1000,
				autoFit: true,
				autoFitAspectRatio: (840 / 344),
				navPreviousSelector: '.nav-previous',
				navNextSelector: '.nav-next',
				indicatorSelector: '.indicator ul li',
				slideLinkSelector: '.link'
			});

			$window
				.on('resize load', function() {
					$sliders.trigger('slidertron_reFit');
				})
				.trigger('resize');				
		
		}
	
});

})(jQuery);

</script>

<body>
<!--  ${currUser }  -->
<header id="header" class="alt skel-layers-fixed">
				<h1><a href="${pageContext.request.contextPath}/" style="font-size:21px;" ><b style="color:white;">Findih - <span> Find the best tutorials based on other geeks's votes  </span></b></a></h1>
				<br>
				<nav id="nav">
					<ul>
							<font style="color:#ff9900;" > ${info }</font>
								<li><a href="${pageContext.request.contextPath}/solution/create" style="font-family:Georgia;font-size:21px;">Post solution</a></li>
								<li><a href="${pageContext.request.contextPath}/user/descon" style="font-family:Georgia;font-size:21px;" >Disconnect</a></li>
								<br>
					</ul>
				</nav>
			</header>

		<!-- Banner -->
			<section id="banner">
				<div class="inner" align=center >
					<h2 style="font-family:Georgia;">Edit your profile </h2>
					<font style="color:#ff9900;">${error }</font>

  	<font style="color:#ff9900">${msg }</font> 	
 	<form:form name="formProfile" action="${pageContext.request.contextPath}/user/update" modelAttribute="userProfile" method="POST">
 		<form:hidden path="pass_hash" value="ifdoifhoizh"/>
 		<form:hidden path="email" value="nouser@nouser.com"/>
     	<label style="font-size:19px;" >Username </label>   
     	<form:input path="username" /> 
     	<b><form:errors path="username" cssClass="error" /></b> <br>
     	<label style="font-size:19px;" >Pass </label>   
     	<input type="password" name="pass" /><br>
     	<label align=center style="font-size:19px;" >Date of birth </label>   
     	<input type="text" path="dob" class= "date" name = "dob" value = "<fmt:formatDate value="${userProfile.dob}" pattern="YYYY-MM-DD" />" />
    	<b><form:errors path="dob" cssClass="error" /> </b><br><br>
    	
    	<input type="submit" value="Save" class="formSubmit" style="background-color:white;" onclick="isValidDate(document.formProfile.dob)"/>
  	</form:form>
  	
  	<form:form action="${pageContext.request.contextPath}/user/delete">
  		<input type="submit"  class="formSubmit" style="background-color:white;color:red;" value="Delete account "   />
  	</form:form>

				</div>
			</section>

	<footer> 
  	 	<span style="position:absolute;right:20px;text-align: center;vertical-align: middle;line-height: 60px;" >
  	 		<a style="color:grey;" href="https://www.linkedin.com/in/elyes-chine/"> � Elyes Chine </a>  
  	 	</span>
  	 </footer>
</body>
</html>

       