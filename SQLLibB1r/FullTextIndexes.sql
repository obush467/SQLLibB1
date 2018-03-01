CREATE FULLTEXT INDEX ON [dbo].[raion1]
    ([ShortName] LANGUAGE 1049, [tip] LANGUAGE 1049)
    KEY INDEX [PK_raion]
    ON [test_catalog];


GO
CREATE FULLTEXT INDEX ON [dbo].[gu]
    ([inf_pole_blok_1_storona_a] LANGUAGE 1049, [inf_pole_blok_1_storona_b] LANGUAGE 1049, [inf_pole_blok_2_storona_a] LANGUAGE 1049, [inf_pole_blok_2_storona_b] LANGUAGE 1049, [inf_pole_blok_3_storona_a] LANGUAGE 1049, [inf_pole_blok_3_storona_b] LANGUAGE 1049, [inf_pole_blok_4_storona_a] LANGUAGE 1049, [inf_pole_blok_4_storona_b] LANGUAGE 1049)
    KEY INDEX [PK_gu]
    ON [1];


GO
CREATE FULLTEXT INDEX ON [data_mos_ru].[AO]
    ([ADRES] LANGUAGE 1049)
    KEY INDEX [PK_data_mos_ru.AO]
    ON [test_catalog];


GO
CREATE FULLTEXT INDEX ON [dbo].[adress]
    ([okrug] LANGUAGE 1049, [ulitsa] LANGUAGE 1049, [nazvanie_ulitsi] LANGUAGE 1049, [polniy_adres] LANGUAGE 1049, [ulitsa_only] LANGUAGE 1049, [propis] LANGUAGE 1049, [ulitsa_sokr] LANGUAGE 1049, [bti_for_find] LANGUAGE 1049)
    KEY INDEX [PK_adress]
    ON [1];

