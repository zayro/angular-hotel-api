/*
Navicat PGSQL Data Transfer

Source Server         : heroku-angular-hotel
Source Server Version : 100300
Source Host           : ec2-54-243-235-153.compute-1.amazonaws.com:5432
Source Database       : d7ireino6c2qug
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 100300
File Encoding         : 65001

Date: 2018-05-26 18:27:31
*/


-- ----------------------------
-- Table structure for hoteles
-- ----------------------------
DROP TABLE IF EXISTS "public"."hoteles";
CREATE TABLE "public"."hoteles" (
"id" int4 NOT NULL,
"name" varchar(100) COLLATE "default",
"stars" int2,
"price" numeric(10,2),
"image" varchar(100) COLLATE "default",
"amenities" jsonb
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of hoteles
-- ----------------------------
INSERT INTO "public"."hoteles" VALUES ('15102', 'Jose Antonio Lima', '4', '191487.00', '164283a_hb_a_001.jpg', '["garden", "business-center", "bathrobes", "safety-box", "beach-pool-facilities"]');
INSERT INTO "public"."hoteles" VALUES ('19325', 'Foresta Hotel Lima', '4', '194199.00', '200684_222_b.jpg', '["bathtub", "kitchen-facilities", "nightclub", "deep-soaking-bathtub", "garden"]');
INSERT INTO "public"."hoteles" VALUES ('26396', 'Country Club Lima Hotel', '5', '310907.00', '115596_172_b.jpg', '["restaurant", "garden", "safety-box", "newspaper", "beach-pool-facilities"]');
INSERT INTO "public"."hoteles" VALUES ('27227', 'Sonesta Hotel El Olivar Lima', '4', '23399.00', '525844_90_b.jpg', '["restaurant", "coffe-maker", "business-center", "nightclub", "safety-box"]');
INSERT INTO "public"."hoteles" VALUES ('35715', 'Melia Lima', '4', '20993.00', '484066_158_b.jpg', '["safety-box", "garden", "nightclub", "beach-pool-facilities", "deep-soaking-bathtub"]');
INSERT INTO "public"."hoteles" VALUES ('72019', 'Belmond Miraflores Park', '5', '935552.00', '530284_167_b.jpg', '["coffe-maker", "separate-bredroom", "garden", "children-club", "deep-soaking-bathtub"]');
INSERT INTO "public"."hoteles" VALUES ('76136', 'Hotel Estelar Miraflores', '4', '192717.00', 'b3e281b1_b.jpg', '["nightclub", "safety-box", "business-center", "bathtub", "coffe-maker"]');
INSERT INTO "public"."hoteles" VALUES ('76414', 'Swissôtel Lima', '5', '339794.00', 'd44c63f1_b.jpg', '["kitchen-facilities", "coffe-maker", "deep-soaking-bathtub", "bathrobes", "newspaper"]');
INSERT INTO "public"."hoteles" VALUES ('84153', 'Basadre Suites Boutique Hotel', '3', '99716.00', '1110876_60_b.jpg', '["bathrobes", "deep-soaking-bathtub", "safety-box", "separate-bredroom", "fitness-center"]');
INSERT INTO "public"."hoteles" VALUES ('88527', 'Hotel Libertador Lima', '4', '170874.00', '519318_82_b.jpg', '["bathrobes", "beach-pool-facilities", "business-center", "newspaper", "nightclub"]');
INSERT INTO "public"."hoteles" VALUES ('90757', 'Casa Andina Premium Miraflores', '4', '18872.00', '2039609_120_b.jpg', '["children-club", "newspaper", "restaurant", "separate-bredroom", "nightclub"]');
INSERT INTO "public"."hoteles" VALUES ('91274', 'La Hacienda Hotel Miraflores', '3', '20712.00', '430037_31_b.jpg', '["newspaper", "beach-pool-facilities", "beach", "garden", "fitness-center"]');
INSERT INTO "public"."hoteles" VALUES ('91522', 'Embajadores Hotel', '3', '10319.00', '386779_53_b.jpg', '["garden", "nightclub", "bathrobes", "coffe-maker", "business-center"]');
INSERT INTO "public"."hoteles" VALUES ('93911', 'El Condado Miraflores Hotel & Suites', '3', '137456.00', '9291429_9_b.jpg', '["coffe-maker", "restaurant", "bathtub", "beach-pool-facilities", "separate-bredroom"]');
INSERT INTO "public"."hoteles" VALUES ('104074', 'Antigua Miraflores Hotel', '3', '186216.00', '480835_73_b.jpg', '["restaurant", "separate-bredroom", "business-center", "bathrobes", "beach"]');
INSERT INTO "public"."hoteles" VALUES ('106682', 'Del Pilar Miraflores Hotel', '3', '171342.00', '412713_46_b.jpg', '["newspaper", "coffe-maker", "bathtub", "kitchen-facilities", "deep-soaking-bathtub"]');
INSERT INTO "public"."hoteles" VALUES ('108545', 'Delfines Hotel & Convention Center', '4', '384181.00', '4d72efed_b.jpg', '["separate-bredroom", "business-center", "safety-box", "children-club", "bathrobes"]');
INSERT INTO "public"."hoteles" VALUES ('109664', 'Plaza del Bosque Hotel', '4', '188937.00', '48784_97_b.jpg', '["deep-soaking-bathtub", "fitness-center", "kitchen-facilities", "newspaper", "children-club"]');
INSERT INTO "public"."hoteles" VALUES ('110347', 'Roosevelt Hotel & Suites', '3', '171001.00', '81959_63_b.jpg', '["separate-bredroom", "nightclub", "coffe-maker", "beach-pool-facilities", "garden"]');
INSERT INTO "public"."hoteles" VALUES ('110914', 'Royal Park Hotel', '4', '314114.00', '583479_86_b.jpg', '["safety-box", "deep-soaking-bathtub", "coffe-maker", "bathrobes", "garden"]');
INSERT INTO "public"."hoteles" VALUES ('111046', 'Suites Antique Apart Hotel', '3', '159488.00', '11820110_10_b.jpg', '["restaurant", "coffe-maker", "kitchen-facilities", "newspaper", "deep-soaking-bathtub"]');
INSERT INTO "public"."hoteles" VALUES ('132928', 'Hotel San Agustin Riviera', '3', '79889.00', '1354077_84_b.jpg', '["garden", "nightclub", "bathrobes", "bathtub", "separate-bredroom"]');
INSERT INTO "public"."hoteles" VALUES ('132929', 'Los Tallanes Hotel & Suites', '3', '201468.00', '12287657_13_b.jpg', '["nightclub", "beach", "safety-box", "deep-soaking-bathtub", "business-center"]');
INSERT INTO "public"."hoteles" VALUES ('132930', 'Leon de Oro Inn & Suites', '3', '1128.00', '6975518_43_b.jpg', '["nightclub", "business-center", "safety-box", "deep-soaking-bathtub", "garden"]');
INSERT INTO "public"."hoteles" VALUES ('132931', 'Suites del Bosque Hotel', '3', '164773.00', '1574025_73_b.jpg', '["beach-pool-facilities", "newspaper", "separate-bredroom", "safety-box", "garden"]');
INSERT INTO "public"."hoteles" VALUES ('132936', 'Hotel Continental', '3', '77453.00', '802720_60_b.jpg', '["deep-soaking-bathtub", "coffe-maker", "newspaper", "beach", "children-club"]');
INSERT INTO "public"."hoteles" VALUES ('132937', 'Maria Angola Hotel & Centro de Convenciones', '3', '113176.00', '23645_15_b.jpg', '["garden", "restaurant", "children-club", "separate-bredroom", "deep-soaking-bathtub"]');
INSERT INTO "public"."hoteles" VALUES ('137536', 'Hotel San Blas', '3', '110656.00', '4417477_17_b.jpg', '["coffe-maker", "deep-soaking-bathtub", "business-center", "bathrobes", "safety-box"]');
INSERT INTO "public"."hoteles" VALUES ('137782', 'Thunderbird Hotels Carrera', '3', '155954.00', '1773941_61_b.jpg', '["kitchen-facilities", "nightclub", "beach", "beach-pool-facilities", "children-club"]');
INSERT INTO "public"."hoteles" VALUES ('139167', 'Hotel Park Suites', '2', '144788.00', '00650d24_b.jpg', '["children-club", "beach-pool-facilities", "restaurant", "garden", "coffe-maker"]');
INSERT INTO "public"."hoteles" VALUES ('157628', 'Fiesta Hotel & Casino', '4', '292768.00', '1777231_85_b.jpg', '["deep-soaking-bathtub", "fitness-center", "separate-bredroom", "coffe-maker", "restaurant"]');
INSERT INTO "public"."hoteles" VALUES ('161890', 'New Corpac Hotel', '3', '88612.00', '1876197_31_b.jpg', '["children-club", "restaurant", "fitness-center", "bathrobes", "safety-box"]');
INSERT INTO "public"."hoteles" VALUES ('161891', 'B&B Tradiciones', '3', '80145.00', '893882_7_b.jpg', '["newspaper", "coffe-maker", "safety-box", "beach-pool-facilities", "nightclub"]');
INSERT INTO "public"."hoteles" VALUES ('161892', 'Sonesta Posadas del Inca Miraflores - Lima', '3', '148563.00', '44e00399_b.jpg', '["garden", "restaurant", "beach", "deep-soaking-bathtub", "bathtub"]');
INSERT INTO "public"."hoteles" VALUES ('161899', 'Radisson Hotel Decapolis Miraflores', '4', '231461.00', '46512_29_b.jpg', '["bathtub", "separate-bredroom", "safety-box", "business-center", "beach-pool-facilities"]');
INSERT INTO "public"."hoteles" VALUES ('161900', 'Radisson Hotel San Isidro', '4', '17614.00', '1580314_67_b.jpg', '["restaurant", "children-club", "newspaper", "deep-soaking-bathtub", "business-center"]');
INSERT INTO "public"."hoteles" VALUES ('161901', 'Hotel Santa Cruz', '3', '126757.00', '6623490_6_b.jpg', '["nightclub", "business-center", "bathtub", "newspaper", "restaurant"]');
INSERT INTO "public"."hoteles" VALUES ('161904', 'Sol de Oro Hotel & Suites', '4', '172241.00', '63569_150_b.jpg', '["fitness-center", "garden", "beach", "restaurant", "separate-bredroom"]');
INSERT INTO "public"."hoteles" VALUES ('161908', 'BTH', '4', '182271.00', '897079_215_b.jpg', '["restaurant", "bathtub", "children-club", "bathrobes", "safety-box"]');
INSERT INTO "public"."hoteles" VALUES ('161909', 'qp Hotels Lima', '3', '131817.00', '1876458_102_b.jpg', '["separate-bredroom", "newspaper", "beach", "fitness-center", "beach-pool-facilities"]');
INSERT INTO "public"."hoteles" VALUES ('161914', 'NM Lima Hotel', '4', '14455.00', '981018_26_b.jpg', '["business-center", "nightclub", "deep-soaking-bathtub", "fitness-center", "garden"]');
INSERT INTO "public"."hoteles" VALUES ('161918', 'Hostal Porta', '3', '6298.00', '1688561_29_b.jpg', '["children-club", "separate-bredroom", "nightclub", "garden", "bathtub"]');
INSERT INTO "public"."hoteles" VALUES ('162141', 'Hotel El Ducado', '3', '16241.00', '1688562_53_b.jpg', '["kitchen-facilities", "garden", "nightclub", "business-center", "safety-box"]');
INSERT INTO "public"."hoteles" VALUES ('187306', 'Casa Andina Standard Miraflores Centro', '3', '121806.00', '85248126_b.jpg', '["fitness-center", "children-club", "separate-bredroom", "deep-soaking-bathtub", "bathrobes"]');
INSERT INTO "public"."hoteles" VALUES ('187309', 'Hotel Melodia', '3', '1053.00', '7864635_1_b.jpg', '["garden", "bathtub", "bathrobes", "safety-box", "separate-bredroom"]');
INSERT INTO "public"."hoteles" VALUES ('208599', 'El Golf Hotel Boutique', '4', '151345.00', '1191401_110_b.jpg', '["safety-box", "bathrobes", "business-center", "beach-pool-facilities", "restaurant"]');
INSERT INTO "public"."hoteles" VALUES ('227172', 'Hotel Novotel Lima', '4', '209107.00', '2803127_64_b.jpg', '["beach", "kitchen-facilities", "children-club", "newspaper", "beach-pool-facilities"]');
INSERT INTO "public"."hoteles" VALUES ('228165', 'Habitat Hotel', '3', '106179.00', '12808943_13_b.jpg', '["beach-pool-facilities", "deep-soaking-bathtub", "bathtub", "children-club", "beach"]');
INSERT INTO "public"."hoteles" VALUES ('234536', 'Miraflores Suites Centro', '3', '84145.00', '3334784_86_b.jpg', '["beach", "kitchen-facilities", "newspaper", "separate-bredroom", "nightclub"]');
INSERT INTO "public"."hoteles" VALUES ('236309', 'Casa Andina Select Miraflores', '4', '154546.00', '2a5bb415_b.jpg', '["coffe-maker", "safety-box", "restaurant", "garden", "children-club"]');
INSERT INTO "public"."hoteles" VALUES ('239178', 'The Westin Lima Hotel & Convention Center', '5', '326852.00', '4359018_144_b.jpg', '["safety-box", "kitchen-facilities", "bathrobes", "fitness-center", "coffe-maker"]');
INSERT INTO "public"."hoteles" VALUES ('239304', 'Hotel Inka Path', '2', '10881.00', '9649999_27_b.jpg', '["fitness-center", "deep-soaking-bathtub", "garden", "separate-bredroom", "safety-box"]');
INSERT INTO "public"."hoteles" VALUES ('249942', 'Hotel Stefanos', '3', '99418.00', '4900059_30_b.jpg', '["safety-box", "nightclub", "deep-soaking-bathtub", "beach", "business-center"]');
INSERT INTO "public"."hoteles" VALUES ('260342', 'Atton San Isidro', '4', '194369.00', '4357289_55_b.jpg', '["newspaper", "safety-box", "business-center", "coffe-maker", "restaurant"]');
INSERT INTO "public"."hoteles" VALUES ('266865', 'Condor''s House - Hostel', '2', '30186.00', '5030807_9_b.jpg', '["newspaper", "separate-bredroom", "nightclub", "restaurant", "garden"]');
INSERT INTO "public"."hoteles" VALUES ('266866', 'House Inn Backpacker', '2', '2808.00', '4982482_7_b.jpg', '["safety-box", "beach-pool-facilities", "kitchen-facilities", "separate-bredroom", "bathrobes"]');
INSERT INTO "public"."hoteles" VALUES ('266867', 'Hotel Kamana', '3', '84693.00', '4478078_39_b.jpg', '["bathtub", "fitness-center", "restaurant", "newspaper", "separate-bredroom"]');
INSERT INTO "public"."hoteles" VALUES ('266870', 'La Paz Apart Hotel', '3', '253514.00', '4099852_34_b.jpg', '["bathrobes", "newspaper", "deep-soaking-bathtub", "garden", "kitchen-facilities"]');
INSERT INTO "public"."hoteles" VALUES ('266871', 'Las Palmas', '3', '111845.00', '4618948_40_b.jpg', '["beach", "deep-soaking-bathtub", "kitchen-facilities", "beach-pool-facilities", "newspaper"]');
INSERT INTO "public"."hoteles" VALUES ('266872', 'Miraflores Lodge', '3', '109091.00', '3612838_12_b.jpg', '["coffe-maker", "restaurant", "kitchen-facilities", "bathtub", "nightclub"]');
INSERT INTO "public"."hoteles" VALUES ('266873', 'Casa Wayra Bed & Breakfast Miraflores', '3', '117585.00', '3688064_92_b.jpg', '["newspaper", "beach-pool-facilities", "coffe-maker", "deep-soaking-bathtub", "kitchen-facilities"]');
INSERT INTO "public"."hoteles" VALUES ('266874', 'HosteLima', '2', '29765.00', '4982472_16_b.jpg', '["business-center", "safety-box", "kitchen-facilities", "restaurant", "fitness-center"]');
INSERT INTO "public"."hoteles" VALUES ('266875', 'Hotel Ferre Miraflores', '3', '118319.00', '3045476_5_b.jpg', '["safety-box", "newspaper", "garden", "separate-bredroom", "children-club"]');
INSERT INTO "public"."hoteles" VALUES ('266877', 'Peru Star Boutique Apartments Hotel', '4', '109337.00', '3124310_1_b.jpg', '["bathtub", "restaurant", "deep-soaking-bathtub", "bathrobes", "kitchen-facilities"]');
INSERT INTO "public"."hoteles" VALUES ('266878', 'Machu Picchu Suites', '3', '79474.00', '3688061_52_b.jpg', '["beach", "kitchen-facilities", "bathtub", "garden", "restaurant"]');
INSERT INTO "public"."hoteles" VALUES ('266879', 'Palmetto Hotel Business San Borja', '3', '110587.00', '4626475_1_b.jpg', '["safety-box", "coffe-maker", "restaurant", "separate-bredroom", "bathtub"]');
INSERT INTO "public"."hoteles" VALUES ('266900', 'La Casa Nostra Hostel', '2', '12285.00', '2537805_1_b.jpg', '["kitchen-facilities", "fitness-center", "garden", "nightclub", "deep-soaking-bathtub"]');
INSERT INTO "public"."hoteles" VALUES ('266903', 'San Isidro Inn', '3', '1053.00', '3952922_27_b.jpg', '["children-club", "bathtub", "fitness-center", "separate-bredroom", "newspaper"]');
INSERT INTO "public"."hoteles" VALUES ('266904', 'Posada Peregrinus', '2', '61425.00', '4546549_9_b.jpg', '["nightclub", "kitchen-facilities", "fitness-center", "bathrobes", "separate-bredroom"]');
INSERT INTO "public"."hoteles" VALUES ('266908', 'Sm Hotel And Business', '3', '96964.00', '4688439_88_b.jpg', '["children-club", "separate-bredroom", "deep-soaking-bathtub", "bathtub", "restaurant"]');
INSERT INTO "public"."hoteles" VALUES ('266911', '1900 Hostel', '1', '5967.00', '4850335_10_b.jpg', '["coffe-maker", "garden", "kitchen-facilities", "beach-pool-facilities", "nightclub"]');
INSERT INTO "public"."hoteles" VALUES ('266914', 'LYNIK La Casa de Blanca', '2', '67659.00', '4846837_5_b.jpg', '["deep-soaking-bathtub", "beach-pool-facilities", "bathtub", "separate-bredroom", "kitchen-facilities"]');
INSERT INTO "public"."hoteles" VALUES ('266919', '3B Barranco''s Chic and Basic B&B', '3', '148842.00', '9ae3980d_b.jpg', '["restaurant", "children-club", "nightclub", "safety-box", "beach"]');
INSERT INTO "public"."hoteles" VALUES ('277988', 'Casa Bella Miraflores', '3', '84254.00', '4479382_65_b.jpg', '["garden", "kitchen-facilities", "bathtub", "safety-box", "business-center"]');
INSERT INTO "public"."hoteles" VALUES ('277989', 'ibis Larco Miraflores', '3', '115691.00', '917bd6d1_b.jpg', '["safety-box", "deep-soaking-bathtub", "bathrobes", "bathtub", "business-center"]');
INSERT INTO "public"."hoteles" VALUES ('277990', 'Bayview Hotel', '3', '104388.00', '1231695_139_b.jpg', '["bathtub", "deep-soaking-bathtub", "kitchen-facilities", "fitness-center", "nightclub"]');
INSERT INTO "public"."hoteles" VALUES ('296187', 'El Angolo Lima', '3', '186408.00', '5981696_40_b.jpg', '["kitchen-facilities", "bathrobes", "restaurant", "garden", "newspaper"]');
INSERT INTO "public"."hoteles" VALUES ('300212', 'Hotel Nobility', '3', '154788.00', '6214511_57_b.jpg', '["kitchen-facilities", "garden", "nightclub", "children-club", "safety-box"]');
INSERT INTO "public"."hoteles" VALUES ('314944', 'Qorianka Hotel', '2', '102491.00', '9320547_26_b.jpg', '["children-club", "garden", "deep-soaking-bathtub", "newspaper", "kitchen-facilities"]');
INSERT INTO "public"."hoteles" VALUES ('410363', 'Palmetto San Miguel', '3', '105715.00', '12627687_102_b.jpg', '["newspaper", "restaurant", "garden", "business-center", "safety-box"]');
INSERT INTO "public"."hoteles" VALUES ('411416', 'Arawi Lima Miraflores', '4', '20991.00', '5429945_8_b.jpg', '["fitness-center", "beach", "children-club", "nightclub", "deep-soaking-bathtub"]');
INSERT INTO "public"."hoteles" VALUES ('411417', 'Hotel Señorial', '3', '119314.00', '7700456_3_b.jpg', '["business-center", "beach", "garden", "separate-bredroom", "newspaper"]');
INSERT INTO "public"."hoteles" VALUES ('413051', 'Courtyard Lima Miraflores', '4', '224034.00', '9866569_13_b.jpg', '["separate-bredroom", "safety-box", "beach-pool-facilities", "kitchen-facilities", "deep-soaking-bathtub"]');
INSERT INTO "public"."hoteles" VALUES ('427467', 'Royal Inca Hotel', '2', '6835.00', '6900423_6_b.jpg', '["newspaper", "coffe-maker", "safety-box", "kitchen-facilities", "bathtub"]');
INSERT INTO "public"."hoteles" VALUES ('431154', 'Kingdom Hotel', '3', '175436.00', '9365800_92_b.jpg', '["children-club", "bathtub", "beach", "business-center", "beach-pool-facilities"]');
INSERT INTO "public"."hoteles" VALUES ('432536', 'Wyndham Costa Del Sol Lima City', '4', '174925.00', '10210122_194_b.jpg', '["children-club", "beach", "nightclub", "beach-pool-facilities", "deep-soaking-bathtub"]');
INSERT INTO "public"."hoteles" VALUES ('433213', 'Hotel Boutique Huaca Wasi', '3', '171528.00', '5379215_11_b.jpg', '["fitness-center", "nightclub", "beach-pool-facilities", "garden", "business-center"]');
INSERT INTO "public"."hoteles" VALUES ('433923', 'Atelier Hotel', '3', '151297.00', '5405282_15_b.jpg', '["newspaper", "business-center", "children-club", "beach", "coffe-maker"]');
INSERT INTO "public"."hoteles" VALUES ('433932', 'Casa Suyay', '3', '169537.00', '8962073_23_b.jpg', '["kitchen-facilities", "restaurant", "nightclub", "newspaper", "coffe-maker"]');
INSERT INTO "public"."hoteles" VALUES ('450977', 'Los Girasoles', '3', '117732.00', '3474909_52_b.jpg', '["kitchen-facilities", "bathtub", "beach", "fitness-center", "children-club"]');
INSERT INTO "public"."hoteles" VALUES ('454496', 'Hotel Panamericano', '3', '79853.00', '11920422_40_b.jpg', '["bathtub", "children-club", "beach", "newspaper", "kitchen-facilities"]');
INSERT INTO "public"."hoteles" VALUES ('455161', 'Tierra Viva Miraflores Larco', '3', '143147.00', '6153044_28_b.jpg', '["beach-pool-facilities", "newspaper", "nightclub", "bathrobes", "deep-soaking-bathtub"]');
INSERT INTO "public"."hoteles" VALUES ('458601', 'Hotel Plaza Mayor', '2', '46994.00', '9866986_18_b.jpg', '["fitness-center", "garden", "deep-soaking-bathtub", "coffe-maker", "nightclub"]');
INSERT INTO "public"."hoteles" VALUES ('473343', 'Luxury Hotel Inkari', '4', '204984.00', '9438646_27_b.jpg', '["bathtub", "kitchen-facilities", "beach", "fitness-center", "coffe-maker"]');
INSERT INTO "public"."hoteles" VALUES ('488116', 'Urbano Apartment Miraflores Pardo', '3', '12584.00', '10968139_27_b.jpg', '["deep-soaking-bathtub", "bathtub", "fitness-center", "restaurant", "bathrobes"]');
INSERT INTO "public"."hoteles" VALUES ('498515', 'Casa Aika', '3', '75758.00', '5987363_77_b.jpg', '["newspaper", "business-center", "nightclub", "children-club", "deep-soaking-bathtub"]');
INSERT INTO "public"."hoteles" VALUES ('500017', 'El Faro Inn', '3', '85522.00', '9817258_55_b.jpg', '["coffe-maker", "beach", "garden", "safety-box", "deep-soaking-bathtub"]');
INSERT INTO "public"."hoteles" VALUES ('511549', 'Inkawasi Hostel Boutique', '2', '79613.00', '4241228_30_b.jpg', '["restaurant", "fitness-center", "kitchen-facilities", "beach", "business-center"]');
INSERT INTO "public"."hoteles" VALUES ('512559', 'Casa Falleri Boutique Hotel', '3', '163403.00', '11908954_150_b.jpg', '["nightclub", "garden", "coffe-maker", "kitchen-facilities", "deep-soaking-bathtub"]');
INSERT INTO "public"."hoteles" VALUES ('532067', 'Thunderbird Hotels J.Pardo', '3', '22374.00', '1774520_182_b.jpg', '["bathrobes", "coffe-maker", "children-club", "bathtub", "kitchen-facilities"]');

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table hoteles
-- ----------------------------
ALTER TABLE "public"."hoteles" ADD PRIMARY KEY ("id");
