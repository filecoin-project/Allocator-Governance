# About this page
This is the Governance resource for the Allocator project of Filecoin Plus. Within this repo are the common links and 
- Specification on governance, and operations layers.
- Information on Allocators roles and responsibility.
- Information on how to become an Allocator, selection rubric, and onboarding resources.
- Directions for how to file a support issue and the steps for how disputes are resolved.

# Allocator History
Short 5 minute summary of the Allocator Program [Allocator Model Youtube](https://youtu.be/6xEhH3wDGtw?list=PL_0VrY55uV1-cwaAU8lcChONxYQ_Bj9hx&t=1001)

# Allocator Bi-Weekly Meetings
The Governance teams, FIDL, Allocators, and Community meet for a bi-weekly call to discuss the programatic updates.  The call is open to the public and all are encouraged to join in order to learn more about Filecoin Plus.  The last call of 2024 is scheduled to take place on 17December.  The 2025 schedule will be posted soon.



- [Allocator bi-weekly meeting](https://www.youtube.com/playlist?list=PLp3zrT1ewY0kYN1hJpERMUxTCbFC4yZwN)
- [Allocator Meeting Slides](https://drive.google.com/drive/folders/1zTy6YZWlG0KH6eQCEoKA8nDRP2JZnnp1)
- [Allocator Meeting Invite](https://calendar.google.com/calendar/embed?src=c_k1gkfoom17g0j8c6bam6uf43j0%40group.calendar.google.com&ctz=America%2FLos_Angeles)

# Program Links

- [Allocator Slack Channel](https://filecoinproject.slack.com/archives/C06MTBZ44P2)
- [Open and Pending Applications](https://allocator.tech/)
- [Allocator Support Registry](https://github.com/filecoin-project/Allocator-Registry)
- [FIDL Allocator Application](https://docs.google.com/forms/d/e/1FAIpQLSc7Z_Yv5OZ1HBCfMrhK-nZqvmxUGPEQ2w7mq6VEh9cbvzh3jw/viewform)
- [Distribution Metrics](https://filecoinpulse.pages.dev/)
- [DataCap Stats IO](https://datacapstats.io/notaries?showInactive=true)
- [Spark Retrevial Metrics](https://bajtos.grafana.net/public-dashboards/9af156c3266d4d8384385623d0d2a76c?orgId=1)
  

# Filecoin Plus Governance
The purpose of this repository is to manage the governance and evolution of specific of the program as insantiated in this diagram. [FIP](https://github.com/filecoin-project/FIPs/blob/master/FIPS/fip-0003.md) and illustrated in the follow![Governance Tree](https://github.com/filecoin-project/Allocator-Governance/assets/94004586/02a4b162-6535-48bc-886f-184a3e24e190)

# Operational Guidelines
Allocators are given a high degree of autonomy in their decision making power. In order to build trust in the stability of this mechanism, below outlined are some basic criteria by which all Allocators are expected to adhere. In the future these restrictions may be reduced or removed, upon approval by the community (going through the standard PR process).

Upfront Disclosures: Prior to being confirmed as a Allocator, Allocators are expected to disclose all relevant addresses which they control, have a financial stake in, or are strongly connected to by other means. For the disclosure, the Allocator should state the relevant addresses and the nature of the relationship.

Promoting Client Best Practices: Allocators agree to educate approved clients about the best practices for using their DataCap (e.g. how to request additonal services from miners, storing data redundantly across many miners, etc). Some reference information can be found here.

Commitment to effeciently serving the Network: Allocators agree to serve as fiduciaries of the Network, striving to work towards bringing useful data onto Filecoin and improving the experience for clients to do so. Allocators should generally be able to respond to Client applications and updates within 3 days, and should be comfortable communicating with Clients and Allocators if an application needs to be redirected.

No Self Dealing: To prevent conflicts of interest, Allocators should not allocate DataCap to Clients over which they control the private keys, or to a Client who intends to specifically spend the allocated DataCap with an address affiliated with the Allocator. When in doubt, Allocators should bias towards transparency (i.e. public disclosure) or to getting a different Notary to handle the individual request.

Operating in Good Faith: Allocators hold a position of trust in the network, and as such it is expected that they operate keeping the Principles of this mechanism in mind. While each form of abuse cannot be exhaustively defined, Allocators are expected to bias towards caution and act in a way that promotes transparency. Allocators should expect to potentially recieve requests or questions for allocation decisions (within reason) - and should make decisions with this in mind.

Community Governance Participation: It is expected that Allocators regularly attend the scheduled Governance calls. As these calls are a forum to shape this process, it is important to ensure Allocators are present to provide their context, learnings, and input.

# Allocator DataCap Process
![DataCap Flow](https://github.com/filecoin-project/Allocator-Governance/assets/94004586/dd3f9154-c852-4e77-8363-b42f72a354bf)

# Filecoin Plus Governance
The Filecoin Plus program is intended to onboard high quality data to a distributed network, which operates under a governance framework to ensure trust and collaboration. 

**Defined Roles and Rights:**

- Responsibilities for applicants, clients, and Allocators in ensuring standards are met and maintained.
- Accountability and Transparency: Regular audits and transparent reporting of datacap refresh and applications for new pathways. Operationally, governance should balance stability and innovation.

**Key practices include:**

- Formal Proposal Processes: Community discussions - either in Slack, Github, or bi-weekly Fil+ Governance meeting, for issues and proposed changes.
- Consensus: Major changes, such as security patches or adjustments, should require broad agreement and thorough testing.
By focusing on standards and accountability, Fil+ should evolve while maintaining its core mandate - to onboard quality data to the Filecoin network.


**1. New Application (for Allocators) Submission Guidelines**

Standards for Submission:
- Visit the Allocator Governance GitHub page.
- Create a new pull request by adding a new file to the repository.
- Name it appropriately, "Allocator application ".
- Commit the change and add it as a branch, then click "Create pull request".

Required Documentation:
- A comment will appear with a link to the Airtable, which serves as your actual application form.
- Open this link in a new tab for easy access.
- See the blog from [FIDL on their experience/input](https://blog.allocator.tech/2024/05/rolling-applications-are-open-for.html) on the application process

**2. New Application (for Allocators) Review and Approval**

Community Review System:
- All new applications are received and reviews on their ability to add value to the Filecoin Network.
- Pathways are prioritized on their ability to onboard data as well as providing a novel approach [other than manual](https://blog.allocator.tech/2024/04/allocator-tech-blog.html).

Approval Tiers:
- RFA (pathway other than manual) with an existing readme and established MVP - immediate.
- Manual Pathways which focus on a human verification - these will be onboarded as needed for the program.
- Applications for new Pathways should be for a pathway that is ready to operate. Pathways which need to develop tooling in order to operate are encouraged to obtain a small amount of testing DataCap (DC).

**3. Use of Governance Tools**
These tools do NOT need to be used, but are recommended as verified and helpful ways to ensure compliance. If a pathway wishes to utilize their own tooling or a 3rd party tooling, they should meet the spirit of standards set forth.

*KYC:*
- Applications which claim to function as a MARKET or AUTOMATED should not rely on a human verification of clients or organizations. While no specific tooling is mandated to participate in Fil+ as an Allocator, the tooling for verifying your clients should be - clearly defined - able to produce a record - capture the KYC include the customer identification program (CIP), customer due diligence (CDD), and enhanced due diligence (EDD)

*CID Checker:*
- Automated checks for testing as part of the submission process. These will be used as one of the primary sources of truth for verification of standards setup in the application to be maintained.

*SPARK:*
- Automated checks for testing as part of the submission process. These will be used as one of the primary sources of truth for verification of standards setup in the application to be maintained.

**4. Stakeholder Involvement**

Crypto-Specific Oversight:
- If working with clients in paid storage deals, deals should have a minimum value that is viewable on-chain.
- Contacts with clients can be verified as a one off, but should not be utilized as a primary manual verification of deals.
- Allocators and Clients should operate in good faith. In event of breach of standards in applications, review and removal from the Filecoin Plus program will be conducted by the Filecoin Foundation Governance Team. In the event a pathway is found to have NOT operated in good, it will be denied access to additional DataCap for disbursement.

**5. Existing Allocator DatCap Refresh**
After DataCap is awarded to a pathway, in order to receive a refresh the pathway must submit a request. This request will be reviewed by the Community (Watchdog may serve to compile and comment in place of community if now comments are received), Governance, and Root Key Holders.

*Security Audits:*
- SPARK is the primary verification of retrievability. If a pathway wishes to demonstrate their own metrics, examples, or programs for verifying retrievability - they must meet the same standards as SPARK.

*Compliance Standards:*

- Adhere to requirements that were established in the application to become an Allocator. Failure to adhere to standards (Bookkeeping, Retrievability, SP accounting) may result in - Guidance from Governance - Throttling of DataCap refresh - Removal as Allocator. Reasons for compliance will be noted in the request for additional DataCap.

**6. Community Accountability**

Key Expectations for Allocators:

a. High Retrieval Expectations

- Allocators must prioritize high retrieval rates for data (75% as verified in SPARK).
- Ensuring data is easily accessible is a critical responsibility.
- Allocators are responsible to ensuring that clients operate within the standards the Allocator outlined in their application.

b. No Excessive Padding of Datasets

- Metadata and supporting information are allowed, but padding exceeding 25% of a dataset is not acceptable.
Datasets should be appropriately sized, focused, and free of unnecessary filler content.

c. Standardized Bookkeeping

- Allocators must maintain clear bookkeeping, ideally through GitHub for transparency and community access.
- If not using GitHub, follow another clear and organized bookkeeping process. Process should be open and made available to public as well as Governance for refresh audit.

d. Clear Communication of Intent

- Clearly state your intentions and objectives in the application process.
- Stay aligned with your declared goals and maintain transparent, well-documented communication.
- Maintain onboarding of client data to remain active in the program (as an Allocator)
- Bi-Weekly Governance meetings will serve as the community source of truth for discussions and forum.
- Fil+ Shared Calendar
- Allocator Governance Meetings are recorded and posted to [Youtube](https://www.youtube.com/playlist?list=PLp3zrT1ewY0kYN1hJpERMUxTCbFC4yZwN)

e. Follow a Standardized Format

- Use a consistent and standardized format for all steps in the allocation process, including applications, data submission, retrieval, and compliance reporting.

f. Fee Structures

- Fees are allowed but must be communicated transparently.
- Allocators must clearly state any associated costs and the rules governing them.
- Paid deals should include an on-chain record.

g. Clients and Multiple Allocators

- Applying to multiple allocators is acceptable, but transparency is required.
- Allocators should verify a client is not onboarding duplicate data to multiple Allocator Pathways
- Avoid conflicts of interest and provide clarity to all parties involved.

h. Act in the Interest of Filecoin

- Always evaluate actions by asking: "Is this growing the Filecoin network and contributing to its success?"
- If the answer is an honest yes, you are likely operating within the spirit of the Filecoin community and guidelines.
