{
  title: 'Shipwire',

  connection: {
    fields:
      [
        { name: 'username'},
        { name: 'password', control_type: 'password'}
      ],

    authorization: {
      type: 'basic_auth',

      credentials: ->(connection) {
        user(connection['username'])
        password(connection['password'])
      }
    }
  },

  object_definitions: {
    product: {
      fields: ->() {
        [
          { name: 'id'},
          { name: 'externalId'},
          { name: 'sku'},
          { name: 'description'},
          { name: 'hsCode'},
          { name: 'countryOfOrigin'},
          { name: 'creationDate', type: :timestamp},
          { name: 'archivedDate', type: :timestamp},
          { name: 'status'},
          { name: 'storageConfiguration'},
          { name: 'batteryConfiguration'},
          { name: 'itemCount'},
          { name: 'vendorID'},
          { name: 'vendorExternalId'},
          { name: 'dimensions', type: :object, properties: 
          	[
          		{ name: 'resourceLocation'},
          		{ name: 'resource', type: :object, properties: 
          			[
          				{ name: 'weight'},
		          		{ name: 'weightUnit'},
		          		{ name: 'height'},
		          		{ name: 'heightUnit'},
		          		{ name: 'length'},
		          		{ name: 'lengthUnit'}		
          			]
          		}
          	]
          },
          { name: 'values', type: :object, properties: 
          	[
          		{ name: 'resourceLocation'},
          		{ name: 'resource', type: :object, properties: 
          			[
          				{ name: 'costValueCurrency'},
          				{ name: 'wholesaleValue'},
          				{ name: 'costValue'},
          				{ name: 'wholesaleValueCurrency'},
          				{ name: 'retailValue'},
          				{ name: 'retailValueCurrency'}
          			]
          			
          		}
          	]
          },
          { name: 'alternateNames', type: :object, properties: 
          	[
          		{ name: 'resourceLocation'},
          		{ name: 'resource', type: :object, properties:
          			[
          				{ name: 'previous'},
          				{ name: 'next'},
          				{ name: 'total', type: :integer},
          				{ name: 'items', type: :array},
          				{ name: 'offset', type: :integer}
          			]
          		}
          	]
          },
          { name: 'technicalData', type: :object, properties: [
          		{ name: 'resourceLocation'},
          		{ name: 'resource', type: :object, properties: 
          			[
          				{ name: 'battery', type: :object, properties:[{ name: 'resourceLocation'}]}	
          			]
          	]
          },
          { name: 'flags', type: :object, properties: 
          	[
          		{ name: 'resourceLocation'},
          		{ name: 'resource', type: :object, properties:
          			[
          				{ name: 'isMedia'},
          				{ name: 'isDeletable'},
          				{ name: 'hasPallet'},
          				{ name: 'isPackagedReadyToShip'},
          				{ name: 'hasMasterCase'},
          				{ name: 'isFragile'},
          				{ name: 'isArchivable'},
          				{ name: 'isLiquid'},
          				{ name: 'isDangerous'},
          				{ name: 'isPerishable'},
          				{ name: 'hasEditRestrictions'},
          				{ name: 'hasInnerPack'},
          				{ name: 'isAdult'}
          			]
          		}
          	]
          },
          { name: 'enqueuedDimentions', type: :object, properties: 
          	[
          		{ name: 'resourceLocation'},
          		{ name: 'resource', type: :object, properties:
          			[
          				{ name: 'offset'},
          				{ name: 'total'},
          				{ name: 'previous'},
          				{ name: 'next'},
          				{ name: 'items'}
          			]
          		}
          	]
          },
          { name: 'innerPack', type: :object, properties: 
          	[
          		{ name: 'resourceLocation'},
          		{ name: 'resource', type: :object, properties: 
          			[
          				{ name: 'description'},
          				{ name: 'dimensions', type: :object, properties: 
          					[
          						{ name: 'resourceLocation'},
          						{ name: 'resource', type: :object, properties:
          							[
          								{ name: 'height'},
          								{ name: 'HeightUnit'},
          								{ name: 'length'},
          								{ name: 'LengthUnit'},
          								{ name: 'weight'},
          								{ name: 'weightUnit'},
          								{ name: 'width'},
          								{ name: 'widthUnit'}
          							]
          						}
          					]
          				},
          				{ name: 'externalID'},
          				{ name: 'flags', type: :object, properties: 
          					[
          						{ name: 'resourceLocation'},
          						{ name: 'resource' type: :object, properties: 
          							[
          								{ name: 'isPackagedReadyToShip', type: :integer}	
          							]
          						}	
          					]
          				},
          				{ name: 'individualItemsPerCase'},
          				{ name: 'ProductId'},
          				{ name: 'sku'},
          				{ name: 'values', type: :object, properties:
				          	[
				          		{ name: 'resourceLocation'},
				          		{ name: 'resource', type: :object, properties: 
				          			[
				          				{ name: 'costValueCurrency'},
				          				{ name: 'wholesaleValue'},
				          				{ name: 'costValue'},
				          				{ name: 'wholesaleValueCurrency'},
				          				{ name: 'retailValue'},
				          				{ name: 'retailValueCurrency'}
				          			]
				          			
				          		}
				          	]
          				},
          			]
          		}
          	]
          },
          { name: 'masterCase', type: :object, properties: 
          	[
          		{ name: 'resourceLocation'},
          		{ name: 'resource', type: :object, properties: 
          			[
          				{ name: 'sku'},
          				{ name: 'dimensions', type: :object, properties: 
          					[
          						{ name: 'resourceLocation'},
          						{ name: 'resource', type: :object, properties: 
          							[
          								{ name: 'weight'},
          								{ name: 'weightUnit'},
          								{ name: 'height'},
          								{ name: 'heightUnit'},
          								{ name: 'length'},
          								{ name: 'lengthUnit'}
          							]
          						}
          					]
          				},
          				{ name: 'values', type: :object, properties:
          					[
          						{ name: 'resourceLocation'},
          						{ name: 'resource', type: :object, properties: 
          							[
          								{ name: 'costvalueCurrency'},
          								{ name: 'wholesaleValue'},
          								{ name: 'costValue'},
          								{ name: 'wholesaleValueCurrency'},
          								{ name: 'retailValue'},
          								{ name: 'retailValueCurrency'}
          							]
          						},
          					]
          				},
          				{ name: 'externalId', type: :integer},
          				{ name: 'individualItemsPerCase', type: :integer},
          				{ name: 'flags', type: :object, properties: 
          					[
          						{ name: 'resourceLocation'},
          						{ name: 'resource', type: :object, properties:[{ name: 'isPackagedReadyToShip'}]}
          					]
          				},
          				{ name: 'productId'},
          				{ name: 'description'}
          			]
          		},
          	]#endof mastercase
          },
          { name: 'pallet', type: :object, properties: 
          	[
          		{ name: 'resourceLocation'},
          		{ name: 'resource', type: :object, properties: 
          			[
          				{ name: 'description'},
          				{ name: 'dimensions', type: :object, properties: 
          					[
          						{ name: 'weight'},
          						{ name: 'weightUnit'},
          						{ name: 'height'},
          						{ name: 'heightUnit'},
          						{ name: 'length'},
          						{ name: 'lengthUnit'}		
          					]
          				},
          				{ name: 'externalId'},
          				{ name: 'flags', type: :object, properties: 
          					[
          						{ name: 'resourceLocation'},
          						{ name: 'resource', type: :object, properties: 
          							[
          								{ name: 'isPackagedReadyToShip'},
          								
          							]
          						}
          					]
          				},
          				{ name: 'individualItemsPerCase'},
          				{ name: 'productId'},
          				{ name: 'sku'},
          				{ name: 'values', type: :object, properties: 
          					[
          						{ name: 'resourceLocation'},
          						{ name: 'resource', type: :object, properties:
          							[
		          						{ name: 'costValue'},
		          						{ name: 'costValueCurrency'},
		          						{ name: 'retailValue'},
		          						{ name: 'retailValueCurrency'},
		          						{ name: 'wholesaleValue'},
		          						{ name: 'wholesaleValueCurrency'}
          							]
          					]
          				}
          			]
          		}
          	]
          },
        ]
      }
    },

    order: {
      fields: ->() {
      	[
          { name:"resourceLocation"},
          { name:"resource", type: :object, properties:
            [
              { name:"id", type: :integer},
              { name:"externalId", type: :integer},
              { name:"transactionId"},
              { name:"orderNo"},
              { name:"processAfterDate", type: :datetime},
              { name:"needsReview", type: :integer},
              { name:"commerceName"},
              { name:"status"},
              { name:"lastUpdatedDate", type: :datetime},
              { name:"options", type: :object, properties:
                [
                  { name:"resourceLocation"},
                  { name:"resource", type: :object, properties:
                    [
                      { name:"warehouseId", type: :integer},
                      { name:"warehouseExternalId", type: :integer},
                      { name:"warehouseRegion"},
                      { name:"warehouseArea"},
                      { name:"serviceLevelCode"},
                      { name:"carrierCode"},
                      { name:"carrierAccountNumber"},
                      { name:"sameDay"},
                      { name:"channelName"},
                      { name:"forceDuplicate", type: :integer},
                      { name:"forceAddress", type: :integer},
                      { name:"referrer"}
                    ]
                  }
                ]
              },
              { name:"pricing", type: :object, properties:
                [
                  { name:"resourceLocation"},
                  { name:"resource", type: :object, properties:
                    [
                      { name:"shipping", type: :integer},
                      { name:"packaging", type: :integer},
                      { name:"insurance", type: :integer},
                      { name:"handling", type: :integer},
                      { name:"total", type: :integer}
                    ]
                  }
                ]
              },
              { name:"shipFrom", type: :object, properties:
                [
                  { name:"resourceLocation"},
                  { name:"resource", type: :object, properties:
                    [
                      { name:"company"}
                    ]
                  }
                ]
              },
              { name:"shipTo", type: :object, properties:
                [
                  { name:"resourceLocation"},
                  { name:"resource", type: :object, properties:
                    [
                      { name:"email"},
                      { name:"name"},
                      { name:"company"},
                      { name:"address1"},
                      { name:"address2"},
                      { name:"address3"},
                      { name:"city"},
                      { name:"state"},
                      { name:"postalCode"},
                      { name:"country"},
                      { name:"phone"},
                      { name:"isCommercial", type: :integer},
                      { name:"isPoBox", type: :integer}
                    ]
                  }
                ]
              },
              { name:"events", type: :object, properties:
                [
                  { name:"resourceLocation"},
                  { name:"resource", type: :object, properties:
                    [
                      { name:"createdDate", type: :datetime},
                      { name:"pickedUpDate", type: :datetime},
                      { name:"submittedDate", type: :datetime},
                      { name:"processedDate", type: :datetime},
                      { name:"completedDate", type: :datetime},
                      { name:"expectedDate", type: :datetime},
                      { name:"cancelledDate", type: :datetime},
                      { name:"returnedDate", type: :datetime},
                      { name:"lastManualUpdateDate", type: :datetime}
                    ]
                  }
                ]
              }
            ]
          }
        ]
      }
    }
  },

  actions: {
    search_products: {
      input_fields: ->() {
        [
          { name: 'sku', label: 'SKU'},
          { name: 'description'}
        ]
      },
      execute: ->(connection,input) {
        {
          'items': get("https://api.shipwire.com/api/v3/products", input)['resource']['items']
        }
      },
      output_fields: ->(object_definitions) {
        [
           { name: 'items', type: :array, of: :object, properties:
             [
              { name: 'resourceLocation', control_type: 'url'},
              { name: 'resource', type: :object, properties: object_definitions['product']}
             ]
           }
        ]
      }
    },

    get_product_details: {
    	input_fields: ->() {
      	[
          { name: 'ProductID', optional: :false}
        ]
      },

      execute: ->(connection, input) {
        product_detail = get("https://api.shipwire.com/api/v3/products/#{input['ProductID']}")
      },

      output_fields: ->(object_definitions) {
      	[
	 { name: 'status'},
         { name: 'message'},
         { name: 'resourceLocation'},
         { name: 'resource', type: :object, properties: object_definitions['product']}
        ]
      }
    }
  },

  triggers: {
  	new_or_updated_order: {
  		
  		type: :paging_desc,
  		
		input_fields: ->(){
	  	 [
	   		{ name: 'since', type: :timestamp},
	   		{ name: 'status', control_type: 'select', hint: 'type of order to be tracked. Leave blank to track all orders',
	   			picklist: [['processed'],['canceled'], ['completed'], ['delivered'], ['returned'], ['submitted'], ['held'], ['tracked']]}
	  	 ]
	 	},
		
		poll: ->(connection,input,last_updated_since) {
        		since = last_updated_since || input['since'] || Time.now

	        	result = get("https://api.shipwire.com/api/v3/orders").
	          			params(updatedAfter: since.to_time.utc.iso8601,
	                    		status: input['status'])['resource']
	        	orders = result['items']
	        	next_updated_since = orders.first['resource']['lastUpdatedDate'] unless orders.length == 0
		        {
		          events: orders,
		          next_page: next_updated_since,
		          can_poll_more: result['total'] > orders.length + result['offset']
		        }
		},

		dedup: ->(order) {
			order['resource']['id']
		},

		output_fields: ->(object_definitions) {
			object_definitions['order']
		}
    	}
  }
}
