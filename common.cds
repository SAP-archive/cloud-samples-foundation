namespace clouds.foundation;

abstract entity BusinessObject : ManagedObject {
	key ID : UUID @(
		title: '{i18n>uuid}',
		Common.Text: {$value: name, "@UI.TextArrangement": #TextOnly}
	);
}

abstract entity ManagedObject {
	created: {
		byUser: User @(
			title: '{i18n>createdBy}',
			odata.on.insert: #user
		);
		at: DateTime @(
			title: '{i18n>createdOn}',
			odata.on.insert: #now
		);
	} @( Core.Computed );
	modified: {
		byUser: User @(
			title: '{i18n>changedBy}',
			odata.on.update: #user
		);
		at: DateTime @(
			title: '{i18n>changedOn}',
			odata: {
				on.update: #now,
				etag
			}
		);
	} @( Core.Computed );
}

type User: String(255) @(
	title: '{i18n>userID}',
	description: '{i18n>userIDDescription}'
);

type ImageURL : String(255) @title: '{i18n>image}';
