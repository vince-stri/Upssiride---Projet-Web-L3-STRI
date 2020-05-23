-- Delete existing sponsor in the BdD under the entity 'sponsors'

    DELETE FROM sponsors WHERE name = $Name

    -- Example

    DELETE FROM sponsors WHERE name = 'my_sponsors';

-- Delete an account in the BdD under the entity 'vehicule', 'ride', 'require', 'participate' and 'account'

    DELETE FROM vehicule WHERE idaccount=(  SELECT idaccount FROM account WHERE name = $Name AND firstname = $Firstname);
    DELETE FROM ride WHERE idaccount=(  SELECT idaccount FROM account WHERE name = $Name AND firstname = $Firstname);
    DELETE FROM require WHERE idaccount=(  SELECT idaccount FROM account WHERE name = $Name AND firstname = $Firstname);
    DELETE FROM participate WHERE idaccount=(  SELECT idaccount FROM account WHERE name = $Name AND firstname = $Firstname);
    DELETE FROM account WHERE idaccount=(  SELECT idaccount FROM account WHERE name = $Name AND firstname = $Firstname);

    DELETE FROM vehicule WHERE idaccount=$idaccount;
    DELETE FROM ride WHERE idaccount=$idaccount;
    DELETE FROM require WHERE idaccount=$idaccount;
    DELETE FROM participate WHERE idaccount=$idaccount;
    DELETE FROM account WHERE idaccount=$idaccount;

    -- Example

    DELETE FROM vehicule WHERE idaccount=(  SELECT idaccount FROM account WHERE name = 'rr' AND firstname = 'rr');
    DELETE FROM ride WHERE idaccount=(  SELECT idaccount FROM account WHERE name = 'rr' AND firstname = 'rr');
    DELETE FROM require WHERE idaccount=(  SELECT idaccount FROM account WHERE name = 'rr' AND firstname = 'rr');
    DELETE FROM participate WHERE idaccount=(  SELECT idaccount FROM account WHERE name = 'rr' AND firstname = 'rr');
    DELETE FROM account WHERE idaccount=(  SELECT idaccount FROM account WHERE name = 'rr' AND firstname = 'rr');

-- Delete a request if this last is accepted

    DELETE FROM require WHERE idaccount=$Idaccount AND idride=$Idride;

    -- Example

    DELETE FROM require WHERE idaccount=1 AND idride=3;

-- Delete a specific sponsors

    DELETE FROM sponsors WHERE idsponsors=$Idsponsors;

    -- Example

    DELETE FROM sponsors WHERE idsponsors=$Idsponsors;

-- Delete a ride according to its id
    DELETE FROM ride WHERE idride=$Idride;

    -- Example
    DELETE FROM ride WHERE idride=4;

-- Delete a participations with the same idride

    DELETE FROM participate WHERE idride=$Idride;

    --Example

    DELETE FROM participate WHERE idride=4;
