//
//  indiawardTVC.swift
//  Fogsi iOS
//
//  Created by Dayal ND on 03/04/20.
//  Copyright © 2020 Dayal ND. All rights reserved.
//

import UIKit

class indiawardTVC: UITableViewController{
        
    var selecteddictionary:[String:String]?


    
    var namearray = [["name":"FOGSI Mr. N. A. Pandit & Mrs. Shailaja N. Pandit Women’s Empowerment Award","desc":"","text":"  Eligibility Criteria:\n\u{2022} Should be a FOGSI member with no Age Bar.\n\u{2022} Two awards will be given in a year.\n\u{2022} Outstanding activities related to Women’s Empowerment (Physical, Mental, Spiritual & Social Empowerment in women from Conception to Senescence). Proof of Activity report should be submitted.\n\u{2022} Full Biodata with colour photograph.\n\u{2022} Candidate should be nominated by the local society.\n\u{2022} Award consists of a Silver Memento and Certificate.\n\u{2022} Nine copies of the application must reach FOGSI office before 31st July, 2020."],["name":"FOGSI Sun International Travelling Fellowship","desc":"https://www.fogsi.org/wp-content/uploads/awards/individual-awards/sun_international_travelling_fellowship_2020.pdf","text":""],["name":"FOGSI Dr. Shanti Yadav Award in Infertility","desc":"","text":"  FOGSI invites original Research Paper / Thesis in the field of Infertility for FOGSI – Dr. Shanti Yadav Award. (3 Awards)\n  Eligibility Criteria:\n\u{2022} Original Research work in the field of Infertility. The Research Paper / Thesis should be forwarded to FOGSI Office along with Candidate’s Name, Designation, detailed address, duly certified by the person under whom the research work has been carried out, countersigned by the Head of the Department of Obstetrics & Gynaecology. (warranty letter should be attached).\n\u{2022} FOGSI member less than 40 years. (Age proof)\n\u{2022} The award will consist of a Gold Plated Memento, a certificate and a cash prize each.\n\u{2022} No Awardee can apply again for the same.\n\u{2022} The award will be given during the valedictory session of the AICOG every year. FOGSI will request the successful competitor to present highlights of his / her research paper / thesis for about 15 minutes at one of the Scientific sessions during the All India Obstetric & Gynaecological Congress\n\u{2022} The Soft copy of the application must be received by July 31, 2020."],["name":"FOGSI Dr. Rajat Ray Award in Fetal Medicine","desc":"","text":"  FOGSI invites original Research Paper / Thesis in “Fetal Medicine” for the Dr. Rajat Ray Award for the year 2020.\n  Eligibility Criteria:\n\u{2022} Should be a FOGSI Member.\n\u{2022} Degree-MD / DNB / DGO (Ob-Gyn.) (proof)\n\u{2022} Warranty letter for original paper/thesis by the HOD and Head of the Institution.\n\u{2022} Three awards.\n\u{2022} No Age bar.\n\u{2022} Award consists of Gold Plated Memento+ Cash Prize + Certificate.\n\u{2022} The soft copy of the application must reach FOGSI office before July 31, 2020."],["name":"FOGSI Dr. Vasantben Shah Scholarship for Overseas Study","desc":"","text":"  FOGSI invites applications from the eligible interested members to avail FOGSI Dr. Vasantben Shah Scholarship for overseas Study for the year 2020. (This Scholarship is awarded – Every 2 years).\n  Aims & Objectives:\n\u{2022} This is a scholarship to provide outstanding young Gynaecologists the opportunity to observe or study some area of speciality in Obstetrics & Gynaecology in a reputed Institution, for not less than 6 weeks and not more than 2 years.\n\u{2022} To provide funds for his / her participation in an organized programme of study in Obstetrics & Gynaecology and Family Welfare.\n\u{2022} To improve his / her understanding, establish goodwill with professional colleagues.\n\u{2022} To motivate him / her to achieve experience, expertise and better performance in his / her field.\n\n  Qualifications and Requirements of the Applicant:\n\u{2022} (Without proof we can not accept your application.)He / She must be a member of a Society affiliated to FOGSI for a minimum period of 3 years before the date of Application (Certified true copy of the Society’s Certificate to be attached).\n\u{2022} A Postgraduate Degree in Obst & Gyn (M.D. or M.S.) or its equivalent with minimum 3 years experience in the subject after Post graduation on the day of starting the scholarship (Certified true copy of the Certificate to be attached).\n\u{2022} The Applicant’s age should not be more than 40 years on last date of submission of application (Proof of age should be submitted).\n\u{2022} Application should be forwarded through the respective Society duly endorsed by the President / Secretary.\n\u{2022} Should be well acquainted with the subject: He / She wants to study.\n\u{2022} Have a good general knowledge about the country, he / she wants to visit.\n\u{2022} The candidate is not eligible to apply more than 3 times and candidate who selected / availed of scholarship once is not entitled to re-apply.\n\u{2022} If any close relative of any member of the Selection Committee is applying for the scholarship then that particular member shall not officiate as a member of the selection Committee.\n\u{2022} The selection Committee may reject any Application without assigning any reason and its rejection shall be final.\n\n  Funds:\n  Rs.60,000/- FOGSI is not responsible for any further payment or expenses.\n\n  Disbursement of the Scholarship:\n  When the selected candidate supplies all necessary information as required by the Selection Committee and on the Selection Committee being satisfied, Scholarship amount shall be given to the candidate, on his showing valid Passport, Visa and confirmed invitation from the Institution where he wants to join and pursue his studies. Interested members should write to the Secretary General of FOGSI for the application form.\n\n  Last Date:\n  The application in Soft Copy in the prescribed from along with the details should reach the FOGSI Office on or before July 31, 2020."],["name":"FOGSI Dr. R. D. Pandit Research Prize","desc":"","text":"  FOGSI invites Research Paper / Thesis on “Any subject in Obstetrics & Gynaecology” for the Dr.R.D.Pandit Research Prize for the year 2020.\n  Terms & Conditions for Dr.R.D.Pandit Research Paper / Thesis prize are as follows : (Without proof we can not accept your application.)\n\u{2022} The Prize is open to FOGSI member and to the Registered Medical Graduates of Statutory Universities in India or any equivalent qualifications from Foreign Universities recognised by the Medical Council of India, as per up to date Schedules, and within ten years of his / her graduation (Proof to be furnished for year of MBBS Graduation and University).\n\u{2022} The Research Paper / Thesis should be forwarded to FOGSI Office alongwith Candidate’s Name, Designation, detailed address, duly certified by the person under whom the research work has been carried out, countersigned by the Head of the Department of Obstetrics & Gynaecology, and also the Head of the Institution.\n\u{2022} Any Research Work / Thesis, that is already published in Medical Journal presented to recognised University as Dissertation, or presented elsewhere shall not be considered for the said prize.\n\u{2022} (Warranty attached).\n\u{2022} The Research Work / Thesis, should be original and all illustrations, diagrams, tables etc., should have been prepared by the candidates himself / herself.  The candidate should be the Principal author.\n\u{2022} The accepted Research Paper / Thesis shall be the property of the FOGSI.\n\u{2022} The Research Paper / Thesis will be returned, if not accepted, provided return postage expenses are paid in advance by the candidate concerned.\n\u{2022} The Research / Thesis will be evaluated by a Panel of minimum three judges appointed by the FOGSI Managing Committee (Unanimous or majority decision will prevail).  In the award of the Prize to the successful candidate, the decision of the said Panel of Judges shall be final and binding on all the competitors.  The successful candidate will be informed at least one month before the scheduled All India Obstetric & Gynaecological Conference to enable him / her to receive the said prize.\n\u{2022} The Prize will be awarded at the time of the Valedicatory function of the All India Obstetric & Gynaecological Congress.\n\u{2022} FOGSI will request the successful competitor to present highlights of his / her research paper / thesis for about 15 minutes at one of the Scientific sessions during the All India Obstetric & Gynaecological Congress. Hon. Secretary General, FOGSI will inform the Organising Secretary of the AICOG that the Prize winner be accommodated in the Scientific sessions of the said Congress, with specific mention of the said presentation in the Scientific programme.\n\u{2022} FOGSI reserves the right not to award the Prize in the event of entry / entries received which are not of requisite standard.\n\u{2022} In case FOGSI does not receive any Research Paper / Thesis from Competitors on subject of  their own choice during any particular year, the FOGSI Managing Committee may decide upon any two subjects, one Obstetric and another Gynaec. (Which are announced through our Journal and circulars to member bodies), and on any one of the topics the competitors should send their Research Paper / Thesis.\n\u{2022} This Research Prize is awarded annually.\n\n  Prize:\n  The Prize of Rs.5,000/- with a certificate will be presented to the prize winner at the time of the valedictory function of the All India Obstetric & Gynaecological Congress.\n\n  Last Date:\n  The Research Paper / Thesis in soft copy must be sent in quadruplicate so as to reach the FOGSI Office, on or before 31.7.2020."],["name":"FOGSI Dr. Kumud P. Tamaskar Research","desc":"","text":"  FOGSI invites Original Research Paper / Thesis on “Any subject of Infertility” for the Dr. Kumud P. Tamaskar Research Prize for the year 2020.\n  Terms & Conditions for Dr.Smt. Kumud P. Tamaskar Research Paper / Thesis prize are as follows : (Without proof we can not accept your application.)\n\u{2022} The Prize is open to any active member of FOGSI.\n\u{2022} In a joint paper the name of the person who may be awarded the prize, if selected, shall be written first.\n\u{2022} The Paper / Thesis should develop on any subject of Infertility showing an in depth study of the subject presented with the latest information and author’s own contribution in this field.\n\u{2022} The Paper / Thesis should be certified as the author’s own work, by head of the Department of the Institution.  The paper submitted should not be a copy of the paper sent for publication in any Medical Journal, or already read at any Conference.  As far as possible the paper should be an original work and not part of dissertation / thesis for any examination. (Warranty attached ).\n\u{2022} The prize wining Research Paper / Thesis shall be the property of the FOGSI.\n\u{2022} The Paper / Thesis will be evaluated by a Panel of minimum three judges appointed by the FOGSI Managing Committee (Unanimous or majority decision will prevail).  The decision of the said Panel of Judges shall be final and binding on all the competitors.  The successful candidate will be informed at least one month before the scheduled All India Obstetric & Gynaecological Conference to enable him / her to receive the prize.\n\u{2022} The Paper / Thesis not accepted will be returned to the sender after the Congress, if full return postage is pre – paid.\n\u{2022} The Research Paper / Thesis should be forwarded to FOGSI Office alongwith Candidate’s Name, Designation, detailed address, duly certified by the person under whom the research work has been carried out, countersigned by the Head of the Department of Obstetrics & Gynaecology, and also the Head of the Institution.\n\u{2022} Any Research Work / Thesis, that is already published in Medical Journal presented to recognised University as Dissertation, or presented else where shall not be considered eligible for the said prize (Warranty attached ).\n\u{2022} The Research Work / Thesis, as far as possible, should be original and all illustrations, diagrams, tables etc., should have been prepared by the candidates himself / herself.  The candidate should be the Principal author.\n\u{2022} The Prize will be awarded at the time of the valedictory function of the All India Obstetric & Gynaecological Congress.\n\u{2022} FOGSI will request the successful competitor to present highlights of his / her research paper / thesis for about 10 minutes at one of the Scientific sessions during the All India Obstetric & Gynaecological Congress.  Hon. Secretary General, FOGSI will inform the Organising Secretary of the Prize winner to be accommodated in the Scientific sessions of the said Congress, with specific mention of the said presentation in the Scientific programme.\n\u{2022} FOGSI reserves the right not to award the Prize in the event of entry / entries received which are not of requisite standard.\n\u{2022} This Research Prize is awarded annually.\n\n  Prize:\n  The Prize of Rs.2,000/- with a certificate will be presented to the prize winner at the time of the valedictory function of the All India Obstetric & Gynaecological Congress.\n\n  Last Date:\n  Soft Copy of the Research Paper / Thesis must be to reach the FOGSI Office on or before July 31, 2020"],["name":"FOGSI Dr. Mehroo Dara Hansotia Prize","desc":"","text":"  FOGSI Dr. Mehroo Dara Hansotia Prize for The Best Activities done by a FOGSI Committee during the year.\n\u{2022} This award is given to the FOGSI Committees for work conducted and reported.\n\u{2022} Applications with relevant attested documents and reports should be sent to FOGSI office.\n\u{2022} Applications in Soft Copy must be submitted to the FOGSI Office on or before July 31, 2020.\n\u{2022} The prize shall carry a cash award of Rs. 5,000/- which will be awarded to the Chairperson and credited to the Committee account."],["name":"FOGSI Travelling Fellowship","desc":"https://www.fogsi.org/wp-content/uploads/awards/individual-awards/travelling_fellowship_form_criteria_2020.pdf","text":""],["name":"FOGSI Corion Awards","desc":"","text":"  The Federation of Obstetric & Gynaecological Societies of India instituted the awards in 1995 with the assistance of Win-Medicare Ltd. The 27th FOGSI Movicol (CORION) awards will be presented at the 64th. All India Congress of Obstetrics & Gynaecology 2021 at Indore.\n  The awards as in the previous years shall be presented in two categories.\n\n  Category – I : Award of the sum of Rs.1,00,000/- will be for the best Scientific Research Work in Obstetrics & Gynaecology amongst the Senior Members of the age above 40 years. (Age proof).\n  Prize : 3 Prizes : Winner cash prize Rs.75,000/-\n  1st Runner up Rs.15,000/-\n  2nd Runner up Rs.10,000/- \n  Total Rs.1,00,000/-\n\n  Category – II : Award of the sum of Rs.45,000/- will be for the best Scientific Research Work in Obstetrics & Gynaecology amongst the Junior Members of the age of 40 years and below.\n  Prize : 3 Prizes : Winner cash prize Rs. 25,000/-\n  1st Runner up Rs.10,000/-\n  2nd Runner up Rs.10,000/-\n  Total Rs.45,000/-\n\n  The primary objective of instituting the FOGSI Movicol (CORION) Award is to infuse the spirit of research and original work amongst the members of the Federation of Obstetric & Gynaecological Societies of India.\n\n  Criteria for the Awards : (Please send soft copy of all documents)\n\u{2022} Members of the affiliated Societies of FOGSI are eligible for the awards.\n\u{2022} The stress shall be on original research work (proof attached).\n\u{2022} The work should be certified by any of the following dignitaries i) Dean, ii) Superintendent, iii) The Head of the Institution, iv) Professor and Head of the Department, v & vi) President and Secretary of the Local Society.\n\u{2022} The decision of panel of judges will be final.\n\u{2022} If there is any blood relation of any of the judges for the contest, the said judge will resign from the Panel.\n\u{2022} Office bearers of FOGSI are not to be considered for the Award.\n\u{2022} The competing members should have at least 10 papers in Category I and 5 papers in Category II published in the Journal of Obstetrics & Gynaecology of India or in any other Scientific Journal (photocopies of the publications to be attached).\n\u{2022} Only one entry per participant.\n\u{2022} Marking and assessing will be done for both categories before the Presentation.\n\u{2022} Senior category Members of the age above 40 years and Junior category Members of the age of 40 years and below (Age proof).\n\u{2022} Candidate who have already winner of the said prize can not apply again.\n\n  The original research paper should not have the name of the applicant or the name of the Institution etc. on entire paper.\n\n  In Category I, the best four entries will be chosen for presentation at the 64th All India Congress of Obstetrics & Gynaecology 2021 at Indore for the FOGSI Movicol (CORION) Award (Category – I).\n\n  In Category II, the best three entries will be chosen for presentation at the 63rd All India Congress of Obstetrics & Gynaecology 2021 at Indore for the FOGSI Movicol (CORION) Award (Category – II).\n\n  Last Date:\n  Members desirous of competing for the FOGSI Movicol (CORION) Award should send in soft copy of their papers along with the details should each the FOGSI office on or before July 31, 2020."],["name":"FOGSI Imaging Science Award","desc":"","text":"  The FOGSI Imaging Science Committee has constituted an award called “FOGSI Imaging Science Award”.\n  Applications are invited from the desirous members. Direct applications will not be considered. All the applications should be duly endorsed by the President or Secretary of the local Society.\n\n  Criteria’s are as Follows: (Without proof we can not accept your application).\n\u{2022} Applicant’s age should be less than 40 years (Proof of age should be submitted).\n\u{2022} Should be a member of FOGSI for the last 5 years (Certified true copy of the Society’s Certificate to be attached).\n\u{2022} Should have contributed to FOGSI and Local Society (Proof attached).\n\u{2022} Should have publications on Obst.-Gyn. Imaging (Proof attached).\n\n  Award: Award will be Rs.2,000/- each for two doctors.\n\n  Last Date: The Soft copy should send on or before July 31, 2020."],["name":"FOGSI Late Dr. Pravin Mehta Training Fellowship in Laparoscopy","desc":"","text":"  One Award :\n  Award consists of Rs. 30,000/- cash to Awardee & training for three months at FOGSI – recognised Endoscopy Centre without any charges plus training certificate.\n\n  Eligibility Criteria:\n\u{2022} Age-30-40 years.\n\u{2022} Degree-MD / DNB / DGO (Ob-Gyn.)\n\u{2022} Should be a FOGSI Member.\n\u{2022} Preferably from Rural area\n\u{2022} Should be nominated by respective Society.\n\u{2022} Complete Biodata with Photograph.\n\u{2022} No Awardee can apply again for the same Award.\n\u{2022} Eight copies of the application must reach FOGSI office before July 31, 2020."],["name":"FOGSI Late Professor D. Kutty Annual Life Time Achievement Award","desc":"","text":"  Award consists of a citation and cash of Rs. 15,000/- .\n  Eligibility Criteria:\n\u{2022} FOGSI member\n\u{2022} Age-Between 55-70 years on the day of application.\n\u{2022} Outstanding contribution in the field of Obstetrics & Gynecology\n  or\n  Outstanding contribution in socio-medical services in the field of Obstetrics & Gynaecology.\n  or\n  Excellent work done in Obstetrics & Gynaecology as Charity or by person from non profit making organization.\n  or\n  for reputed ethical work in the field of Obstetrics & Gynaecology especially for under privileged women in our society.\n\u{2022} Full Biodata with colour photograph.\n\u{2022} An essay in less than 2000 words from the nominee on work done.\n\u{2022} A forwarding letter from the local organization.\n\u{2022} The soft copy of the application must reach FOGSI office before 31st July, 2020."],["name":"FOGSI Late R. B. Dr. S. N. Malhotra Appreciation Award","desc":"","text":"  Eligibility Criteria:\n\u{2022} Should be a FOGSI Member.\n\u{2022} Should be a Gynaecologist & Obstetrician working in Rural Setting.\n\u{2022} Age, no bar.\n\u{2022} M. D. (Ob. & Gyn.), DNB (Ob & Gyn.) or D. G. O.\n\u{2022} Should be nominated by his/her local Society for this Award.\n\u{2022} Complete Biodata with colour photograph.\n\u{2022} Photographs of work place.\n\u{2022} A brief 2000 words essay from the nominee on what he/she thinks about health of women in Rural parts of India.\n\u{2022} Recommendation from local administration (Health office, A.D.M., D.M. Sarpanch).\n\u{2022} No Awardee can apply again for the same Award.\n\n  The Award will consist of:\n\u{2022} A sum of Rs. 15,000/- in cash.\n\u{2022} A plaque (design sent herewith – Gold plated plaque)\n\u{2022} A Citation\n\u{2022} The soft copy of the application must reach FOGSI office before July 31, 2020."],["name":"FOGSI The Padmabhushan Kamlabai Hospet Award","desc":"","text":"  FOGSI is announcing “FOGSI The Padmabhushan Kamlabai Hospet Award comprising of a cash prize of Rs. 25,000/- and a memento. This award will be given on the basis of the following activities of the Candidates (member of FOGSI):\n\u{2022} Health Campus conducted successfully.\n\u{2022} No of ANMS trained.\n\u{2022} Awareness event done in rural schools, colleges and pregnant women.\n\u{2022} Clinical Research conducted related to maternal mortality in rural areas.\n\u{2022} Slogan / Education Poster for the public conveying the message of Safe Motherhood.\n  This award will be considered to the eligible members in the five states covered by the Su Prabha Ganga Yatra i.e. West Bengal, Jharkhand, Bihar, Uttar Pradesh and Uttaranchal.\n  This award will be given during the valedictory session of the AICOG every year.\n  Candidates should apply with proof of their work in soft copy through their Societies and send the same to FOGSI office on the address given above on or before July 31, 2020."],["name":"FOGSI Dr.Nimish R. Shelat Research Award in Reproductive Endocrinology","desc":"","text":"  FOGSI invites Research Paper / thesis on ‘Reproductive Endocrinology’ for FOGSI Dr. Nimish R. Shelat Research Award.\n  The Terms & Conditions:\n\u{2022} The Research award is open to all the members of the Societies affiliated to the FOGSI.\n\u{2022} There is no age limit for this award.\n\u{2022} The research must be an original work of the candidate, duly certified by the Head of the Department / Institution and endorsed by the President / Secretary of the Society.\n\u{2022} The scope of research must encompass any area within the reproductive endocrinology.\n\u{2022} Except for the application, the copies sent, should not bear the name and the address of the candidate or that of the institution.\n\u{2022} If the entries are not as per the accepted standards of the award committee, the FOGSI reserves the right not to award the research award and to carry it forward for the next year (for two awards).vThe award will consist of a plaque, a certificate and a cash prize of Rs.10,000/- (Rupees Ten Thousand) each.\n\u{2022} The Office Bearers of FOGSI are also eligible for this award. No Awardee can apply again for the same.\n\u{2022} The award would be presented at the time of valedictory session of the All India Congress of Obstetrics & Gynaecology (AICOG), with a time slot provided to the candidate to present the research work in any relevant session of AICOG, as decided by the organizers & FOGSI.\n\u{2022} The applications (in soft copy) must be received by July 31, 2020 by the FOGSI office."],["name":"FOGSI IPAS , Young Talent Committee and MTP Committee Award","desc":"","text":"  Eligibility Criteria:\n\u{2022} Should be a FOGSI Member.\n\u{2022} Recommendation from the President / Secretary of the Society is necessary.\n\u{2022} Age should be less than 40 years.\n\u{2022} Original research work on “Making Abortion Safe”.\n\n  The Award will consist of-\n  A memento + Cheque of Rs. 2000/-.\n\n  The soft copy of the paper or thesis must reach FOGSI office before July 31, 2020."],["name":"FOGSI Dr. Duru Shah Distinguished Community Service Award for FOGSI Members","desc":"","text":"  The FOGSI Distinguished Community service award shall be given to member of a Society affiliated to FOGSI for the work done in the field of Community service.\n\n  Criteria for applying for the award:\n\u{2022} The candidate must have a Membership of FOGSI for 15 years or more. It is meant to inculcate a culture of Community service in the FOGSI Members.\n\u{2022} Community service work done for women’s health or empowerment during previous 5 years with documentation should be presented.\n\u{2022} The Candidate must be nominated by the local society signed by President / Secretary.\n\u{2022} Recommendation from 2 senior FOGSI Members who will be considered as referees is essential.\n\u{2022} The award will consist of a silver memento and a certificate.\n\n  Judges:\n  Selection will be done by the President, Immediate Past President, President Elect, Secretary General and one Representative of the donor. The award will be given during the Valedictory Session of the AICOG.\n\u{2022} A brief C.V. of the candidate to be enclosed.\n\u{2022} Letter from the candidate indicating his willing for nomination.\n\u{2022} A forwarding note from the Society justifying the nomination in about 100 words.\n\u{2022} Preference will be given for Rural work and work done in tribal areas.\n\u{2022} Awardee will not be eligible for the award a second time.\n\u{2022} A nominated person who does not receive the award may be nominated again for a maximum of 5 times.\n\n  Last Date:\n  Applications should reach the FOGSI Office (in 6 copies) by July 31, 2019."]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return namearray.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "indiawardVCell", for: indexPath) as! indiawardVCell
        //cell.layer.cornerRadius = 25
        let dict = namearray[indexPath.row]
        cell.label.text = dict["name"]
        cell.label.layer.borderWidth = 0.5
        cell.label.layer.borderColor = UIColor.black.cgColor
        //cell.layer.borderWidth = 2
        //cell.layer.borderColor = UIColor.black.cgColor
        cell.clipsToBounds = true
        return cell
    }


    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selecteddictionary = namearray[indexPath.row]
        
        if indexPath.row == 0 {
            performSegue(withIdentifier: "text5664", sender: self)
        }
        if indexPath.row == 1 {
            performSegue(withIdentifier: "webview858", sender: self)
        }
        if indexPath.row == 2 {
            performSegue(withIdentifier: "text5664", sender: self)
        }
        if indexPath.row == 3 {
            performSegue(withIdentifier: "text5664", sender: self)
        }
        if indexPath.row == 4 {
            performSegue(withIdentifier: "text5664", sender: self)
        }
        if indexPath.row == 5 {
            performSegue(withIdentifier: "text5664", sender: self)
        }
        if indexPath.row == 6 {
            performSegue(withIdentifier: "text5664", sender: self)
        }
        if indexPath.row == 7 {
            performSegue(withIdentifier: "text5664", sender: self)
        }
        if indexPath.row == 8 {
            performSegue(withIdentifier: "webview858", sender: self)
        }
        if indexPath.row == 9 {
            performSegue(withIdentifier: "text5664", sender: self)
        }
        if indexPath.row == 10 {
            performSegue(withIdentifier: "text5664", sender: self)
        }
        if indexPath.row == 11 {
            performSegue(withIdentifier: "text5664", sender: self)
        }
        if indexPath.row == 12 {
            performSegue(withIdentifier: "text5664", sender: self)
        }
        if indexPath.row == 13 {
            performSegue(withIdentifier: "text5664", sender: self)
        }
        if indexPath.row == 14 {
            performSegue(withIdentifier: "text5664", sender: self)
        }
        if indexPath.row == 15 {
            performSegue(withIdentifier: "text5664", sender: self)
        }
        if indexPath.row == 16 {
            performSegue(withIdentifier: "text5664", sender: self)
        }
        if indexPath.row == 17 {
            performSegue(withIdentifier: "text5664", sender: self)
        }
        
        
        
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        
    if segue.identifier == "webview858" {
    let link = segue.destination as! awwardWebViewVC
    link.dict1 = selecteddictionary
    }
    if segue.identifier == "text5664" {
    let link = segue.destination as! textview768VC
    link.dict1 = selecteddictionary
    }
        
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
