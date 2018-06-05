namespace clouds.foundation;
using clouds.foundation.CodeList from './codes';

context Measures {
	type Length: Decimal(10, 3) @(
		title: '{i18n>length}',
		description: '{i18n>lengthDescription}',
		Measures.Unit: Units.Length
	);
	type Area: Decimal(10, 3) @(
		title: '{i18n>area}',
		description: '{i18n>areaDescription}',
		Measures.Unit: Units.Area
	);
	type Volume: Decimal(10, 3) @(
		title: '{i18n>volume}',
		description: '{i18n>volumeDescription}',
		Measures.Unit: Units.Volume
	);
	type Weight: Decimal(10, 3) @(
		title: '{i18n>weight}',
		description: '{i18n>weightDescription}',
		Measures.Unit: Units.Weight
	);
	type Base: Decimal(10, 0) @(
		title: '{i18n>base}',
		description: '{i18n>baseDescription}',
		Measures.Unit: Units.Base
	);

	context Units {
		type Length: String(3) @(
			title: '{i18n>lengthUnit}',
			description: '{i18n>lengthUnitDescription}'
		);
		type Area: String(3) @(
			title: '{i18n>areaUnit}',
			description: '{i18n>areaUnitDescription}'
		);
		type Volume: String(3) @(
			title: '{i18n>volumeUnit}',
			description: '{i18n>volumeUnitDescription}'
		);
		type Weight: String(3) @(
			title: '{i18n>weightUnit}',
			description: '{i18n>weightUnitDescription}'
		);
		type Base: String(3) @(
			title: '{i18n>baseUnit}',
			description: '{i18n>baseUnitDescription}'
		);

		entity Lengths: CodeList {
			key code: Length;
		}
		entity Areas: CodeList {
			key code: Area;
		}
		entity Volumes: CodeList {
			key code: Volume;
		}
		entity Weights: CodeList {
			key code: Weight;
		}
		entity Bases: CodeList {
			key code: Base;
		}
	}
}