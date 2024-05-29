# The Data Provenance Standard

TODO: Punch List of work to do:
- Finish adding the use-cases
- Format the use-cases, and align them to the formal model
- Format code systems and give URL
- Create UML diagram
- Style (css) to produce numbered headers and anything else we want customized
- Need a canonical root from which all the technical needs reference. This is a technical anchor. It could be based on the dataandtrustalliance.org DNS, but could/should be ultimately at the standards body that publishes this specification
- Need at least one of the technical formats drafted, and place holder for the other two
  - These can be defined only using the technical formats and given examples
  - Thus we have three GIThub repos for JSON, XML, and YAML. This specification points at them.
  - Each repo has
    - README that explains what is in the repo
    - LICENSE that explains the license
    - schema files in that format
    - examples in that format
- Security Considerations
- Review top-to-bottom for readability, flow, and completeness
- Reference GIThub repo with reference implementation and sample applications

--------------------------------------

The Data Provenance Standard defines Metadata about a data set, so that the data provenance and lineage is understood. This set of metadata are necessary to enable proper dataset selection for AI Model Training.

**Version 1.1.0**

**[Published](https://github.com/Data-and-Trust-Alliance/DPS)** Draft

**Authors:**

- [Data and Trust Alliance](https://dataandtrustalliance.org/)
- Kristina Podnar
- John Moehrke

**Comments** inquiries@dataandtrustalliance.org

**License** [Creative Commons Attribution-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-sa/4.0/)

## Abstract

Data transparency is critical. Trust in the insights and decisions coming from both traditional data and AI applications depends on understanding the origin, lineage, and rights associated with the data that feeds them. Lack of transparency has real costs, including unnecessary risks and foregone opportunities. And yet, many organizations today cannot answer basic data questions without considerable difficulty and investment.

To realize the value of data and AI requires a reliable cross-industry baseline of data transparency. Our Data Provenance Standards propose a solution.

## Introduction

For the past quarter century, companies have worked to become “digital.” Now they are using data, algorithms, and AI to reinvent how decisions are made. They are becoming data enterprises. This is transforming everything from retail, education, and entertainment to health and wellness, transportation, and energy.

For these intelligent systems to create economic and societal value for all stakeholders—customers, employees, citizens, shareholders, partners, suppliers, and more—they must be designed and managed responsibly.

The Data Provenance Standards surface metadata on source, legal rights, privacy & protection, generation date, data type, generation method, intended use and restrictions and lineage. Each metadata field has associated values. This essential information about the origin of and rights associated with data allows enterprises to make informed choices about the data they source and use. The result can be improvements in operational efficiency, regulatory compliance, collaboration and value generation.

### The Data & Trust Alliance

The Data & Trust Alliance brings together leading businesses and institutions across multiple industries to learn, develop, and adopt responsible data and AI practices. Established in September 2020, it was founded as a not-for-profit consortium and is co-chaired by Ken Chenault, General Catalyst chairman and managing director, and former American Express chairman and CEO; and Sam Palmisano, former IBM chairman and CEO. Jon Iwata, founding executive director, works with our Leadership Council, a cross-functional team of senior executives selected by their CEOs to identify and drive Alliance projects.

### Normative vs Informative

This specification adopts the normative words defined in IETF [Best Current Practice 14](https://www.rfc-editor.org/info/bcp14): Key words for use in RFCs to Indicate Requirement Levels (BCP-14), certain words indicate whether a specific content is normative. The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED", "MAY", and "OPTIONAL" in this document are to be interpreted as described. Informative content does not contain these key words.

### Glossary

The following concepts are used throughout the specification

- **AI**:  Computer systems that can perform tasks typically requiring human intelligence, such as understanding language, recognizing patterns, and making decisions.
- **Dataset**: A collection of data.
- **Metadata**: Structured description about a Dataset that enable the understanding of that Dataset.
- **Dataset Identifier**: A unique label identifying the provenance metadata of the current dataset
- **Lineage**: Identifiers or pointers of metadata representing the data which comprise the current dataset
- **Source**: Identifies the origin (person, organization, system, device, etc.) of the current dataset
- **Legal Rights**: Identifies the legal or regulatory framework applicable to the current dataset, along with the required data attributions, associated copyright or trademark, and localization and processing requirements
- **Privacy and Protection**: Identifies any types of sensitive data associated with the current dataset and any privacy enhancing techniques applied
- **Generation Date**: Timestamp marking the creation of the current dataset
- **Data Type**: Identifies the data type contained in the current set, and provides insights into how the data is organized, its potential use cases, and the challenges associated with handling and using it
- **Generation Method**: Identifies how the data was produced (data mining, machine-generated, IoT sensors, etc.)
- **Intended Use and Restrictions**: Identifies the intended use of the data and which downstream audiences should not be allowed access to the current dataset

### Use-Case

The following use-cases are examplar of the use-cases for which this standard applies.  These use-cases show how this standard supports diverse needs across the data ecosystem.

1. Healthcare insurance data procurement
2. Media consumption pattern data set for consumer behavior insights
3. Financial services customer product enablement
4. Enhancing global logistics efficiency through AI-driven tariff harmonization

#### Use-Case 1: Healthcare insurance data procurement

Evaluating a new dataset that contains comprehensive patient and insurance payment information, for use in predictive analytics

Bella and her team are evaluating a new dataset that contains comprehensive patient and
insurance payment information. This dataset is considered crucial for enhancing the company’s
predictive analytics models, which forecast healthcare trends, personalize insurance plans, and
optimize claim processing.

**Goals**

- Establish lineage and align with data provenance insights.
- Comply with healthcare regulations, focusing on confidentiality, consent, and appropriate data handling.
- Enhance operational efficiency and analytical models without major disruptions.
- Leverage the dataset for developing innovative strategies and improving customer trust by analyzing the dataset’s intent and proprietary content for new personalized engagement opportunities.

**Challenges**

- Balancing the need for detailed, comprehensive data with privacy and confidentiality requirements.
- Ensuring the dataset’s metadata is accurate, up-to-date, and compliant with evolving data provenance standards.
- Integrating new datasets with existing systems and models without compromising data integrity or system performance.
- Navigating the complex landscape of healthcare regulations and ensuring all data usage is compliant.
Responsibilities
- Leads the procurement team in evaluating and acquiring high-quality datasets to improve the company’s analytical models.
- Facilitates vendor reviews and ensuring all datasets comply with data provenance standards, including transparent AI data usage, metadata coverage, and regulatory requirements.
- Partners with the data team charged with integrating new datasets into existing systems ensures that procured data meets their operational needs.
- Collaborates with the legal and compliance departments to ensure data usage aligns with healthcare regulations and company policies.
- Contributes to the success of strategies to leverage data insights for innovative marketing and improved customer trust.

##### Analysis

###### Identification

- Standards version used
  - `1.1.0`
  - Since the metadata maps to the standards version 1.1.0, it aligns with the one used by her system and can be systematically read and evaluated.
- Dataset title/name]
  - `2024 Comprehensive Patient Care and Insurance Claims Dataset`
  - The filename doesn’t appear in the company’s data governance tool, indicating the data is unlikely to have been acquired or ingested previously.
- Unique metadata identifier
  - `urn:uuid:1234-5678-9012-3456`
  - The metadata unique ID doesn’t appear in the company’s procurement database, confirming that it has not previously been evaluated for acquisition.
- Metadata unique URL
  - `https://example.com/dataset/metadata/UUID-1234-5678-9012-3456`
  - The metadata about the dataset under consideration is comprehensive and can be evaluated for trustworthiness.
- Metadata location(s) for datasets feeding the current dataset
  - `https://example.com/metadata/sources`
  - The single URL indicates there is only one source of data that contributed to the creation of the one being evaluated. This URL provides the same context for the feeder dataset as is available for the dataset under consideration for acquisition.

###### Provenance and creation

- Creator
  - `National Health Data Systems`
  - The data in the dataset was provided by the National Health Data Systems, an entity listed in the organization’s procurement database, meaning they have previously supplied data to the enterprise.
- Source (if different from Creator)
  - `Nationwide Hospitals Systems, Insurance Providers Ltd.`
  - The data was provided by Nationwide Hospitals Systems and Insurance Providers Ltd., not National Health Data Systems. Although Nationwide is not in the procurement database, it has a favorable rating in the Dun & Bradstreet vendor database.
- Data origin geography
  - values
    - `Arcata, CA, USA`
    - `Eureka, CA, USA`
    - `San Francisco, CA, USA`
  - The data offered originated in California, which may mean it is subject to the California Consumer Privacy Act (CCPA) if the dataset contains personal data.
- Dataset creation date
  - `2024-01-10:T11:00:57`
  - The dataset was created on January 10, 2024 and initially published on March 15, 2024, which indicates period updates to data that represents year-long data compilation.
- Range of dates for data generation
  - Values
    - Start: `2023-01-01:T00:00:01`
    - End: `2023-12-31:T23:23:59`
  - The dataset was created ten days after the data collection period, thus the data is recent and appropriate for refinement of predictive analytics.
- Date of prev. issued version of the dataset (if applicable)
  - `2024-03-15:T01:00:00`
  - The current dataset was previously issued on March 15, 2024, almost two months after its creation date, indicating a relatively frequent update rate for periodic data.
- Method
  - Values
    - Concept: `Feeds Real time database info`
    - Description: `Electronic Health Records Extraction and Insurance Claim Processing Logs`
  - The dataset was created from real time database feeds and thus the data is well structured and any errors or anomalies were likely addressed quickly since database feeds provide real time error detection.
- Data format
  - `application/sql`
  - SQL format will enable the data analytics team to perform precise and efficient querying and manipulation of the data. This makes data retrieval and management more straightforward and effective.

###### Use

- Were privacy enhancing technologies (PETs) or tools applied to the dataset in order to remove, mask, or modify PI/SPI in the data?
  - `no`
  - California’s data privacy regulation (CCPA) require the use of privacy-preserving measures when handling personal data. Not applying PETs could result in non-compliance with such regulations, leading to legal and financial risk.
- Organizational content classification
  - values
    - Public = `false`
    - Internal = `false`
    - Restricted = `true`
    - Confidential = `false`
    - Other = `false`
  - Access to the dataset is highly controlled and limited to specific individuals or groups who have the necessary clearance or authorization and will need to managed and protected accordingly.
- Confidentiality classification
  - values
    - PI = `false`
    - PCI = `true`
    - PFI = `false`
    - PII = `false`
    - PHI = `true`
    - SPI = `unknown`
    - false = `false`
  - Strict data protection requirements due to the sensitive nature of the information will be necessary, ensuring only authorized personnel who have a legitimate need for the data in the course of their duties have access.
- Consent language location
  - `https://example.com/dataset/UUID-1234-5678-9012-3456/consent1.html`
  - The consent outlines the scope, purpose, and conditions under which the data was collected and how it can be used. Bella’s colleagues in the legal department confirm that the consent extends to data sharing with third parties and can be used for predictive analytics purposes.
- Data processing geography
  - inclusion = `CA, USA`
  - If the dataset is acquired, the data will have to be ingested into algorithms and worked on through the company’s Santa Clara office location since it it cannot be processed on the East Coast or in Europe.
- Data storage geography
  - inclusion = `CA, USA`
  - If this dataset is acquired, the data will need to be stored in database at the company’s Santa Clara, CA location or in the cloud in a manner that limits the data to servers located in California.
- License to use
  - `License details available upon request from the Data Governance Department, National Health Data Repository, contactme@example.com`
  - The dataset comes with a commercial license, which means there are specific terms and conditions governing how the dataset can be used, especially in commercial settings. Bella will need to confer with the legal department about uses and restrictions once they contact the Data Governance Department at the National Health Data Repository and obtain a copy of the license.
- Intended data use
  - `AI Pre-Training`
  - The dataset is designed for AI “Pre-Training,” aligning with her company’s specific use cases. This alignment ensures the dataset’s applicability and avoids misuse.
- Proprietary data presence
  - values
    - Copyright = `false`
    - Patent = `false`
    - Trademark = `false`
  - The dataset contains no proprietary information, meaning that the company will avoid intellectual property infringement and ensure compliance with contractual agreements.

##### Outcome

Through comprehensive metadata evaluation, the procurement team was able to perform a
more in-depth assessment of a crucial dataset, decreasing procurement time and risk while
enhancing the company’s predictive analytics capabilities and maintaining adherence to legal
and ethical standards. The benefits of having access to the dataset metadata

- Better dataset evaluation
- Title, unique identifier, and details about data origin and collection methods allowed for quick insights into the dataset’s provenance without having to read through many pages of descriptive text.
- Confidentiality, consent documentation, data processing and storage geographies provided evidence of the dataset’s compliance with healthcare regulations.
- Clarity from the metadata enabled coordination and discussions between the procurement and data teams to assess the dataset’s impact on analytical models, ensuring seamless integration and operational improvement.
- Increased risk and opportunity balance
- Metadata around generation method and permitted use proved critical to the organization’s innovative marketing strategies and improving internal customer trust of the acquired data.
- Collaboration between the legal and compliance departments was boosted because it was clear at the onset who needed to be involved in which aspects of dataset acquisition evaluation,ensuring the dataset’s use was in strict adherence to healthcare regulations and company policies.
- Improved data procurement and legal validation
- Suspect data processing and storage metadata resulted in increased legal scrutiny in advance of data acquisition, leading to the correction of inaccuracies in the metadata.
- The metadata evaluation process, despite causing a brief delay, ultimately safeguarded the organization against potential legal and operational risks, ensuring the dataset’s strategic and compliant use.

#### Use-Case 2: Media consumption pattern data set for consumer behavior insights

Curating a high-quality dataset that tracks media consumption habits across diverse platforms for content personalization

Jordan’s current project involves curating a dataset that tracks media consumption habits across diverse platforms. This dataset aims to empower media buyers and sellers in accurately targeting their audience segments, facilitating personalized content strategies for industries ranging from consumer goods to tourism.

Goals

- Ensure comprehensive coverage of media consumption patterns to provide actionable insights for diverse industries.
- Maintain high standards of data transparency to build trust and encourage collaboration.
- Enhance clients’ operational efficiency and compliance through strategic data integration.

Challenges

- Balancing data comprehensiveness with privacy and ethical considerations.
- Keeping pace with rapid changes in media consumption behaviors and technology.
- Ensuring data standards provide necessary transparency to data buyers and that the metadata is compatible with automated data procurement systems.

##### Analysis

###### Identification

- Standards version used
  - `1.1.0`
  - Explains the  structure and specifications of the  datasets’ metadata, allowing for easy assessment by prospects and consumers.
- Dataset title/name
  - `March 2024 Global Media Consumption Trends`
  - Communicates the dataset’s scope, timing, and focus, facilitating recognition and understanding what the dataset is about..
- Unique metadata identifier
  - `550e8400-e29b-41d4-a716-446655440000`
  - Ensures precise tracking and referencing of the dataset within the data ecosystem, including customer’s  acquisitions databases.
- Metadata unique URL
  - `example.com/550e8400-e29b-41d4-a716-446655440000/metadata.html`
  - Offers immediate, transparent access to the dataset’s detailed specifications, fostering trust and ease of use among data consumers.
- Metadata location(s) for datasets feeding the current dataset
  - Values
    - `http://example.com/550e8400-e29b-41d4-a716-44665543902`
    - `http://example.com/550e8400-e29b-41d4-a716-44665544732`
    - `http://example.com/550e8400-e29b-41d4-a716-446655465722`
  - Demonstrates the three sources of data that make up the existing data set, providing traceability into  the origins and lineage of the data.

###### Provenance and creation

- Creator
  - Establishes the company as the authoritative source and responsible entity for the dataset, providing a clear point of accountability.

1. Category | 2. Value
|-----|-----|
Organization name | AnalytiQuest Ventures

- Source (if different from Creator)
  - Indicates that the entity that is supplying the data is the same as the entity that created the dataset, not just a data reseller.

1. Category | 2. Value
|-----|-----|
Organization name | AnalytiQuest Ventures

- Data origin geography
  - Conveys the regional specificity of the dataset, highlighting its focus on media consumption patterns within these diverse Floridian markets. This granularity not only aids in compliance with regional data laws but also enriches the dataset’s contextual relevance for analyses tailored to these geographic areas.

1. Continent | 2. Country | 3. State | 4. City
|-----|-----|-----|-----|
North America | USA | Florida | Augusta
North America | USA | Florida | Clearwater
North America | USA | Florida | Ft. Lauderdale
North America | USA | Florida | Jacksonville
North America | USA | Florida | Miami
North America | USA | Florida | Orlando
North America | USA | Florida | Pensacola
North America | USA | Florida | St. Petersburg; USA, FL
North America | USA | Florida | Tampa

- Dataset creation date
  - `2024-01-10:T01:00:00`
  - Provides a clear context for the dataset, indicating its recency and relevance for users seeking the most current insights into media consumption trends as of early 2024.
- Range of dates for data generation
  - Indicates that the dataset encompasses a full year’s worth of media consumption data, providing insights into trends and patterns over this period and ensuring the dataset’s relevance for analyses focused on the year 2023.

1. Oldest component of data in dataset. | 2. Youngest component of data in dataset.
|-----|-----|
2023-01-01:T00:00:01 | 2023-12-31:T23:23:59

- Date of prev. issued version of the dataset (if applicable)
  - Not applicable
  - Conveys the dataset’s foundation on real consumer behaviors and feedback, providing direct insight into media consumption patterns, which enhances the dataset’s reliability and validity for analyzing consumer engagement across various media platforms.
- Method
  - Signifies that users are accessing the inaugural edition of this dataset, setting expectations for its novelty and current relevance in understanding media consumption trends.

1. Category | 2. Specific | 3. Specified ‘Other’ | 4. Values
|-----|-----|-----|-----|
User generated content | Other | Digital Interaction Tracking and Survey Responses

- Data format
  - Indicates that the dataset contains a mix of structured data (like spreadsheets and databases) and unstructured data (like text docs), offering a diverse range of information that caters to both quantitative analysis and qualitative insights. It also provides insight into the potential need for data cleanup.

1. General type | 2. Specific type | 3. Specified ‘Other’
|-----|-----|-----|
Text | csv | xls
Text | plain | .doc
Application | SQL

###### Legal, use and restrictions

- Were privacy enhancing technologies (PETs) or tools applied to the dataset in order to remove, mask, or modify PI/SPI in the data?
  - Highlights the dataset’s adherence to privacy standards by ensuring that personally identifiable information (PII) and sensitive personal information (SPI) have been responsibly managed to protect individual privacy, making the dataset ethically robust and compliant with data protection regulations.

1. Yes/No | 2. Tool | 3. Technique
|-----|-----|-----|
TRUE | Adverity | Data Anonymization

- Organizational content classification
  - Describes the dataset access and handling requirements, indicating that it is designated for internal analytics and strategic planning purposes only, thus guiding downstream consumers on who can access and how to handle this dataset securely.

Public | Internal | Restricted | Confidential (then go to the P’s) | Other (please specify)
|-----|-----|-----|-----|------|
FALSE | TRUE | FALSE | FALSE | FALSE

- Confidentiality classification (only if no PETs applied)
  - Personal information (PI)/Demographic
  - Payment Card Industry (PCI)
  - Personal Financial Information (PFI)
  - Personally Identifiable Information (PII)
  - Personal Health Information (PHI)
  - Sensitive Personal Information (SPI)
  - Other (please specify)
- Consent location (only if confidential classification is completed and no PETs applied)
- Data processing geography (inclusion/exclusion)

1. In/exclude | 2. Continent | 3. Country | 4. State
|-----|-----|-----|-----|
- Data storage geography inclusion/exclusion

1. In/exclude | 2. Continent | 3. Country | 4. State
|-----|-----|-----|-----|

- License to use
  - Provides a clear pathway for understanding the legal framework and usage rights associated with the dataset, ensuring that potential users are aware of their obligations, restrictions, and permissions before leveraging the data for their purposes.

Non-commercial | Public license | Commercial/Negotiated License
|-----|-----|-----|
FALSE | FALSE | TRUE
Enter URL or license point of contact here | Enter URL or license point of contact here | AnalytiQuest Ventures’s Office of General Counsel, legalconsumptionlicense@example.com and (555) 123-4567

- Purpose
  - Signals that the dataset is primed for use in artificial intelligence applications, performance assessments, and educational or developmental programs, guiding consumers towards its applications in enhancing media planning, content development, and industry research.

1. AI/Not-AI | 2. Specific Use
|-----|-----|
AI | Evaluation

- Proprietary data presence
  - Relays that the dataset does not contain proprietary information exclusive to AnalytiQuest Ventures, suggesting broader flexibility in its use and sharing, which can facilitate unrestricted analysis and collaboration within the legal boundaries established for the dataset.

1. Copyright? | 2. Patent? | 3. Trademark?
|-----|-----|-----|
FALSE | FALSE | FALSE

##### Outcome

Metadata associated with the “March 2024 Global Media Consumption Trends” dataset is a vital resource for procuring complex media consumption patterns, ensuring its integrity and applicability in AI analytics. This approach to describing data can facilitate effective personalization of content strategies across various industries and will set a new standard for transparent, efficient, and compliant data usage in media consumption analysis. The outcome includes:

- Comprehensive coverage and actionable insights
  - Detailed data origin geography and collection methodologies will assure users of the data’s relevance and quality, thus facilitating targeted content strategies.
- Transparency and trust building
  - By adhering to version 1.0.0 of data provenance standards and providing a clear metadata URL, the dataset’s transparency is increased, making it easier for media buyers and sellers to assess its credibility.
  - The documentation of dataset lineage and the use of PETs-like anonymization underscores the commitment to data privacy and security, building trust among clients.
- Increased efficiency and enhanced compliance
  - The dataset’s lack of proprietary data restrictions and the provision of a clear license to use, as indicated by contacting AnalytiQuest Ventures’ Office of General Counsel, streamlines the data acquisition process, enhancing clients’ operational efficiency.
  - Data processing and storage geography metadata will help downstream consumers comply with legal standards and privacy regulations, thereby reducing legal and reputational risks.

#### Use-Case 3: Financial services customer product enablement

Evaluating a new dataset for refining AI algorithms used in customer credit card offerings

Minh is tasked with evaluating a new dataset for refining AI algorithms for customer credit card offerings. The dataset under consideration has been documented in accordance with the latest data provenance standards, ensuring transparency and compliance, especially under GDPR and the new EU AI Act. Minh’s evaluation process focuses on the detailed metadata provided for the dataset.

Goals

- Enhance AI model accuracy for customized credit card offerings.
- Ensure compliance with international laws like GDPR to mitigate legal risks.
- Optimize data handling practices within geographical limits for increased efficiency.
- Maintain thorough documentation for dataset transparency and accountability.
- Uphold dataset quality and integrity to bolster trust in AI insights.

Challenges

- Ensure dataset credibility through clear documentation of its lineage and metadata.
- Navigate diverse international regulations related to data privacy and AI.
- Integrate the new dataset with existing systems without operational disruptions.
- Balance proprietary data use with inform- ation protection and competitive edge.
- Confirm dataset use is ethical and consensual, particularly with sensitive data.
- Keep pace with technological and data standard advancements for AI relevance.

##### Analysis:

###### Identification

- Standards version used
  - `1.1.0`
  - The dataset’s metadata aligns with the latest standards, facilitating consistent data interpretation and integration across platforms, including the Customer Relationship Management (CRM) system..
- Dataset title/name
  - `Consumer Spending Patterns 2020-2024`
  - The dataset’s focus on analyzing consumer behavior over a five-year period, aids in immediate recognition and relevance for financial trend analysis.
- Unique metadata identifier
  - `LFS-1234-5678`  (TODO not a URI format, what is this?)
  - Provides unambiguous identification and retrieval for uses of the data across the enterprise and tracking internal workflow actions to the dataset, such as sign off for use by the privacy officer.
- Metadata unique URL
  - `http://luminadataservices.com/metadata/1234-5678`
  - Where colleagues from other departments can go to review detailed information about the “Consumer Spending Patterns 2020-2024” dataset, for compliance and relevance reviews to their use cases.
- Metadata location(s) for datasets feeding the current dataset
  - Values
    - `http://luminadataservices.com/metadata/sources/retail-transactions-2023`
    - `http://luminadataservices.com/metadata/sources/retail-transactions-2024`
  - The foundation of the current dataset and its dependencies are relayed through the two URLs, increasing the transparency of organizations involved in producing data that will be used by Minh and his team.

###### Provenance and creation

- Creator
  - Knowing that “Lumina Financial Services” is the dataset’s creator, allows Minh to lookup the vendor in the procurement system and understand what other datasets are under consideration for acquisition from the same supplier. There may be an opportunity to negotiate a broader agreement and save money in the process.

1. Category | 2. Value
|-----|-----|
Organization name | Lumina Financial Services

- Source (if different from Creator)
  - The source of the data is not the same as the creator of the dataset, indicating that Minh may be dealing with a data broker and not the generator.

1. Category | 2. Value
|-----|-----|
Organization name | PreciTech Data Inc

- Data origin geography
  - All locations reflect GDPR requirements so data transfer and processing requirements will be more stringent and complicate Minh’s project from a compliance perspective.

1. Continent | 2. Country | 3. State | 4. City
|-----|-----|-----|-----|
Europe | France
Europe | Germany
Europe | Italy
Europe | Poland

- Dataset creation date
  - `2024-03-14:T10:23:09`
  - The dataset is quite recent,which is ideal for refining customer-inference algorithms.
- Range of dates for data generation
  - There is over a full years worth of data and once collected, the data was quickly published and immediately updated. Thus the recency and vendor ability to refresh is good.

1. Oldest component of data in dataset. | 2. Youngest component of data in dataset.

|-----|-----|
2023-01-05:T01:01:59 | 2024-03-14:T17:13:47

- Date of prev. issued version of the dataset (if applicable)
  - `2023-03-15:T01:25:50`
  - The previously issued date is one one day after the dataset was created, indicating frequent data refresh rates.
- Method
  - The point of service (PoS) data will require special handling and protection as it is subject to data privacy regulations. The data is structured and ideal for the use cases.

1. Category | 2. Specific | 3. Specified ‘Other’ | 4. Values
|-----|-----|-----|-----|
Feeds | Interval timed database info |     | Aggregated Consumer Transaction Analysis, PoS

- Data format
  - The SQL structure adheres to the Internet Assigned Number Authority (IANA) Media Types properties, ensuring reliable transaction processing and data integrity even in the event of system failures. It is a good fit for ongoing feeds and frequent data refreshes.

1. General type | 2. Specific type
|-----|-----|
Application | SQL

###### Legal, use and restrictions

- Were privacy enhancing technologies (PETs) or tools applied to the dataset in order to remove, mask, or modify PI/SPI in the data?
  - The dataset is anonymized and compliant with privacy regulations, balancing data utility with individual privacy.

1. Yes/No | 2. Tool | 3. Technique
|-----|-----|-----|
TRUE | Google differential privacy library | Differential privacy

- Organizational content classification
  - The dataset is marked for limited company access, directing its handling and user permissions to guarantee secure and proper usage internally.

Public | Internal | Restricted | Confidential (then go to the P’s) | Other (please specify)
|-----|-----|-----|-----|-----|
FALSE | TRUE | FALSE | FALSE | FALSE

- License to use
  -Minh can refer his legal team to the provided license URL at “http://luminadataservices.com/ license/1234-5678” to understand the specific terms, restrictions, and obligations for using the dataset, ensuring its legal and compliant application within his projects.

Non-commercial | Public license | Commercial/Negotiated License
|-----|-----|-----|
FALSE | FALSE | TRUE
Enter URL or license point of contact here | Enter URL or license point of contact here | http://luminadataservices.com/license/1234-5678

- Purpose
  -The use is a match for the requirements and use cases, and worth a premium data price.

1. AI/Not-AI | 2. Specific Use | 3. Specified ‘Other’
|-----|-----|-----|
AI | Other | Enhancing AI-driven Credit Card Offerings

- Proprietary data presence
  - The dataset does not contain any information that is owned or controlled exclusively by the organization that created it. This means the data can likely be shared or used more freely, within the parameters of the license but without concern for violation of intellectual property rights.

1. Copyright? | 2. Patent? | 3. Trademark?
|-----|-----|-----|
FALSE | FALSE | FALSE

##### Outcome

Minh’s evaluation of the “Consumer Spending Patterns 2020-2024” dataset through the lens of the data provenance standards significantly enhanced ProForma Financial Services’ AI algorithms for customer credit card offerings, ensuring both heightened personalization and strict adherence to international data regulations. This approach improved the precision and effectiveness of the company’s AI models and ensured compliance, data privacy, and seamless integration with existing systems, paving the way for responsible and innovative use of AI insights in the financial sector. The outcome includes:

- Better business case alignment
  - By not relying solely on high-level dataset descriptions, this process elevated the focus on standards and metadata for business case alignment and ultimate success.
  - The provided origin, creation dates, and collection method of the metadata assured that the dataset relevance and potential quality were acceptable.
- Faster data acquisition timeline and speed to market
  - The absence of proprietary data restrictions and clear licensing terms sped up ProForma’s data acquisition process and ability to develop AI capabilities.
- Increased compliance and integrity
  - The ability to assess dataset compliance with the latest data provenance standards, including versioning and unique identifiers meant that the initial assessment of fit-for-use could be performed by an automated system and passed to a human for deeper review.
  - The dataset lineage, original sources, and PETs allowed ProForma to quickly gauge the level of pre-processing necessary to comply with data privacy requirements.
  - The data collection, processing and storage information further helped meet data privacy requirements and mitigate legal and reputational risks associated with GDPR and the EU AI Act.

#### USe-Case 4: Enhancing global logistics efficiency through AI-driven tariff harmonization

Managing data to refinine AI systems for accurately predicting tariff costs across countries and categories

The global nature of Navisphere Logistics, Ltd.’s operations means that the company must navigate a complex web of international tariffs and customs regulations. Efficiently managing these tariffs is critical to minimizing delivery times and costs. Dr. Hicks and her team are tasked with refining the company’s AI systems to accurately predict tariff costs across different countries and product categories.

- Goals
  - Unify global tariff schedules into an AI-compatible format for better predictions.
  - Enhance AI tariff models to reduce cross-border delivery times and costs.
  - Adhere to data provenance standards for tariff data integrity and compliance.
  - Attain tariff predictions globally across various product categories with advanced AI.
  - Simplify customs processes with accurate tariff assessments, aiding global clients.
- Challenges
  - Navigate the intricate international tariff and customs landscape with diverse rules.
  - Rigorously assess dataset metadata for compliance with global standards and privacy.
  - Continually update AI models to adapt to changing international tariff regulations.
  - Balance advanced AI development with responsible usage and adherence to privacy laws.
  - Ensure smooth AI model integration into Navisphere Logistics’ systems without workflow disruption.

##### Analysis

###### Identification

- Standards version used
  - `1.4.5`
  - Ingests the metadata into the automated Data Acquisition System, knowing that the metadata is compatible with the system and the vendor-supplier values will match the expected evaluation fields.
- Dataset title/name
  - `2023 Global Tariff Schedules – Electronics`
  - The link between the metadata and data set supports tracking both throughout the assessment and acquisition process.
- Unique metadata identifier
  - `urn:uuid:123e4567-e89b-12d3-a456-426614174000`
  - Allows the Procurement Department and Maya to avoids redundancy as multiple sets of metadata are automated for scoring for trustworthiness and business value.
- Metadata unique URL
  - `https://globaltradedatahub.com/metadata/123e4567-e89b-12d3-a456-426614174000`
  - Provides a working location where the metadata, describing the dataset, can be obtained.
- Metadata location(s) for datasets feeding the current dataset
  - Values
    - `https://internationalcustomsdataconsortium.com/metadata/234f5678-f01c-23d4-b567-537625175111`
    - `https://internationalcustomsdataconsortium.com/metadata/345g6789-g02d-34e5-c678-648736286222`
    - `https://internationalcustomsdataconsortium.com/metadata/456h7890-h03e-45f6-d789-759847397333`
    - `https://internationalcustomsdataconsortium.com/metadata/567i8901-i04f-56g7-e890-860958408444`
    - `https://internationalcustomsdataconsortium.com/678j9012-j05g-67h8-f901-971069519555`
  - Demonstrates that the dataset under consideration contains data from four other entities, which requires additional scrutiny of the sources in determining whether to acquire and use the dataset on offer.

###### Provenance and creation

- Creator

  - This is critical context for assessing the data’s credibility, potential biases, and the appropriate point of contact for any technical or data-specific inquiries.

1. Category | 2. Value

|-----|-----|

Organization name | GlobalTradeDataHub

- Source (if different from Creator)

  - Demonstrates that the existing data did not originate with the supplier, but another entity. The single value listed and the previous four URLs for metadata of other datasets which fed the current dataset, indicate that all data on offer originated with the International Customs Data Consortium.

1. Category | 2. Value

|-----|-----|

Organization name | International Customs Data Consortium

- Data origin geography

  - Referring to the metadata concerning the range of dates for data generation, it suggests that the dataset was compiled immediately after the conclusion of the data collection period, ensuring its timeliness and relevance.

1. Continent | 2. Country | 3. State | 4. City

|-----|-----|-----|-----|

Europe | Netherlands |   |

Europe | Switzerland |   |

Europe | UK |   |

- Dataset creation date

  - 2024-02-01:T11:15:10

    - Reinforced the freshness of the data and that it was made available within a business date of when the collection period ended. The exact timestamp indicates that a full year’s data is represented in the dataset.

- Range of dates for data generation

  - Reinforced the freshness of the data and that it was made available within a business date of when the collection period ended. The exact timestamp indicates that a full year’s data is represented in the dataset.

1. Oldest component of data in dataset. | 2. Youngest component of data in dataset.

|-----|-----|

2020-01-01:T00:00:01 | 2024-01-31:T23:23:59

- Date of prev. issued version of the dataset (if applicable)

  - Not applicable

  - This is the first time the dataset is made available and there is no sense of the frequency at which it may be updated.

- Method

  - Supports assessment of the data’s reliability and suitability for training AI models, supporting that the dataset’s generation aligns with Navisphere’s standards for data quality and integrity.

1. Category | 2. Specific | 3. Specified ‘Other’ | 4. Values

|-----|-----|-----|-----|

Feeds | Other |  | Automated Customs Entry Processing

- Data format

  - Helps Maya anticipate the structure and format of the data, ensuring compatibility with Navisphere’s systems and facilitating efficient data processing and integration into AI models.

1. General type | 2. Specific type | 3. Specified ‘Other’

|-----|-----|-----|

Application | Other | vnd.oasis.opendocument.database

###### Legal, use and restrictions

- Were privacy enhancing technologies (PETs) or tools applied to the dataset in order to remove, mask, or modify PI/SPI in the data?

  - Assures that the dataset adheres to privacy standards and regulations, which is critical for maintaining company AI practices and data handling within Navisphere Logistics.

1. Yes/No | 2. Tool | 3. Technique

|-----|-----|-----|

TRUE | Clover DX | Data Anonymization

TRUE | Clover DX; injected 3% random data into the mix | Data Masking

- Organizational content classification

  - Guides how the data can be handled, shared, and utilized within the organization, ensuring that it is used appropriately and in compliance with internal policies and standards for data security and confidentiality.

Public | Internal | Restricted | Confidential (then go to the P’s) | Other (please specify)

|-----|-----|-----|-----|-----|

FALSE | TRUE | FALSE | FALSE | FALSE

- License to use

  - Defines restrictions, obligations, and rights around the legal use and distribution of the data, which stipulate that the data cannot be shared with global federal government entities and the data may be used for evaluation and training in AI-driven projects.

Non-commercial | Public license | Commercial/Negotiated License

|-----|-----|-----|

FALSE | FALSE | TRUE

Enter URL or license point of contact here | Enter URL or license point of contact here | globaltradedatahub.com/license/123e4567-e89b-12d3-a456-426614174000

- Purpose

  - The dataset is best used for AI pre-training and training purposes, which may command a premium fee.

1. AI/Not-AI | 2. Specific Use | 3. Specified ‘Other’

|-----|-----|-----|

AI | Pre-Training

AI | Other | Training

- Proprietary data presence

  - The company has made a contact available for discussing intellectual property rights. There are copyright implications of the dataset, which may not make it appropriate for use in context of the harmonization tariff schedule use case should the capability be productized or offered for downstream consumer use.

1. Copyright? | 1b. Registration | 2. Patent? | 3. Trademark?

|-----|-----|-----|-----|

TRUE | Jonathan Reeves, Esq., Email: jreeves@globaltradedatahublegal.com, Phone: +1-555-012-3456 | FALSE | FALSE

##### Outcome

Through application of the data provenance standards metadata for its global tariff schedule datasets, Navisphere Logistics, Ltd. has achieved a significant enhancement in the operational efficiency and accuracy of its AI-driven tariff prediction models. The outcome includes:

- Improved data consistency and compatibility
  - By specifying the version used for the metadata, Navisphere ensured that all datasets adhered to a uniform standard, facilitating seamless integration and interpretation by the AI models, regardless of the data’s origin or when it was collected.
- Enhanced data identification and access
  - The establishment of a unique metadata identifier and a metadata unique URL for each dataset enabled easy identification, access, and reference, streamlining the data ingestion process for the AI systems, and reducing the time spent on data preprocessing.
- Streamlined lineage and dependency tracking
  - The metadata location for datasets feeding the current dataset allowed Navisphere to efficiently manage data dependencies and lineage, ensuring that updates or corrections in source datasets could be rapidly propagated through the system, maintaining the accuracy and timeliness of tariff predictions.
- Increased accountability and data integrity
  - Detailed metadata entries for the creator, source, and data origin geography provided clear accountability and context for the data, enhancing trust in the data’s reliability and compliance with regional laws and international regulations.
- Better data privacy and security measures
  - The application of privacy enhancing technologies (PETs) and the careful classification of data confidentiality ensured that personally identifiable information (PII) and sensitive personal information (SPI) were adequately protected, aligning with global privacy standards and ethical considerations in AI application.
- Legal compliance
  - Detailed metadata on data processing and storage geographies, consent locations, and the license to use the data ensured that all AI operations remained within legal boundaries, respecting data sovereignty laws and consent agreements.

## Datatypes

Primitive Datatypes

- String - A sequence of Unicode characters
- URI - A Uniform Resource Identifier Reference [RFC 3986](https://www.rfc-editor.org/rfc/rfc3986). Note: URIs are case sensitive. For UUID (urn:uuid:53fefa32-fcbb-4ff8-8a92-55ee120877b7) use all lowercase
- URL - A Uniform Resource Locator [RFC 1738](https://datatracker.ietf.org/doc/html/rfc1738). Note URLs are accessed directly using the specified protocol. Common URL protocols are http{s}:, ftp:, mailto: and mllp:, though many others are defined
- Markdown - This specification requires and uses the [GFM (Github Flavored Markdown)](https://github.github.com/gfm/) extensions on [CommonMark](http://spec.commonmark.org/0.28/) format, with the exception of support for inline HTML which is not supported.
- dateTime	A date, date-time or partial date (e.g. just year or year + month) as used in human communication. The format is a subset of [ISO8601](https://www.iso.org/iso-8601-date-and-time-format.html) icon: YYYY, YYYY-MM, YYYY-MM-DD or YYYY-MM-DDThh:mm:ss+zz:zz, e.g. 2018, 1973-06, 1905-08-23, 2015-02-07T13:28:17-05:00 or 2017-01-01T00:00:00.000Z. If hours and minutes are specified, a timezone offset SHALL be populated. Actual timezone codes can be sent using the Timezone Code extension, if desired. Seconds must be provided due to schema type constraints but may be zero-filled and may be ignored at receiver discretion. Milliseconds are optionally allowed. Dates SHALL be valid dates. The time "24:00" is not allowed. Leap Seconds are allowed

Complex Datatypes: These are made up of more than one child element as described.

### Organization

- Legal Entity Name
  - Element-Name: Name
  - Cardionality: 1..1
  - Format: String
- Legal entity Address
  - Element-Name: Address
  - Cardionality: 0..*
  - Format: String

### Location

- Country 
    - Element-Name: `country`
    - Cardionality: 1..1
    - Format: String
        - SHOULD be ISO 3166 2 letter, 3 letter code, or 3 digit country codes
- State or Provenance
    - Element-Name: `state`
    - Cardionality: 0..1
    - Format: String
        - SHOULD be ISO 3166-2: Codes for the names of the principal subdivisions (e.g., states or provinces) of all countries coded in ISO 3166-1.

### Period

- Start date/time
    - Element-Name: `start`
    - Cardionality: 0..1
    - Format: DateTime
    - if empty, there is no start
- End date/time
    - Element-Name: `end`
    - Cardionality: 0..1
    - Format: DateTime
    - if empty, there is no end

### Concept

- specific code for computable
    - Element-Name: `code`
    - Cardionality: 0..1
    - Format: String
        - Should be from a given vocabulary
        - SHOULD be compute friendly, without spaces
- source of code
    - Element-Name: `system`
    - Cardionality: 0..1
    - Format: URI
- description of code for human 
    - Element-Name: `description`
    - Cardionality: 0..1
    - Format: String

## Abstract Specification

The Data Provenance Standard is made up of three groups of metadata elements: Source, Provenance, and Use.

### Source

This group describes the dataset and the source of the dataset.

- Element-Name: `source`
- Cardionality: 1..1
- The following are child elements

#### Standards version used

Specifies the version of the schema or standards used to define the metadata for this dataset, ensuring consistency and compatibility over time.

- Element-Name: `Version`
- Cardionality: 1..1
- Format: String, Prefer Semantic Versioning (a.k.a., SemVer) format - https://semver.org/
- Example: `1.1.0`

#### Dataset title / name

The official name of the dataset, which should be descriptive and help easily identify the dataset's content and purpose.

- Element-Name: `Title`
- Cardionality: 1..1
- Format: String
- Example: `Blue sky observations`

#### Unique metadata identifier

A distinct identifier (such as a UUID) assigned to the dataset's metadata to uniquely distinguish it from others, ensuring no confusion or overlap.

- Element-Name: `id`
- Cardionality: 1..1
- Format: URI
- Example: `urn:uuid:17725bad-9098-4f43-abe6-43490ae1596c`

#### Metadata location

Optional: The web address where the dataset's metadata is published and can be accessed, providing a direct link to detailed information about the dataset. Typically will be a unique URL of the current dataset

- Element-Name: `location`
- Cardionality: 0..1
- Format: URL
- Example: `https://example.org`

#### Dataset issuer

The legal entity responsible for creating the dataset, providing accountability and a point of contact for inquiries.

- Element-Name:  `issuer`
- Cardionality: 1..*
- Format: Organization

#### Description of the dataset

Contains a detailed narrative that explains the contents, scope, and purpose of the dataset. It provides essential contextual information that helps users understand what the data represents, how it was collected, and any limitations or recommended uses.

- Element-Name: `description`
- Cardionality: 1..1
- Format: Markdown

### Provenance

This group describes the provenance of the dataset

- Element-Name: `provenance`
- Cardionality: 1..1
- The following are child elements

#### Source metadata for dataset

Identifies where the metadata for any source datasets that contribute to the current dataset can be found, establishing lineage and dependencies. This field establishes lineage.

- Element-Name: `source`
- Cardionality: 0..1
- Format: URL
- Example: `https://example.org/dataset/blue.xml`

##### Source for dataset

If the data originates from a different organization than the one who isued the dataset, this field identifies that original source's legal name.

- Element-Name: `origin`
- Cardionality: 0..1
- Format: [Organization](#organization)

#### Data origin geography

The geographical location where the data was originally collected, which can be important for compliance with regional laws and understanding the data's context.

- Element-Name: `origin-geography`
- Cardionality: 1..*
- Format: [Location](#location)

#### Dataset issue date

Manditory: The date when the dataset was compiled or created, providing a temporal context for the data.

- Element-Name: `date`
- Cardionality: 1..1
- Format: DateTime
- Example: `2024-05-27`, or `2024-05-27T15:18:02Z`

#### Date of previously issued version of the dataset

Optional: The release date of the last version of the dataset, if it has been updated or revised, to track changes and updates over time.

- Element-Name: `previous-date`
- Cardionality: 0..1
- Format: DateTime
- Example: `2024-05-27`, or `2024-05-27T15:18:02Z`

#### Range of dates for data generation

Optional: The span of time during which the data within the dataset was collected or generated, offering insight into the dataset's timeliness and relevance.

- Element-Name: `generation-period`
- Cardionality: 0..1
- Format: [Period](#period)

#### Method

The methodology or procedures used to collect, generate, or compile the data, giving insight into its reliability and validity.

- Element-Name: `generation-method`
- Cardionality: 1..*
- Format: [Concept](#concept)
    - SHALL be from [Specific method types](#data-collection-methods) if applicable
- MAY be other code from other code systems 

#### Data format

Describes the nature of the data within the dataset, such as numerical, textual, or multimedia, helping users understand what kind of information is contained within the file or dataset.,

- Element-Name: `format`
- Cardionality: 0..*
- Format: String
    - SHALL be mime-type https://www.rfc-editor.org/rfc/rfc6838.html
    - SHALL be from registered media-types http://www.iana.org/assignments/media-types/ if applicable
- Example: `application/json`

### Use

This group describes legal, use, and restrictions.

- Element-Name: `use`
- Cardionality: 1..1
- The following are child elements

#### Confidentiality classification

Indicate if the dataset includes data falling into the confidentiality classification. Each classifier must be evaluated as true/false/unknown.

- Element-Name: `classification`
- Cardionality: 1..1
- Format: Classification


TODO: Use-Case 1 was using the words "NOT ASSESSED" and "ASSESSED". I don't understand what that would mean. I could see an "unknown" as an indicate of a classification that was not done. But I don't understand what "ASSESSED" means, are data in the dataset or not?

--> This field indicates the level of sensitivity assigned to the dataset, such as personally identifiable information, which dictates how the dataset must be secured and who can access it. The use cases indicate assessed or not assessed because those used to be the values we considered when the use cases were drafted. Since then, the Working Group moved on to requiring the name of the tool that was used to determine the presence of PII or other sensitive data (e.g., Apache NiFi, Google Cloud or others).

TODO: I am still unclear. what are these tools? Are the following values assessed? How is this related to the  PET element below?

#####  Personal Information (PI)/Demographic

Format: `true` / `false` / `unknown`

##### Payment Card Industry (PCI)

Format: `true` / `false` / `unknown`

##### Personal Financial Information (PFI)

Format: `true` / `false` / `unknown`

##### Personally Identifiable Information (PII)

Format: `true` / `false` / `unknown`

##### Personal Health Information (PHI)

Format: `true` / `false` / `unknown`

##### Sensitive Personal Information (SPI)

Format: `true` / `false` / `unknown`

##### Other

Format: if not `false`, then describe the other applicable classifier.

#### Consent documentation location

Specifies where consent documentation or agreements related to the data can be found, ensuring legal compliance and regulatory use. This element must be populated when Privacy Consent is appropriate. When populated it points at either one Privacy Consent Policy that all individuals in the dataset agreed to, or one Privacy Policy for each individual in the dataset with that individuals signature.

- Element-Name: `consents`
- Cardionality: 0..*
- Format: URL
- Example: `https://example.org/dataset/34/consent.pdf`

#### Privacy indicators

Indicates whether techniques were used to protect personally identifiable information (PII) or sensitive personal information (SPI), highlighting the dataset's privacy considerations.

##### Specify whether PETs were used (select yes/no)	

Format: yes / no

If no, then this section is done.

##### Specify which tool(s) was used	

Format: Concept -- Extensible

TODO codesystem

Where: tool codes are:
- Data Anonymization
- Data Encryption
- Data Masking
- Data Minimization
- Data Redaction
- Differential Privacy
- Federated Learning
- Homomorphic Encryption
- K-anonymity
- L-diversity
- Pseudonymization
- Secure Multi-party Computation (SMC)
- T-closeness
- Tokenization

- --> Other?

##### Specify the parameters used (key value pairs)	

Format: String (tool specific)

##### Specify the resulting score

Format: String (tool specific)

#### Data processing geography included

Defines the geographical boundaries within which the data can be processed, often for legal or regulatory reasons.

- Element-Name: `processing-included`
- Cardionality: 0..*
- Format: [Location](#location)
- When not populated there are no processing location requirements

#### Data processing geography excluded

Defines the geographical boundaries within which the data canot be processed, often for legal or regulatory reasons.

- Element-Name: `processing-excluded`
- Cardionality: 0..*
- Format: [Location](#location)
- When not populated there are no processing location restrictions

#### Data storage geography allowed

Specifies where the data may be stored, crucial for compliance with data sovereignty laws.

- Element-Name: `storage-allowed`
- Cardionality: 0..*
- Format: [Location](#location)
- When not populated there are no defined storage location requirements

#### Data storage geography forbidden

Specifies where the data may not be stored, crucial for compliance with data sovereignty laws.

- Element-Name: `storage-forbidden`
- Cardionality: 0..*
- Format: [Location](#location)
- When not populated there are no defined storage location restrictions

#### License to use

Details the location or point of contact for identifying the terms under which the dataset can be used, including any restrictions or obligations, clarifying legal use and distribution rights.

- Element-Name: `license`
- Cardionality: 0..1
- Format: String 
    - Prefer License codes such as CreativeCommons or Apache
    - May be a URL
- Example: `Apache-2.0`

#### Intended data use

Describes the purpose for which the dataset was created, guiding users on its intended use and potential applications against identified use cases. List all that 

- Element-Name: `intended-purpose`
- Cardionality: 0..*
- Format: [Concept](#concept)
  - SHALL populate `code` from [Data Use](#data-use-codes).
  - SHALL populate `description` with specific description
  - When using the code `non-ai-other` and `ai-other`, the description SHALL describe the actual use

##### Data Use Codes

The following concepts are defined to describe intended and forbidden uses of the dataset

- source URI: `https://github.com/Data-and-Trust-Alliance/DPS/Use`

| code | description |
|------|-------------|
| non-ai-staging | Non-AI Staging/testing
| non-ai-production | Non-AI Production
| non-ai-quality | Non-AI Quality assurance
| non-ai-other | Non-AI Other
| ai-pre-training | AI Pre-Training
| ai-alignment | AI Alignment
| ai-evaluation | AI Evaluation
| ai-synthetic | AI Sythentic Data Generation
| ai-other | AI Other

Where: `non-ai-other`, and `ai-other`

#### Forbidden data use

Describes the purposes for which the dataset is not intended and can not be used.

- Element-Name: `forbidden-purpose`
- Cardionality: 0..*
- Format: [Concept](#concept)
  - SHALL populate `code` from [Data Use](#data-use-codes).
  - SHALL populate `description` with specific description
  - When using the code `non-ai-other` and `ai-other`, the description SHALL describe the actual use

#### Propritary data presence

Indicates whether the dataset contains proprietary information that is owned by or exclusive to the organization, affecting how it can be shared or used.

- Element-Name: `propritary`
- The following child elements

##### Copyright

Indicates whether the dataset contains propritary information that is covered with a Copyright, and the terms of said Copyright.

- Element-Name: `copyright`
- Cardionality: 0..*
- Format: String
  - where the string `no` indicates no Copyright

##### Patent

Indicates whether the dataset contains propritary information that is covered with a Patent, and the said Patent number.

- Element-Name: `patent`
- Cardionality: 0..*
- Format: String
  - where the string `no` indicates no Patent

##### Trademark

Indicates whether the dataset contains propritary information that is covered with a Trademark, and the terms of said Trademark.

- Element-Name: `trademark`
- Cardionality: 0..*
- Format: String
  - where the string `no` indicates no Trademark

## Schema

The detailed schema specification for JSON, XML, and YAML are published independently.

- canonical - the URL that defines the specification
- element description, cardionality
- required vocabulary
  
The D&TA Data Provenance Standards Working Group is responsible for the ongoing monitoring and periodic review of the terms in the registry. This includes:

• Annual review of all terms to ensure continued relevance
• Soliciting feedback from the community on the usage and applicability of terms
• Making revisions to definitions as needed
• Retiring terms that are no longer relevant or have become obsolete

Management of D&TA’s Data Provenance Standards vocabulary registry is a collaborative and dynamic process. We welcome feedback from the broader community to ensure that the vocabulary remains a valuable and accurate resource for all.

## Security considerations

TODO: This section should advise the reader on security or privacy things they should be aware of and for which a user of this specificaiton will need to consider. Often it is just a listing of risks that the specification does not address, but for which the specification creates. Such as the fact that datasets and metadata are sensitive data and would need to be protected or carefully crafted such that they are not a risk.

Metadata and the Dataset are data that need to be of quality and trustable to be valuable.... blah blah

## Annex

The Annex contain normative vocabulary to be used when it applies. These vocabulary SHALL be used when they apply.

### Data Collection Methods

The following defined vocabulary are to be used for the "Method". The vocabulary to use is the whole 

TODO: Format the following line a Code System

- Web scraping/Crawling	Textual
- Web scraping/Crawling	Structured
- Web scraping/Crawling	Metadata
- Web scraping/Crawling	Social media
- Web scraping/Crawling	News & articles
- Web scraping/Crawling	Other
- Feeds	RSS source
- Feeds	API source
- Feeds	Real time database info
- Feeds	Interval timed database info
- Feeds	File feed info
- Feeds	Other
- Syndication	News feeds
- Syndication	Financial feeds
- Syndication	Social media
- Syndication	Product/service catalog
- Syndication	Other
- Data mining	Association rule
- Data mining	Classification
- Data mining	Clustering
- Data mining	Regression
- Data mining	Anomaly detection
- Data mining	Sequencing
- Data mining	Other
- Machine generated/MLOps	Synthetic
- Machine generated/MLOps	Generative
- Machine generated/MLOps	Twin
- Machine generated/MLOps	Machine-2-machine (M2M)
- Machine generated/MLOps	AI inferred
- Machine generated/MLOps	XR (AR, VR, MR)
- Machine generated/MLOps	Other
- Sensor and IoT output	Environmental
- Sensor and IoT output	Motion & location
- Sensor and IoT output	Health 
- Sensor and IoT output	Biometric
- Sensor and IoT output	Energy consumption
- Sensor and IoT output	Industrial sensor
- Sensor and IoT output	Vehicle & transportation
- Sensor and IoT output	Security & surveillance
- Sensor and IoT output	Agriculture & environment
- Sensor and IoT output	Other
- Social media	Text based
- Social media	Multimedia
- Social media	Reviews and ratings
- Social media	Updates
- Social media	Q&As
- Social media	Collaborative
- Social media	Creative
- Social media	Other
- User generated content	Clickstream
- User generated content	Social media
- User generated content	Behavior
- User generated content	Ratings & reviews
- User generated content	Multimedia
- User generated content	Other
- Primary user source	Survey/Questionnaire
- Primary user source	Interview
- Primary user source	Event
- Primary user source	Biometric
- Primary user source	Focus Group
- Primary user source	Other
- Data augmentation	N/A
- Transfer learning	N/A
- Simulations	N/A
- Other	N/A

## Acknowledgements

Acknoledgements to the [Members of the Data and Trust Alliance](https://dataandtrustalliance.org/who-we-are)

**AARP**
- Amr Khani
  - SVP, Data and Analytics
- Jaye Campbell
  - Legal Leader, General Counsel

**American Express**
- Laurel Shifrin
  - VP, Enterprise Data Governance
- Saheel Shah
  - Director, Enterprise Data Governance

**CVS**
- Dave Sturgeon 
  - Executive Director, Data Governance and Enablement
- Herb Holmes
  - Data Governance & Data Management Leader

**Deloitte**
- Juan Tello
  - U.S. CDO, Strategy & Analytics Principal
- Leo Cabrera, Rohit Iyer, and Ajay Tripathi
  - Office of CDO

**GM**
- Jon Francis
  - Chief Data & Analytics Officer
- Brian Ames
  - Principal Software Engineer

**Howso**
- Chris Hazard
  - Chief Technology Officer
- Michael Meehan
  - General Counsel

**Humana**
- Genevy Dimitrion
  - VP, Data Strategy & Governance
 
**IBM**
- Lee Cox
  - VP, Integrated Governance & Market Readiness, Office of Privacy and Responsible Tech.
- Bryan Bortnick
  - Counsel, Data Governance
- Bryan Kyle
  - Sr. Technical Staff Member, Data Eng., Chief Data Office
- Orla Flannery
  - Privacy Program Manager

**Kenvue**
- Bernardo Tavares
  - Chief Technology & Data Officer
- Ajay Dhaul
  - SVP Global Data
- Kim Viccaro
  - Data Strategy & Activation Lead
- Sudheesh Kamath
  - Data & AI Products Leader

**Mastercard**
- Travis Carpenter
  - VP, Data Quality & Sources
- Ed Dephilippis
  - VP, Data Management & Quality
- Usha Ramalingam
  - Director, Data Management

**Nielsen**
- Christine Pierce
  - Chief Data Officer
- Frank Fasinski
  - Director, Data Science

**Nike**
- Emily White
  - Vice President, Enterprise Data & Analytics

**Pfizer**
- Peter Hunter
  - Sr Director, Analytic Tools
- Gentiana Spahiu 
  - Director, Data Gov. Lead
- Michael Pagliorola, Sasi Mullangi, Adam Nieto,
John Pastor, Drew Palsgrove, and Jay Shetty

**Regions**
- Dilip Balachandran 
  - SVP, Enterprise Data Management

**Smithsonian**
- Alan Hejnal
  - Data Quality Manager
- Derrick Whitney 
  - Interim CDO
- Adam Soroka
  - Office of Research Computing

**Transcarent**
- Thi Montalvo
  - VP Reporting and Analytics
- Thomas Birchfield 
  - Technical Program Manager

**UPS**
- Mallory Freeman
  - VP, Enterprise Data and Analytics
- Zeenat Syed
  - Director of Data Strategy
- Ricardo Rodriguez
  - Sr Manager, Data Science and Machine Learning

**Walmart**
- Gregory Schaffer
  - Chief Counsel, Cyber Security & VP, Digital Trust Compliance
- Laura Asbury 
  - Director, Digital Trust Compliance

**Warby Parker**
- Peter Cross 
  - Head of Data
- Chris Bleakley 
  - Engineering Director
