# The 292-agent enterprise pool

Every function in the org map is its own agent, defined entirely by a `system_prompt`-only
manifest loaded at runtime (see [`docs/architecture.md`](../docs/architecture.md)). Each
agent runs inside the [metacognitive recursive pipeline](../docs/metacog-whitebox.md) and
surfaces its `feeds_into` edges so multi-agent flows become directed graphs.

Slugs below are the IDs used at `POST /pool/agents/{slug}` — see [`docs/api.md`](../docs/api.md).

> This list is generated from `scripts/gen_enterprise_agents.py` in the **private** repo.
> The *names* are public; the *prompts* are not.

## ai (20)
| Slug | Function | Lane |
|---|---|---|
| [`ai-applied`](https://github.com/rfi-irfos/lauras-agents) | Applied AI Research | AI Research |
| [`ai-fundamental`](https://github.com/rfi-irfos/lauras-agents) | Fundamental AI Research | AI Research |
| [`ai-llm-research`](https://github.com/rfi-irfos/lauras-agents) | LLM Research | AI Research |
| [`ai-rl`](https://github.com/rfi-irfos/lauras-agents) | Reinforcement Learning | AI Research |
| [`ai-safety-alignment`](https://github.com/rfi-irfos/lauras-agents) | AI Alignment | AI Safety |
| [`ai-safety-eval`](https://github.com/rfi-irfos/lauras-agents) | AI Evaluation | AI Safety |
| [`ai-safety-governance`](https://github.com/rfi-irfos/lauras-agents) | AI Governance | AI Safety |
| [`ai-safety-monitor`](https://github.com/rfi-irfos/lauras-agents) | AI Monitoring | AI Safety |
| [`ds-experimentation`](https://github.com/rfi-irfos/lauras-agents) | DS Experimentation | Data Science |
| [`ds-forecasting`](https://github.com/rfi-irfos/lauras-agents) | Forecasting | Data Science |
| [`ds-predictive`](https://github.com/rfi-irfos/lauras-agents) | Predictive Models | Data Science |
| [`ds-statistics`](https://github.com/rfi-irfos/lauras-agents) | Statistics | Data Science |
| [`ml-deployment`](https://github.com/rfi-irfos/lauras-agents) | Model Deployment | ML Engineering |
| [`ml-optimization`](https://github.com/rfi-irfos/lauras-agents) | Model Optimization | ML Engineering |
| [`ml-serving`](https://github.com/rfi-irfos/lauras-agents) | Model Serving | ML Engineering |
| [`ml-training`](https://github.com/rfi-irfos/lauras-agents) | Model Training | ML Engineering |
| [`mlops-feature-stores`](https://github.com/rfi-irfos/lauras-agents) | Feature Stores | MLOps |
| [`mlops-gpu`](https://github.com/rfi-irfos/lauras-agents) | GPU Infrastructure | MLOps |
| [`mlops-pipelines`](https://github.com/rfi-irfos/lauras-agents) | MLOps Pipelines | MLOps |
| [`mlops-registry`](https://github.com/rfi-irfos/lauras-agents) | Model Registry | MLOps |

## bi2 (3)
| Slug | Function | Lane |
|---|---|---|
| [`bi2-exec-dashboards`](https://github.com/rfi-irfos/lauras-agents) | Executive Dashboards | Business Intelligence |
| [`bi2-kpi-monitoring`](https://github.com/rfi-irfos/lauras-agents) | KPI Monitoring | Business Intelligence |
| [`bi2-ops-reporting`](https://github.com/rfi-irfos/lauras-agents) | Operational Reporting | Business Intelligence |

## corp-comms (4)
| Slug | Function | Lane |
|---|---|---|
| [`corpcomms-crisis`](https://github.com/rfi-irfos/lauras-agents) | Crisis Communication | Corporate Communications |
| [`corpcomms-media`](https://github.com/rfi-irfos/lauras-agents) | Media Relations | Corporate Communications |
| [`corpcomms-pr`](https://github.com/rfi-irfos/lauras-agents) | Corporate PR | Corporate Communications |
| [`corpcomms-speechwriting`](https://github.com/rfi-irfos/lauras-agents) | Executive Speechwriting | Corporate Communications |

## corp-dev (4)
| Slug | Function | Lane |
|---|---|---|
| [`corpdev-diligence`](https://github.com/rfi-irfos/lauras-agents) | Due Diligence | Corporate Development |
| [`corpdev-investments`](https://github.com/rfi-irfos/lauras-agents) | Investments | Corporate Development |
| [`corpdev-ma`](https://github.com/rfi-irfos/lauras-agents) | M&A | Corporate Development |
| [`corpdev-partnerships`](https://github.com/rfi-irfos/lauras-agents) | Partnerships | Corporate Development |

## corp-sec (4)
| Slug | Function | Lane |
|---|---|---|
| [`corpsec-badge`](https://github.com/rfi-irfos/lauras-agents) | Badge Access | Corporate Security |
| [`corpsec-exec-protection`](https://github.com/rfi-irfos/lauras-agents) | Executive Protection | Corporate Security |
| [`corpsec-investigations`](https://github.com/rfi-irfos/lauras-agents) | Investigations | Corporate Security |
| [`corpsec-travel`](https://github.com/rfi-irfos/lauras-agents) | Travel Security | Corporate Security |

## cyber (7)
| Slug | Function | Lane |
|---|---|---|
| [`cyber-awareness`](https://github.com/rfi-irfos/lauras-agents) | Security Awareness | Cybersecurity |
| [`cyber-forensics`](https://github.com/rfi-irfos/lauras-agents) | Digital Forensics | Cybersecurity |
| [`cyber-identity`](https://github.com/rfi-irfos/lauras-agents) | Cyber Identity Management | Cybersecurity |
| [`cyber-incident`](https://github.com/rfi-irfos/lauras-agents) | Cyber Incident Response | Cybersecurity |
| [`cyber-pen-test`](https://github.com/rfi-irfos/lauras-agents) | Penetration Testing | Cybersecurity |
| [`cyber-soc`](https://github.com/rfi-irfos/lauras-agents) | Security Operations Center | Cybersecurity |
| [`cyber-threat-intel`](https://github.com/rfi-irfos/lauras-agents) | Threat Intelligence | Cybersecurity |

## data (11)
| Slug | Function | Lane |
|---|---|---|
| [`bi-dashboards`](https://github.com/rfi-irfos/lauras-agents) | BI Dashboards | BI |
| [`bi-kpis`](https://github.com/rfi-irfos/lauras-agents) | KPI Reporting | BI |
| [`bi-reporting`](https://github.com/rfi-irfos/lauras-agents) | BI Reporting | BI |
| [`de-etl`](https://github.com/rfi-irfos/lauras-agents) | ETL | Data Engineering |
| [`de-lakehouses`](https://github.com/rfi-irfos/lauras-agents) | Lakehouses | Data Engineering |
| [`de-pipelines`](https://github.com/rfi-irfos/lauras-agents) | Data Pipelines | Data Engineering |
| [`de-warehouses`](https://github.com/rfi-irfos/lauras-agents) | Warehouses | Data Engineering |
| [`gov-catalog`](https://github.com/rfi-irfos/lauras-agents) | Data Catalog | Data Governance |
| [`gov-compliance`](https://github.com/rfi-irfos/lauras-agents) | Data Compliance | Data Governance |
| [`gov-data-quality`](https://github.com/rfi-irfos/lauras-agents) | Data Quality | Data Governance |
| [`gov-metadata`](https://github.com/rfi-irfos/lauras-agents) | Metadata | Data Governance |

## docs (4)
| Slug | Function | Lane |
|---|---|---|
| [`docs-api`](https://github.com/rfi-irfos/lauras-agents) | API Docs | Documentation |
| [`docs-internal`](https://github.com/rfi-irfos/lauras-agents) | Internal Documentation | Documentation |
| [`docs-knowledge`](https://github.com/rfi-irfos/lauras-agents) | Knowledge Management | Documentation |
| [`docs-tech-writers`](https://github.com/rfi-irfos/lauras-agents) | Technical Writers | Documentation |

## engineering (45)
| Slug | Function | Lane |
|---|---|---|
| [`arch-data`](https://github.com/rfi-irfos/lauras-agents) | Data Architects | Architecture |
| [`arch-enterprise`](https://github.com/rfi-irfos/lauras-agents) | Enterprise Architects | Architecture |
| [`arch-software`](https://github.com/rfi-irfos/lauras-agents) | Software Architects | Architecture |
| [`arch-solution`](https://github.com/rfi-irfos/lauras-agents) | Solution Architects | Architecture |
| [`be-apis`](https://github.com/rfi-irfos/lauras-agents) | Backend APIs | Backend |
| [`be-auth`](https://github.com/rfi-irfos/lauras-agents) | Authentication | Backend |
| [`be-business-logic`](https://github.com/rfi-irfos/lauras-agents) | Business Logic | Backend |
| [`be-microservices`](https://github.com/rfi-irfos/lauras-agents) | Microservices | Backend |
| [`be-payments`](https://github.com/rfi-irfos/lauras-agents) | Payments | Backend |
| [`devops-automation`](https://github.com/rfi-irfos/lauras-agents) | Deployment Automation | DevOps |
| [`devops-cicd`](https://github.com/rfi-irfos/lauras-agents) | CI/CD | DevOps |
| [`devops-deploy`](https://github.com/rfi-irfos/lauras-agents) | Deployment | DevOps |
| [`devops-release`](https://github.com/rfi-irfos/lauras-agents) | Release Engineering | DevOps |
| [`fe-accessibility`](https://github.com/rfi-irfos/lauras-agents) | Frontend Accessibility | Frontend |
| [`fe-desktop`](https://github.com/rfi-irfos/lauras-agents) | Frontend Desktop | Frontend |
| [`fe-mobile`](https://github.com/rfi-irfos/lauras-agents) | Frontend Mobile | Frontend |
| [`fe-performance`](https://github.com/rfi-irfos/lauras-agents) | Frontend Performance | Frontend |
| [`fe-web`](https://github.com/rfi-irfos/lauras-agents) | Frontend Web | Frontend |
| [`infra-capacity`](https://github.com/rfi-irfos/lauras-agents) | Capacity Planning | Infrastructure |
| [`infra-cloud`](https://github.com/rfi-irfos/lauras-agents) | Cloud Infrastructure | Infrastructure |
| [`infra-containers`](https://github.com/rfi-irfos/lauras-agents) | Containers | Infrastructure |
| [`infra-kubernetes`](https://github.com/rfi-irfos/lauras-agents) | Kubernetes | Infrastructure |
| [`infra-networking`](https://github.com/rfi-irfos/lauras-agents) | Networking | Infrastructure |
| [`infra-virtualization`](https://github.com/rfi-irfos/lauras-agents) | Virtualization | Infrastructure |
| [`platform-devex`](https://github.com/rfi-irfos/lauras-agents) | Developer Experience | Platform Engineering |
| [`platform-devtools`](https://github.com/rfi-irfos/lauras-agents) | Internal Developer Tools | Platform Engineering |
| [`platform-sdks`](https://github.com/rfi-irfos/lauras-agents) | SDKs | Platform Engineering |
| [`platform-sharedlibs`](https://github.com/rfi-irfos/lauras-agents) | Shared Libraries | Platform Engineering |
| [`qa-automation`](https://github.com/rfi-irfos/lauras-agents) | Automation QA | QA |
| [`qa-integration`](https://github.com/rfi-irfos/lauras-agents) | Integration Testing | QA |
| [`qa-manual`](https://github.com/rfi-irfos/lauras-agents) | Manual QA | QA |
| [`qa-performance`](https://github.com/rfi-irfos/lauras-agents) | Performance Testing | QA |
| [`qa-regression`](https://github.com/rfi-irfos/lauras-agents) | Regression Testing | QA |
| [`sece-ng-appsec`](https://github.com/rfi-irfos/lauras-agents) | AppSec Engineering | Security Engineering |
| [`sece-ng-automation`](https://github.com/rfi-irfos/lauras-agents) | Security Automation | Security Engineering |
| [`sece-ng-blue`](https://github.com/rfi-irfos/lauras-agents) | Blue Team | Security Engineering |
| [`sece-ng-cloudsec`](https://github.com/rfi-irfos/lauras-agents) | Cloud Security | Security Engineering |
| [`sece-ng-iam`](https://github.com/rfi-irfos/lauras-agents) | IAM | Security Engineering |
| [`sece-ng-red`](https://github.com/rfi-irfos/lauras-agents) | Red Team | Security Engineering |
| [`sece-ng-threat-det`](https://github.com/rfi-irfos/lauras-agents) | Threat Detection | Security Engineering |
| [`sece-ng-vuln`](https://github.com/rfi-irfos/lauras-agents) | Vulnerability Management | Security Engineering |
| [`sre-incident`](https://github.com/rfi-irfos/lauras-agents) | Incident Response | Site Reliability |
| [`sre-monitoring`](https://github.com/rfi-irfos/lauras-agents) | SRE Monitoring | Site Reliability |
| [`sre-reliability`](https://github.com/rfi-irfos/lauras-agents) | Reliability | Site Reliability |
| [`sre-scaling`](https://github.com/rfi-irfos/lauras-agents) | Scaling | Site Reliability |

## ent-apps (6)
| Slug | Function | Lane |
|---|---|---|
| [`entapps-crm`](https://github.com/rfi-irfos/lauras-agents) | CRM | Enterprise Applications |
| [`entapps-erp`](https://github.com/rfi-irfos/lauras-agents) | ERP | Enterprise Applications |
| [`entapps-finance`](https://github.com/rfi-irfos/lauras-agents) | Finance Systems | Enterprise Applications |
| [`entapps-hris`](https://github.com/rfi-irfos/lauras-agents) | HRIS | Enterprise Applications |
| [`entapps-procurement`](https://github.com/rfi-irfos/lauras-agents) | Procurement Systems | Enterprise Applications |
| [`entapps-workflow`](https://github.com/rfi-irfos/lauras-agents) | Workflow Automation | Enterprise Applications |

## ent-arch (4)
| Slug | Function | Lane |
|---|---|---|
| [`entarch-governance`](https://github.com/rfi-irfos/lauras-agents) | EA Governance | Enterprise Architecture |
| [`entarch-integration`](https://github.com/rfi-irfos/lauras-agents) | Systems Integration | Enterprise Architecture |
| [`entarch-roadmaps`](https://github.com/rfi-irfos/lauras-agents) | Long-term Technical Roadmaps | Enterprise Architecture |
| [`entarch-standards`](https://github.com/rfi-irfos/lauras-agents) | Technology Standards | Enterprise Architecture |

## executive (22)
| Slug | Function | Lane |
|---|---|---|
| [`board-of-directors`](https://github.com/rfi-irfos/lauras-agents) | Board of Directors | Executive Leadership |
| [`ceo`](https://github.com/rfi-irfos/lauras-agents) | CEO | Executive Leadership |
| [`cfo`](https://github.com/rfi-irfos/lauras-agents) | CFO | Executive Leadership |
| [`chief-ai-officer`](https://github.com/rfi-irfos/lauras-agents) | Chief AI Officer | Executive Leadership |
| [`chief-compliance-officer`](https://github.com/rfi-irfos/lauras-agents) | Chief Compliance Officer | Executive Leadership |
| [`chief-data-officer`](https://github.com/rfi-irfos/lauras-agents) | Chief Data Officer | Executive Leadership |
| [`chief-legal-officer`](https://github.com/rfi-irfos/lauras-agents) | Chief Legal Officer | Executive Leadership |
| [`chief-risk-officer`](https://github.com/rfi-irfos/lauras-agents) | Chief Risk Officer | Executive Leadership |
| [`chief-security-officer`](https://github.com/rfi-irfos/lauras-agents) | Chief Security Officer | Executive Leadership |
| [`chief-strategy-officer`](https://github.com/rfi-irfos/lauras-agents) | Chief Strategy Officer | Executive Leadership |
| [`chief-sustainability-officer`](https://github.com/rfi-irfos/lauras-agents) | Chief Sustainability Officer | Executive Leadership |
| [`chro`](https://github.com/rfi-irfos/lauras-agents) | CHRO | Executive Leadership |
| [`cio`](https://github.com/rfi-irfos/lauras-agents) | CIO | Executive Leadership |
| [`cmo`](https://github.com/rfi-irfos/lauras-agents) | CMO | Executive Leadership |
| [`coo`](https://github.com/rfi-irfos/lauras-agents) | COO | Executive Leadership |
| [`cpo`](https://github.com/rfi-irfos/lauras-agents) | CPO | Executive Leadership |
| [`cro`](https://github.com/rfi-irfos/lauras-agents) | CRO | Executive Leadership |
| [`cto`](https://github.com/rfi-irfos/lauras-agents) | CTO | Executive Leadership |
| [`executive-assistants`](https://github.com/rfi-irfos/lauras-agents) | Executive Assistants | Executive Leadership |
| [`pmo-exec`](https://github.com/rfi-irfos/lauras-agents) | PMO Executive Office | Executive Leadership |
| [`president`](https://github.com/rfi-irfos/lauras-agents) | President | Executive Leadership |
| [`strategy-office`](https://github.com/rfi-irfos/lauras-agents) | Strategy Office | Executive Leadership |

## facilities (5)
| Slug | Function | Lane |
|---|---|---|
| [`fac-offices`](https://github.com/rfi-irfos/lauras-agents) | Offices | Facilities |
| [`fac-physical-security`](https://github.com/rfi-irfos/lauras-agents) | Physical Security | Facilities |
| [`fac-real-estate`](https://github.com/rfi-irfos/lauras-agents) | Real Estate | Facilities |
| [`fac-reception`](https://github.com/rfi-irfos/lauras-agents) | Reception | Facilities |
| [`fac-workplace`](https://github.com/rfi-irfos/lauras-agents) | Workplace Services | Facilities |

## finance (13)
| Slug | Function | Lane |
|---|---|---|
| [`fin-ap`](https://github.com/rfi-irfos/lauras-agents) | Accounts Payable | Accounting |
| [`fin-ar`](https://github.com/rfi-irfos/lauras-agents) | Accounts Receivable | Accounting |
| [`fin-general-ledger`](https://github.com/rfi-irfos/lauras-agents) | General Ledger | Accounting |
| [`fin-budgeting`](https://github.com/rfi-irfos/lauras-agents) | Budgeting | FP&A |
| [`fin-forecasting`](https://github.com/rfi-irfos/lauras-agents) | Finance Forecasting | FP&A |
| [`fin-ir-earnings`](https://github.com/rfi-irfos/lauras-agents) | Earnings Calls | Investor Relations |
| [`fin-ir-sec`](https://github.com/rfi-irfos/lauras-agents) | SEC Communication | Investor Relations |
| [`fin-ir-shareholders`](https://github.com/rfi-irfos/lauras-agents) | Shareholders | Investor Relations |
| [`fin-procurement-finance`](https://github.com/rfi-irfos/lauras-agents) | Procurement Finance | Procurement Finance |
| [`fin-tax-corp`](https://github.com/rfi-irfos/lauras-agents) | Corporate Tax | Tax |
| [`fin-tax-intl`](https://github.com/rfi-irfos/lauras-agents) | International Tax | Tax |
| [`fin-treasury-cash`](https://github.com/rfi-irfos/lauras-agents) | Treasury Cash | Treasury |
| [`fin-treasury-invest`](https://github.com/rfi-irfos/lauras-agents) | Treasury Investments | Treasury |

## govt (3)
| Slug | Function | Lane |
|---|---|---|
| [`govt-lobbying`](https://github.com/rfi-irfos/lauras-agents) | Lobbying | Government Affairs |
| [`govt-policy`](https://github.com/rfi-irfos/lauras-agents) | Public Policy | Government Affairs |
| [`govt-regulatory`](https://github.com/rfi-irfos/lauras-agents) | Regulatory Affairs | Government Affairs |

## hr (13)
| Slug | Function | Lane |
|---|---|---|
| [`hr-bonus`](https://github.com/rfi-irfos/lauras-agents) | Bonus Programs | Compensation |
| [`hr-equity`](https://github.com/rfi-irfos/lauras-agents) | Equity | Compensation |
| [`hr-salary`](https://github.com/rfi-irfos/lauras-agents) | Salary | Compensation |
| [`hr-benefits`](https://github.com/rfi-irfos/lauras-agents) | Benefits | HR Operations |
| [`hr-contracts`](https://github.com/rfi-irfos/lauras-agents) | HR Contracts | HR Operations |
| [`hr-payroll`](https://github.com/rfi-irfos/lauras-agents) | Payroll | HR Operations |
| [`hr-leadership-programs`](https://github.com/rfi-irfos/lauras-agents) | Leadership Programs | Learning & Development |
| [`hr-training`](https://github.com/rfi-irfos/lauras-agents) | L&D Training | Learning & Development |
| [`hr-culture`](https://github.com/rfi-irfos/lauras-agents) | Culture | People Operations |
| [`hr-employee-exp`](https://github.com/rfi-irfos/lauras-agents) | Employee Experience | People Operations |
| [`hr-internal-comms`](https://github.com/rfi-irfos/lauras-agents) | HR Internal Communication | People Operations |
| [`hr-recruiters`](https://github.com/rfi-irfos/lauras-agents) | Recruiters | Talent Acquisition |
| [`hr-sourcers`](https://github.com/rfi-irfos/lauras-agents) | Sourcers | Talent Acquisition |

## info-mgmt (4)
| Slug | Function | Lane |
|---|---|---|
| [`infomgmt-doc-mgmt`](https://github.com/rfi-irfos/lauras-agents) | Document Management | Information Management |
| [`infomgmt-knowledge-graphs`](https://github.com/rfi-irfos/lauras-agents) | Knowledge Graphs | Information Management |
| [`infomgmt-records`](https://github.com/rfi-irfos/lauras-agents) | Records Retention | Information Management |
| [`infomgmt-search`](https://github.com/rfi-irfos/lauras-agents) | Search | Information Management |

## innovation (4)
| Slug | Function | Lane |
|---|---|---|
| [`innov-emerging`](https://github.com/rfi-irfos/lauras-agents) | Emerging Technologies | Innovation Office |
| [`innov-incubation`](https://github.com/rfi-irfos/lauras-agents) | Incubation | Innovation Office |
| [`innov-internal-startups`](https://github.com/rfi-irfos/lauras-agents) | Internal Startups | Innovation Office |
| [`innov-research-partners`](https://github.com/rfi-irfos/lauras-agents) | Research Partnerships | Innovation Office |

## internal-comms (4)
| Slug | Function | Lane |
|---|---|---|
| [`ic-ceo-comms`](https://github.com/rfi-irfos/lauras-agents) | CEO Communications | Internal Communications |
| [`ic-newsletters`](https://github.com/rfi-irfos/lauras-agents) | Newsletters | Internal Communications |
| [`ic-town-halls`](https://github.com/rfi-irfos/lauras-agents) | Town Halls | Internal Communications |
| [`ic-updates`](https://github.com/rfi-irfos/lauras-agents) | Company Updates | Internal Communications |

## it (5)
| Slug | Function | Lane |
|---|---|---|
| [`it-device`](https://github.com/rfi-irfos/lauras-agents) | Device Management | IT |
| [`it-enterprise-apps`](https://github.com/rfi-irfos/lauras-agents) | Enterprise Applications (IT) | IT |
| [`it-helpdesk`](https://github.com/rfi-irfos/lauras-agents) | IT Helpdesk | IT |
| [`it-identity`](https://github.com/rfi-irfos/lauras-agents) | IT Identity | IT |
| [`it-office`](https://github.com/rfi-irfos/lauras-agents) | Office Infrastructure | IT |

## legal (8)
| Slug | Function | Lane |
|---|---|---|
| [`legal-commercial`](https://github.com/rfi-irfos/lauras-agents) | Commercial Contracts | Legal |
| [`legal-compliance`](https://github.com/rfi-irfos/lauras-agents) | Legal Compliance | Legal |
| [`legal-corporate`](https://github.com/rfi-irfos/lauras-agents) | Corporate Law | Legal |
| [`legal-employment`](https://github.com/rfi-irfos/lauras-agents) | Employment Law | Legal |
| [`legal-ip`](https://github.com/rfi-irfos/lauras-agents) | IP | Legal |
| [`legal-licensing`](https://github.com/rfi-irfos/lauras-agents) | Licensing | Legal |
| [`legal-litigation`](https://github.com/rfi-irfos/lauras-agents) | Litigation | Legal |
| [`legal-privacy`](https://github.com/rfi-irfos/lauras-agents) | Privacy Law | Legal |

## marketing (23)
| Slug | Function | Lane |
|---|---|---|
| [`mkt-brand-campaigns`](https://github.com/rfi-irfos/lauras-agents) | Brand Campaigns | Brand |
| [`mkt-brand-identity`](https://github.com/rfi-irfos/lauras-agents) | Brand Identity | Brand |
| [`mkt-brand-messaging`](https://github.com/rfi-irfos/lauras-agents) | Brand Messaging | Brand |
| [`mkt-comms-analyst`](https://github.com/rfi-irfos/lauras-agents) | Analyst Relations | Communications |
| [`mkt-comms-pr`](https://github.com/rfi-irfos/lauras-agents) | PR | Communications |
| [`mkt-comms-press`](https://github.com/rfi-irfos/lauras-agents) | Press | Communications |
| [`mkt-community-discord`](https://github.com/rfi-irfos/lauras-agents) | Community Discord | Community |
| [`mkt-community-evangelism`](https://github.com/rfi-irfos/lauras-agents) | Evangelism | Community |
| [`mkt-community-events`](https://github.com/rfi-irfos/lauras-agents) | Community Events | Community |
| [`mkt-community-reddit`](https://github.com/rfi-irfos/lauras-agents) | Community Reddit | Community |
| [`mkt-content-blog`](https://github.com/rfi-irfos/lauras-agents) | Blog Content | Content |
| [`mkt-content-social`](https://github.com/rfi-irfos/lauras-agents) | Social Content | Content |
| [`mkt-content-tech`](https://github.com/rfi-irfos/lauras-agents) | Technical Writing | Content |
| [`mkt-content-video`](https://github.com/rfi-irfos/lauras-agents) | Video Content | Content |
| [`mkt-growth-conversion`](https://github.com/rfi-irfos/lauras-agents) | Conversion | Growth |
| [`mkt-growth-paid`](https://github.com/rfi-irfos/lauras-agents) | Paid Ads | Growth |
| [`mkt-growth-sem`](https://github.com/rfi-irfos/lauras-agents) | SEM | Growth |
| [`mkt-growth-seo`](https://github.com/rfi-irfos/lauras-agents) | SEO | Growth |
| [`mkt-ops-attr`](https://github.com/rfi-irfos/lauras-agents) | Attribution | Marketing Operations |
| [`mkt-ops-automation`](https://github.com/rfi-irfos/lauras-agents) | Marketing Automation | Marketing Operations |
| [`mkt-pm-competitive`](https://github.com/rfi-irfos/lauras-agents) | Competitive Intelligence | Product Marketing |
| [`mkt-pm-launches`](https://github.com/rfi-irfos/lauras-agents) | Launches | Product Marketing |
| [`mkt-pm-positioning`](https://github.com/rfi-irfos/lauras-agents) | Product Positioning | Product Marketing |

## operations (6)
| Slug | Function | Lane |
|---|---|---|
| [`ops-kpis`](https://github.com/rfi-irfos/lauras-agents) | Business Ops KPIs | Business Operations |
| [`ops-process`](https://github.com/rfi-irfos/lauras-agents) | Process Improvement | Business Operations |
| [`ops-lean`](https://github.com/rfi-irfos/lauras-agents) | Lean | Process Excellence |
| [`ops-six-sigma`](https://github.com/rfi-irfos/lauras-agents) | Six Sigma | Process Excellence |
| [`ops-competitive-intel`](https://github.com/rfi-irfos/lauras-agents) | Ops Competitive Intelligence | Strategy |
| [`ops-market-research`](https://github.com/rfi-irfos/lauras-agents) | Market Research | Strategy |

## pmo (4)
| Slug | Function | Lane |
|---|---|---|
| [`pmo-portfolio`](https://github.com/rfi-irfos/lauras-agents) | Portfolio Management | PMO |
| [`pmo-program`](https://github.com/rfi-irfos/lauras-agents) | Program Managers | PMO |
| [`pmo-resource`](https://github.com/rfi-irfos/lauras-agents) | Resource Planning | PMO |
| [`pmo-scrum`](https://github.com/rfi-irfos/lauras-agents) | Scrum Masters | PMO |

## procurement (4)
| Slug | Function | Lane |
|---|---|---|
| [`proc-negotiation`](https://github.com/rfi-irfos/lauras-agents) | Contract Negotiation | Procurement |
| [`proc-purchasing`](https://github.com/rfi-irfos/lauras-agents) | Purchasing | Procurement |
| [`proc-software-lic`](https://github.com/rfi-irfos/lauras-agents) | Software Licensing | Procurement |
| [`proc-vendor-sel`](https://github.com/rfi-irfos/lauras-agents) | Vendor Selection | Procurement |

## product (18)
| Slug | Function | Lane |
|---|---|---|
| [`customer-journey-analytics`](https://github.com/rfi-irfos/lauras-agents) | Customer Journey Analytics | Product Analytics |
| [`experimentation`](https://github.com/rfi-irfos/lauras-agents) | Experimentation | Product Analytics |
| [`feature-analytics`](https://github.com/rfi-irfos/lauras-agents) | Feature Analytics | Product Analytics |
| [`product-analysts`](https://github.com/rfi-irfos/lauras-agents) | Product Analysts | Product Analytics |
| [`accessibility-design`](https://github.com/rfi-irfos/lauras-agents) | Accessibility | Product Design |
| [`design-systems`](https://github.com/rfi-irfos/lauras-agents) | Design Systems | Product Design |
| [`information-architecture`](https://github.com/rfi-irfos/lauras-agents) | Information Architecture | Product Design |
| [`motion-design`](https://github.com/rfi-irfos/lauras-agents) | Motion Design | Product Design |
| [`prototyping`](https://github.com/rfi-irfos/lauras-agents) | Prototyping | Product Design |
| [`ui-design`](https://github.com/rfi-irfos/lauras-agents) | UI Design | Product Design |
| [`user-research`](https://github.com/rfi-irfos/lauras-agents) | User Research | Product Design |
| [`ux-design`](https://github.com/rfi-irfos/lauras-agents) | UX Design | Product Design |
| [`associate-pms`](https://github.com/rfi-irfos/lauras-agents) | Associate PMs | Product Organization |
| [`product-managers`](https://github.com/rfi-irfos/lauras-agents) | Product Managers | Product Organization |
| [`product-operations`](https://github.com/rfi-irfos/lauras-agents) | Product Operations | Product Organization |
| [`product-owners`](https://github.com/rfi-irfos/lauras-agents) | Product Owners | Product Organization |
| [`product-strategy`](https://github.com/rfi-irfos/lauras-agents) | Product Strategy | Product Organization |
| [`technical-pms`](https://github.com/rfi-irfos/lauras-agents) | Technical PMs | Product Organization |

## quality (4)
| Slug | Function | Lane |
|---|---|---|
| [`quality-audits`](https://github.com/rfi-irfos/lauras-agents) | Quality Audits | Quality |
| [`quality-iso`](https://github.com/rfi-irfos/lauras-agents) | Quality ISO | Quality |
| [`quality-process`](https://github.com/rfi-irfos/lauras-agents) | Process Quality | Quality |
| [`quality-supplier`](https://github.com/rfi-irfos/lauras-agents) | Supplier Quality | Quality |

## research (4)
| Slug | Function | Lane |
|---|---|---|
| [`research-longterm`](https://github.com/rfi-irfos/lauras-agents) | Long-term Research | Research |
| [`research-patents`](https://github.com/rfi-irfos/lauras-agents) | Patents | Research |
| [`research-publications`](https://github.com/rfi-irfos/lauras-agents) | Publications | Research |
| [`research-university`](https://github.com/rfi-irfos/lauras-agents) | University Relations | Research |

## risk (7)
| Slug | Function | Lane |
|---|---|---|
| [`risk-enterprise`](https://github.com/rfi-irfos/lauras-agents) | Enterprise Risk | Risk & Compliance |
| [`risk-ethics`](https://github.com/rfi-irfos/lauras-agents) | Ethics | Risk & Compliance |
| [`risk-gdpr`](https://github.com/rfi-irfos/lauras-agents) | GDPR | Risk & Compliance |
| [`risk-hipaa`](https://github.com/rfi-irfos/lauras-agents) | HIPAA | Risk & Compliance |
| [`risk-internal-controls`](https://github.com/rfi-irfos/lauras-agents) | Internal Controls | Risk & Compliance |
| [`risk-iso`](https://github.com/rfi-irfos/lauras-agents) | ISO | Risk & Compliance |
| [`risk-sox`](https://github.com/rfi-irfos/lauras-agents) | SOX Compliance | Risk & Compliance |

## sales (13)
| Slug | Function | Lane |
|---|---|---|
| [`cs-adoption`](https://github.com/rfi-irfos/lauras-agents) | Adoption | Customer Success |
| [`cs-expansion`](https://github.com/rfi-irfos/lauras-agents) | Expansion | Customer Success |
| [`cs-onboarding`](https://github.com/rfi-irfos/lauras-agents) | Customer Success Onboarding | Customer Success |
| [`cs-renewals`](https://github.com/rfi-irfos/lauras-agents) | Renewals | Customer Success |
| [`ent-ae`](https://github.com/rfi-irfos/lauras-agents) | Enterprise Account Executives | Enterprise Sales |
| [`ent-se`](https://github.com/rfi-irfos/lauras-agents) | Sales Engineers | Enterprise Sales |
| [`ent-solutions`](https://github.com/rfi-irfos/lauras-agents) | Solutions Consultants | Enterprise Sales |
| [`revops`](https://github.com/rfi-irfos/lauras-agents) | Revenue Operations | RevOps |
| [`smb-inside`](https://github.com/rfi-irfos/lauras-agents) | Inside Sales | SMB Sales |
| [`smb-regional`](https://github.com/rfi-irfos/lauras-agents) | Regional Sales | SMB Sales |
| [`salesops-crm`](https://github.com/rfi-irfos/lauras-agents) | Sales Ops CRM | Sales Operations |
| [`salesops-forecasting`](https://github.com/rfi-irfos/lauras-agents) | Sales Forecasting | Sales Operations |
| [`salesops-territory`](https://github.com/rfi-irfos/lauras-agents) | Territory Planning | Sales Operations |

## supply-chain (6)
| Slug | Function | Lane |
|---|---|---|
| [`sc-inventory`](https://github.com/rfi-irfos/lauras-agents) | Inventory | Supply Chain |
| [`sc-logistics`](https://github.com/rfi-irfos/lauras-agents) | Logistics | Supply Chain |
| [`sc-manufacturing`](https://github.com/rfi-irfos/lauras-agents) | Manufacturing | Supply Chain |
| [`sc-procurement`](https://github.com/rfi-irfos/lauras-agents) | Supply Chain Procurement | Supply Chain |
| [`sc-vendor-mgmt`](https://github.com/rfi-irfos/lauras-agents) | Vendor Management | Supply Chain |
| [`sc-warehousing`](https://github.com/rfi-irfos/lauras-agents) | Warehousing | Supply Chain |

## support (6)
| Slug | Function | Lane |
|---|---|---|
| [`support-engineering`](https://github.com/rfi-irfos/lauras-agents) | Support Engineering | Customer Support |
| [`support-enterprise`](https://github.com/rfi-irfos/lauras-agents) | Enterprise Support | Customer Support |
| [`support-escalation`](https://github.com/rfi-irfos/lauras-agents) | Escalation Team | Customer Support |
| [`support-helpdesk`](https://github.com/rfi-irfos/lauras-agents) | Help Desk | Customer Support |
| [`support-kb`](https://github.com/rfi-irfos/lauras-agents) | Knowledge Base | Customer Support |
| [`support-tech`](https://github.com/rfi-irfos/lauras-agents) | Technical Support | Customer Support |

## sustainability (4)
| Slug | Function | Lane |
|---|---|---|
| [`sustain-carbon`](https://github.com/rfi-irfos/lauras-agents) | Carbon | Sustainability |
| [`sustain-env-reporting`](https://github.com/rfi-irfos/lauras-agents) | Environmental Reporting | Sustainability |
| [`sustain-esg`](https://github.com/rfi-irfos/lauras-agents) | ESG | Sustainability |
| [`sustain-supply-chain`](https://github.com/rfi-irfos/lauras-agents) | Supply Chain Sustainability | Sustainability |
