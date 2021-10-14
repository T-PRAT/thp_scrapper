require_relative '../lib/get_email'

describe "return the email list of the townhall of the department" do
	it "return the email of Avernes'townhall" do
		expect(get_townhall_email("https://www.annuaire-des-mairies.com/95/avernes.html")).to eq("mairie.avernes@orange.fr")
	end
	it "return the email of Mafflier'townhall" do
		expect(get_townhall_email("http://www.annuaire-des-mairies.com/95/maffliers.html")).to eq("mairie-maffliers@wanadoo.fr")
	end
end

urls = ["http://www.annuaire-des-mairies.com/95/ableiges.html", "http://www.annuaire-des-mairies.com/95/aincourt.html", "http://www.annuaire-des-mairies.com/95/ambleville.html", "http://www.annuaire-des-mairies.com/95/amenucourt.html", "http://www.annuaire-des-mairies.com/95/andilly.html", "http://www.annuaire-des-mairies.com/95/argenteuil.html", "http://www.annuaire-des-mairies.com/95/arnouville-les-gonesse.html", "http://www.annuaire-des-mairies.com/95/arronville.html", "http://www.annuaire-des-mairies.com/95/arthies.html", "http://www.annuaire-des-mairies.com/95/asnieres-sur-oise.html", "http://www.annuaire-des-mairies.com/95/attainville.html", "http://www.annuaire-des-mairies.com/95/auvers-sur-oise.html", "http://www.annuaire-des-mairies.com/95/avernes.html", "http://www.annuaire-des-mairies.com/95/baillet-en-france.html", "http://www.annuaire-des-mairies.com/95/banthelu.html", "http://www.annuaire-des-mairies.com/95/beauchamp.html", "http://www.annuaire-des-mairies.com/95/beaumont-sur-oise.html", "http://www.annuaire-des-mairies.com/95/bellefontaine.html", "http://www.annuaire-des-mairies.com/95/belloy-en-france.html", "http://www.annuaire-des-mairies.com/95/bernes-sur-oise.html", "http://www.annuaire-des-mairies.com/95/berville.html", "http://www.annuaire-des-mairies.com/95/bessancourt.html", "http://www.annuaire-des-mairies.com/95/bethemont-la-foret.html", "http://www.annuaire-des-mairies.com/95/bezons.html", "http://www.annuaire-des-mairies.com/95/boisemont.html", "http://www.annuaire-des-mairies.com/95/boissy-l-aillerie.html", "http://www.annuaire-des-mairies.com/95/bonneuil-en-france.html", "http://www.annuaire-des-mairies.com/95/bouffemont.html", "http://www.annuaire-des-mairies.com/95/bouqueval.html", "http://www.annuaire-des-mairies.com/95/bray-et-lu.html", "http://www.annuaire-des-mairies.com/95/breancon.html", "http://www.annuaire-des-mairies.com/95/brignancourt.html", "http://www.annuaire-des-mairies.com/95/bruyeres-sur-oise.html", "http://www.annuaire-des-mairies.com/95/buhy.html", "http://www.annuaire-des-mairies.com/95/butry-sur-oise.html", "http://www.annuaire-des-mairies.com/95/cergy.html", "http://www.annuaire-des-mairies.com/95/champagne-sur-oise.html", "http://www.annuaire-des-mairies.com/95/charmont.html", "http://www.annuaire-des-mairies.com/95/chars.html", "http://www.annuaire-des-mairies.com/95/chatenay-en-france.html", "http://www.annuaire-des-mairies.com/95/chaumontel.html", "http://www.annuaire-des-mairies.com/95/chaussy.html", "http://www.annuaire-des-mairies.com/95/chauvry.html", "http://www.annuaire-des-mairies.com/95/chennevieres-les-louvres.html", "http://www.annuaire-des-mairies.com/95/cherence.html", "http://www.annuaire-des-mairies.com/95/clery-en-vexin.html", "http://www.annuaire-des-mairies.com/95/commeny.html", "http://www.annuaire-des-mairies.com/95/condecourt.html", "http://www.annuaire-des-mairies.com/95/cormeilles-en-parisis.html", "http://www.annuaire-des-mairies.com/95/cormeilles-en-vexin.html", "http://www.annuaire-des-mairies.com/95/courcelles-sur-viosne.html", "http://www.annuaire-des-mairies.com/95/courdimanche.html", "http://www.annuaire-des-mairies.com/95/deuil-la-barre.html", "http://www.annuaire-des-mairies.com/95/domont.html", "http://www.annuaire-des-mairies.com/95/eaubonne.html", "http://www.annuaire-des-mairies.com/95/ecouen.html", "http://www.annuaire-des-mairies.com/95/enghien-les-bains.html", "http://www.annuaire-des-mairies.com/95/ennery.html", "http://www.annuaire-des-mairies.com/95/epiais-les-louvres.html", "http://www.annuaire-des-mairies.com/95/epiais-rhus.html", "http://www.annuaire-des-mairies.com/95/epinay-champlatreux.html", "http://www.annuaire-des-mairies.com/95/eragny-sur-oise.html", "http://www.annuaire-des-mairies.com/95/ermont.html", "http://www.annuaire-des-mairies.com/95/ezanville.html", "http://www.annuaire-des-mairies.com/95/fontenay-en-parisis.html", "http://www.annuaire-des-mairies.com/95/fosses.html", "http://www.annuaire-des-mairies.com/95/franconville.html", "http://www.annuaire-des-mairies.com/95/fremainville.html", "http://www.annuaire-des-mairies.com/95/fremecourt.html", "http://www.annuaire-des-mairies.com/95/frepillon.html", "http://www.annuaire-des-mairies.com/95/frouville.html", "http://www.annuaire-des-mairies.com/95/gadancourt.html", "http://www.annuaire-des-mairies.com/95/garges-les-gonesse.html", "http://www.annuaire-des-mairies.com/95/genainville.html", "http://www.annuaire-des-mairies.com/95/genicourt.html", "http://www.annuaire-des-mairies.com/95/gonesse.html", "http://www.annuaire-des-mairies.com/95/goussainville.html", "http://www.annuaire-des-mairies.com/95/gouzangrez.html", "http://www.annuaire-des-mairies.com/95/grisy-les-platres.html", "http://www.annuaire-des-mairies.com/95/groslay.html", "http://www.annuaire-des-mairies.com/95/guiry-en-vexin.html", "http://www.annuaire-des-mairies.com/95/haravilliers.html", "http://www.annuaire-des-mairies.com/95/haute-isle.html", "http://www.annuaire-des-mairies.com/95/hedouville.html", "http://www.annuaire-des-mairies.com/95/herblay.html", "http://www.annuaire-des-mairies.com/95/herouville.html", "http://www.annuaire-des-mairies.com/95/hodent.html", "http://www.annuaire-des-mairies.com/95/jagny-sous-bois.html", "http://www.annuaire-des-mairies.com/95/jouy-le-moutier.html", "http://www.annuaire-des-mairies.com/95/labbeville.html", "http://www.annuaire-des-mairies.com/95/la-chapelle-en-vexin.html", "http://www.annuaire-des-mairies.com/95/la-frette-sur-seine.html", "http://www.annuaire-des-mairies.com/95/la-roche-guyon.html", "http://www.annuaire-des-mairies.com/95/lassy.html", "http://www.annuaire-des-mairies.com/95/le-bellay-en-vexin.html", "http://www.annuaire-des-mairies.com/95/le-heaulme.html", "http://www.annuaire-des-mairies.com/95/le-mesnil-aubry.html", "http://www.annuaire-des-mairies.com/95/le-perchay.html", "http://www.annuaire-des-mairies.com/95/le-plessis-bouchard.html", "http://www.annuaire-des-mairies.com/95/le-plessis-gassot.html", "http://www.annuaire-des-mairies.com/95/le-plessis-luzarches.html",
"http://www.annuaire-des-mairies.com/95/le-thillay.html", "http://www.annuaire-des-mairies.com/95/l-isle-adam.html", "http://www.annuaire-des-mairies.com/95/livilliers.html", "http://www.annuaire-des-mairies.com/95/longuesse.html", "http://www.annuaire-des-mairies.com/95/louvres.html", "http://www.annuaire-des-mairies.com/95/luzarches.html", "http://www.annuaire-des-mairies.com/95/maffliers.html", "http://www.annuaire-des-mairies.com/95/magny-en-vexin.html", "http://www.annuaire-des-mairies.com/95/mareil-en-france.html", "http://www.annuaire-des-mairies.com/95/margency.html", "http://www.annuaire-des-mairies.com/95/marines.html", "http://www.annuaire-des-mairies.com/95/marly-la-ville.html", "http://www.annuaire-des-mairies.com/95/maudetour-en-vexin.html", "http://www.annuaire-des-mairies.com/95/menouville.html", "http://www.annuaire-des-mairies.com/95/menucourt.html", "http://www.annuaire-des-mairies.com/95/meriel.html", "http://www.annuaire-des-mairies.com/95/mery-sur-oise.html", "http://www.annuaire-des-mairies.com/95/moisselles.html", "http://www.annuaire-des-mairies.com/95/montgeroult.html", "http://www.annuaire-des-mairies.com/95/montigny-les-cormeilles.html", "http://www.annuaire-des-mairies.com/95/montlignon.html", "http://www.annuaire-des-mairies.com/95/montmagny.html", "http://www.annuaire-des-mairies.com/95/montmorency.html", "http://www.annuaire-des-mairies.com/95/montreuil-sur-epte.html", "http://www.annuaire-des-mairies.com/95/montsoult.html", "http://www.annuaire-des-mairies.com/95/mours.html", "http://www.annuaire-des-mairies.com/95/moussy.html", "http://www.annuaire-des-mairies.com/95/nerville-la-foret.html", "http://www.annuaire-des-mairies.com/95/nesles-la-vallee.html", "http://www.annuaire-des-mairies.com/95/neuilly-en-vexin.html", "http://www.annuaire-des-mairies.com/95/neuville-sur-oise.html", "http://www.annuaire-des-mairies.com/95/nointel.html", "http://www.annuaire-des-mairies.com/95/noisy-sur-oise.html", "http://www.annuaire-des-mairies.com/95/nucourt.html", "http://www.annuaire-des-mairies.com/95/omerville.html", "http://www.annuaire-des-mairies.com/95/osny.html", "http://www.annuaire-des-mairies.com/95/parmain.html", "http://www.annuaire-des-mairies.com/95/persan.html", "http://www.annuaire-des-mairies.com/95/pierrelaye.html", "http://www.annuaire-des-mairies.com/95/piscop.html", "http://www.annuaire-des-mairies.com/95/pontoise.html", "http://www.annuaire-des-mairies.com/95/presles.html", "http://www.annuaire-des-mairies.com/95/puiseux-en-france.html", "http://www.annuaire-des-mairies.com/95/puiseux-pontoise.html", "http://www.annuaire-des-mairies.com/95/roissy-en-france.html", "http://www.annuaire-des-mairies.com/95/ronquerolles.html", "http://www.annuaire-des-mairies.com/95/sagy.html", "http://www.annuaire-des-mairies.com/95/saint-brice-sous-foret.html", "http://www.annuaire-des-mairies.com/95/saint-clair-sur-epte.html", "http://www.annuaire-des-mairies.com/95/saint-cyr-en-arthies.html", "http://www.annuaire-des-mairies.com/95/saint-gervais.html", "http://www.annuaire-des-mairies.com/95/saint-gratien.html", "http://www.annuaire-des-mairies.com/95/saint-leu-la-foret.html", "http://www.annuaire-des-mairies.com/95/saint-martin-du-tertre.html", "http://www.annuaire-des-mairies.com/95/saint-ouen-l-aumone.html", "http://www.annuaire-des-mairies.com/95/saint-prix.html", "http://www.annuaire-des-mairies.com/95/saint-witz.html", "http://www.annuaire-des-mairies.com/95/sannois.html", "http://www.annuaire-des-mairies.com/95/santeuil.html", "http://www.annuaire-des-mairies.com/95/sarcelles.html", "http://www.annuaire-des-mairies.com/95/seraincourt.html", "http://www.annuaire-des-mairies.com/95/seugy.html", "http://www.annuaire-des-mairies.com/95/soisy-sous-montmorency.html", "http://www.annuaire-des-mairies.com/95/survilliers.html", "http://www.annuaire-des-mairies.com/95/taverny.html", "http://www.annuaire-des-mairies.com/95/themericourt.html", "http://www.annuaire-des-mairies.com/95/theuville.html", "http://www.annuaire-des-mairies.com/95/us.html", "http://www.annuaire-des-mairies.com/95/vallangoujard.html", "http://www.annuaire-des-mairies.com/95/valmondois.html", "http://www.annuaire-des-mairies.com/95/vaudherland.html", "http://www.annuaire-des-mairies.com/95/vaureal.html", "http://www.annuaire-des-mairies.com/95/vemars.html", "http://www.annuaire-des-mairies.com/95/vetheuil.html", "http://www.annuaire-des-mairies.com/95/viarmes.html", "http://www.annuaire-des-mairies.com/95/vienne-en-arthies.html", "http://www.annuaire-des-mairies.com/95/vigny.html", "http://www.annuaire-des-mairies.com/95/villaines-sous-bois.html", "http://www.annuaire-des-mairies.com/95/villeron.html", "http://www.annuaire-des-mairies.com/95/villers-en-arthies.html", "http://www.annuaire-des-mairies.com/95/villiers-adam.html", "http://www.annuaire-des-mairies.com/95/villiers-le-bel.html", "http://www.annuaire-des-mairies.com/95/villiers-le-sec.html", "http://www.annuaire-des-mairies.com/95/wy-dit-joli-village.html"]

describe "return the list off all twonhalls pages" do
	it "return the list of townhall pages" do
		expect(get_townhall_urls()).to eq(urls)
	end
end

emails = [{"Ableiges"=>"mairie.ableiges95@wanadoo.fr"}, {"Aincourt"=>"mairie.aincourt@wanadoo.fr"}, {"Ambleville"=>"mairie.ambleville@wanadoo.fr"}, {"Amenucourt"=>"mairie.amenucourt@wanadoo.fr"}, {"Andilly"=>"mairie.andilly@wanadoo.fr"}, {"Argenteuil"=>"christian.bournery@ville-argenteuil.fr"}, {"Arnouville-les-gonesse"=>"webmaster@villedarnouville.com"}, {"Arronville"=>"arronville@wanadoo.fr"}, {"Arthies"=>"mairie-arthies-95@wanadoo.fr"}, {"Asnieres-sur-oise"=>"herve.pellin@ville-asnieres-sur-oise.fr"}, {"Attainville"=>"mairie@attainville.fr"}, {"Auvers-sur-oise"=>"communication@auvers-sur-oise.com"}, {"Avernes"=>"mairie.avernes@orange.fr"}, {"Baillet-en-france"=>"info@baillet-en-france.fr"}, {"Banthelu"=>"mairie.banthelu@wanadoo.fr"}, {"Beauchamp"=>"accueil-mairie@ville-beauchamp.fr"}, {"Beaumont-sur-oise"=>"beaumont.sg@wanadoo.fr"}, {"Bellefontaine"=>"mairiebellefontaine2@wanadoo.fr"}, {"Belloy-en-france"=>"secretariat@mairie-belloy-en-france.fr"}, {"Bernes-sur-oise"=>"mairiebernes@wanadoo.fr"}, {"Berville"=>"mairie.de.berville@wanadoo.fr"}, {"Bessancourt"=>"melody.quesnel@ville-bessancourt.fr"}, {"Bethemont-la-foret"=>"mairie.bethemont-laforet@wanadoo.fr"}, {"Bezons"=>"courrier@mairie-bezons.fr"}, {"Boisemont"=>"commune.boisemont@wanadoo.fr"}, {"Boissy-l-aillerie"=>"mairie.boissy-laillerie@wanadoo.fr"}, {"Bonneuil-en-france"=>"bonneuil-en-france95@orange.fr"}, {"Bouffemont"=>"info@ville-bouffemont.fr"}, {"Bouqueval"=>"mairiebouqueval@wanadoo.fr"}, {"Bray-et-lu"=>"mairie.brayetlu@wanadoo.fr"}, {"Breancon"=>"mairie.breancon@wanadoo.fr"}, {"Brignancourt"=>"brignancourt@wanadoo.fr"}, {"Bruyeres-sur-oise"=>"mairie.bruyeres.sur.oise@wanadoo.fr"}, {"Buhy"=>"mairie.buhy@wanadoo.fr"}, {"Butry-sur-oise"=>"mairiedebutrysuroise@wanadoo.fr"}, {"Cergy"=>"contact@ville-cergy.fr"}, {"Champagne-sur-oise"=>"cjacqueline@villedechampagne.fr "}, {"Charmont"=>"mairie.charmont@wanadoo.fr"}, {"Chars"=>"mairie.chars@wanadoo.fr"}, {"Chatenay-en-france"=>""}, {"Chaumontel"=>"mairie.chaumontel@wanadoo.fr"}, {"Chaussy"=>"mairie.chaussy@wanadoo.fr"}, {"Chauvry"=>"mairie.de.chauvry@wanadoo.fr"}, {"Chennevieres-les-louvres"=>"mairie.chennevieres@wanadoo.fr"}, {"Cherence"=>"mairie.cherence@wanadoo.fr"}, {"Clery-en-vexin"=>"commune-de-clery@wanadoo.fr"}, {"Commeny"=>"mairiecommeny@wanadoo.fr"}, {"Condecourt"=>"mairie.condecourt@wanadoo.fr"}, {"Cormeilles-en-parisis"=>"contact@ville-cormeilles95.fr"}, {"Cormeilles-en-vexin"=>"mairie-cormeillesenvexin@wanadoo.fr"}, {"Courcelles-sur-viosne"=>"mairie-courcellessurviosne95@wanadoo.fr"}, {"Courdimanche"=>"communication@ville-courdimanche.fr"}, {"Deuil-la-barre"=>"accueil@mairie-deuillabarre.fr"}, {"Domont"=>"mairiedomont@magic.fr"}, {"Eaubonne"=>"information@eaubonne.fr"}, {"Ecouen"=>"contact@ecouen.fr"}, {"Enghien-les-bains"=>"direction.generale@enghien95.fr"}, {"Ennery"=>"mairie@ennery.fr"}, {"Epiais-les-louvres"=>"mairieepiais-leslouvres@wanadoo.fr"}, {"Epiais-rhus"=>"mairie.epiais-rhus@wanadoo.fr"}, {"Epinay-champlatreux"=>"mairie.ep.champlatreux@wanadoo.fr"}, {"Eragny-sur-oise"=>"bureauetconseil@eragny.fr"}, {"Ermont"=>"mairie@ville-ermont.fr"}, {"Ezanville"=>"secret.mairie@ezanville.fr"}, {"Fontenay-en-parisis"=>"mairiefontenay@roissy-online.com"}, {"Fosses"=>"contact@ville-fosses95.fr"}, {"Franconville"=>"Communication@ville-franconville.fr"}, {"Fremainville"=>"fremainville-mairie@wanadoo.fr"}, {"Fremecourt"=>"mairiefremecourt@orange.fr"}, {"Frepillon"=>"mairie@frepillon.fr"}, {"Frouville"=>"mairie-frouville95@wanadoo.fr"}, {"Gadancourt"=>"mairie-gadancourt@orange.fr"}, {"Garges-les-gonesse"=>"communication@villedegarges.com"}, {"Genainville"=>"mairie-genainville@wanadoo.fr"}, {"Genicourt"=>"mairie.genicourt@wanadoo.fr"}, {"Gonesse"=>"contact@villaeroport.org"}, {"Goussainville"=>"maire@ville-goussainville.fr"}, {"Gouzangrez"=>"mairiedegouzangrez@orange.fr"}, {"Grisy-les-platres"=>""}, {"Groslay"=>"assistante_du_maire@mairie-groslay.fr "}, {"Guiry-en-vexin"=>"mairie.guiry-en-vexin@wanadoo.fr"}, {"Haravilliers"=>"commune.haravilliers@orange.fr"}, {"Haute-isle"=>"mairie-hauteisle@wanadoo.fr"}, {"Hedouville"=>"mairie-hedouville@wanadoo.fr"}, {"Herblay"=>"mairie@herblay.fr"}, {"Herouville"=>"mairie@herouville-en-vexin.net"}, {"Hodent"=>"mairie.hodent@orange.fr"}, {"Jagny-sous-bois"=>"mairie.jagny-sous-bois@wanadoo.fr"}, {"Jouy-le-moutier"=>"secretariatgeneral@jouylemoutier.fr"}, {"Labbeville"=>"mairie@labbeville.fr"}, {"La-chapelle-en-vexin"=>"la-chapelle-en-vexin@wanadoo.fr"}, {"La-frette-sur-seine"=>"mairie@ville-la-frette95.fr"}, {"La-roche-guyon"=>"mairie.larocheguyon@wanadoo.fr"}, {"Lassy"=>""}, {"Le-bellay-en-vexin"=>"mairie.bellay@wanadoo.fr"}, {"Le-heaulme"=>"mairie.le.heaulme@cegetel.net"}, {"Le-mesnil-aubry"=>"mairie.mesnil-aubry@wanadoo.fr"}, {"Le-perchay"=>"mairie.leperchay@wanadoo.fr"}, {"Le-plessis-bouchard"=>"mairie@ville-le-plessis-bouchard.fr"}, {"Le-plessis-gassot"=>"le.plessis.gassot@wanadoo.fr"}, {"Le-plessis-luzarches"=>"mairieplessisluzarches@orange.fr"}, {"Le-thillay"=>"p.bezillot@mairie-le-thillay.fr"}, {"L-isle-adam"=>"m.martin@ville-isle-adam.fr"}, {"Livilliers"=>"mairie-de-livilliers@wanadoo.fr"}, {"Longuesse"=>"mairie.longuesse@orange.fr"}, {"Louvres"=>"communication@ville-louvres.fr"}, {"Luzarches"=>"v.coquillard@luzarches.net"}, {"Maffliers"=>"mairie-maffliers@wanadoo.fr"}, {"Magny-en-vexin"=>"mairie@magny-en-vexin.fr"}, {"Mareil-en-france"=>"mairie.mareil.france@wanadoo.fr"}, {"Margency"=>"info@mairie-margency.fr"}, {"Marines"=>"mairie.marines@wanadoo.fr"}, {"Marly-la-ville"=>""}, {"Maudetour-en-vexin"=>"mairie.maudetour@wanadoo.fr"}, {"Menouville"=>""}, {"Menucourt"=>"communication@menucourt.fr"}, {"Meriel"=>"accueil.mairie@ville-de-meriel.fr"}, {"Mery-sur-oise"=>"services.administratifs@merysuroise.fr"}, {"Moisselles"=>"mairie.moisselles@orange.fr"}, {"Montgeroult"=>"mairie-de-montgeroult@wanadoo.fr"}, {"Montigny-les-cormeilles"=>"communication@ville-montigny95.fr"}, {"Montlignon"=>"mairie.montlignon@wanadoo.fr"}, {"Montmagny"=>"communication@ville-montmagny.fr"}, {"Montmorency"=>"directiongenerale@ville-montmorency.fr"}, {"Montreuil-sur-epte"=>"mairiemontreuilept@orange.fr"}, {"Montsoult"=>"mairie-montsoult@wanadoo.fr"}, {"Mours"=>"secretaire.mairie.mours@wanadoo.fr"}, {"Moussy"=>"mairie.de.st.denis.catus@wanadoo.fr"}, {"Nerville-la-foret"=>"mairie-nerville95@wanadoo.fr"}, {"Nesles-la-vallee"=>"pontenay@wanadoo.fr"}, {"Neuilly-en-vexin"=>""}, {"Neuville-sur-oise"=>"affgenerales@neuville-sur-oise.fr"}, {"Nointel"=>"nointel-mairie@wanadoo.fr"}, {"Noisy-sur-oise"=>"mairie.de.noisy.sur.oise@wanadoo.fr"}, {"Nucourt"=>"mairie.nucourt@wanadoo.fr"}, {"Omerville"=>"Mairie.omerville@orange.fr"}, {"Osny"=>"communication@ville-osny.fr"}, {"Parmain"=>"communication@ville-parmain.fr"}, {"Persan"=>"mairie@ville-persan.fr"}, {"Pierrelaye"=>"mairie@ville-pierrelaye.fr"}, {"Piscop"=>"mairie.piscop@wanadoo.fr"}, {"Pontoise"=>"mairie@ville-pontoise.fr"}, {"Presles"=>"mairie@ville-presles.fr"}, {"Puiseux-en-france"=>"vsimil@roissy-online.com"}, {"Puiseux-pontoise"=>"mairie.puiseux-pontoise.95@wanadoo.fr"}, {"Roissy-en-france"=>"accueil@ville-roissy95.fr"}, {"Ronquerolles"=>"mairie.ronquerolles95@wanadoo.fr"}, {"Sagy"=>"mairie.sagy@wanadoo.fr"}, {"Saint-brice-sous-foret"=>"info@saintbrice95.fr"}, {"Saint-clair-sur-epte"=>"mairie-stclairsurepte@orange.fr"}, {"Saint-cyr-en-arthies"=>"mairie.stcyrenarthies@wanadoo.fr"}, {"Saint-gervais"=>"mairie.saintgervais@wanadoo.fr"}, {"Saint-gratien"=>"info@mairie-saintgratien.fr"}, {"Saint-leu-la-foret"=>"mairie@saint-leu-la-foret.fr"}, {"Saint-martin-du-tertre"=>"mairiesaintmartindutertre@wanadoo.fr"}, {"Saint-ouen-l-aumone"=>"courrier@ville-saintouenlaumone.fr"}, {"Saint-prix"=>"communication@saintprix.fr"}, {"Saint-witz"=>"mairie@saint-witz.fr"}, {"Sannois"=>"secretariat.general@sannois.org"}, {"Santeuil"=>"mairie@santeuil95.fr"}, {"Sarcelles"=>"comsarcelles@yahoo.fr"}, {"Seraincourt"=>"mairie.seraincourt95@wanadoo.fr"}, {"Seugy"=>"mairie.seugy@wanadoo.fr"}, {"Soisy-sous-montmorency"=>"mairie@soisy-sous-montmorency.fr"}, {"Survilliers"=>"vincent@roissy-online.com"}, {"Taverny"=>"mairie@ville-taverny.fr"}, {"Themericourt"=>"mairie.themericourt@wanadoo.fr"}, {"Theuville"=>"mairie.theuville.mts@wanadoo.fr"}, {"Us"=>"mairie.us.95@wanadoo.fr"}, {"Vallangoujard"=>"secretariat@vallangoujard.fr"}, {"Valmondois"=>"mairievalmondois@gmail.com"}, {"Vaudherland"=>""}, {"Vaureal"=>"communication@mairie-vaureal.fr"}, {"Vemars"=>"sandrine_ravenel@yahoo.fr"}, {"Vetheuil"=>"mairiedevetheuil@orange.fr"}, {"Viarmes"=>"ville-viarmes@wanadoo.fr"}, {"Vienne-en-arthies"=>"mairie.viennearthies@wanadoo.fr"}, {"Vigny"=>"mairie.vigny@wanadoo.fr"}, {"Villaines-sous-bois"=>"mairie@villaines-sous-bois.fr"}, {"Villeron"=>"accueilvilleron@roissy-online.com"}, {"Villers-en-arthies"=>"mairie.villers@free.fr"}, {"Villiers-adam"=>"mairie.villiersadam@wanadoo.fr"}, {"Villiers-le-bel"=>"secretariatgeneral@ville-villiers-le-bel.fr"}, {"Villiers-le-sec"=>"mairie.villiers-le-sec@wanadoo.fr"}, {"Wy-dit-joli-village"=>"mairie.wy-dit-joli-village@wanadoo.fr"}]
describe "return the list off all twonhalls emails" do
	it "return the list of townhall emails" do
		expect(get_townhall_emails(get_townhall_urls())).to eq(emails)
	end
end
