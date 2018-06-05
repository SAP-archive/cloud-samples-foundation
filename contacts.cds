namespace clouds.foundation;
using clouds.foundation.BusinessObject from './common';

type Contact {
	name: String @title: '{i18n>contactName}';
	emailAddress : EMail;
	faxNumber: Phone @title: '{i18n>faxNumber}';
	phoneNumber: Phone;
	address: Association to Addresses @title: '{i18n>address}';
}

type Organization: Contact {
}

abstract entity BusinessPartner: Organization, BusinessObject {
}

type Person: Contact {
	firstName: String @title: '{i18n>firstName}';
	mobilePhoneNumber: Phone @title: '{i18n>mobilePhoneNumber}';
}

annotate Person with {
	name @title: '{i18n>familyName}';
}

entity Addresses : BusinessObject {
	cityName: String(40) @title: '{i18n>city}';
	postalCode: String(10) @title: '{i18n>postalCode}';
	streetName: String(60) @title: '{i18n>street}';
	houseNumber: String(10) @title: '{i18n>houseNumber}';
	type: String(2) @title: '{i18n>addressType}';
	validityStartDate: DateTime @title: '{i18n>validityStartDate}';
	validityEndDate: DateTime @title: '{i18n>validityEndDate}';
	latitude: Decimal(15, 12) @title: '{i18n>latitude}';
	longitude: Decimal(15, 12) @title: '{i18n>longitude}';
}

annotate Addresses with {
	ID @title: '{i18n>address}';
}

type EMail : String(255) @title: '{i18n>emailAddress}';
type Phone : String(30) @title: '{i18n>telephoneNumber}';