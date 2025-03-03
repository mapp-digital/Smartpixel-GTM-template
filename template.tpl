___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "displayName": "Mapp Cloud Tracking",
  "description": "Initialise and configure tracking for Mapp Intelligence.",
  "categories": [
    "ANALYTICS",
    "CONVERSIONS",
    "MARKETING"
  ],
  "securityGroups": [],
  "id": "cvt_temp_public_id",
  "type": "TAG",
  "version": 1,
  "brand": {
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGAAAABgCAYAAADimHc4AAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH5AEeCS4g8x/oQwAAA5VJREFUeNrt202ITlEcx/EvY4zXGc3kZcq7aRaMmQ0RG5IdsZhkko1iYTYWSmFHKWVnM8pCFhIpFkRCISmR98iQ12EGmUGMl+exmP9C03PPvc+de45n8vvUrafufe75n/O/555z7u2CiIiIiIiIiIiIiIiIiIiIiIiIiEhmhgQqpwaYBFQDFQX254GvwHugw377UAHUAuOBygL1zwPfgA/AW6B7sCdgFbASaACmAxMdx/4EXgPtwA3gKHArozjqgRZgITALmAyMjDg2B7wBngO3gVPA2cHWs9YBr4Beu6qK3XLAD+AaMG8AcdQBZ+xcv1PG0Qs8AZYMhttZgzVaPuPtIDCtiFiqgV0e4jhsvafkDAV22JWW97Q9BzYkiGURcNVjHO+ATaWWgGMeK/z31gvsc4xdzUBXgDhy1iv/uTLgfMpK/E55X84De6zX/W15yjEnZ3HkUvz3XIE4gs2CRgNHbJaTxCfgPvCi3xSvyqaoM4Amx+ykv73ANvu91AbbioT/vWOzrQ6bcv4ERgET7B5fb7O2JE4Da4HPoa/+PQmvki6gFZhjg2PUhVBjx+ywyiQ59xZrrKS3nf3AfFsLDI+IZYxdDCuAKwnP2xa68RcmDOwQUJ7i/FXAyQS3qE7rTXFx3Lb5fxqrbWEYV0ZzqMYflqDSncCaDMraWkRvKLT9Ag5kEMcE4FKCMW1SiATsjgnkI7Agw/JW2viRZnDdnGEcVcCFmDJPhHim8zQmiPkeyt1Y5BojZ2NU1o9aymJ6f9cAV+6xWoDvjgBaPZZ9vIgE3Bzo9NChMabsnb4aoNzup1EFX7bxwZexwJeECZjredXf5ij7osWauWrgnqPg9QHGn+0JGv94gDiWAT2O1Xqtj0KnxjynqQ9Q8doECWgIEEelTW2jYlhaTHcq5pl6lNfA4wAV/0Lfu4IoD+xi8K0HeOjYv9hHApoc+x4FWoP0WiNHuWWzpRCuO/bN9pEA1/P49kCV/mW9LcpLe64TgqvOk30kYLhjX3egSudiHnr12DEhfHLsG+cjAfmYhiFgEkohDld7DPGRALIo0HNZIePIbFEhSoASIEqAEiBKgBIgSoASIEqAEiBKgBIgSoASIEqAEiAlkgDXxw/DAsZcnnJfyLYbkfQkxbzCawRmUvi9613gWaCK19H3IUe+QF3u0/dJaQhT6Psct1Bi3lEi35CJiIiIiIiIiIiIiIiIiIiIiIiIyH/lDzziTp+TUYygAAAAAElFTkSuQmCC",
    "displayName": "mapp-digital",
    "id": "github.com_mapp-digital"
  },
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "LABEL",
    "name": "tagExplanation",
    "displayName": "You can send data for a page or an event. \u003cbr\u003e Please note that Mapp Intelligence needs an initial page request in every session."
  },
  {
    "type": "RADIO",
    "name": "requestType",
    "displayName": "Request Type",
    "radioItems": [
      {
        "value": "page",
        "displayValue": "Page"
      },
      {
        "value": "event",
        "displayValue": "Event"
      }
    ],
    "simpleValueType": true
  },
  {
    "help": "Enter your Mapp Intelligence Track ID here. If you want to send the same information to several accounts, simply enter the corresponding Track IDs separated by a comma. You find it at \"Mapp Intelligence Q3 \u003e  Configuration \u003e System Configuration \u003e Data Collection \u003e Your Track ID\"",
    "displayName": "Track ID",
    "simpleValueType": true,
    "name": "initTrackId",
    "type": "TEXT",
    "enablingConditions": [
      {
        "paramName": "requestType",
        "paramValue": "page",
        "type": "EQUALS"
      }
    ],
    "valueHint": "01234567891234 (String)"
  },
  {
    "help": "Enter the domain to which you want the data to be sent. If you are using a Mapp Intelligence Track Domain, you should have received an email containing this Domain, among other information regarding the setup.",
    "displayName": "Track Domain",
    "simpleValueType": true,
    "name": "initTrackDomain",
    "type": "TEXT",
    "enablingConditions": [
      {
        "paramName": "requestType",
        "paramValue": "page",
        "type": "EQUALS"
      }
    ],
    "valueHint": "track.mapp.com (String)"
  },
  {
    "type": "TEXT",
    "name": "initDomain",
    "displayName": "Manual exclusion of referrers",
    "simpleValueType": true,
    "help": "By default, the domain that includes the Smart Pixel is not counted as a referrer in Mapp Intelligence. Here you can override this setting. \u003cbr\u003e\nAdd all (sub)domains that should be excluded from referrer analyses (e.g. your own domain, payment providers etc.). \u003cbr\u003e\nEnter these (sub)domains as comma-separated list of domains and subdomains without http(s).You can use wildcards (*) to include subdomains.",
    "enablingConditions": [
      {
        "paramName": "requestType",
        "paramValue": "page",
        "type": "EQUALS"
      }
    ],
    "valueHint": "*.domain.com,payment.com (String)",
    "lineCount": 2,
    "valueValidators": [
      {
        "type": "REGEX",
        "args": [
          "^\\S*$"
        ],
        "errorMessage": "Please delete all whitespaces"
      }
    ]
  },
  {
    "help": "Please choose whether you want to set the cookie via the browser or via the server.\u003cbr /\u003eWe only recommend to use server-side cookies if your are using a custom track domain and if the track domain is the same as your web domain. This allows first party tracking and the highest data quality.",
    "macrosInSelect": false,
    "selectItems": [
      {
        "displayValue": "1: client-side cookies",
        "value": 1
      },
      {
        "displayValue": "3: server-side cookies",
        "value": 3
      }
    ],
    "displayName": "Set Cookie",
    "defaultValue": 1,
    "simpleValueType": true,
    "name": "cookie",
    "type": "SELECT",
    "enablingConditions": [
      {
        "paramName": "requestType",
        "paramValue": "page",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "CHECKBOX",
    "name": "loadSmartPixelFromCDN",
    "checkboxText": "Load SmartPixel from Mapp CDN",
    "simpleValueType": true,
    "defaultValue": false,
    "help": "Check if you want to load SmartPixel via Mapp CDN. Leave unchecked to include the SmartPixel via the custom HTML tag.\u003cbr\u003e\u003cstrong\u003ePlease note:\u003c/strong\u003e Only load the SmartPixel once. If you configure multiple tags leave the box unchecked for any future Mapp Intelligence tags.",
    "alwaysInSummary": true
  },
  {
    "type": "SIMPLE_TABLE",
    "name": "advanced2",
    "displayName": "Advanced configuration",
    "simpleTableColumns": [
      {
        "defaultValue": "",
        "displayName": "Setting",
        "name": "parameter",
        "type": "SELECT",
        "selectItems": [
          {
            "value": "secureCookie",
            "displayValue": "secureCookie"
          },
          {
            "value": "productMerge",
            "displayValue": "productMerge"
          },
          {
            "value": "registerObfuscation",
            "displayValue": "registerObfuscation"
          },
          {
            "value": "requestObfuscation",
            "displayValue": "requestObfuscation"
          },
          {
            "value": "tabBrowsing",
            "displayValue": "tabBrowsing"
          },
          {
            "value": "preRendering",
            "displayValue": "preRendering"
          },
          {
            "value": "forceOldEverId",
            "displayValue": "forceOldEverId"
          },
          {
            "value": "sendViaSDK",
            "displayValue": "sendViaSDK"
          },
          {
            "value": "requestQueue_activated",
            "displayValue": "RequestQueue: activated"
          },
          {
            "value": "requestQueue_resendInterval",
            "displayValue": "RequestQueue: resendInterval"
          },
          {
            "value": "requestQueue_ttl",
            "displayValue": "RequestQueue: ttl"
          },
          {
            "value": "requestQueue_size",
            "displayValue": "RequestQueue: size"
          },
          {
            "value": "requestQueue_retries",
            "displayValue": "RequestQueue: retries"
          },
          {
            "value": "requestQueue_retriesOption",
            "displayValue": "RequestQueue: retriesOption"
          },
          {
            "value": "sendViaServer_activated",
            "displayValue": "SendViaServer: activated"
          },
          {
            "value": "sendViaServer_serverDomain",
            "displayValue": "SendViaServer: serverDomain"
          },
          {
            "value": "sendViaServer_serverPath",
            "displayValue": "SendViaServer: serverPath"
          },
          {
            "value": "sendViaServer_droppedRequests",
            "displayValue": "SendViaServer: droppedRequests"
          },
          {
            "value": "sendViaServer_blacklist",
            "displayValue": "SendViaServer: blacklist"
          },
          {
            "value": "useHashForDefaultPageName",
            "displayValue": "useHashForDefaultPageName"
          },
          {
            "value": "useParamsForDefaultPageName",
            "displayValue": "useParamsForDefaultPageName"
          },
          {
            "value": "requestLimit_activated",
            "displayValue": "RequestLimit: activated"
          },
          {
            "value": "requestLimit_amount",
            "displayValue": "RequestLimit: amount"
          },
          {
            "value": "requestLimit_duration",
            "displayValue": "RequestLimit: duration"
          }
        ]
      },
      {
        "defaultValue": "",
        "displayName": "Value",
        "name": "value",
        "type": "TEXT"
      }
    ],
    "newRowButtonText": "Add Advanced Config Setting",
    "help": "Find more information about each setting here: \u003ca href\u003d\"https://documentation.mapp.com/1.0/en/advanced-15741253.html\" target\u003d\"_blank\"\u003eSmartpixel Advanced Settings\u003c/a\u003e\u003c/br\u003e\u003c/br\u003e\nsecureCookie: true, false\u003c/br\u003e\nproductMerge: true, false\u003c/br\u003e\nregisterObfuscation: true, false\u003c/br\u003e\nrequestObfuscation: true, false\u003c/br\u003e\ntabBrowsing: true, false\u003c/br\u003e\npreRendering: true, false\u003c/br\u003e\nforceOldEverId: true, false\u003c/br\u003e\nrequestQueue.activated: true, false\u003c/br\u003e\nrequestQueue.ttl: number (seconds)\u003c/br\u003e\nrequestQueue.resendInterval: number (milliseconds)\u003c/br\u003e\nrequestQueue.size: number\u003c/br\u003e\nrequestQueue.retries: number\u003c/br\u003e\nrequestQueue.retriesOption: 1,2\u003c/br\u003e\nsendViaSDK: true, false\u003c/br\u003e\nsendViaServer.activated: true, false\u003c/br\u003e\nsendViaServer.serverDomain: string\u003c/br\u003e\nsendViaServer.serverPath: string\u003c/br\u003e\nsendViaServer.droppedRequests: 0,1,2,3\u003c/br\u003e\nsendViaServer.blacklist: string1,string2,string3\u003c/br\u003e\nuseHashForDefaultPageName: true, false\u003c/br\u003e\nuseParamsForDefaultPageName: string1,string2,string3\u003c/br\u003e\nrequestLimit.activated: true, false\u003c/br\u003e\nrequestLimit.amount: number\u003c/br\u003e\nrequestLimit.duration: number (seconds)",
    "enablingConditions": [
      {
        "paramName": "requestType",
        "paramValue": "page",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "SIMPLE_TABLE",
    "name": "gdpr",
    "displayName": "GDPR Configuration",
    "simpleTableColumns": [
      {
        "defaultValue": "",
        "displayName": "Setting",
        "name": "parameter",
        "type": "SELECT",
        "selectItems": [
          {
            "value": "optOutName",
            "displayValue": "optOutName (opt-out cookie)"
          },
          {
            "value": "userIdentification_enableAnonymousFunction",
            "displayValue": "UserIdentification: enableAnonymousFunction"
          },
          {
            "value": "userIdentification_anonymousCookieName",
            "displayValue": "UserIdentification: anonymousCookieName"
          },
          {
            "value": "userIdentification_anonymousOptIn",
            "displayValue": "UserIdentification: anonymousOptIn"
          },
          {
            "value": "userIdentification_suppressParameter",
            "displayValue": "UserIdentification: suppressParameter"
          },
          {
            "value": "userIdentification_temporarySessionId",
            "displayValue": "UserIdentification: temporarySessionId"
          },
          {
            "value": "userIdentification_saveTemporarySessionId",
            "displayValue": "UserIdentification: saveTemporarySessionId"
          }
        ]
      },
      {
        "defaultValue": "",
        "displayName": "Value",
        "name": "value",
        "type": "TEXT"
      }
    ],
    "newRowButtonText": "Add GDPR Config Setting",
    "help": "Find more information about each setting here: \u003ca href\u003d\"https://documentation.mapp.com/1.0/en/advanced-15741253.html\" target\u003d\"_blank\"\u003eSmartpixel Advanced Settings\u003c/a\u003e\u003c/br\u003e\u003c/br\u003e\n\noptOutName: string\u003c/br\u003e\nuserIdentification.enableAnonymousFunction: true, false\u003c/br\u003e\nuserIdentification.anonymousCookieName: string\u003c/br\u003e\nuserIdentification.anonymousOptIn: true, false\u003c/br\u003e\nuserIdentification.suppressParameter: string1,string2,string3\u003c/br\u003e\nuserIdentification.temporarySessionId: string\u003c/br\u003e\nuserIdentification.saveTemporarySessionId: true, false",
    "enablingConditions": [
      {
        "paramName": "requestType",
        "paramValue": "page",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "acquire",
    "displayName": "Mapp Acquire",
    "simpleValueType": true,
    "lineCount": 2,
    "help": "Paste your Mapp Acquire script tag here.",
    "valueValidators": [
      {
        "type": "REGEX",
        "args": [
          "(^$|.*id\u003d\\d+\u0026m\u003d\\d+.*)"
        ]
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "actionGroup",
    "displayName": "Event",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "actionName",
        "displayName": "Event name",
        "simpleValueType": true,
        "help": "The name will be used in the \"Events\" analysis.",
        "valueHint": "en.homepage.search (String)"
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "actionParameter",
        "displayName": "Event Parameter",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "ID",
            "name": "id",
            "type": "TEXT",
            "valueHint": "Positive integer",
            "isUnique": true,
            "valueValidators": [
              {
                "type": "POSITIVE_NUMBER"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "valueHint": "String"
          }
        ],
        "newRowButtonText": "Add event parameter",
        "help": "Event parameters can be used to log additional information about an event (e.g. Click area, Link type). \u003cbr\u003e\nEach parameter has to be configured in Mapp Intelligence Q3 in order to be tracked. Please enter the ID as given in your configuration in the first column."
      }
    ],
    "enablingConditions": [
      {
        "paramName": "requestType",
        "paramValue": "event",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "extensionActionGroup",
    "displayName": "Automatic tracking of HTML element click events",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "LABEL",
        "name": "extensionActionDescription",
        "displayName": "Clicks on HTML elements can be tracked automatically. \u003cbr\u003e\u003cbr\u003eHint: If Shadow DOM elements are added to the page after this tag is executed, you can mark them by adding another instance of the Mapp Intelligence Smartpixel tag and the \u0027event\u0027 setting. You\u0027ll find a \u0027reload\u0027 checkbox here then. \u003cbr\u003e",
        "enablingConditions": [
          {
            "paramName": "requestType",
            "paramValue": "page",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "CHECKBOX",
        "name": "extensionActionReload",
        "checkboxText": "Reload links",
        "simpleValueType": true,
        "help": "Activate this to parse your page for link elements again. Useful for lazyload mechanisms.",
        "enablingConditions": [
          {
            "paramName": "requestType",
            "paramValue": "event",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "CHECKBOX",
        "name": "extensionActionActivate",
        "checkboxText": "Activate automatic tracking",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "requestType",
            "paramValue": "page",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "RADIO",
        "name": "extensionActionType",
        "displayName": "Event tracking type",
        "radioItems": [
          {
            "value": "link",
            "displayValue": "Link (Automatic naming of href elements)",
            "help": ""
          },
          {
            "value": "standard",
            "displayValue": "Standard (Manual naming of href elements)"
          },
          {
            "value": "advanced",
            "displayValue": "Advanced (Tracking of any HTML element)"
          }
        ],
        "simpleValueType": true,
        "help": "\u003cb\u003eLink\u003c/b\u003e\u003cbr\u003e \n\u003cul\u003e\n\u003cli\u003eAll HTML-links are tracked. \u003c/li\u003e\n\u003cli\u003eUses the target URL of the link elements (href) as name, minus \"http(s)\" and possible URL parameters or anchors. \u003c/li\u003e\n\u003cli\u003eYou can add individual information and make the link name unique by using the value of the \"Link marking attribute\". It will be used as prefix, if it is available in the element.\u003c/li\u003e\n\u003c/ul\u003e\n\u003cb\u003eStandard\u003c/b\u003e\n\u003cul\u003e\u003cli\u003eOnly links that have the selected \"Link marking attribute\" are tracked. \u003c/li\u003e\n\u003cli\u003e The value of the attribute is used as the event name. \u003c/li\u003e\n\u003c/ul\u003e\n\u003cb\u003eAdvanced\u003c/b\u003e\n\u003cul\u003e\u003cli\u003eAll HTML elements on a page can be tracked. \u003c/li\u003e\n\u003cli\u003eElements need to be specified with a CSS selector. \u003c/li\u003e\n\u003cli\u003eEvent name can be either set via an attribute or as a fixed value, or a combination of both. \u003c/li\u003e\n\u003c/ul\u003e",
        "enablingConditions": [
          {
            "paramName": "extensionActionActivate",
            "paramValue": true,
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "extensionActionAttribute",
        "displayName": "Link marking attribute",
        "simpleValueType": true,
        "help": "Enter the attribute to be used to mark a link here. Default is \u0027data-name\u0027.",
        "enablingConditions": [
          {
            "paramName": "extensionActionType",
            "paramValue": "standard",
            "type": "EQUALS"
          }
        ],
        "valueHint": "data-name (String)"
      },
      {
        "type": "TEXT",
        "name": "extensionActionExtend",
        "displayName": "Include URL parameter in event name",
        "simpleValueType": true,
        "help": "With this option you can include URL parameters in the automatic generated link name.\u003cbr\u003e\nPlease specify all URL parameters that should be used for this.\n\u003cbr\u003e\u003cb\u003eExample:\u003c/b\u003e \u003cbr\u003e\nURL-Parameter: mc\u003cbr\u003e\nURL: www.demoshop.com/sale.html?mc\u003dteaser1\u003cbr\u003e\nEvent name: www.demoshop.com/sale.html?mc\u003dteaser1",
        "enablingConditions": [
          {
            "paramName": "extensionActionType",
            "paramValue": "link",
            "type": "EQUALS"
          }
        ],
        "valueHint": "URL parameter1,URL parameter2 (String)",
        "valueValidators": [
          {
            "type": "REGEX",
            "args": [
              "^\\S*$"
            ],
            "errorMessage": "Please delete all whitespaces"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "extensionActionAdvanced",
        "displayName": "Selector and event name configuration",
        "simpleValueType": true,
        "help": "Map this input to a GTM Custom JavaScript variable, which contains the configuration of the selectors and event names. You need to define an array of objects containing the following information:\u003cbr\u003e\n\u003cstrong\u003eselector:\u003c/strong\u003e CSS selector used to specify the element to be tracked (e.g. button[name]).\u003cbr\u003e\n\u003cstrong\u003eeventName:\u003c/strong\u003e Used as event name in Intelligence. It is possible to use a fixed value as well as a value from an attribute. Attributes need to be marked with \"${}\". Values can also be concatenated (e.g. ${name}_fix_${class}). Default value for event name is \"noEventNameGiven\".\u003cbr\u003e\nHere is an example for the GTM Custom JS variable setup:\u003cbr\u003e\u003cbr/\u003e\nfunction() {\u003cbr/\u003e\n\u0026emsp; switch ( {{ Page URL }} ) {\u003cbr/\u003e\n\u0026emsp;\u0026emsp; case \"https://my-url-with-links.com\": \u003cbr/\u003e\n\u0026emsp;\u0026emsp;\u0026emsp; return [\u003cbr/\u003e\n\u0026emsp;\u0026emsp; \u0026emsp;\u0026emsp; {\u003cbr/\u003e\n\u0026emsp;\u0026emsp; \u0026emsp;\u0026emsp; \u0026emsp; selector: \u0027a\u0027,\u003cbr/\u003e\n\u0026emsp;\u0026emsp; \u0026emsp;\u0026emsp; \u0026emsp; eventName:\u0027${href}_fix_${data-foo}\u0027\u003cbr/\u003e\n\u0026emsp;\u0026emsp; \u0026emsp;\u0026emsp; }\u003cbr/\u003e\n\u0026emsp;\u0026emsp; \u0026emsp; ]\u003cbr/\u003e\n\u0026emsp;\u0026emsp;  default:\u003cbr/\u003e\n\u0026emsp;\u0026emsp;\u0026emsp; return [\u003cbr/\u003e\n\u0026emsp;\u0026emsp;\u0026emsp;\u0026emsp; {\u003cbr/\u003e\n\u0026emsp;\u0026emsp;\u0026emsp;\u0026emsp;\u0026emsp; selector: \u0027button[data-a]\u0027,\u003cbr/\u003e\n\u0026emsp;\u0026emsp;\u0026emsp;\u0026emsp;\u0026emsp; eventName: \u0027${data-a}_fix_${data-foo}\u0027\u003cbr/\u003e\n\u0026emsp;\u0026emsp;\u0026emsp;\u0026emsp; },\u003cbr/\u003e\n\u0026emsp;\u0026emsp;\u0026emsp;\u0026emsp; {\u003cbr/\u003e\n\u0026emsp;\u0026emsp;\u0026emsp;\u0026emsp;\u0026emsp; selector: \u0027button[data-b]\u0027,\u003cbr/\u003e\n\u0026emsp;\u0026emsp;\u0026emsp;\u0026emsp;\u0026emsp; eventName: \u0027${data-b}.${data-bar}\u0027 \u003cbr/\u003e\n\u0026emsp;\u0026emsp;\u0026emsp;\u0026emsp; }\u003cbr/\u003e\n\u0026emsp;\u0026emsp;\u0026emsp; ]\u003cbr/\u003e\n\u0026emsp; }\u003cbr/\u003e\n}\u003cbr/\u003e\u003cbr/\u003e\nOf course you can replace the Page URL GTM variable with any other you want. If the configuration is the same for every page you can leave out the switch statement altogether and just return the array with the config array.",
        "enablingConditions": [
          {
            "paramName": "extensionActionType",
            "paramValue": "advanced",
            "type": "EQUALS"
          }
        ],
        "valueHint": "GTM Custom JavaScript variable",
        "valueValidators": []
      },
      {
        "type": "CHECKBOX",
        "name": "extensionActionWithHash",
        "checkboxText": "Include hash in event name",
        "simpleValueType": true,
        "help": "With this option you can include hashes in the automatic generated link name.\u003cbr\u003e\n\u003cbr\u003e\u003cb\u003eExample:\u003c/b\u003e \u003cbr\u003e\nURL: www.demoshop.com/sale.html?#teaser1\u003cbr\u003e\nGenerated Event-Name: www.demoshop.com/sale.html#teaser1",
        "enablingConditions": [
          {
            "paramName": "extensionActionType",
            "paramValue": "link",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "CHECKBOX",
        "name": "extensionActionDelay",
        "checkboxText": "Delay next page",
        "simpleValueType": true,
        "help": "To increase data quality, you can delay the navigation to the next page when the user clicks on a link. \u003cbr\u003eThis will ensure that events will not get lost. \u003cbr\u003e\nYou can specify the time delay and mark links the pixel has to exclude from link delays. \u003cbr\u003e\nPlease note that this option slows down the navigation through your website and opening of the next page will be delayed by the specified amount of time.",
        "enablingConditions": [
          {
            "paramName": "extensionActionActivate",
            "paramValue": true,
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "extensionActionDelayDuration",
        "displayName": "Adjust delay duration",
        "simpleValueType": true,
        "help": "Specify the desired time of the delay of the click event here (in ms, 200ms if no value given).",
        "enablingConditions": [
          {
            "paramName": "extensionActionDelay",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "valueHint": "200 (positive integer)"
      },
      {
        "type": "TEXT",
        "name": "extensionActionNoDelayAttribute",
        "displayName": "No-delay attribute",
        "simpleValueType": true,
        "help": "Specify an attribute name to bypass the link delay. Whenever this attribute is set on a link element, no delay will take place.",
        "enablingConditions": [
          {
            "paramName": "extensionActionDelay",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "valueHint": "String"
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "extensionActionParameter",
        "displayName": "Event parameter",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "ID",
            "name": "id",
            "type": "TEXT",
            "valueHint": "positive integer",
            "isUnique": true,
            "valueValidators": [
              {
                "type": "POSITIVE_NUMBER"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Name of attribute",
            "name": "value",
            "type": "TEXT",
            "valueHint": "String"
          }
        ],
        "newRowButtonText": "Add event parameter",
        "help": "You can enrich the clickevent trackrequests with additional data, sent via an event parameter.\u003cbr\u003e  Please enter: the ID of the event parameter (configured in your analytics account) and the name of the attribute where the value is taken from. The attribute can be in the link element itself, or higher up in the DOM hierarchy.",
        "enablingConditions": [
          {
            "paramName": "extensionActionActivate",
            "paramValue": true,
            "type": "EQUALS"
          }
        ]
      }
    ]
  },
  {
    "displayName": "Page",
    "name": "pageGroup",
    "groupStyle": "ZIPPY_CLOSED",
    "type": "GROUP",
    "subParams": [
      {
        "help": "By default, the pixel creates a name on the basis of the page URL. Parameters and hashes in the URL are not automatically taken into account for the page name. \u003cbr /\u003e Use this field to manually create a page name.",
        "displayName": "Page name",
        "simpleValueType": true,
        "name": "pageName",
        "type": "TEXT",
        "valueHint": "en.home (String)"
      },
      {
        "help": "With this option you can include hashes (#) in the automatic generated page name.\u003cbr\u003e \u003cbr\u003e\u003cb\u003eExample:\u003c/b\u003e \u003cbr\u003e URL: www.demoshop.com/newsletter.html?#register\u003cbr\u003e Page name: www.demoshop.com/newsletter.html#register",
        "enablingConditions": [
          {
            "paramName": "pageName",
            "type": "NOT_PRESENT",
            "paramValue": ""
          }
        ],
        "simpleValueType": true,
        "name": "advancedUseHashForDefaultPageName",
        "checkboxText": "Include hash in page name",
        "type": "CHECKBOX"
      },
      {
        "type": "TEXT",
        "name": "useParamsForDefaultPageName",
        "displayName": "Include URL parameter in page name",
        "simpleValueType": true,
        "help": "With this option you can include URL parameters in the automatic generated page name.\u003cbr\u003e\nPlease specify all URL parameters that should be used for this.\n\u003cbr\u003e\u003cb\u003eExample:\u003c/b\u003e \u003cbr\u003e\nURL-Parameter: mc\u003cbr\u003e\nURL: www.demoshop.com/sale.html?mc\u003dteaser1\u003cbr\u003e\nPage name: www.demoshop.com/sale.html?mc\u003dteaser1",
        "enablingConditions": [
          {
            "paramName": "pageName",
            "paramValue": "",
            "type": "NOT_PRESENT"
          }
        ],
        "valueHint": "parameter1,parameter2 (String)",
        "valueValidators": [
          {
            "type": "REGEX",
            "args": [
              "^\\S*$"
            ],
            "errorMessage": "Please delete all whitespaces"
          }
        ]
      },
      {
        "help": "\u003cstrong\u003eerrorMessages\u003c/strong\u003e\tError messages. (String)\u003cbr /\u003e \u003cstrong\u003epaywall\u003c/strong\u003e\tPaywall calls. (Boolean) \u003cbr /\u003e \u003cstrong\u003earticleTitle\u003c/strong\u003e\tTitle of the article. (String)\u003cbr /\u003e \u003cstrong\u003econtentTags\u003c/strong\u003e\tTags contained in the article. (String) \u003cbr /\u003e \u003cstrong\u003etitle\u003c/strong\u003e\tTitle of the page. (String) \u003cbr /\u003e \u003cstrong\u003etype\u003c/strong\u003e\tPage type. (String)\u003cbr /\u003e \u003cstrong\u003elength\u003c/strong\u003e\tLength of the page. (String)\u003cbr /\u003e \u003cstrong\u003edaysSincePublication\u003c/strong\u003e\tDays since the publication of the article. (Number)\u003cbr /\u003e \u003cstrong\u003etestVariant\u003c/strong\u003e\tName of the test variant. (String)\u003cbr /\u003e \u003cstrong\u003etestExperiment\u003c/strong\u003e\tName of the test. (String)\u003cbr /\u003e",
        "displayName": "Predefined page parameters",
        "name": "pagePredefined",
        "simpleTableColumns": [
          {
            "selectItems": [
              {
                "displayValue": "errorMessages",
                "value": "errorMessages"
              },
              {
                "displayValue": "paywall",
                "value": "paywall"
              },
              {
                "displayValue": "articleTitle",
                "value": "articleTitle"
              },
              {
                "displayValue": "contentTags",
                "value": "contentTags"
              },
              {
                "displayValue": "title",
                "value": "title"
              },
              {
                "displayValue": "type",
                "value": "type"
              },
              {
                "displayValue": "length",
                "value": "length"
              },
              {
                "displayValue": "daysSincePublication",
                "value": "daysSincePublication"
              },
              {
                "displayValue": "testVariant",
                "value": "testVariant"
              },
              {
                "displayValue": "testExperiment",
                "value": "testExperiment"
              }
            ],
            "defaultValue": "",
            "displayName": "Key",
            "name": "id",
            "isUnique": true,
            "type": "SELECT"
          },
          {
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT"
          }
        ],
        "type": "SIMPLE_TABLE",
        "newRowButtonText": "Add predefined page parameter"
      },
      {
        "help": "Page parameters must be configured in the Mapp Intelligence tool before being able to track them via the pixel (Configuration \u003e Custom Parameters \u003e Page Parameters). The ID and data type (text/number) are defined for each parameter during account setup, among other things.\nThe ID to be entered here must be the one given in the account configuration.",
        "displayName": "Page parameter",
        "name": "pageParameter",
        "simpleTableColumns": [
          {
            "valueValidators": [
              {
                "errorMessage": "Please enter a number as parameter id.",
                "type": "POSITIVE_NUMBER"
              }
            ],
            "defaultValue": "",
            "displayName": "ID",
            "name": "id",
            "isUnique": true,
            "type": "TEXT",
            "valueHint": "positive integer"
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "valueHint": "String"
          }
        ],
        "type": "SIMPLE_TABLE",
        "newRowButtonText": "Add page parameter"
      },
      {
        "help": "Page related categories are called content groups. They must be configured in the Mapp Intelligence tool before being able to track them. \u003cbr\u003e Content group parameters should not exceed a length of 255 characters. \u003cbr\u003e\u003cbr\u003e\nThe ID to be entered here must be the one given in the configuration.",
        "displayName": "Content group",
        "name": "pageCategory",
        "simpleTableColumns": [
          {
            "valueValidators": [
              {
                "type": "POSITIVE_NUMBER"
              }
            ],
            "defaultValue": "",
            "displayName": "ID",
            "name": "id",
            "isUnique": true,
            "type": "TEXT",
            "valueHint": "positive integer"
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "valueHint": "String"
          }
        ],
        "type": "SIMPLE_TABLE",
        "newRowButtonText": "Add content group"
      }
    ],
    "enablingConditions": [
      {
        "paramName": "requestType",
        "paramValue": "page",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "eCommerce",
    "displayName": "E-Commerce",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "GROUP",
        "name": "productGroup",
        "displayName": "Products",
        "groupStyle": "ZIPPY_CLOSED",
        "subParams": [
          {
            "type": "TEXT",
            "name": "products",
            "displayName": "Product data",
            "simpleValueType": true,
            "help": "Expects an array with product information. Each entry is an object that contains the following properties: \u003cbr /\u003e\n\u003cstrong\u003eid\u003c/strong\u003e: String, mandatory, product ID. \u003cbr /\u003e\n\u003cstrong\u003estatus\u003c/strong\u003e: String, optional, defaults to \"view\" (product is viewed). Other options: \"basket\" or \"addToCart\" , \"list\", \"confirmation\", \"deleteFromCart\", \"checkout\", \"addToWishlist\", \"deleteFromWishlist\". \u003cbr /\u003e\n\u003cstrong\u003ecost\u003c/strong\u003e: Number, optional, contains the product price (\"0\" prices are allowed). If you transfer a product more than once (quantity property greater than 1), use the total price instead of the unit price. \u003cbr /\u003e\n\u003cstrong\u003equantity\u003c/strong\u003e: Number, optional, amount of product items. \u003cbr /\u003e\n\u003cstrong\u003ecurrency\u003c/strong\u003e: String, optional, ISO 4217 currency code.\u003cbr /\u003e\n\u003cstrong\u003esoldOut\u003c/strong\u003e: Boolean, optional, tracks if the product is sold out. \u003cbr /\u003e\n\u003cstrong\u003evariant\u003c/strong\u003e: String, optional, product variant. \u003cbr /\u003e\n\u003cstrong\u003eparameter\u003c/strong\u003e: Object, optional, e-commerce parameters, where the key equals the ID of the parameter.\u003cbr /\u003e\n\u003cstrong\u003ecategory\u003c/strong\u003e: Object, optional, product category, where the key equals the ID of the parameter given in your account configuration.\u003cbr /\u003e\u003cbr /\u003e\n\u003cstrong\u003eExample:\u003c/strong\u003e \u003cbr /\u003e\n[{\u003cbr /\u003e\n   \u0026nbsp\u0026nbsp\u0026nbsp\u0026nbsp id: \u0027ABC-123\u0027,\u003cbr /\u003e\n   \u0026nbsp\u0026nbsp\u0026nbsp\u0026nbsp status: \u0027addToCart\u0027, \u003cbr /\u003e\n  \u0026nbsp\u0026nbsp\u0026nbsp\u0026nbsp  cost: 99.90,\u003cbr /\u003e\n \u0026nbsp\u0026nbsp\u0026nbsp\u0026nbsp   quantity: 2,\u003cbr /\u003e\n \u0026nbsp\u0026nbsp\u0026nbsp\u0026nbsp   currency: \u0027EUR\u0027,\u003cbr /\u003e\n  \u0026nbsp\u0026nbsp\u0026nbsp\u0026nbsp  soldOut: false,\u003cbr /\u003e\n \u0026nbsp\u0026nbsp\u0026nbsp\u0026nbsp   variant: \u0027green\u0027,\u003cbr /\u003e\n\u0026nbsp\u0026nbsp\u0026nbsp\u0026nbsp    parameter: {\u003cbr /\u003e\n    \u0026nbsp\u0026nbsp\u0026nbsp\u0026nbsp\u0026nbsp\u0026nbsp\u0026nbsp\u0026nbsp    1: \u0027L\u0027\u003cbr /\u003e\n \u0026nbsp\u0026nbsp\u0026nbsp\u0026nbsp   },\u003cbr /\u003e\n\u0026nbsp\u0026nbsp\u0026nbsp\u0026nbsp    category: {\u003cbr /\u003e\n\u0026nbsp\u0026nbsp\u0026nbsp\u0026nbsp\u0026nbsp\u0026nbsp\u0026nbsp\u0026nbsp        1: \u0027tops\u0027,\u003cbr /\u003e\n  \u0026nbsp\u0026nbsp\u0026nbsp\u0026nbsp\u0026nbsp\u0026nbsp\u0026nbsp\u0026nbsp      2: \u0027noname\u0027\u003cbr /\u003e\n \u0026nbsp\u0026nbsp\u0026nbsp\u0026nbsp   }\u003cbr /\u003e\n}]\u003cbr /\u003e",
            "valueHint": "Object array"
          }
        ]
      },
      {
        "type": "GROUP",
        "name": "orderGroup",
        "displayName": "Order",
        "groupStyle": "ZIPPY_CLOSED",
        "subParams": [
          {
            "type": "TEXT",
            "name": "orderId",
            "displayName": "Order ID",
            "simpleValueType": true,
            "help": "The order ID property contains a unique number identifying the order. Use of this setting ensures that no orders are counted twice. If no order ID is given, Mapp Intelligence will create one automatically.",
            "valueHint": "M-12345 (String)"
          },
          {
            "type": "TEXT",
            "name": "orderValue",
            "displayName": "Order value",
            "simpleValueType": true,
            "help": "The orderValue property tracks the total order value and is mandatory for order tracking.",
            "valueHint": "120.99 (Positive float / integer)"
          },
          {
            "type": "TEXT",
            "name": "orderCurrency",
            "displayName": "Currency",
            "simpleValueType": true,
            "help": "Please enter the currency that was used for the order here. This is necessary in case you can choose between different currencies on your website and want to track order values in Mapp Intelligence.",
            "valueHint": "EUR (ISO 4217)"
          },
          {
            "type": "TEXT",
            "name": "orderCouponValue",
            "displayName": "Coupon value",
            "simpleValueType": true,
            "help": "If you offer coupons, you can track the coupon value here.",
            "valueHint": "10.15 (Positive float / integer)"
          },
          {
            "type": "SIMPLE_TABLE",
            "name": "orderPredefined",
            "displayName": "Predefined e-commerce parameter",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "Key",
                "name": "id",
                "type": "SELECT",
                "selectItems": [
                  {
                    "value": "paymentMethod",
                    "displayValue": "paymentMethod"
                  },
                  {
                    "value": "shippingService",
                    "displayValue": "shippingService"
                  },
                  {
                    "value": "shippingSpeed",
                    "displayValue": "shippingSpeed"
                  },
                  {
                    "value": "shippingCosts",
                    "displayValue": "shippingCosts"
                  },
                  {
                    "value": "grossMargin",
                    "displayValue": "grossMargin"
                  },
                  {
                    "value": "orderStatus",
                    "displayValue": "orderStatus"
                  }
                ]
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT",
                "valueHint": "String"
              }
            ],
            "help": "\u003cstrong\u003ePayment method: \u003c/strong\u003eUse this to transmit the payment method of the order. (String)\u003cbr /\u003e\n\u003cstrong\u003eShipping service: \u003c/strong\u003eUse this to transmit the shipping service of the order. (String) \u003cbr /\u003e\n\u003cstrong\u003eShipping speed:\u003c/strong\u003e Use this to transmit the shipping speed of the order. (String)\u003cbr /\u003e \n\u003cstrong\u003eShipping costs:\u003c/strong\u003e Use this to transmit the shipping costs of the order. (Number) \u003cbr /\u003e\n\u003cstrong\u003eGross margin:\u003c/strong\u003e Use this to transmit the margin/mark-up of the order. (Number)\u003cbr /\u003e\n\u003cstrong\u003eOrder status: \u003c/strong\u003eUse this to transmit the order status of the order. (String)",
            "newRowButtonText": "Add predefined e-commerce parameter"
          },
          {
            "type": "SIMPLE_TABLE",
            "name": "orderParameter",
            "displayName": "E-Commerce parameter",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "ID",
                "name": "id",
                "type": "TEXT",
                "valueHint": "Positive integer",
                "valueValidators": [
                  {
                    "type": "POSITIVE_NUMBER"
                  }
                ],
                "isUnique": true
              },
              {
                "defaultValue": "",
                "displayName": "Value",
                "name": "value",
                "type": "TEXT",
                "valueHint": "String"
              }
            ],
            "help": "Please enter any additional information you want to track in your order. You need to have an custom e-commerce parameter configured in your account to track additional information (please enter the ID of your e-commerce parameter).",
            "newRowButtonText": "Add e-commerce parameter"
          }
        ],
        "enablingConditions": [
          {
            "paramName": "requestType",
            "paramValue": "page",
            "type": "EQUALS"
          }
        ]
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "pageGoalsGroup",
    "displayName": "Website goals",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "help": "Please add here the e-commerce parameters that are used to track a website goal (e.g., newsletter sign-up, login).\n\u003cbr\u003e\nYou have to configure an e-commerce parameter first to use it as a website goal. Please enter the ID of your e-commerce parameter.\u003cbr\u003e\nNote: As soon as a parameter is tracked (no matter which value is submitted), the goal is achieved. Therefore, it does not make sense to submit the value \"no\" for the goal \"Newsletter Registration\" if a user has not registered for the newsletter. Setting the value to \"no\" would also mark the goal as achieved.",
        "displayName": "Website goal (e-commerce parameter)",
        "name": "pageGoal",
        "simpleTableColumns": [
          {
            "valueValidators": [
              {
                "type": "POSITIVE_NUMBER"
              }
            ],
            "defaultValue": "",
            "displayName": "ID",
            "name": "id",
            "type": "TEXT",
            "valueHint": "Positive number",
            "isUnique": true
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "valueHint": "String"
          }
        ],
        "type": "SIMPLE_TABLE",
        "newRowButtonText": "Add e-commerce parameter",
        "enablingConditions": [
          {
            "paramName": "requestType",
            "paramValue": "page",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "actionGoal",
        "displayName": "Website Goal  (E-commerce parameter)",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "ID",
            "name": "id",
            "type": "TEXT",
            "valueHint": "Positive number",
            "valueValidators": [
              {
                "type": "POSITIVE_NUMBER"
              }
            ],
            "isUnique": true
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "valueHint": "String"
          }
        ],
        "enablingConditions": [
          {
            "paramName": "requestType",
            "paramValue": "event",
            "type": "EQUALS"
          }
        ],
        "newRowButtonText": "Add e-commerce parameter",
        "help": "Please add here e-commerce parameters that are used to track a website goal (e.g. newsletter sign-up, login).\n\u003cbr\u003e\nYou have to configure an e-commerce parameter that is used as a website goal. Please enter the ID of your e-commerce parameter).\u003cbr\u003e \u003cbr\u003e\nNote: As soon as a parameter is tracked (no matter which value is submitted), the goal is set as achieved. Therefor it does not make sense to submit the value \"no\" for the goal \"Newsletter Registration\" if a user has not registered for the newsletter. Setting the value to \"no\" would instead mark the goal as achieved."
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "campaignGroup",
    "displayName": "Campaign",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "campaignId",
        "displayName": "Campaign ID (Mediacode)",
        "simpleValueType": true,
        "help": "Use this field if you want to send a campaign mediacode within the data layer. If you use this option, campaigns using URLs are not tracked.\u003cbr\u003e\n\u003cbr\u003eThe Campaign ID hast to be sent using URL encoding (e.g. \"%3D\" instead of \"\u003d\".\u003cbr\u003e\n\u003cbr\u003eCampaigns are only tracked if they have been configured in advance.\u003cbr\u003e",
        "valueHint": "wt_mc%3Dcampaign.a (String)"
      },
      {
        "type": "CHECKBOX",
        "name": "campaignOncePerSession",
        "checkboxText": "Track once per visit",
        "simpleValueType": true,
        "help": "Please check if you want to track each individual campaign just once within a visit."
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "campaignParameter",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "ID",
            "name": "id",
            "type": "TEXT",
            "valueHint": "positive integer",
            "isUnique": true,
            "valueValidators": [
              {
                "type": "POSITIVE_NUMBER"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "valueHint": "String"
          }
        ],
        "help": "Please enter any campaign parameter you want to track here. You need to have a custom campaign parameter configured in your account for this.",
        "displayName": "Campaign parameter",
        "newRowButtonText": "Add campaign parameter"
      }
    ]
  },
  {
    "displayName": "Session",
    "name": "session",
    "groupStyle": "ZIPPY_CLOSED",
    "type": "GROUP",
    "subParams": [
      {
        "type": "TEXT",
        "name": "sessionLoginStatus",
        "displayName": "Login status",
        "simpleValueType": true,
        "help": "Pass the current login status of a user here. You need to have a predefined session parameter configured for this. \u003cbr\u003e\nPlease note: If you send more than one status, only the last value will be tracked.",
        "valueHint": "login (String)"
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "sessionParameter",
        "displayName": "Session parameter",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "ID",
            "name": "id",
            "type": "TEXT",
            "valueHint": "Positive integer",
            "isUnique": true,
            "valueValidators": [
              {
                "type": "POSITIVE_NUMBER"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT",
            "valueHint": "String"
          }
        ],
        "help": "Session parameters always refer to one complete session (visit). \u003cbr\u003eIf the value for the parameter is transmitted during a visit several times, only the first or last value is evaluated, based on the configuration in your Mapp Intelligence account. \u003cbr\u003e\u003cbr\u003ePlease indicate the ID of the parameter as configured in your Mapp Intelligence account in the first column.",
        "newRowButtonText": "Add session parameter"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "customerGroup",
    "displayName": "User",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "customerId",
        "displayName": "User ID",
        "simpleValueType": true,
        "help": "Please indicate the user ID here. \u003cbr\u003eThis identifier can be used to identify a user across different web browsers and devices. \u003cbr\u003e\nUsually you should use an email adress for this. \u003cbr\u003e \u003cbr\u003eThe user id will be hashed automatically by the pixel.",
        "valueHint": "test@demoshop.com (String)"
      },
      {
        "type": "CHECKBOX",
        "name": "overwriteCustomerValidation",
        "checkboxText": "Safe predefined User categories without validation",
        "simpleValueType": true,
        "help": "Activate this checkbox to automatically override the customer data saved in the Mapp Intelligence Database when sending predefined parameters. If you leave it unchecked, make sure to map \u0027true\u0027 to the respective validation field.",
        "defaultValue": true
      },
      {
        "type": "TEXT",
        "name": "customerValidation",
        "displayName": "Customer validation",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "overwriteCustomerValidation",
            "paramValue": true,
            "type": "NOT_EQUALS"
          }
        ],
        "help": "Map a variable that returns a boolean \u0027true\u0027 to make sure that the predefined customer parameters can be overridden in the database.",
        "valueHint": "true (Boolean)"
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "customerPredefined",
        "displayName": "Predefined User category",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "User key",
            "name": "id",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "registrationEmail",
                "displayValue": "registrationEmail"
              },
              {
                "value": "registrationGroupId",
                "displayValue": "registrationGroupId"
              },
              {
                "value": "registrationMode",
                "displayValue": "registrationMode"
              },
              {
                "value": "registrationFirstName",
                "displayValue": "registrationFirstName"
              },
              {
                "value": "registrationLastName",
                "displayValue": "registrationLastName"
              },
              {
                "value": "registrationGender",
                "displayValue": "registrationGender"
              },
              {
                "value": "registrationTitle",
                "displayValue": "registrationTitle"
              },
              {
                "value": "registrationOptin",
                "displayValue": "registrationOptin"
              },
              {
                "value": "email",
                "displayValue": "email"
              },
              {
                "value": "emailRID",
                "displayValue": "emailRID"
              },
              {
                "value": "firstName",
                "displayValue": "firstName"
              },
              {
                "value": "lastName",
                "displayValue": "lastName"
              },
              {
                "value": "telephone",
                "displayValue": "telephone"
              },
              {
                "value": "gender",
                "displayValue": "gender"
              },
              {
                "value": "birthday",
                "displayValue": "birthday"
              },
              {
                "value": "country",
                "displayValue": "country"
              },
              {
                "value": "city",
                "displayValue": "city"
              },
              {
                "value": "street",
                "displayValue": "street"
              },
              {
                "value": "streetNumber",
                "displayValue": "streetNumber"
              },
              {
                "value": "emailOptin",
                "displayValue": "emailOptin"
              }
            ],
            "isUnique": true
          },
          {
            "defaultValue": "",
            "displayName": "User value",
            "name": "value",
            "type": "TEXT",
            "valueHint": "String"
          }
        ],
        "help": "\u003cstrong\u003eregistrationEmail:\u003c/strong\u003e The Email address used to identify the user in Mapp Engage. (String)\u003cbr\u003e \n\u003cstrong\u003eregistrationGroupId:\u003c/strong\u003e Provide the group ID in case of a new registration for the user in Mapp Engage. (String)\u003cbr\u003e \n\u003cstrong\u003eregistrationMode:\u003c/strong\u003e Provide the registration method used to register for marketing activities (e.g. double-optin). (String)\u003cbr\u003e \n\u003cstrong\u003eregistrationFirstName:\u003c/strong\u003e First name of the user to be used in Mapp Engage. (String)\u003cbr\u003e \n\u003cstrong\u003eregistrationLastName:\u003c/strong\u003e Last name of the user to be used in Mapp Engage. (String)\u003cbr\u003e \n\u003cstrong\u003eregistrationGender:\u003c/strong\u003e Gender of the user (f\u003dfemale, m\u003dmale, u\u003dundisclosed). (String)\u003cbr\u003e \n\u003cstrong\u003eregistrationTitle:\u003c/strong\u003e The title of the user to be used in Mapp Engage. (String)\u003cbr\u003e \n\u003cstrong\u003eregistrationOptin:\u003c/strong\u003e Provide information that the user consented to use their data (true/false). (String / Boolean)\u003cbr\u003e \n\u003cstrong\u003eemail:\u003c/strong\u003e Use this to transmit the e-mail address of a user. Will not be hashed by the pixel. (String)\u003cbr\u003e \u003cstrong\u003eemailRID:\u003c/strong\u003e Use this to transmit the e-mail receiver ID of the user. (String)\u003cbr\u003e \u003cstrong\u003eemailOptin:\u003c/strong\u003e Use this to transmit the e-mail optin status of the user. (Boolean)\u003cbr\u003e \u003cstrong\u003efirstName:\u003c/strong\u003e Use this to transmit the first name of the user. (String)\u003cbr\u003e \u003cstrong\u003elastName:\u003c/strong\u003e Use this to transmit the last name of the user. (String)\u003cbr\u003e \u003cstrong\u003etelephone:\u003c/strong\u003e Use this to transmit the telephone number of the user. (String)\u003cbr\u003e \u003cstrong\u003egender:\u003c/strong\u003e Use this to transmit the gender of the user (1 \u003d male | 2 \u003d female). (Number)\u003cbr\u003e \u003cstrong\u003ebirthday:\u003c/strong\u003e Use this to transmit the user\u0027s date of birth (YYYYMMDD). (String)\u003cbr\u003e \u003cstrong\u003ecountry:\u003c/strong\u003e Use this to transmit the country of the user. (String)\u003cbr\u003e \u003cstrong\u003ecity:\u003c/strong\u003e Use this to transmit the city of the user. (String)\u003cbr\u003e \u003cstrong\u003estreet:\u003c/strong\u003e Use this to transmit the street of the user. (String)\u003cbr\u003e \u003cstrong\u003estreetNumber:\u003c/strong\u003e Use this to transmit the street number of the user. (String)",
        "newRowButtonText": "Add predefined User category"
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "customerCategory",
        "displayName": "User category",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "User category ID",
            "name": "id",
            "type": "TEXT",
            "valueHint": "Positive integer",
            "valueValidators": [
              {
                "type": "POSITIVE_NUMBER"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "User category value",
            "name": "value",
            "type": "TEXT",
            "valueHint": "String"
          }
        ],
        "help": "Please enter your User categories as configured in your account. The category ID is the ID given in your account configuration.",
        "newRowButtonText": "Add User category"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "searchGroup",
    "displayName": "Internal search",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "pageSearch",
        "displayName": "Search term",
        "simpleValueType": true,
        "help": "Add the search term, if you are using the POST method.\u003cbr\u003e\u003cbr\u003e\nThe internal search of a website can be realized by using the GET or POST method.\u003cbr\u003e\n\n\u003cb\u003eGet method\u003c/b\u003e\u003cbr\u003e\nSearch terms are submitted in a URL parameter. The applied parameter is stored in the system configuration.\u003cbr\u003e\u003cbr\u003e\n\n\u003cb\u003ePost method\u003c/b\u003e\u003cbr\u003e\nThe search term has to be submitted here.",
        "valueHint": "search term (String)"
      },
      {
        "type": "TEXT",
        "name": "pageNumberSearchResults",
        "displayName": "Number of search results",
        "simpleValueType": true,
        "help": "Please indicate if you want to track the number of search results per search term.\u003cbr\u003e\u003cbr\u003e\nYou have to configure a predefined event parameter to collect data.",
        "valueHint": "7 (Integer)"
      }
    ],
    "enablingConditions": [
      {
        "paramName": "requestType",
        "paramValue": "page",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "formTrackingGroup",
    "displayName": "Form",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "extensionFormActivate",
        "checkboxText": "Activate form tracking",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "requestType",
            "paramValue": "page",
            "type": "EQUALS"
          }
        ],
        "help": "Forms can be tracked automatically. \u003cbr\u003eAll form fields are measured, with the exception of the \"hidden\", \"button\", \"image\", \"reset\" and \"submit\" field types."
      },
      {
        "type": "CHECKBOX",
        "name": "extensionFormAutomatic",
        "checkboxText": "Automatic form recognition",
        "simpleValueType": true,
        "help": "By enabling this option, the pixel will track all HTML form elements and will use the value of the attribute specified in \"Name of form\" to name it.",
        "defaultValue": true,
        "enablingConditions": [
          {
            "paramName": "extensionFormActivate",
            "paramValue": true,
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "LABEL",
        "name": "extensionFormManualTrackingHelp",
        "displayName": "When deactivating \u0027Automatic form recognition\u0027, please remember to add form elements to Mapp Intelligence by executing \u0027wtSmart.extension.form.add(formElement)\u0027 in your code.",
        "enablingConditions": [
          {
            "paramName": "extensionFormAutomatic",
            "paramValue": false,
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "extensionFormSelector",
        "displayName": "Manual selection of form fields",
        "simpleValueType": true,
        "help": "If you want to specify the forms that you want to track, you can use a CSS selector.\u003cbr\u003e\nPlease add the div here for this manual selection.",
        "enablingConditions": [
          {
            "paramName": "extensionFormAutomatic",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "valueHint": "div[data-my-custom-form] (String)"
      },
      {
        "type": "TEXT",
        "name": "extensionFormAttribute",
        "displayName": "Customize attribute for form name",
        "simpleValueType": true,
        "help": "By default, the \"data-name\" attribute is used to name the form. \u003cbr\u003ePlease indicate here if you want to use another attribute.",
        "enablingConditions": [
          {
            "paramName": "extensionFormActivate",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "valueHint": "data-name (String)"
      },
      {
        "type": "TEXT",
        "name": "extensionFormFieldAttribute",
        "displayName": "Customize attribute for form field name",
        "simpleValueType": true,
        "help": "By default, the \"data-name\" attribute is used to name the form fields. \u003cbr\u003e Please indicate here if you want to use another attribute (e.g. the \"id\" or \"name\" attribute).",
        "enablingConditions": [
          {
            "paramName": "extensionFormActivate",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "valueHint": "data-name (String)"
      },
      {
        "type": "CHECKBOX",
        "name": "extensionFormAnonymous",
        "checkboxText": "Anonymize form field data",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "extensionFormActivate",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "help": "Please check if you want to anonymise all submitted form data (e.g. if you also want to anonymize radio button content)."
      },
      {
        "type": "TEXT",
        "name": "extensionFormFullContent",
        "displayName": "Plain text for specific form fields",
        "simpleValueType": true,
        "help": "With the form field types \"select-multiple\", \"select-one\", \"checkbox\" and \"radio\", the precise values can be transmitted. \u003cbr\u003eWith all other form field types, only the field status is sent to Mapp Intelligence, i.e. only \"filled_out\" is sent for a completed form field and not the content. \u003cbr\u003eHowever, if you would like to evaluate the form field content as clear text, add the corresponding form fields to the configuration property \"fullContent\".\u003cbr\u003e\nPlease enter as comma-separated string.",
        "enablingConditions": [
          {
            "paramName": "extensionFormActivate",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "valueHint": "name,address,phone (string)",
        "valueValidators": [
          {
            "type": "REGEX",
            "args": [
              "^\\S*$"
            ],
            "errorMessage": "Please delete whitespaces"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "extensionFormFieldValue",
        "displayName": "Alternativ attribute for form field value",
        "simpleValueType": true,
        "help": "For form fields of the type \"radio,\" \"select-one,\" \"select-multiple\" and \"checkbox\", the value of the \"value\" attribute will be sent to Mapp Intelligence by default. Optionally, an alternative value attribute could be used.\u003cbr\u003eIf the alternative attribute is set, the value of all of the above-mentioned field types in the alternative attribute will be sent to Mapp Intelligence. This is helpful if you are for example sending an ID as the standard value because this would be hard to understand.",
        "enablingConditions": [
          {
            "paramName": "extensionFormActivate",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "valueHint": "value (String)"
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "extensionFormFieldDefaults",
        "displayName": "Form field defaults",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Form field",
            "name": "id",
            "type": "TEXT",
            "valueHint": "firstname (String)"
          },
          {
            "defaultValue": "",
            "displayName": "Default value",
            "name": "value",
            "type": "TEXT",
            "valueHint": "First Name (String)"
          }
        ],
        "help": "If you would like to track forms that have been pre-filled with a default value, you must inform the Smart Pixel of which form fields are concerned. This is done with the property \"defaults\". This includes an object with a mapping between form field names and form field default values.",
        "enablingConditions": [
          {
            "paramName": "extensionFormActivate",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "newRowButtonText": "Add field with default value"
      },
      {
        "type": "CHECKBOX",
        "name": "extensionFormPathAnalysis",
        "checkboxText": "Follow field path",
        "simpleValueType": true,
        "help": "Please check if you want to see the order in which the user filled out the form fields. \u003cbr\u003e\nNote that this influences calculation of some form related metrics.",
        "enablingConditions": [
          {
            "paramName": "extensionFormActivate",
            "paramValue": true,
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "CHECKBOX",
        "name": "extensionFormUpdate",
        "checkboxText": "Update Forms",
        "simpleValueType": true,
        "help": "The forms contained in page content reloaded by Ajax (e.g. when showing layers) can also be marked for automatic form tracking. To do this, call the \"update\" method as soon as new content is reloaded.",
        "enablingConditions": [
          {
            "paramName": "requestType",
            "paramValue": "event",
            "type": "EQUALS"
          }
        ]
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "trackGroup",
    "displayName": "Send trackrequest",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "RADIO",
        "name": "track",
        "displayName": "Track method",
        "radioItems": [
          {
            "value": "track",
            "displayValue": "Send trackrequest"
          },
          {
            "value": "trackPage",
            "displayValue": "Send trackrequest, force pagerequest"
          },
          {
            "value": "trackAction",
            "displayValue": "Send trackrequest, force event request"
          },
          {
            "value": false,
            "displayValue": "Don\u0027t send trackrequest"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "track",
        "enablingConditions": [],
        "help": "Pick the track method here:\u003cbr\u003e\u003cbr\u003e\n\u003cstrong\u003eSend track request:\u003c/strong\u003e Let the underlying Smartpixel decide which request you need to track the data you mapped (recommended).\u003cbr\u003e\u003cbr\u003e\n\u003cstrong\u003eForce page request:\u003c/strong\u003e Sends a page request and omits all data that cannot be put in a page request (e.g. event name).\u003cbr\u003e\u003cbr\u003e\n\u003cstrong\u003eForce event request:\u003c/strong\u003e Sends an event request and omits all data that cannot be put in an event request (e.g. page parameter).\u003cbr\u003e\u003cbr\u003e\n\u003cstrong\u003eNo track request:\u003c/strong\u003e Do not send a trackrequest at all. Useful if you only want to\u003cbr\u003e\n\u003cul\u003e\u003cli\u003e\nreload form and link elements\n\u003c/li\u003e\u003cli\u003e\njust configure Mapp Intelligence\u003c/li\u003e\n\u003cli\u003ejust add data but do not want to track it yet, because you might wait for more data in another trigger\u003c/li\u003e\u003c/ul\u003e"
      },
      {
        "type": "CHECKBOX",
        "name": "keepData",
        "checkboxText": "keep data in Smartpixel after trackrequest",
        "simpleValueType": true,
        "defaultValue": false,
        "help": "Check this box, if you want to reuse the data for another request.\u003cbr\u003eBy default, after each trackrequest the Smartpixel in emptied. \u003cbr\u003eKeeping the data does not work if the page is reloaded between requests."
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "debugGroup",
    "displayName": "Debug Logging",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "simpleValueType": true,
        "name": "debug",
        "checkboxText": "Activate logging",
        "type": "CHECKBOX",
        "displayName": "Log debug messages to console"
      }
    ]
  },
  {
    "displayName": "Advanced (Deprecated)",
    "name": "advanced",
    "groupStyle": "ZIPPY_CLOSED",
    "type": "GROUP",
    "subParams": [
      {
        "type": "LABEL",
        "name": "oldAdvancedDeprecationMessage",
        "displayName": "Please do not use this to configure the pixel anymore. Please use the buttons \"Add Advanced Config Settings\" and \"Add GDPR Config Settings\" to configure Smartpixel. You can find those buttons on top of the template interface."
      },
      {
        "displayName": "Request Queue Settings",
        "name": "requestQueueGroup",
        "groupStyle": "ZIPPY_CLOSED",
        "type": "GROUP",
        "subParams": [
          {
            "simpleValueType": true,
            "name": "requestQueueActivated",
            "checkboxText": "RequestQueue",
            "type": "CHECKBOX"
          },
          {
            "displayName": "Request interval (sec.)",
            "simpleValueType": true,
            "name": "requestQueueResendInterval",
            "type": "TEXT"
          },
          {
            "displayName": "Max. time in queue (sec.)",
            "simpleValueType": true,
            "name": "requestQueueTtl",
            "type": "TEXT"
          },
          {
            "displayName": "Max. number of requests",
            "simpleValueType": true,
            "name": "requestQueueSize",
            "type": "TEXT"
          }
        ]
      },
      {
        "type": "GROUP",
        "name": "userIdentificationGroup",
        "displayName": "User Identification Settings",
        "groupStyle": "ZIPPY_CLOSED",
        "subParams": [
          {
            "type": "CHECKBOX",
            "name": "userIdentificationEnableOptOut",
            "checkboxText": "Enable anonymised tracking",
            "simpleValueType": true
          },
          {
            "type": "CHECKBOX",
            "name": "userIdentificationAnonymousOptIn",
            "checkboxText": "Anonymous tracking as default setting",
            "simpleValueType": true,
            "enablingConditions": [
              {
                "paramName": "userIdentificationEnableOptOut",
                "paramValue": true,
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "TEXT",
            "name": "userIdentificationEnableOptOutOptOutCookieName",
            "displayName": "Anonymised tracking cookie name",
            "simpleValueType": true,
            "enablingConditions": [
              {
                "paramName": "userIdentificationEnableOptOut",
                "paramValue": true,
                "type": "EQUALS"
              }
            ]
          },
          {
            "type": "TEXT",
            "name": "userIdentificationSuppressParameter",
            "displayName": "Supress parameter",
            "simpleValueType": true,
            "enablingConditions": [
              {
                "paramName": "userIdentificationEnableOptOut",
                "paramValue": true,
                "type": "EQUALS"
              }
            ]
          }
        ]
      },
      {
        "type": "CHECKBOX",
        "name": "requestLimitActivated",
        "checkboxText": "Deactivate request limit cookie",
        "simpleValueType": true
      },
      {
        "simpleValueType": true,
        "name": "advancedSecureCookie",
        "checkboxText": "Secure Cookie",
        "type": "CHECKBOX"
      },
      {
        "simpleValueType": true,
        "name": "advancedRequestObfuscation",
        "checkboxText": "Request Obfuscation",
        "type": "CHECKBOX"
      },
      {
        "simpleValueType": true,
        "name": "advancedForceOldEverId",
        "checkboxText": "Force Old EverID",
        "type": "CHECKBOX"
      },
      {
        "simpleValueType": true,
        "name": "advancedSendViaSDK",
        "checkboxText": "Send Via SDK",
        "type": "CHECKBOX"
      },
      {
        "type": "TEXT",
        "name": "advancedOptOutName",
        "displayName": "Opt-out cookie name",
        "simpleValueType": true
      }
    ],
    "enablingConditions": [
      {
        "paramName": "requestType",
        "paramValue": "page",
        "type": "EQUALS"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// Require the necessary APIs
const logToConsole = require('logToConsole');
const callInWindow = require('callInWindow');
const makeTableMap = require('makeTableMap');
const injectScript = require('injectScript');

// Functions

// If the user chose to log debug output, initialize the logging method
const log = data.debug ? logToConsole : () => {
    // do nothing
};
log('data (type ' + data.requestType + '):', data);

/**
 * Checks if data is available, then delegates it to Smartpixel or hands config to inconsistencyFixer
 * @param {String} root e.g. 'campaign' or 'session'
 * @param {Array.<String>} propertyNames e.g. ['id', 'oncePerSession', 'parameter']
 * @param {Function} inconsistencyFixer takes config, supposed to add inconsistent properties and call pixel
 */
const dataHandler_ = (root, propertyNames, inconsistencyFixer) => {
    const gtmNames = propertyNames.map((propertyName) => root + propertyName[0].toUpperCase() + propertyName.slice(1));
    const shallRun = gtmNames.some((GTMName) => data.hasOwnProperty(GTMName));
    if (shallRun) {
        const customProperties = ['parameter', 'category', 'goal'];
        const config = {};
        gtmNames.forEach((GTMName, index)=>{
            const GTMData = data[GTMName];
            const currentProperty = propertyNames[index];
            if (typeof GTMData !== 'undefined') {
                if (customProperties.indexOf(currentProperty) !== -1) {
                    config[currentProperty] = makeTableMap(GTMData, 'id', 'value');
                }
                else if (currentProperty === 'predefined') {
                    GTMData.forEach(predefinedParameter => {
                        config[predefinedParameter.id] = predefinedParameter.value;
                    });
                }
                else {
                    config[currentProperty] = GTMData;
                }
            }
        });
        if (inconsistencyFixer) {
            inconsistencyFixer(config);
        }
        else {
            const method = 'wtSmart.' + root + '.data.add';
            log('Calling ' + method + ': ', config);
            callInWindow(method, config);
        }
    }
};

const runMapp = () => {
    callInWindow('wtSmart._ps', 32, '1.3.0');
    if (data.requestType === 'page') {
        // Init
        /**
         * Handles pixel inconsistencies of init method
         * @param {Object} config
         */
        const initHandler_ = (config) => {
            if (data.initDomain) {
                config.domain = data.initDomain.split(',');
            }
            config.cookie = data.cookie.toString();
            log('Calling wtSmart.init.add: ', config);
            callInWindow('wtSmart.init.add', config);
        };
        dataHandler_('init', ['trackId', 'trackDomain'], initHandler_);
        // Advanced
        const advancedKeys = [
            'sendViaSDK',
            'optOutName',
            'forceOldEverId',
            'secureCookie',
            'requestObfuscation',
            'useHashForDefaultPageName'
        ];

        /**
         * Handles pixel inconsistencies of advanced method
         * @param {Object} config
         */
        const advancedHandler_ = (config) => {
            config.requestQueue = {
                activated: data.requestQueueActivated,
                resendInterval: data.requestQueueResendInterval * 1000,
                ttl: data.requestQueueTtl * 1000,
                size: data.requestQueueSize
            };
            config.requestLimit = {
                activated: !data.requestLimitActivated
            };
            config.userIdentification = {
                enableOptOut: data.userIdentificationEnableOptOut,
                anonymousOptIn: data.userIdentificationAnonymousOptIn,
                optOutCookieName: data.userIdentificationEnableOptOutOptOutCookieName,
                suppressParameter: data.userIdentificationSuppressParameter ? data.userIdentificationSuppressParameter.split(',') : []
            };
            config.useParamsForDefaultPageName = data.useParamsForDefaultPageName ? data.useParamsForDefaultPageName.split(',') : [];
            const method = 'wtSmart.advanced.add';
            log('Calling ' + method + ': ', config);
            callInWindow(method, config);
        };
        dataHandler_('advanced', advancedKeys, advancedHandler_);
        // new Advanced
        (()=>{
             const c = {sendViaServer:{}, requestQueue: {}, requestLimit: {}, userIdentification: {}}; // new Advanced Config
             const method = 'wtSmart.advanced.add';
             let configArray = [];
             if(data.advanced2) {
                  configArray = data.advanced2;
             }
             if(data.gdpr) {
                  configArray = configArray.concat(data.gdpr);
             }
             configArray.filter((c => {return c.parameter && c.hasOwnProperty("value");})).forEach((conf) => {
                 if(conf.parameter.indexOf("_") === -1) {
                     c[conf.parameter] = conf.value;
                 } else {
                    const keys = conf.parameter.split("_");
                    c[keys[0]][keys[1]] = conf.value;
                 }
             });
             // comma separated strings to array
             c.useParamsForDefaultPageName = c.useParamsForDefaultPageName ? c.useParamsForDefaultPageName.split(',') : [];
             c.userIdentification.suppressParameter = c.userIdentification.suppressParameter ? c.userIdentification.suppressParameter.split(',') : [];
             c.sendViaServer.blacklist = c.sendViaServer.blacklist ? c.sendViaServer.blacklist.split(',') : [];
             // advanced pixel call
             log('Calling ' + method + ': ', c);
             callInWindow(method, c);
        })();
        // Page & Search
        dataHandler_('page', [
            'name',
            'parameter',
            'category',
            'goal',
            'useHashForDefaultPageName',
            'useParamsForDefaultPageName',
            'predefined',
            'search',
            'numberSearchResults'
        ]);
        // order
        const orderParameter_ = ['id', 'parameter', 'value', 'currency', 'couponValue', 'predefined'];
        dataHandler_('order', orderParameter_);
    }
    else if (data.requestType === 'event') {
        // action
        dataHandler_('action', ['name', 'parameter', 'goal']);
        // Extension event stuff
        // links reload
        if (data.extensionActionReload) {
            log('Executing wtSmart.extension.action.reload');
            callInWindow('wtSmart.extension.action.reload');
        }
        // form update
        if (data.extensionFormUpdate) {
            log('Executing wtSmart.extension.form.update');
            callInWindow('wtSmart.extension.form.update');
        }
    }
    // products
    if (data.products && data.products.length > 0) {
        data.products.forEach(product => {
            const status = product.status ? product.status : 'view';
            const method = 'wtSmart.product.' + status + '.data.add';
            const valids = ['view', 'basket', 'confirmation', 'list', 'addToCart', 'deleteFromCart', 'checkout', 'addToWishlist', 'deleteFromWishlist'];
            if(valids.indexOf(status) !== -1) {
                log('Calling ' + method + ': ', [product]);
                callInWindow(method, [product]);         
            }
        });
    }
    // campaign
    dataHandler_('campaign', ['id', 'oncePerSession', 'parameter']);
    // session
    dataHandler_('session', ['loginStatus', 'parameter']);
    // customer
    /**
     * Handles overwriting the validation
     * @param {Object} config
     */
    const customerHandler_ = (config) => {
        if (data.overwriteCustomerValidation) {
            config.validation = true;
        }
        log('Calling wtSmart.customer.data.add: ', config);
        callInWindow('wtSmart.customer.data.add', config);
    };
    dataHandler_('customer', ['id', 'predefined', 'category', 'validation'], customerHandler_);
    // extension.action
    if (data.extensionActionActivate) {
        const extensionActionHandler_ = (config) => {
            config.extend = data.extensionActionExtend ? data.extensionActionExtend.split(',') : [];
            if (data.extensionActionDelay) {
                config.delayDuration = data.extensionActionDelayDuration ? data.extensionActionDelayDuration : 200;
            }
            log('Calling wtSmart.extension.action.config', config);
            callInWindow('wtSmart.extension.action.config', config);
            callInWindow('wtSmart.extension.action.activate');
            log('Automatic linktracking activated');
        };
        const actionExtensionParameter_ = ['type', 'advanced', 'attribute', 'parameter', 'withHash', 'delay', 'noDelayAttribute', 'ignore', 'replace'];
        dataHandler_('extensionAction', actionExtensionParameter_, extensionActionHandler_);
    }

    // extension.form
    if (data.extensionFormActivate) {
        const extensionFormParameter_ = ['automatic', 'attribute', 'anonymous', 'pathAnalysis'];
        const extensionFormHandler_ = (config) => {
            if (data.extensionFormSelector) {
                config.automatic = data.extensionFormSelector;
            }
            config.fullContent = data.extensionFormFullContent ? data.extensionFormFullContent.split(',') : [];
            config.field = {};
            if (data.extensionFormFieldAttribute) {
                config.field.attribute = data.extensionFormFieldAttribute;
            }
            if (data.extensionFormFieldValue) {
                config.field.value = data.extensionFormFieldValue;
            }
            if (data.extensionFormFieldDefaults) {
                config.field.defaults = makeTableMap(data.extensionFormFieldDefaults, 'id', 'value');
            }
            log('Calling wtSmart.extension.form.config: ', config);
            callInWindow('wtSmart.extension.form.config', config);
        };
        dataHandler_('extensionForm', extensionFormParameter_, extensionFormHandler_);
    }
    // Track
    if (data.track !== false) {
        const trackMethod = 'wtSmart.' + data.track;
        log('Calling ' + trackMethod);
        callInWindow(trackMethod, data.keepData);
    }
};

const onSuccess = () => {
    log('Smartpixel loaded from CDN!');
    runMapp();
};

const onFailure = () => {
    log('Could not load Smartpixel from CDN!');
};

if(data.loadSmartPixelFromCDN) {
    if(data.debug) {
        log('Trying to load Smartpixel Debug version from CDN!');
        injectScript('https://responder.wt-safetag.com/smartpixel/smart-pixel.debug.js', onSuccess, onFailure);
    } else {
        injectScript('https://responder.wt-safetag.com/smartpixel/smart-pixel.min.js', onSuccess, onFailure);
    }

} else {
    log('Smartpixel not loaded from CDN - make sure to load it yourself!');
    runMapp();
}

if(data.acquire) {
  const aqUrlStart = data.acquire.indexOf('https://c.flx1.com/'), aqDash = data.acquire.indexOf('-'), aqUrlEnd = data.acquire.indexOf('.js');
  const aqId = data.acquire.substring(aqDash + 1, aqUrlEnd), aqM = data.acquire.substring(aqUrlStart + 19, aqDash);
  const aqUrl = 'https://c.flx1.com/' + aqM + '-' + aqId + '.js?id=' + aqId + '&m=' + aqM;
  log('Load Mapp Acquire from: ', aqUrl);
  injectScript(aqUrl, ()=>{log('Mapp Acquire loaded');}, ()=>{log('Mapp Acquire could not be loaded');});
}
data.gtmOnSuccess();


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "all"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wtSmart.init.add"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wtSmart.track"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wtSmart.page.parameter.add"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wtSmart.page.category.add"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wtSmart.page.goal.add"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wtSmart.page.data.add"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wtSmart.advanced.add"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wtSmart.order.data.add"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wtSmart.product.view.data.add"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wtSmart.product.basket.data.add"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wtSmart.product.confirmation.data.add"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wtSmart.product.list.data.add"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wtSmart.campaign.data.add"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wtSmart.session.data.add"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wtSmart.customer.data.add"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wtSmart.action.data.add"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wtSmart.extension.action.config"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wtSmart.extension.action.activate"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wtSmart.extension.action.reload"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wtSmart.extension.teaser_tracking.add"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wtSmart.extension.teaser_tracking.config"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wtSmart.extension.teaser_tracking.activate"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wtSmart.extension.teaser_tracking.update"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wtSmart.extension.form.config"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wtSmart.extension.form.update"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wtSmart.trackPage"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wtSmart.trackAction"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wtSmart._ps"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wtSmart.product.addToCart.data.add"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wtSmart.product.deleteFromCart.data.add"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wtSmart.product.checkout.data.add"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wtSmart.product.addToWishlist.data.add"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wtSmart.product.deleteFromWishlist.data.add"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://responder.wt-safetag.com/smartpixel/*"
              },
              {
                "type": 1,
                "string": "https://c.flx1.com/*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: init only
  code: |
    const mockData = {
        requestType: 'page',
        keepData: false,
        track: 'track',
        initTrackDomain: 'track.mapp.com',
        initTrackId: '111111111111111',
        initDomain: 'test.de,bla.com',
        cookie: '1'
    };

    runCode(mockData);
    if (debugTest) {
        debugLog(calls);
    }
    assertApi('gtmOnSuccess').wasCalled();
    assertThat(calls.length).isEqualTo(4);


    calls.forEach((call, index) => {
        switch (index) {
            case 1:
                is(call, 'method', 'wtSmart.init.add');
                is(call, 'config.trackDomain', 'track.mapp.com');
                is(call, 'config.cookie', '1');
                is(call, 'config.domain', ['test.de', 'bla.com']);
                break;
            case 3:
                is(call, 'method', 'wtSmart.track');
                is(call, 'config', false);
                break;
            default:
                break;
        }
    });
- name: advanced only
  code: |
    const mockData = {
        requestType: 'page',
        keepData: false,
        track: 'track',
        advancedForceOldEverId: true,
        advancedOptOutName: 'customCookieName',
        advancedRequestObfuscation: false,
        advancedSecureCookie: true,
        advancedSendViaSDK: false,
        advancedUseCDBCache: false,
        advancedUseHashForDefaultPageName: true,
        requestQueueActivated: true,
        requestQueueResendInterval: '7',
        requestQueueSize: '99',
        requestQueueTtl: '299',
        useParamsForDefaultPageName: 'para1,para2',
        userIdentificationEnableOptOut: true,
        userIdentificationAnonymousOptIn: true,
        userIdentificationEnableOptOutOptOutCookieName: 'testcookie1234',
        userIdentificationSuppressParameter: 'uc5,uc7,cd'
    };

    runCode(mockData);
    if (debugTest) {
        debugLog(calls);
    }
    assertApi('gtmOnSuccess').wasCalled();
    assertThat(calls.length).isEqualTo(4);

    calls.forEach((call, index) => {
        switch (index) {
            case 1:
                is(call, 'method', 'wtSmart.advanced.add');
                is(call, 'config.forceOldEverId', true);
                is(call, 'config.optOutName', 'customCookieName');
                is(call, 'config.requestObfuscation', false);
                is(call, 'config.secureCookie', true);
                is(call, 'config.sendViaSDK', false);
                is(call, 'config.useHashForDefaultPageName', true);
                is(call, 'config.requestQueue.activated', true);
                is(call, 'config.requestQueue.resendInterval', 7000);
                is(call, 'config.requestQueue.size', '99');
                is(call, 'config.requestQueue.ttl', 299000);
                is(call, 'config.useParamsForDefaultPageName', ['para1', 'para2']);
                is(call, 'config.userIdentification.enableOptOut', true);
                is(call, 'config.userIdentification.anonymousOptIn', true);
                is(call, 'config.userIdentification.optOutCookieName', 'testcookie1234');
                is(call, 'config.userIdentification.suppressParameter', ['uc5', 'uc7', 'cd']);
                break;
            case 3:
                is(call, 'method', 'wtSmart.track');
                is(call, 'config', false);
                break;
            default:
                break;
        }
    });
- name: page only
  code: |
    const mockData = {
        requestType: 'page',
        keepData: false,
        track: 'track',
        pageName: 'pagename',
        pageCategory: [
            {
                id: 43,
                value: 'pagecategory 43'
            }
        ],
        pageGoal: [
            {
                id: 11,
                value: 'pagegoal 11'
            }
        ],
        pageParameter: [
            {
                id: 2,
                value: 'pageparameter 2'
            },
            {
                id: 3,
                value: 'pageparameter 3'
            }
        ],
        pageNumberSearchResults: '23',
        pageSearch: 'search term',
        pagePredefined: [
            {id: 'errorMessages', value: 'errorMessages value'},
            {id: 'paywall', value: 'paywall value'},
            {id: 'articleTitle', value: 'articleTitle value'},
            {id: 'contentTags', value: 'contentTags value'},
            {id: 'title', value: 'title value'},
            {id: 'type', value: 'type value'},
            {id: 'length', value: 'length value'},
            {id: 'daysSincePublication', value: 'daysSincePublication value'},
            {id: 'testVariant', value: 'testVariant value'},
            {id: 'testExperiment', value: 'testExperiment value'}
        ]

    };

    runCode(mockData);
    if (debugTest) {
        debugLog(calls);
    }
    assertApi('gtmOnSuccess').wasCalled();
    assertThat(calls.length).isEqualTo(4);

    calls.forEach((call, index) => {
        switch (index) {
            case 2:
                is(call, 'method', 'wtSmart.page.data.add');
                is(call, 'config.name', 'pagename');
                is(call, 'config.category.43', 'pagecategory 43');
                is(call, 'config.goal.11', 'pagegoal 11');
                is(call, 'config.parameter.2', 'pageparameter 2');
                is(call, 'config.parameter.3', 'pageparameter 3');
                is(call, 'config.numberSearchResults', '23');
                is(call, 'config.search', 'search term');
                is(call, 'config.errorMessages', 'errorMessages value');
                is(call, 'config.paywall', 'paywall value');
                is(call, 'config.articleTitle', 'articleTitle value');
                is(call, 'config.contentTags', 'contentTags value');
                is(call, 'config.title', 'title value');
                is(call, 'config.type', 'type value');
                is(call, 'config.length', 'length value');
                is(call, 'config.daysSincePublication', 'daysSincePublication value');
                is(call, 'config.testVariant', 'testVariant value');
                is(call, 'config.testExperiment', 'testExperiment value');
                break;
            case 3:
                is(call, 'method', 'wtSmart.track');
                is(call, 'config', false);
                break;
            default:
                break;
        }
    });
- name: session only
  code: |
    const mockData = {
        requestType: 'page',
        keepData: false,
        track: 'track',
        sessionLoginStatus: 'logged in',
        sessionParameter: [
            {
                id: 2,
                value: 'sessionparameter 2'
            },
            {
                id: 3,
                value: 'sessionparameter 3'
            }
        ]
    };

    runCode(mockData);
    if (debugTest) {
        debugLog(calls);
    }
    assertApi('gtmOnSuccess').wasCalled();
    assertThat(calls.length).isEqualTo(4);

    calls.forEach((call, index) => {
        switch (index) {
            case 2:
                is(call, 'method', 'wtSmart.session.data.add');
                is(call, 'config.loginStatus', 'logged in');
                is(call, 'config.parameter.2', 'sessionparameter 2');
                is(call, 'config.parameter.3', 'sessionparameter 3');
                break;
            case 3:
                is(call, 'method', 'wtSmart.track');
                is(call, 'config', false);
                break;
            default:
                break;
        }
    });
- name: customer only
  code: |
    const mockData = {
        requestType: 'page',
        keepData: false,
        track: 'track',
        customerId: 'abc@def.de',
        overwriteCustomerValidation: true,
        customerCategory: [
            {
                id: 43,
                value: 'customercategory 43'
            },
            {
                id: 44,
                value: 'customercategory 44'
            }
        ],
        customerPredefined: [
            {id: 'email', value: 'email value'},
            {id: 'emailRID', value: 'emailRID value'},
            {id: 'firstName', value: 'firstName value'},
            {id: 'lastName', value: 'lastName value'},
            {id: 'telephone', value: 'telephone value'},
            {id: 'gender', value: 'gender value'},
            {id: 'birthday', value: 'birthday value'},
            {id: 'country', value: 'country value'},
            {id: 'city', value: 'city value'},
            {id: 'street', value: 'street value'},
            {id: 'streetNumber', value: 'streetNumber value'}
        ]

    };

    runCode(mockData);
    if (debugTest) {
        debugLog(calls);
    }
    assertApi('gtmOnSuccess').wasCalled();
    assertThat(calls.length).isEqualTo(4);

    calls.forEach((call, index) => {
        switch (index) {
            case 2:
                is(call, 'method', 'wtSmart.customer.data.add');
                is(call, 'config.id', 'abc@def.de');
                is(call, 'config.validation', true);
                is(call, 'config.category.43', 'customercategory 43');
                is(call, 'config.category.44', 'customercategory 44');
                is(call, 'config.validation', true);
                is(call, 'config.email', 'email value');
                is(call, 'config.emailRID', 'emailRID value');
                is(call, 'config.firstName', 'firstName value');
                is(call, 'config.lastName', 'lastName value');
                is(call, 'config.telephone', 'telephone value');
                is(call, 'config.gender', 'gender value');
                is(call, 'config.birthday', 'birthday value');
                is(call, 'config.country', 'country value');
                is(call, 'config.city', 'city value');
                is(call, 'config.street', 'street value');
                is(call, 'config.streetNumber', 'streetNumber value');
                break;
            case 3:
                is(call, 'method', 'wtSmart.track');
                is(call, 'config', false);
                break;
            default:
                break;
        }
    });
- name: campaign only
  code: |
    const mockData = {
        requestType: 'page',
        keepData: false,
        track: 'track',
        campaignId: 'wt_mc%3Dtest.blah.foo.bar',
        campaignOncePerSession: true,
        campaignParameter: [
            {
                id: 43,
                value: 'campaignParameter 43'
            },
            {
                id: 44,
                value: 'campaignParameter 44'
            }
        ]

    };

    runCode(mockData);
    if (debugTest) {
        debugLog(calls);
    }
    assertApi('gtmOnSuccess').wasCalled();
    assertThat(calls.length).isEqualTo(4);

    calls.forEach((call, index) => {
        switch (index) {
            case 2:
                is(call, 'method', 'wtSmart.campaign.data.add');
                is(call, 'config.id', 'wt_mc%3Dtest.blah.foo.bar');
                is(call, 'config.oncePerSession', true);
                is(call, 'config.parameter.43', 'campaignParameter 43');
                is(call, 'config.parameter.44', 'campaignParameter 44');
                break;
            case 3:
                is(call, 'method', 'wtSmart.track');
                is(call, 'config', false);
                break;
            default:
                break;
        }
    });
- name: ecommerce only
  code: |
    const mockData = {
        requestType: 'page',
        keepData: false,
        track: 'track',
        products: [
            {
                category: {1: 'Category A'},
                cost: '11.95',
                id: 'Product A',
                quantity: '1',
                soldOut: false,
                status: 'view',
                variant: 'Variant A'
            },
            {
                category: {1: 'Category B'},
                cost: '99.99',
                id: 'Product B',
                quantity: '1',
                soldOut: false,
                status: 'list',
                variant: 'Variant B'
            },
            {
                category: {1: 'Category C'},
                cost: '22.99',
                id: 'Product C',
                quantity: '1',
                soldOut: false,
                status: 'basket',
                variant: 'Variant C'
            },
            {
                category: {1: 'Category D'},
                cost: '33.99',
                id: 'Product D',
                quantity: '1',
                soldOut: false,
                status: 'confirmation',
                variant: 'Variant D'
            }
        ],
        orderCouponValue: '2',
        orderCurrency: 'EUR',
        orderId: 'orderId',
        orderParameter: [
            {
                id: 2,
                value: 'ecommerceparameter 2'
            },
            {
                id: 3,
                value: 'ecommerceparameter 3'
            }
        ],
        orderPredefined: [
            {id: 'paymentMethod', value: 'paymentMethod value'},
            {id: 'shippingService', value: 'shippingService value'},
            {id: 'shippingSpeed', value: 'shippingSpeed value'},
            {id: 'shippingCosts', value: 'shippingCosts value'},
            {id: 'grossMargin', value: 'grossMargin value'},
            {id: 'orderStatus', value: 'orderStatus value'}
        ],
        orderValue: '9.99'
    };

    runCode(mockData);
    if (debugTest) {
        debugLog(calls);
    }
    assertApi('gtmOnSuccess').wasCalled();
    assertThat(calls.length).isEqualTo(8);

    calls.forEach((call, index) => {
        switch (index) {
            case 2:
                is(call, 'method', 'wtSmart.order.data.add');
                is(call, 'config.id', 'orderId');
                is(call, 'config.parameter.2', 'ecommerceparameter 2');
                is(call, 'config.parameter.3', 'ecommerceparameter 3');
                is(call, 'config.value', '9.99');
                is(call, 'config.currency', 'EUR');
                is(call, 'config.paymentMethod', 'paymentMethod value');
                is(call, 'config.shippingService', 'shippingService value');
                is(call, 'config.shippingSpeed', 'shippingSpeed value');
                is(call, 'config.shippingCosts', 'shippingCosts value');
                is(call, 'config.grossMargin', 'grossMargin value');
                is(call, 'config.orderStatus', 'orderStatus value');
                break;
            case 3:
                is(call, 'method', 'wtSmart.product.view.data.add');
                is(call, 'config.0.category.1', 'Category A');
                is(call, 'config.0.cost', '11.95');
                is(call, 'config.0.id', 'Product A');
                is(call, 'config.0.quantity', '1');
                is(call, 'config.0.soldOut', false);
                is(call, 'config.0.status', 'view');
                is(call, 'config.0.variant', 'Variant A');
                break;
            case 4:
                is(call, 'method', 'wtSmart.product.list.data.add');
                is(call, 'config.0.category.1', 'Category B');
                is(call, 'config.0.cost', '99.99');
                is(call, 'config.0.id', 'Product B');
                is(call, 'config.0.quantity', '1');
                is(call, 'config.0.soldOut', false);
                is(call, 'config.0.status', 'list');
                is(call, 'config.0.variant', 'Variant B');
                break;
            case 5:
                is(call, 'method', 'wtSmart.product.basket.data.add');
                is(call, 'config.0.category.1', 'Category C');
                is(call, 'config.0.cost', '22.99');
                is(call, 'config.0.id', 'Product C');
                is(call, 'config.0.quantity', '1');
                is(call, 'config.0.soldOut', false);
                is(call, 'config.0.status', 'basket');
                is(call, 'config.0.variant', 'Variant C');
                break;
            case 6:
                is(call, 'method', 'wtSmart.product.confirmation.data.add');
                is(call, 'config.0.category.1', 'Category D');
                is(call, 'config.0.cost', '33.99');
                is(call, 'config.0.id', 'Product D');
                is(call, 'config.0.quantity', '1');
                is(call, 'config.0.soldOut', false);
                is(call, 'config.0.status', 'confirmation');
                is(call, 'config.0.variant', 'Variant D');
                break;
            case 7:
                is(call, 'method', 'wtSmart.track');
                is(call, 'config', false);
                break;
            default:
                break;
        }
    });
- name: action only
  code: |
    const mockData = {
        requestType: 'event',
        keepData: false,
        track: 'track',
        actionName: 'eventValue',
        actionParameter: [
            {
                id: 2,
                value: 'actionparameter 2'
            },
            {
                id: 3,
                value: 'actionparameter 3'
            }
        ],
        actionGoal: [
            {
                id: 2,
                value: 'actionGoal 2'
            },
            {
                id: 3,
                value: 'actionGoal 3'
            }
        ]
    };

    runCode(mockData);
    if (debugTest) {
        debugLog(calls);
    }
    assertApi('gtmOnSuccess').wasCalled();
    assertThat(calls.length).isEqualTo(3);

    calls.forEach((call, index) => {
        switch (index) {
            case 1:
                is(call, 'method', 'wtSmart.action.data.add');
                is(call, 'config.name', 'eventValue');
                is(call, 'config.parameter.2', 'actionparameter 2');
                is(call, 'config.parameter.3', 'actionparameter 3');
                is(call, 'config.goal.2', 'actionGoal 2');
                is(call, 'config.goal.3', 'actionGoal 3');
                break;
            case 2:
                is(call, 'method', 'wtSmart.track');
                is(call, 'config', false);
                break;
            default:
                break;
        }
    });
- name: linktracking only
  code: |
    const mockData = {
        requestType: 'page',
        keepData: false,
        track: 'track',
        extensionActionActivate: true,
        extensionActionType: 'standard',
        extensionActionAttribute: 'mapp-data',
        extensionActionParameter: [
            {
                id: 2,
                value: 'ck2'
            },
            {
                id: 3,
                value: 'ck3'
            }
        ],
        extensionActionWithHash: false,
        extensionActionExtend: 'para1,para2',
        extensionActionDelay: true,
        extensionActionDelayDuration: '300',
        extensionActionNoDelayAttribute: 'nodelay'
    };

    runCode(mockData);
    if (debugTest) {
        debugLog(calls);
    }
    assertApi('gtmOnSuccess').wasCalled();
    assertThat(calls.length).isEqualTo(5);

    calls.forEach((call, index) => {
        switch (index) {
            case 2:
                is(call, 'method', 'wtSmart.extension.action.config');
                is(call, 'config.type', 'standard');
                is(call, 'config.attribute', 'mapp-data');
                is(call, 'config.parameter.2', 'ck2');
                is(call, 'config.parameter.3', 'ck3');
                is(call, 'config.withHash', false);
                is(call, 'config.delay', true);
                is(call, 'config.noDelayAttribute', 'nodelay');
                is(call, 'config.extend', ['para1', 'para2']);
                is(call, 'config.delayDuration', '300');
                break;
            case 3:
                is(call, 'method', 'wtSmart.extension.action.activate');
                break;
            case 4:
                is(call, 'method', 'wtSmart.track');
                is(call, 'config', false);
                break;
            default:
                break;
        }
    });
- name: formtracking only
  code: |
    const mockData = {
        requestType: 'page',
        keepData: false,
        track: 'track',
        extensionFormActivate: true,
        extensionFormAutomatic: true,
        extensionFormSelector: 'myform',
        extensionFormAttribute: 'foo',
        extensionFormFullContent: 'name,address',
        extensionFormAnonymous: false,
        extensionFormPathAnalysis: true,
        extensionFormFieldAttribute: 'data-name',
        extensionFormFieldValue: 'value',
        extensionFormFieldDefaults: [
            {
                id: 'defaultFoo',
                value: 'defaultBar'
            }
        ]
    };

    runCode(mockData);
    if (debugTest) {
        debugLog(calls);
    }
    assertApi('gtmOnSuccess').wasCalled();
    assertThat(calls.length).isEqualTo(4);

    calls.forEach((call, index) => {
        switch (index) {
            case 2:
                is(call, 'method', 'wtSmart.extension.form.config');
                is(call, 'config.automatic', 'myform');
                is(call, 'config.attribute', 'foo');
                is(call, 'config.fullContent', ['name', 'address']);
                is(call, 'config.anonymous', false);
                is(call, 'config.pathAnalysis', true);
                is(call, 'config.field.attribute', 'data-name');
                is(call, 'config.field.value', 'value');
                is(call, 'config.field.defaults', {defaultFoo: 'defaultBar'});
                break;
            case 3:
                is(call, 'method', 'wtSmart.track');
                is(call, 'config', false);
                break;
            default:
                break;
        }
    });
- name: reload form and linktracking
  code: |
    const mockData = {
        requestType: 'event',
        keepData: false,
        track: 'track',
        extensionFormUpdate: true,
        extensionActionReload: true
    };

    runCode(mockData);
    if (debugTest) {
        debugLog(calls);
    }
    assertApi('gtmOnSuccess').wasCalled();
    assertThat(calls.length).isEqualTo(4);

    calls.forEach((call, index) => {
        switch (index) {
            case 1:
                is(call, 'method', 'wtSmart.extension.action.reload');
                break;
            case 2:
                is(call, 'method', 'wtSmart.extension.form.update');
                break;
            case 3:
                is(call, 'method', 'wtSmart.track');
                is(call, 'config', false);
                break;
            default:
                break;
        }
    });
- name: giant pagerequest
  code: |
    const mockData = {
        requestType: 'page',
        keepData: false,
        track: 'track',
        initTrackDomain: 'track.mapp.com',
        initTrackId: '111111111111111',
        initDomain: 'test.de,bla.com',
        cookie: '1',
        advancedForceOldEverId: true,
        advancedOptOutName: 'customCookieName',
        advancedRequestObfuscation: false,
        advancedSecureCookie: true,
        advancedSendViaSDK: false,
        advancedUseHashForDefaultPageName: true,
        requestQueueActivated: true,
        requestQueueResendInterval: '7',
        requestQueueSize: '99',
        requestQueueTtl: '299',
        useParamsForDefaultPageName: 'para1,para2',
        userIdentificationEnableOptOut: true,
        userIdentificationAnonymousOptIn: true,
        userIdentificationEnableOptOutOptOutCookieName: 'testcookie1234',
        userIdentificationSuppressParameter: 'uc5,uc7,cd',
        pageName: 'pagename',
        pageCategory: [
            {
                id: 43,
                value: 'pagecategory 43'
            }
        ],
        pageGoal: [
            {
                id: 11,
                value: 'pagegoal 11'
            }
        ],
        pageParameter: [
            {
                id: 2,
                value: 'pageparameter 2'
            },
            {
                id: 3,
                value: 'pageparameter 3'
            }
        ],
        pageNumberSearchResults: '23',
        pageSearch: 'search term',
        pagePredefined: [
            {id: 'errorMessages', value: 'errorMessages value'},
            {id: 'paywall', value: 'paywall value'},
            {id: 'articleTitle', value: 'articleTitle value'},
            {id: 'contentTags', value: 'contentTags value'},
            {id: 'title', value: 'title value'},
            {id: 'type', value: 'type value'},
            {id: 'length', value: 'length value'},
            {id: 'daysSincePublication', value: 'daysSincePublication value'},
            {id: 'testVariant', value: 'testVariant value'},
            {id: 'testExperiment', value: 'testExperiment value'}
        ],
        campaignId: 'wt_mc%3Dtest.blah.foo.bar',
        campaignOncePerSession: true,
        campaignParameter: [
            {
                id: 43,
                value: 'campaignParameter 43'
            },
            {
                id: 44,
                value: 'campaignParameter 44'
            }
        ],
        customerId: 'abc@def.de',
        overwriteCustomerValidation: true,
        customerCategory: [
            {
                id: 43,
                value: 'customercategory 43'
            },
            {
                id: 44,
                value: 'customercategory 44'
            }
        ],
        customerPredefined: [
            {id: 'email', value: 'email value'},
            {id: 'emailRID', value: 'emailRID value'},
            {id: 'firstName', value: 'firstName value'},
            {id: 'lastName', value: 'lastName value'},
            {id: 'telephone', value: 'telephone value'},
            {id: 'gender', value: 'gender value'},
            {id: 'birthday', value: 'birthday value'},
            {id: 'country', value: 'country value'},
            {id: 'city', value: 'city value'},
            {id: 'street', value: 'street value'},
            {id: 'streetNumber', value: 'streetNumber value'}
        ],
        products: [
            {
                category: {1: 'Category A'},
                cost: '11.95',
                id: 'Product A',
                quantity: '1',
                soldOut: false,
                status: 'view',
                variant: 'Variant A'
            },
            {
                category: {1: 'Category B'},
                cost: '99.99',
                id: 'Product B',
                quantity: '1',
                soldOut: false,
                status: 'list',
                variant: 'Variant B'
            },
            {
                category: {1: 'Category C'},
                cost: '22.99',
                id: 'Product C',
                quantity: '1',
                soldOut: false,
                status: 'basket',
                variant: 'Variant C'
            },
            {
                category: {1: 'Category D'},
                cost: '33.99',
                id: 'Product D',
                quantity: '1',
                soldOut: false,
                status: 'confirmation',
                variant: 'Variant D'
            }
        ],
        orderCouponValue: '2',
        orderCurrency: 'EUR',
        orderId: 'orderId',
        orderParameter: [
            {
                id: 2,
                value: 'ecommerceparameter 2'
            },
            {
                id: 3,
                value: 'ecommerceparameter 3'
            }
        ],
        orderPredefined: [
            {id: 'paymentMethod', value: 'paymentMethod value'},
            {id: 'shippingService', value: 'shippingService value'},
            {id: 'shippingSpeed', value: 'shippingSpeed value'},
            {id: 'shippingCosts', value: 'shippingCosts value'},
            {id: 'grossMargin', value: 'grossMargin value'},
            {id: 'orderStatus', value: 'orderStatus value'}
        ],
        orderValue: '9.99',
        sessionLoginStatus: 'logged in',
        sessionParameter: [
            {
                id: 2,
                value: 'sessionparameter 2'
            },
            {
                id: 3,
                value: 'sessionparameter 3'
            }
        ],
        extensionActionActivate: true,
        extensionActionType: 'standard',
        extensionActionAttribute: 'mapp-data',
        extensionActionParameter: [
            {
                id: 2,
                value: 'ck2'
            },
            {
                id: 3,
                value: 'ck3'
            }
        ],
        extensionActionWithHash: false,
        extensionActionExtend: 'para1,para2',
        extensionActionDelay: true,
        extensionActionDelayDuration: '300',
        extensionActionNoDelayAttribute: 'nodelay',
        extensionFormActivate: true,
        extensionFormAutomatic: true,
        extensionFormSelector: 'myform',
        extensionFormAttribute: 'foo',
        extensionFormFullContent: 'name,address',
        extensionFormAnonymous: false,
        extensionFormPathAnalysis: true,
        extensionFormFieldAttribute: 'data-name',
        extensionFormFieldValue: 'value',
        extensionFormFieldDefaults: [
            {
                id: 'defaultFoo',
                value: 'defaultBar'
            }
        ]
    };

    runCode(mockData);
    if (debugTest) {
        debugLog(calls);
    }
    assertApi('gtmOnSuccess').wasCalled();
    assertThat(calls.length).isEqualTo(17);

    calls.forEach((call, index) => {
        switch (index) {
            case 1:
                is(call, 'method', 'wtSmart.init.add');
                is(call, 'config.trackDomain', 'track.mapp.com');
                is(call, 'config.cookie', '1');
                is(call, 'config.domain', ['test.de', 'bla.com']);
                break;
            case 2:
                is(call, 'method', 'wtSmart.advanced.add');
                is(call, 'config.forceOldEverId', true);
                is(call, 'config.optOutName', 'customCookieName');
                is(call, 'config.requestObfuscation', false);
                is(call, 'config.secureCookie', true);
                is(call, 'config.sendViaSDK', false);
                is(call, 'config.useHashForDefaultPageName', true);
                is(call, 'config.requestQueue.activated', true);
                is(call, 'config.requestQueue.resendInterval', 7000);
                is(call, 'config.requestQueue.size', '99');
                is(call, 'config.requestQueue.ttl', 299000);
                is(call, 'config.useParamsForDefaultPageName', ['para1', 'para2']);
                is(call, 'config.userIdentification.enableOptOut', true);
                is(call, 'config.userIdentification.anonymousOptIn', true);
                is(call, 'config.userIdentification.optOutCookieName', 'testcookie1234');
                is(call, 'config.userIdentification.suppressParameter', ['uc5', 'uc7', 'cd']);
                break;
            case 4:
                is(call, 'method', 'wtSmart.page.data.add');
                is(call, 'config.name', 'pagename');
                is(call, 'config.category.43', 'pagecategory 43');
                is(call, 'config.goal.11', 'pagegoal 11');
                is(call, 'config.parameter.2', 'pageparameter 2');
                is(call, 'config.parameter.3', 'pageparameter 3');
                is(call, 'config.numberSearchResults', '23');
                is(call, 'config.search', 'search term');
                is(call, 'config.errorMessages', 'errorMessages value');
                is(call, 'config.paywall', 'paywall value');
                is(call, 'config.articleTitle', 'articleTitle value');
                is(call, 'config.contentTags', 'contentTags value');
                is(call, 'config.title', 'title value');
                is(call, 'config.type', 'type value');
                is(call, 'config.length', 'length value');
                is(call, 'config.daysSincePublication', 'daysSincePublication value');
                is(call, 'config.testVariant', 'testVariant value');
                is(call, 'config.testExperiment', 'testExperiment value');
                break;
            case 5:
                is(call, 'method', 'wtSmart.order.data.add');
                is(call, 'config.id', 'orderId');
                is(call, 'config.parameter.2', 'ecommerceparameter 2');
                is(call, 'config.parameter.3', 'ecommerceparameter 3');
                is(call, 'config.value', '9.99');
                is(call, 'config.currency', 'EUR');
                is(call, 'config.paymentMethod', 'paymentMethod value');
                is(call, 'config.shippingService', 'shippingService value');
                is(call, 'config.shippingSpeed', 'shippingSpeed value');
                is(call, 'config.shippingCosts', 'shippingCosts value');
                is(call, 'config.grossMargin', 'grossMargin value');
                is(call, 'config.orderStatus', 'orderStatus value');
                break;
            case 6:
                is(call, 'method', 'wtSmart.product.view.data.add');
                is(call, 'config.0.category.1', 'Category A');
                is(call, 'config.0.cost', '11.95');
                is(call, 'config.0.id', 'Product A');
                is(call, 'config.0.quantity', '1');
                is(call, 'config.0.soldOut', false);
                is(call, 'config.0.status', 'view');
                is(call, 'config.0.variant', 'Variant A');
                break;
            case 7:
                is(call, 'method', 'wtSmart.product.list.data.add');
                is(call, 'config.0.category.1', 'Category B');
                is(call, 'config.0.cost', '99.99');
                is(call, 'config.0.id', 'Product B');
                is(call, 'config.0.quantity', '1');
                is(call, 'config.0.soldOut', false);
                is(call, 'config.0.status', 'list');
                is(call, 'config.0.variant', 'Variant B');
                break;
            case 8:
                is(call, 'method', 'wtSmart.product.basket.data.add');
                is(call, 'config.0.category.1', 'Category C');
                is(call, 'config.0.cost', '22.99');
                is(call, 'config.0.id', 'Product C');
                is(call, 'config.0.quantity', '1');
                is(call, 'config.0.soldOut', false);
                is(call, 'config.0.status', 'basket');
                is(call, 'config.0.variant', 'Variant C');
                break;
            case 9:
                is(call, 'method', 'wtSmart.product.confirmation.data.add');
                is(call, 'config.0.category.1', 'Category D');
                is(call, 'config.0.cost', '33.99');
                is(call, 'config.0.id', 'Product D');
                is(call, 'config.0.quantity', '1');
                is(call, 'config.0.soldOut', false);
                is(call, 'config.0.status', 'confirmation');
                is(call, 'config.0.variant', 'Variant D');
                break;
            case 10:
                is(call, 'method', 'wtSmart.campaign.data.add');
                is(call, 'config.id', 'wt_mc%3Dtest.blah.foo.bar');
                is(call, 'config.oncePerSession', true);
                is(call, 'config.parameter.43', 'campaignParameter 43');
                is(call, 'config.parameter.44', 'campaignParameter 44');
                break;
            case 11:
                is(call, 'method', 'wtSmart.session.data.add');
                is(call, 'config.loginStatus', 'logged in');
                is(call, 'config.parameter.2', 'sessionparameter 2');
                is(call, 'config.parameter.3', 'sessionparameter 3');
                break;
            case 12:
                is(call, 'method', 'wtSmart.customer.data.add');
                is(call, 'config.id', 'abc@def.de');
                is(call, 'config.validation', true);
                is(call, 'config.category.43', 'customercategory 43');
                is(call, 'config.category.44', 'customercategory 44');
                is(call, 'config.validation', true);
                is(call, 'config.email', 'email value');
                is(call, 'config.emailRID', 'emailRID value');
                is(call, 'config.firstName', 'firstName value');
                is(call, 'config.lastName', 'lastName value');
                is(call, 'config.telephone', 'telephone value');
                is(call, 'config.gender', 'gender value');
                is(call, 'config.birthday', 'birthday value');
                is(call, 'config.country', 'country value');
                is(call, 'config.city', 'city value');
                is(call, 'config.street', 'street value');
                is(call, 'config.streetNumber', 'streetNumber value');
                break;
            case 13:
                is(call, 'method', 'wtSmart.extension.action.config');
                is(call, 'config.type', 'standard');
                is(call, 'config.attribute', 'mapp-data');
                is(call, 'config.parameter.2', 'ck2');
                is(call, 'config.parameter.3', 'ck3');
                is(call, 'config.withHash', false);
                is(call, 'config.delay', true);
                is(call, 'config.noDelayAttribute', 'nodelay');
                is(call, 'config.extend', ['para1', 'para2']);
                is(call, 'config.delayDuration', '300');
                break;
            case 14:
                is(call, 'method', 'wtSmart.extension.action.activate');
                break;
            case 15:
                is(call, 'method', 'wtSmart.extension.form.config');
                is(call, 'config.automatic', 'myform');
                is(call, 'config.attribute', 'foo');
                is(call, 'config.fullContent', ['name', 'address']);
                is(call, 'config.anonymous', false);
                is(call, 'config.pathAnalysis', true);
                is(call, 'config.field.attribute', 'data-name');
                is(call, 'config.field.value', 'value');
                is(call, 'config.field.defaults', {defaultFoo: 'defaultBar'});
                break;
            case 16:
                is(call, 'method', 'wtSmart.track');
                is(call, 'config', false);
                break;
            default:
                break;
        }
    });
- name: giant actionrequest
  code: |
    const mockData = {
        requestType: 'event',
        keepData: false,
        track: 'track',
        actionName: 'eventValue',
        actionParameter: [
            {
                id: 2,
                value: 'actionparameter 2'
            },
            {
                id: 3,
                value: 'actionparameter 3'
            }
        ],
        actionGoal: [
            {
                id: 2,
                value: 'actionGoal 2'
            },
            {
                id: 3,
                value: 'actionGoal 3'
            }
        ],
        extensionFormUpdate: true,
        extensionActionReload: true,
        campaignId: 'wt_mc%3Dtest.blah.foo.bar',
        campaignOncePerSession: true,
        campaignParameter: [
            {
                id: 43,
                value: 'campaignParameter 43'
            },
            {
                id: 44,
                value: 'campaignParameter 44'
            }
        ],
        sessionLoginStatus: 'logged in',
        sessionParameter: [
            {
                id: 2,
                value: 'sessionparameter 2'
            },
            {
                id: 3,
                value: 'sessionparameter 3'
            }
        ],
        customerId: 'abc@def.de',
        overwriteCustomerValidation: true,
        customerCategory: [
            {
                id: 43,
                value: 'customercategory 43'
            },
            {
                id: 44,
                value: 'customercategory 44'
            }
        ],
        customerPredefined: [
            {id: 'email', value: 'email value'},
            {id: 'emailRID', value: 'emailRID value'},
            {id: 'firstName', value: 'firstName value'},
            {id: 'lastName', value: 'lastName value'},
            {id: 'telephone', value: 'telephone value'},
            {id: 'gender', value: 'gender value'},
            {id: 'birthday', value: 'birthday value'},
            {id: 'country', value: 'country value'},
            {id: 'city', value: 'city value'},
            {id: 'street', value: 'street value'},
            {id: 'streetNumber', value: 'streetNumber value'}
        ]
    };

    runCode(mockData);
    if (debugTest) {
        debugLog(calls);
    }
    assertApi('gtmOnSuccess').wasCalled();
    assertThat(calls.length).isEqualTo(8);

    calls.forEach((call, index) => {
        switch (index) {
            case 1:
                is(call, 'method', 'wtSmart.action.data.add');
                is(call, 'config.name', 'eventValue');
                is(call, 'config.parameter.2', 'actionparameter 2');
                is(call, 'config.parameter.3', 'actionparameter 3');
                is(call, 'config.goal.2', 'actionGoal 2');
                is(call, 'config.goal.3', 'actionGoal 3');
                break;
            case 2:
                is(call, 'method', 'wtSmart.extension.action.reload');
                break;
            case 3:
                is(call, 'method', 'wtSmart.extension.form.update');
                break;
            case 4:
                is(call, 'method', 'wtSmart.campaign.data.add');
                is(call, 'config.id', 'wt_mc%3Dtest.blah.foo.bar');
                is(call, 'config.oncePerSession', true);
                is(call, 'config.parameter.43', 'campaignParameter 43');
                is(call, 'config.parameter.44', 'campaignParameter 44');
                break;
            case 5:
                is(call, 'method', 'wtSmart.session.data.add');
                is(call, 'config.loginStatus', 'logged in');
                is(call, 'config.parameter.2', 'sessionparameter 2');
                is(call, 'config.parameter.3', 'sessionparameter 3');
                break;
            case 6:
                is(call, 'method', 'wtSmart.customer.data.add');
                is(call, 'config.id', 'abc@def.de');
                is(call, 'config.validation', true);
                is(call, 'config.category.43', 'customercategory 43');
                is(call, 'config.category.44', 'customercategory 44');
                is(call, 'config.validation', true);
                is(call, 'config.email', 'email value');
                is(call, 'config.emailRID', 'emailRID value');
                is(call, 'config.firstName', 'firstName value');
                is(call, 'config.lastName', 'lastName value');
                is(call, 'config.telephone', 'telephone value');
                is(call, 'config.gender', 'gender value');
                is(call, 'config.birthday', 'birthday value');
                is(call, 'config.country', 'country value');
                is(call, 'config.city', 'city value');
                is(call, 'config.street', 'street value');
                is(call, 'config.streetNumber', 'streetNumber value');
                break;
            case 7:
                is(call, 'method', 'wtSmart.track');
                is(call, 'config', false);
                break;
            default:
                break;
        }
    });
- name: track methods
  code: |
    const mockData = {};

    mockData.keepData = false;
    mockData.track = 'track';
    runCode(mockData);

    mockData.keepData = true;
    mockData.track = 'track';
    runCode(mockData);

    mockData.keepData = false;
    mockData.track = 'trackPage';
    runCode(mockData);

    mockData.keepData = true;
    mockData.track = 'trackPage';
    runCode(mockData);

    mockData.keepData = false;
    mockData.track = 'trackAction';
    runCode(mockData);

    mockData.keepData = true;
    mockData.track = 'trackAction';
    runCode(mockData);

    mockData.track = false;
    runCode(mockData);

    if (debugTest) {
        debugLog(calls);
    }

    assertApi('gtmOnSuccess').wasCalled();
    assertThat(calls.length).isEqualTo(13);

    calls.forEach((call, index) => {
        switch (index) {
            case 1:
                is(call, 'method', 'wtSmart.track');
                is(call, 'config', false);
                break;
            case 3:
                is(call, 'method', 'wtSmart.track');
                is(call, 'config', true);
                break;
            case 5:
                is(call, 'method', 'wtSmart.trackPage');
                is(call, 'config', false);
                break;
            case 7:
                is(call, 'method', 'wtSmart.trackPage');
                is(call, 'config', true);
                break;
            case 9:
                is(call, 'method', 'wtSmart.trackAction');
                is(call, 'config', false);
                break;
            case 11:
                is(call, 'method', 'wtSmart.trackAction');
                is(call, 'config', true);
                break;
            default:
                break;
        }
    });
- name: only pixel version call
  code: |
    const mockData = {
        requestType: 'event',
        track: false
    };

    runCode(mockData);
    if (debugTest) {
        debugLog(calls);
    }
    assertApi('gtmOnSuccess').wasCalled();
    assertThat(calls.length).isEqualTo(1);


    calls.forEach((call, index) => {
        switch (index) {
            case 0:
                is(call, 'method', 'wtSmart._ps');
                is(call, 'config', 32);
                break;
            default:
                break;
        }
    });
setup: |-
  /* eslint-disable no-unused-vars */
  const log = require('logToConsole');
  let debugTest = false; // true will log all Pixel calls to the console during the test
  const calls = [];
  mock('callInWindow', (method, config) => {
      calls.push({method: method, config: config});
  });

  /**
   * @param {Object} obj
   * @param {string} key
   * @returns {*}
   */
  const reducer = (obj, key) => obj[key];

  /**
   * Function to run tests
   * @param {Object} call Current pixel call
   * @param {string} path Path in call object
   * @param {*} assumption
   */
  const is = (call, path, assumption) => {
      assertThat(path.split('.').reduce(reducer, call), 'No match in: ' + path).isEqualTo(assumption);
  };

  /**
   * Log pixel calls
   * @param {Array} callsArray
   */
  const debugLog = (callsArray) => {
      log('--- DEBUG PIXEL CALLS ---');
      callsArray.forEach((call) => {
          log(call);
      });
      log('--- END DEBUG ---');
  };


___NOTES___

Created on 2/12/2020, 4:31:43 PM


