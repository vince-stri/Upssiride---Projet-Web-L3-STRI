-- Modify 'idstate' attribut for change state ride in the entity 'ride'

    UPDATE ride SET idstate=$IdState WHERE idride=$IdRide;

    -- Example
    
    UPDATE ride SET idstate=3 WHERE idride=3;

-- Modify 'email', 'description' and 'phone' attribut in the 'account' entity whith a specific idaccount

    UPDATE account SET email=$Email, description = $Description, phone = $Phone WHERE idaccount=$Idaccount

    -- Example

    UPDATE account SET email='bonnet_hugo@upssiride.net', description = 'My first description', phone = '0123456789' WHERE idaccount=2;

-- Modify 'pictureprofil' attribut in the 'account' entity whith a specific idaccount

    UPDATE account SET pictureprofil=$Pictureprofil WHERE idaccount=$Idaccount;

    -- Example

    UPDATE account SET pictureprofil='/pictures/my_picture_profile' WHERE idaccount=1;

-- Modify 'password' attribut in the 'account' entity whith a specific idaccount

    UPDATE account SET password=$Password WHERE idaccount=$Idaccount;

    -- Example

    UPDATE account SET password='my_password' WHERE idaccount=1;

-- Modify name and description for a specific sponsor

    UPDATE sponsors SET name=$Name, description = $Description WHERE idsponsors=$Idsponsors;

    -- Example

    UPDATE sponsors SET name='stri', description = 'I follow this beautiful project' WHERE idsponsors=1;

-- Modifiy 'music' attribut for a specific account

    UPDATE account SET music=$music WHERE idaccount=$Idaccount;

    -- Example 

    UPDATE account SET music=0 WHERE idaccount=1;

-- Modifiy 'chatting' attribut for a specific account

    UPDATE account SET chatting=$chatting WHERE idaccount=$Idaccount;

    -- Example 

    UPDATE account SET chatting=0 WHERE idaccount=1;

-- Modifiy 'smoke' attribut for a specific account

    UPDATE account SET smoke=$smoke WHERE idaccount=$Idaccount;

    -- Example 

    UPDATE account SET smoke=0 WHERE idaccount=1;

-- Modifiy 'pets' attribut for a specific account

    UPDATE account SET pets=$pets WHERE idaccount=$Idaccount;

    -- Example 

    UPDATE account SET pets=0 WHERE idaccount=1;

-- Modify picture profile for a specific spondsors in the entity 'sponsors'

    UPDATE sponsors SET pictureprofile=$Pictureprofile WHERE idsponsors=$Idsponsors

    -- Example

    UPDATE sponsors SET pictureprofile='Pictures_sites/sponsors/stri.png' WHERE idsponsors=1