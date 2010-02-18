DELIMITER $$

DROP FUNCTION IF EXISTS `swganh`.`sf_DefaultHouseCreate` $$
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_DefaultHouseCreate`(type_id INT(11),parent_id BIGINT(20),privateowner_id BIGINT(20),inPlanet INT,oX FLOAT,oY FLOAT,oZ FLOAT, oW FLOAT,inX FLOAT,inY FLOAT,inZ FLOAT,custom_name CHAR(255),deed_id BIGINT(20)) RETURNS bigint(20)
BEGIN
        DECLARE tmpId BIGINT(20);
        DECLARE att_id,att_order INT;
        DECLARE att_value CHAR(255);
        DECLARE t_value CHAR(255);
        DECLARE loopEnd INT DEFAULT 0;
        DECLARE cellCount INT DEFAULT 0;
        DECLARE cellloop INT DEFAULT 0;
        DECLARE cond INTEGER;
        DECLARE cur_1 CURSOR FOR SELECT attribute_id,attribute_value,attribute_order FROM structure_attribute_defaults WHERE structure_attribute_defaults.structure_type=type_id;
        DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET loopEnd = 1;


        Select st.cellcount FROM structure_type_data st WHERE st.type = type_id INTO cellCount;

--
-- the condition value represents damage to the structure
--

        INSERT INTO structures VALUES (NULL,type_id,oX, oY, oZ, oW, inX, inY, inZ, custom_name, privateowner_id,0,0,inPlanet,0);

        SET tmpId = LAST_INSERT_ID();

        INSERT INTO houses VALUES (tmpId,0);

        REPEAT
           INSERT INTO cells VALUES(NULL,tmpId);
           select cellloop+1 INTO cellloop;
        UNTIL (cellloop = cellcount) END REPEAT;


--
-- 2774 is the output hopper 2773 the input hopper
--


        INSERT INTO structure_admin_data VALUES (NULL,tmpId,privateowner_id,'ADMIN');
        OPEN cur_1;
        REPEAT
                FETCH cur_1 INTO att_id,att_value,att_order;
                IF NOT loopEnd THEN
                        INSERT INTO structure_attributes VALUES(tmpId,att_id,att_value,att_order,0);
                        SELECT ia.value FROM item_attributes ia WHERE ia.item_id = deed_id AND ia.attribute_id = att_id INTO t_value;

                        IF t_value IS NOT NULL THEN
                            UPDATE structure_attributes sa SET sa.value = t_value WHERE sa.structure_id = tmpId AND sa.attribute_id = att_id;
                        END IF;
                END IF;
        UNTIL loopEnd END REPEAT;

        CLOSE cur_1;
        RETURN(tmpId);
END $$

DELIMITER ;