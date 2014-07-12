# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago'   category_id: 3 }, { name: 'Copenhagen'   category_id: 3 }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# ['Tools', 'On-campus', 'Off-campus', 'Articles & Videos', 'SAV Projects'].each do |category|
#   Category.create(
#     name: category
#   )
# end
[
{
  title: "Aids Vancouver Island (AVI)",
  summary: "Serves the needs of people infected and affected by HIV and hepatitis C. We take evidence-based action to prevent infection, provide support, and reduce stigma",
  phone: "(250) 384-2366",
  address: "3rd Floor - Access Health Centre – 713 Johnson St",
  category_id: 3,
  url: "http://avi.org/"
},
{
  title: "Antidote: Multiracial & Indigenous Girls & Women’s Network",
  summary: "We work with youth, multiracial families, schools, community groups, service providers, policy makers and researchers to promote the visibility and needs of racialized minority and Indigenous girls and women",
  phone: "info@antidotenetwork.org",
  address: "407A – 620 View St",
  category_id: 3,
  url: "http://www.antidotenetwork.org/"
},
{
  title: "BC Aboriginal Network on Disability Society",
  summary: "To Promote the Betterment of Aboriginal People with Disabilities.",
  phone: "(250) 381-7303 or (888) 381-7303",
  address: "1179 Kosapsum Crescent",
  category_id: 3,
  url: "http://www.bcands.bc.ca/"
},
{
  title: "Beacon Community Services",
  summary: "Offers adult and couples counselling for adults in the Saanich Peninsula as well as a volunteer counsellor training program. Some referrals and/or fees required for counselling.",
  phone: "(250) 656-0134",
  address: "9860 Third St",
  category_id: 3,
  url: "http://www.beaconcs.ca/"
},
{
  title: "Bridges for Women Society Community",
  summary: "An agency that delivers employment training and supportive programs to women impacted by violence or abuse.",
  phone: "1-866-896-3356 or careers@bridgesforwomen.ca",
  address: "320-1175 Cook St.",
  category_id: 3,
  url: "http://bridgesforwomen.ca/"
},
{
  title: "Citizens' Counselling Centre",
  summary: "Offers affordable, accessible counselling to adult residents of Greater Victoria. All counselling is offered by volunteer counsellors trained and supervised by the Centre. We have a sliding fee scale based on family income. We offer individual counselling, couples counselling, and group counselling. Our groups run 3 times each year (Fall, Winter and Spring) and include self esteem groups, anger management groups, and groups with a focus on stress, anxiety and depression.",
  phone: "(250) 384-9934 or info@citizenscounselling.com",
  address: "941 Kings St.",
  category_id: 3,
  url: "http://www.citizenscounselling.com/"
},
{
  title: "Cridge Transition House for Women",
  summary: "A safe place for women with or without children who are escaping violent or abusive relationships.",
  phone: "(250) 479-3963",
  address: "3575 Douglas St.",
  category_id: 3,
  url: "http://cridge.org/cthw/"
},
{
  title: "Community Living Victoria",
  summary: "Provides a range of support services to children and adults with developmental disabilities and their families.",
  phone: "(250) 477-7231",
  address: "3861 Cedar Hill Cross Road",
  category_id: 3,
  url: "http://communitylivingvictoria.ca/"
},
{
  title: "Community Response Network (CRN) Victoria",
  summary: "A CRN is a diverse group of concerned community members who come together to create a coordinated community response to adult abuse, neglect and self-neglect.",
  phone: "(250) 655-7788 or dianned@vwth.bc.ca",
  category_id: 3,
  url: "http://www.bccrns.ca/"
},
{
  title: "Inter-cultural Association of Greater Victoria (ICA)",
  summary: "We provide information, support and tools to help immigrants reach their goals. Provides services for youth, adults, families and seniors.",
  phone: "(250) 388-4728",
  address: "930 Balmoral Road",
  category_id: 3,
  url: "http://www.icavictoria.org/"
},
{
  title: "Island Metis Family and Community Services Society",
  summary: "Research, develop, deliver and evaluate human service programs for the approximately 8,000 Metis people who live on Vancouver Island.",
  address: "Ground floor of the Westshore Child, Youth and Family Center, 345 Wale Road",
  category_id: 3,
  url: "http://www.metis.ca/"
},
{
  title: "Island Sexual Health Society",
  summary: "We offer sexual health clinics and sex education programs for all genders, orientations, identities, and ages in Greater Victoria",
  phone: "(250) 592-3479",
  address: "4 locations: #200-1770 Fort Street (near Richmond), Camosun Location: Lansdowne Campus, Top Floor, Richmond House (across from Richmond Road bus shelter), 2170 Mt Newton X Rd, and 108–284 Helmcken Rd (corner of Helmcken and Old Island Highway)",
  category_id: 3,
  url: "http://islandsexualhealth.org/"
},
{
  title: "The Law Centre (UVic Faculty of Law)",
  summary: "Provides advice, assistance and representation to clients who cannot afford a lawyer",
  phone: "(250) 385-1221 or reception@thelawcentre.ca",
  address: "1221 Broad Street",
  category_id: 3,
  url: "http://www.thelawcentre.ca/"
},
{
  title: "Legal Services Society (Victoria Branch)",
  summary: "Legal aid includes representation by a lawyer, legal advice, and legal information. We give priority to people with low incomes, but many of our services are available to all British Columbians.",
  phone: "(250) 388-4516",
  address: "218–852 Fort Street",
  category_id: 3,
  url: "http://www.lss.bc.ca/"
},
{
  title: "Mary Manning Centre",
  summary: "Provides therapy and victim services for children and youth in Greater Victoria who have experienced abuse.",
  phone: "(250) 385-6111 or admin@marymanning.com",
  address: "210-1175 Cook St.",
  category_id: 3,
  url: "http://www.marymanning.com/"
},
{
  title: "Men's Trauma Centre",
  summary: "Crime victim support (police, legal and court) and counseling services for men with regards to physical, sexual, emotional abuse; trauma from violence, war, accidents etc. Serving self-identified men and people of all genders.",
  phone: "1-866-793-6367 or info@menstrauma.ca",
  address: "102-1022 Pandora Ave",
  category_id: 3,
  url: "http://www.menstrauma.com/"
},
{
  title: "Metis Nation of Greater Victoria",
  summary: "Has monthly potlucks, youth groups, volunteer opportunities, resources and cultural and community programming.",
  phone: "(250) 380-6070 or www.mngv.ca",
  address: "231 Regina Avenue",
  category_id: 3,
  url: "http://mngv.ca/"
},
{
  title: "Pacific Centre Family Services Association",
  summary: "Dedicated to maintaining outstanding services for the people we work with through education, counselling and creative programming. Locations in Colwood, Langford and Sooke.",
  phone: "(250) 478-8357 or pacificcentre@pcfsa.org",
  address: "345 Wale Rd. Or 2145 Townsend Rd. S.",
  category_id: 3,
  url: "http://www.pacificcentrefamilyservices.org/"
},
{
  title: "PEERS Victoria Resource Society",
  summary: "We provide support, resources and programs specifically for past and current sex workers, male or female",
  phone: "(250) 388-5325 or info@peers.bc.ca",
  address: "1-744 Fairview Dr.",
  category_id: 3,
  url: "http://www.peers.bc.ca/"
},
{
  title: "Sandy Merriman House (Victoria Cool Aid Society)",
  summary: "Provides 25 shelter beds for women, meals, basic needs, crisis intervention, counseling, referrals, medication and general support. It is open throughout the day for drop- in services and for shelter stays of up to 30 days.",
  phone: "(250) 480-1408 (shelter line)",
  address: "102-749 Pandora Avenue",
  category_id: 3,
  url: "http://www.coolaid.org/"
},
{
  title: "Sex Positive Art and Resource Centre",
  summary: "A Sex Positive Space in Victoria for art, culture, play, personal development and revolution",
  phone: "getSPARCed@gmail.com",
  address: "426 Montreal Street",
  category_id: 3,
  url: "http://www.facebook.com/pages/Sex-Positive-Art-and-Resource-Center-SPARC/223545417703090%3Fsk%3Dinfo"
},
{
  title: "Sooke Transition House",
  summary: "Provides emergency shelter for women and their children who are in crisis resulting from family violence. Also provides counselling, education and prevention as well as advocacy.",
  phone: "Office: 250-642-2591 Emergency Pager: (250) 642-2589 or anniesplace@shaw.ca",
  category_id: 3,
  url: "http://sooketransitionhousesociety.com/Welcome.html"
},
{
  title: "Together Against Poverty Society (TAPS)",
  summary: "The only organization in Victoria providing free, face-to-face legal advocacy for people with income assistance, disability benefits and tenancy issues.",
  phone: "250-361-3521 or info@taps.bc.ca",
  address: "302–895 Fort St.",
  category_id: 3,
  url: "http://www.tapsbc.ca/"
  },
{
  title: "Trans Vancouver Island",
  summary: "A resource and information site for transgender people and their allies on Vancouver Island.",
  phone: "transvancouverisland@yahoo.ca",
  category_id: 3,
  url: "http://www.transvancouverisland.ca/"
  },
{
  title: "Urgent Short Term Assessment and Treatment (USTAT)",
  summary: "Provides short-term individual psychotherapy for patients in crisis, at risk or in severe distress. Access to USTAT requires a referral from your family physician. Referrals must be made through Mental Health and Addictions intake and can be faxed to (250) 381-3444.",
  address: "1119 Pembroke St.",
  category_id: 3,
  url: "http://www.viha.ca/mhas/locations/victoria_gulf/ustat_groups.htm"
  },
{
  title: "Vancouver Island Crisis Line",
  summary: "Provides 24 hours crisis support line, island wide",
  phone: "1-888-494-3888",
  category_id: 3,
  url: "http://www.vicrisis.ca/"
  },
{
  title: "Vancouver Island Human Rights Coalition (VIHRC)",
  summary: "We strive to offer an anti-oppressive service for people who are facing discrimination. We also assist individuals in filing human rights complaints under the BC Human Rights Code.",
  phone: "(250) 382-3012 or contactvihrc@gmail.com",
  address: "418–620 View St.",
  category_id: 3,
  url: "http://www.vihrc.org/"
  },
{
  title: "Victoria Coalition for Survivors of Torture (VCST)",
  summary: "Building community support for survivors of torture and trauma.",
  phone: "vcst.info@gmail.com",
  address: "2901 Queenston St.",
  category_id: 3,
  url: "http://www.stoptorture.ca/"
  },
{
  title: "Victoria Disability Resource Centre",
  summary: "We work closely with people who have a disability and with other community organizations to find and remove barriers that prevent full participation in life”",
  phone: "(250) 595-0044 or reception@drcvictoria.com",
  address: "817-A Fort Street",
  category_id: 3,
  url: "http://www.drcvictoria.com/"
  },
{
  title: "Victoria Native Friendship Centre",
  summary: "Encourages and promotes the well-being of Urban Aboriginal People, by strengthening individuals, family, and community.” Numerous programs for Aboriginal adults, youth and families, including counselling, family support services, children and youth programming, acupuncture and outreach. Aboriginal counsellors available upon request.",
  phone: "(250) 384-3211 or info@vnfc.ca",
  address: "231 Regina Ave.",
  category_id: 3,
  url: "http://www.vnfc.ca/"
  },
{
  title: "Victoria Immigrant and Refugee Center Society",
  summary: "A non-profit society that provides a wide range of services to its target group.",
  phone: "(250) 361-9433 or info@vircs.bc.ca",
  address: "637 Bay St., 3rd Floor",
  category_id: 3,
  url: "http://www.vircs.bc.ca/"
  },
{
  title: "Victoria Women's Sexual Assault Centre",
  summary: "Supports, empowers and advocates for women who are survivors of sexualized violence and childhood sexual abuse and works to end this violence. Counselling services available as well as emergency Sexual Assault Response Team (SART). Project Respect is the prevention program for youth ages 14-19.",
  phone: "Crisis and info line: (250) 382-3232, (250) 383-5545 or vwsac@vwsac.com",
  address: "#511 – 620 View Street",
  category_id: 3,
  url: "http://www.vwsac.com/"
  },
{
  title: "Women in Need Community Cooperative (WIN)",
  summary: "We support women along their journey between crisis, financial self sufficiency and wellness. Our programs are there for women along each step of her journey.",
  phone: "(250) 480-4006 or win@womeninneed.ca",
  address: "785 Pandora Avenue",
  category_id: 3,
  url: "http://www.womeninneed.ca/"
}
].each do |tool|
  Tool.create(tool)
end
