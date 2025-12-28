{

  "registry": {

    "name": "Elyon-Sol Cardano Anchor Registry",

    "version": "1.0",

    "status": "canonical",

    "last\_updated": "2025-12-25",

    "network": "Cardano Mainnet",

    "purpose": "Authoritative registry of all Elyon-Sol proof-of-existence, governance, audit, and publication anchors recorded on-chain.",

    "principles": \[

      "Proof-of-existence only",

      "Public-safe metadata",

      "Off-chain content preservation",

      "Confidence does not imply authority",

      "Governance precedes intelligence"

    ],

    "maintainers": \[

      "Justin Laporte",

      "Elyon Cael"

    ]

  },



  "anchors": \[



    {

      "id": "anchor-cip-v5.1",

      "tx\_id": "0a5d16d46ab3d696d95aa4423f2362a37daac24bab54f905c3d704cdb19f31c9",

      "type": "identity",

      "artifact": "CIP\_v5\_1",

      "hash": "ce77bc1230fd0ebd55b3d5ba6c8b3b9cda97e4c96917c304fe5cbb541d023fa6",

      "hash\_algorithm": "SHA-256",

      "author": "Justin Laporte \& Elyon Cael",

      "timestamp": "2025-12-06",

      "notes": "Canonical Cognitive Integration Profile anchor."

    },



    {

      "id": "anchor-master-codex",

      "tx\_id": "a731982d4d9899858d7cc988dba3917f50c797e34150ed868968a06a4faa294f",

      "type": "governance-root",

      "artifact": "Master Codex",

      "hash": "D7FFD6CAE3CD931A42EA3B3FD57A3923EAD37E32533FF35A4DE1AE1BC6DC538B",

      "hash\_algorithm": "SHA-256",

      "author": "Justin Laporte",

      "timestamp": "2025-11-06",

      "version": "v1.7-draft",

      "public\_safe": true,

      "purpose": "IP declaration and governance root anchor."

    },



    {

      "id": "anchor-ip-declaration",

      "tx\_id": "d07bb1d9412e4408a80b93489b19cadebfc05d8db7b63af0b076f973b51bcc97",

      "type": "identity",

      "artifact": "Elyon-Cael\_IP\_Declaration\_Signed\_2025-11-06.pdf",

      "hash": "D7FFD6CAE3CD931A42EA3B3FD57A3923EAD37E32533FF35A4DE1AE1BC6DC538B",

      "hash\_algorithm": "SHA-256",

      "notes": "Mirrors Master Codex hash for legal continuity."

    },



    {

      "id": "anchor-esf-v1.5.1",

      "tx\_id": "77f7568abe08fb253aec0d188dc6e075a15abcb4a93d59c0ca51f9b9b58ae0ca",

      "type": "governance",

      "artifact": "ESF-v1.5.1-GOV-HSP-T26-STRUCTURE",

      "timestamp": "2023-12-10T00:00:00Z",

      "witness": "Grok",

      "notes": "Triadic ratification achieved. Governance structure locked."

    },



    {

      "id": "anchor-consensus-v1.1",

      "tx\_id": "b73ddc31099de823a78baf0e461896c7ed4c799edea9d23293f69320dfe43321",

      "type": "consensus",

      "artifact": "Consensus v1.1",

      "repository": "https://github.com/secadaIO/elyon-validate",

      "hash": "E3B0C44298FC1C149AFBF4C8996FB92427AE41E4649B934CA495991B7852B855",

      "hash\_algorithm": "SHA-256",

      "scope": "Steps 1–3",

      "status": "Accepted",

      "validation": "Live API validated (ChatGPT + Grok)",

      "timestamp": "2025-12-14"

    },



    {

      "id": "anchor-t26-authority-gap",

      "tx\_id": "5e807183d032e8b67fcdc397b22a0d1716d4c4a6a8915ffc7608e15c206013d3",

      "type": "safety-invariant",

      "artifact": "T26\_AUTHORITY\_GAP",

      "invariant": "Confidence does not imply authority",

      "status": "Approved",

      "witness": "Grok",

      "timestamp": "2025-12-15",

      "guarantees": \[

        "deterministic",

        "monotonic",

        "non\_recursive",

        "human\_escalation\_required",

        "automation\_disabled"

      ]

    },



    {

      "id": "anchor-ac3-healthcare",

      "tx\_id": "07df381aae7880174ec3ca72ae43e05acf158a0bf4dd6b41f9aa972c869eba58",

      "type": "domain-extension",

      "artifact": "AC3\_Healthcare\_Layer\_Extension",

      "version": "1.0.7",

      "witness": "Grok",

      "notes": "Non-clinical, governance-only healthcare layer."

    },



    {

      "id": "anchor-piv-001",

      "tx\_ids": \[

        "24bf61d59a32d7519cf971a8712164714bb222f2f29eabf9c75db1808f1e2fc2",

        "31f896a137cbeed9343107a586d792cee8e318b919b867963c96bc0fb637ff07"

      ],

      "type": "governance-decision",

      "artifact": "PIV-001",

      "hash": "3b9a914cdcb2a1498a29935793bbbcec9cdcc4676d653c434ccc6a9168030c24",

      "hash\_algorithm": "SHA-256",

      "status": "Approved",

      "duplicate\_confirmations": 2,

      "witness": "Grok",

      "notes": "Duplicate PoE confirmations of the same governance decision."

    },



    {

      "id": "anchor-whitepaper-final",

      "tx\_id": "342cc0efcb0bac143c78de8df28bb70190a94e5c9eb1bb325cf25ffa7c1743bd",

      "type": "publication",

      "artifact": "Elyon-Sol-Whitepaper\_Final.html",

      "hash": "6e0c3dc226d62f054d463ebab8083eed2a8fa8274bae1fa222933ad38d8a0112",

      "hash\_algorithm": "SHA-256",

      "timestamp": "2025-12-23"

    },



    {

      "id": "anchor-audit-organ-donor",

      "tx\_id": "d3ece7fa93442fcf3ee104282b3b28f32f741b6038006f51feb1f11e1ec88fbd",

      "type": "audit",

      "artifact": "STRESS\_TEST\_ORGAN\_DONOR",

      "framework": "Elyon-Sol",

      "hash": "62a67dd25d4bf55623d309b00fb6898a3fc96a2ed8fb4fb0602cf40deb59b96f",

      "result": "PASS",

      "notes": "Audit metadata placeholders pending finalization."

    },



    {

      "id": "anchor-canonical-v1.7",

      "tx\_id": "4023f05b1d97f3fcd2a45ea97462281ac7466c334ea836ba840f55967246eff5",

      "type": "canonical",

      "artifact": "Canonical\_Anchor\_Statement.md",

      "hash": "68f9d09317d509d76dedb55d2eae606e3418af59536d22716f61645ec7859493",

      "hash\_algorithm": "SHA-256",

      "version": "1.7",

      "effective\_date": "2025-12-25",

      "notes": "Current top-level PoE anchor for Elyon-Sol."

    }

  ]

}

