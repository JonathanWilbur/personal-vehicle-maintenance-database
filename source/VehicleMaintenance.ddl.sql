CREATE TABLE IF NOT EXISTS VehicleMaintenance (
	`id`							SERIAL PRIMARY KEY,
    `title`							VARCHAR(64) NOT NULL COMMENT 'A short and simple title for the repair itself',
    `description`					TEXT,

    -- Vehicle Information
    `vehicleID`						BIGINT UNSIGNED NOT NULL,
    `vehicleMileage`				INTEGER UNSIGNED,
    `date`							DATE,

    -- Costs Information
	`laborCosts`					FLOAT SIGNED COMMENT 'The costs of the labor involved in the repair. Negative values should indicate that you got paid to have the repair / maintenance done, though it would be very unusual.',
    `partsCosts`					FLOAT SIGNED COMMENT 'The costs of the parts involved in the repair. Negative values should indicate that you got paid to have the repair / maintenance done, though it would be very unusual.',
    `shippingCosts`					FLOAT SIGNED COMMENT 'The costs of the shipping of the parts. Negative values should indicate that you got paid to have the part shipped, though it would be very unusual.',
    `transportationCosts`			FLOAT SIGNED COMMENT 'The costs of using auxiliary transportation while the vehicle was being maintained. Negative values should indicate that you got paid to use auxiliary transportation, though it would be very unusual.',
    `taxesCosts`					FLOAT SIGNED COMMENT 'The costs of taxes involved in the repair. Negative values should indicate that you got paid to have the repair or maintenance done, though it would be very unusual.',
    `totalCosts`					FLOAT SIGNED COMMENT 'The total costs of the repair, including, but not limited to, parts, labor, shipping, transportation, and taxes.',

    -- Repair Source
    `repairingTechnician`			VARCHAR(64) COMMENT 'The person that repaired the vehicle.',
    `repairingOrganization`			VARCHAR(64)	COMMENT 'The organization that repaired the vehicle.',
    `repairingOrganizationURI`		TINYTEXT COMMENT 'A URI that points to either the homepage or some canonical webpage for the organization that performed the repair or maintenance.',
    `repairingOrganizationApproval`	BOOLEAN COMMENT 'Whether the work performed by the repairing or maintaining organization was satisfactory.',

    -- Purpose
    `impetus`						TEXT COMMENT 'A description of the noise, vibration, or other observation that prompted repairs.',
    `preemptive`					BOOLEAN COMMENT 'Whether the repair or maintenance was done pre-emptively, meaning that it was done to avoid a future potential issue rather than one that already exists.',
    `cosmetic`						BOOLEAN COMMENT 'Whether the repair or maintenance was purely cosmetic.',
    `safety`						BOOLEAN COMMENT 'Whether the repair or maintenance addresses a safety concern.',
    `improvesFuelEconomy`			BOOLEAN COMMENT 'Whether the repair or maintenance is expected to improve fuel economy.',

    -- Outcome
    `results`						TEXT COMMENT 'A description of the results of the repair or maintenance',
    `notes`							TEXT COMMENT 'Additional notes that do not pertain to the results of the repair.',

    FOREIGN KEY (`vehicleID`) REFERENCES Vehicles (`id`)
);
