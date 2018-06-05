namespace clouds.foundation;

type Currency: String(3) @(
	title: '{i18n>currencyCode}',
	description: '{i18n>currencyCodeDescription}',
);

type Country: String(3) @(
	title: '{i18n>countryCode}',
	description: '{i18n>countryCodeDescription}',
);

type Language: String(2) @(
	title: '{i18n>languageCode}',
	description: '{i18n>languageCodeDescription}',
);

type Locale: String(6) @(
	title: '{i18n>localeCode}',
	description: '{i18n>localeCodeDescription}'
);

entity Currencies: CodeList { key code: Currency; }
entity Countries: CodeList { key code: Country; }
entity Languages: CodeList { key code: Language; }

abstract entity CodeList @cds.autoexpose {
	name: localized String @title: '{i18n>codeListName}';
}