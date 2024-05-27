# The Data Provenance Standard

The Data Provenance Standard defines Metadata about a data set, so that the data provenance and lineage is understood. This set of metadata are necessary to enable proper dataset selection for AI Model Training.

**Version 0.1**

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

### Concepts

The following concepts are used throughout the specification

- **AI**: todo
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

#### Healthcare insurance data procurement

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

#### Media consumption pattern data set for consumer behavior insights

Curating a high-quality dataset that tracks media consumption habits across diverse platforms for content personalization

TODO

#### Financial services customer product enablement

Evaluating a new dataset for refining AI algorithms used in customer credit card offerings

TODO

#### Enhancing global logistics efficiency through AI-driven tariff harmonization

Managing data to refinine AI systems for accurately predicting tariff costs across countries and categories

TODO

## Abstract Specification

The Data Provenance Standard is made up of three groups of metadata elements: Source, Provenance, and Use.

### Source

This group describes the dataset and the source of the dataset.

#### Standards version used

Manditory: Specifies the version of the schema or standards used to define the metadata for this dataset, ensuring consistency and compatibility over time.

Format: Prefer Semantic Versioning (a.k.a., SemVer) format - https://semver.org/

Example: `1.1.0`

#### Dataset title / name

Manditory: The official name of the dataset, which should be descriptive and help easily identify the dataset's content and purpose.

Format: String

Example: `Blue sky observations`

#### Unique metadata identifier

Manditory: A distinct identifier (such as a UUID) assigned to the dataset's metadata to uniquely distinguish it from others, ensuring no confusion or overlap.

Format: URI - https://www.rfc-editor.org/rfc/rfc3986

Example: `urn:uuid:17725bad-9098-4f43-abe6-43490ae1596c`

#### Metadata location

Optional: The web address where the dataset's metadata is published and can be accessed, providing a direct link to detailed information about the dataset. Typically will be a unique URL of the current dataset

Format: URL - https://datatracker.ietf.org/doc/html/rfc1738

Example: `https://example.org`

#### Dataset issuer

Manditory: The legal entity responsible for creating the dataset, providing accountability and a point of contact for inquiries.

Multiple: 

##### Legal Entity Name

Format: String

##### Legal entity Address

Format: Multiple-Line String

#### Description of the dataset

Manditory: Contains a detailed narrative that explains the contents, scope, and purpose of the dataset. It provides essential contextual information that helps users understand what the data represents, how it was collected, and any limitations or recommended uses.

Format: Markdown - This specification requires and uses the [GFM (Github Flavored Markdown)](https://github.github.com/gfm/) extensions on [CommonMark](http://spec.commonmark.org/0.28/) format, with the exception of support for inline HTML which is not supported.

### Provenance

This group describes the provenance of the dataset

#### Source metadata for dataset

Optional: Identifies where the metadata for any source datasets that contribute to the current dataset can be found, establishing lineage and dependencies. This field establishes lineage.

Multiple:

Format: URL - https://datatracker.ietf.org/doc/html/rfc1738

Example: `https://example.org/dataset/blue.xml`

##### Source

Optional: If the data originates from a different organization than the one who isued the dataset, this field identifies that original source's legal name.

Multiple: 

##### Legal Entity Name

Format: String

##### Legal entity Address

Format: Multiple-Line String

#### Data origin geography

Manditory: The geographical location where the data was originally collected, which can be important for compliance with regional laws and understanding the data's context.
 
Multiple Location Regions

Format:

- Telecom
- Address
  - Country, State, County, City, Postal-Code
- Country - may be ISO 3166 2 or 3 letter code
- Geo position

TODO: Likely need a bit more discussion and decisions on acceptable formats
- Concepts defined for region Content and Country

#### Dataset issue date

Manditory: The date when the dataset was compiled or created, providing a temporal context for the data.

Format: ISO-8601 - https://en.wikipedia.org/wiki/ISO_8601

Example: `2024-05-27`, or `2024-05-27T15:18:02Z`

#### Date of previously issued version of the dataset

Optional: The release date of the last version of the dataset, if it has been updated or revised, to track changes and updates over time.

Format: ISO-8601 - https://en.wikipedia.org/wiki/ISO_8601

Example: `2024-05-27`, or `2024-05-27T15:18:02Z`

#### Range of dates for data generation

Optional: The span of time during which the data within the dataset was collected or generated, offering insight into the dataset's timeliness and relevance.

Multiple pairs of Start and End date/time.

##### Start

Start of time for this period

Format: ISO-8601 - https://en.wikipedia.org/wiki/ISO_8601

##### End

End of time for this period

Format: ISO-8601 - https://en.wikipedia.org/wiki/ISO_8601

#### Method

Manditory: The methodology or procedures used to collect, generate, or compile the data, giving insight into its reliability and validity.

Multiple:

##### Method Concept

Format: Concept: from [Specific method types](#data-collection-methods) -- Extensible

##### Method Description

Format: String

#### Data format

Describes the nature of the data within the dataset, such as numerical, textual, or multimedia, helping users understand what kind of information is contained within the file or dataset.,

Format: mime-type https://www.rfc-editor.org/rfc/rfc6838.html

Concept Vocabulary: http://www.iana.org/assignments/media-types/

Example: `application/json`

### Use

This group describes legal, use, and restrictions.

#### Organizational content classification

TODO: This is not in the spreadsheet, but is in the usecase analysis.... so was it eliminated, or is my guess here correct.

Manditory: The organizational content classification. The level of sensitivity assigned to the dataset, such as personally identifiable information, which dictates how the dataset must be secured and who can access iEach classifier must be evaluated as true/false.

##### Public

Format: `true` / `false`

##### Internal

Format: `true` / `false`

##### Restricted

Format: `true` / `false`

##### Confidential

Format: `true` / `false`

##### Other

Format: if not `false`, then describe the other applicable classifier.

#### Confidentiality classification

Manditory: Indicate if the dataset includes data falling into the confidentiality classification. Each classifier must be evaluated as true/false/unknown.

TODO: Use-Case 1 was using the words "NOT ASSESSED" and "ASSESSED". I don't understand what that would mean. I could see an "unknown" as an indicate of a classification that was not done. But I don't understand what "ASSESSED" means, are data in the dataset or not?

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

Specifies where consent documentation or agreements related to the data can be found, ensuring legal compliance and regulatory use.

TODO: unclear what is recorded here
1. Is this just the policy that all the individuals that have been included have agreed to? Thus one URL.
2. Is this an array of individual specific copies? Thus each consent ceremony (e.g. individual signed paper) is available?
3. What formats are allowed? (is there a standard?) Is it a JPEG of the signature page?

TODO: How is N/A handled? 

TODO: How is it handled when a consent is needed upon use of the dataset?

Multiple: One entry for each Individual (TODO, is it one or more?)

##### Individual identifier

The individual identifier as given in the dataset. This may be an external identifier, or an identifier only used in the dataset.

Format: String, URN, or URL

Example: `#34` -- example of an internal number using URL anchor indication `#`

##### Consent

The URL to the Consent terms for the given individual.

Format: URL - https://datatracker.ietf.org/doc/html/rfc1738

Example: `https://example.org/dataset/34/consent.pdf`

#### Privacy indicators

Indicates whether techniques were used to protect personally identifiable information (PII) or sensitive personal information (SPI), highlighting the dataset's privacy considerations.

##### Specify whether PETs were used (select yes/no)	

Format: yes / no

If no, then this section is done.

##### Specify which tool(s) was used	

Format: Concept -- Extensible

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

##### Specify the parameters used (key value pairs)	

Format: String (tool specific)

##### Specify the resulting score

Format: String (tool specific)

#### Data processing geography

Optional: Defines the geographical boundaries within which the data can or cannot be processed, often for legal or regulatory reasons.

Multiple: list of `inclusion` areas and `exclusion` areas

Format: String, preference to use the following formats

- Telecom
- Address
  - Country, State, County, City, Postal-Code
- Country - may be ISO 3166 2 or 3 letter code
- Geo position

TODO: Likely need a bit more discussion and decisions on acceptable formats
- Concepts defined for region Content and Country

#### Data storage geography

Optional:  Specifies where the data is stored and any geographical restrictions on storage locations, crucial for compliance with data sovereignty laws.

Multiple: list of `inclusion` areas and `exclusion` areas

Format: String, preference to use the following formats

- Telecom
- Address
  - Country, State, County, City, Postal-Code
- Geo position

TODO: Likely need a bit more discussion and decisions on acceptable formats
- Concepts defined for region Content and Country

#### License to use

Details the location or point of contact for identifying the terms under which the dataset can be used, including any restrictions or obligations, clarifying legal use and distribution rights.

Format: String - Prefer License codes such as CreativeCommons or Apache

Example: `Apache-2.0`

#### Intended data use

Describes the purpose for which the dataset was created, guiding users on its intended use and potential applications against identified use cases. List all that 

Multiple:

Format: String, Shall indicate using the following vocabulary if they apply.

- Non-AI Staging/testing
- Non-AI Production
- Non-AI Quality assurance
- Non-AI Other
- AI Pre-Training
- AI Alignment
- AI Evaluation
- AI Sythentic Data Generation
- AI Other

#### Forbidden data use

Describes the purposes for which the dataset is not intended and can not be used.

Multiple:

Format: String, Shall indicate using the above vocabulary if they apply.

#### Propritary data presence

Indicates whether the dataset contains proprietary information that is owned by or exclusive to the organization, affecting how it can be shared or used.

This is made up of three sections: copyright, patent, and trademark.

Multiple

##### Copyright

Indicates whether the dataset contains propritary information that is covered with a Copyright, and the terms of said Copyright.

Format: String, where the string `no` indicates no Copyright

Multiple: unless `no` is indicated

##### Patent

Indicates whether the dataset contains propritary information that is covered with a Patent, and the said Patent number.

Format: String, where the string `no` indicates no Patent

Multiple: unless `no` is indicated

##### Trademark

Indicates whether the dataset contains propritary information that is covered with a Trademark, and the terms of said Trademark.

Format: String, where the string `no` indicates no Trademark

Multiple: unless `no` is indicated

## Schema

the detailed schema specification

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

## Annex

The Annex contain normative vocabulary to be used when it applies. These vocabulary SHALL be used when they apply.

### Data Collection Methods

The following defined vocabulary are to be used for the "Method". The vocabulary to use is the whole 

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
