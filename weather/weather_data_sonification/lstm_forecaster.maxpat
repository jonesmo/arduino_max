{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 6,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 56.0, 91.0, 1254.0, 680.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 897.0, 406.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 980.0, 572.0, 51.0, 22.0 ],
					"text" : "zl.group"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-28",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1007.0, 618.0, 223.0, 124.0 ],
					"setminmax" : [ -10.0, 105.0 ],
					"size" : 365,
					"slidercolor" : [ 0.094117647058824, 0.76078431372549, 0.294117647058824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1071.0, 406.0, 50.0, 22.0 ],
					"text" : "8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1066.0, 375.0, 37.0, 22.0 ],
					"text" : "zl len"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "list" ],
					"patching_rect" : [ 949.0, 337.0, 72.0, 22.0 ],
					"text" : "fluid.buf2list"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 949.0, 299.0, 86.0, 22.0 ],
					"text" : "prepend buffer"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 944.0, 259.0, 107.0, 22.0 ],
					"text" : "route predictseries"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 949.0, 56.0, 150.0, 20.0 ],
					"text" : "predict"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 404.0, 598.0, 150.0, 20.0 ],
					"text" : "train network"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.5, 542.0, 150.0, 20.0 ],
					"text" : "create dataseries"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1051.0, 142.0, 153.0, 33.0 ],
					"text" : "change the number of queried future"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1003.0, 88.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1003.0, 147.0, 29.5, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1066.0, 88.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 1044.0, 182.0, 111.0, 22.0 ],
					"text" : "buffer~ tempGuess"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 944.0, 207.0, 194.0, 22.0 ],
					"text" : "predictseries temps tempGuess $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 609.0, 553.0, 192.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 239.0, 457.0, 35.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 33.0, 490.0, 150.0, 22.0 ],
					"text" : "fluid.dataseries~ tempdata"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 373.0, 477.0, 35.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"attr" : "hiddenlayers",
					"id" : "obj-6",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 570.0, 382.0, 220.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "batchsize",
					"id" : "obj-57",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 570.0, 406.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 411.0, 425.0, 71.0, 22.0 ],
					"text" : "fit tempdata"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 411.0, 510.0, 243.0, 22.0 ],
					"text" : "fluid.lstmforecaster~ @hiddenlayers 15 5 15"
				}

			}
, 			{
				"box" : 				{
					"attr" : "learnrate",
					"id" : "obj-55",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 570.0, 430.0, 225.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "maxiter",
					"id" : "obj-56",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 570.0, 456.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "forecastlength",
					"id" : "obj-40",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 570.0, 356.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-96",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 192.0, 457.0, 32.0, 22.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-92",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 33.0, 387.0, 37.0, 37.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 399.0, 358.0, 69.0, 22.0 ],
					"text" : "metro 1500"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 399.0, 322.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-81",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 33.0, 445.0, 113.0, 22.0 ],
					"text" : "addseries $1 temps"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 241.0, 315.0, 82.0, 22.0 ],
					"text" : "buffer~ temps"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "buffer" ],
					"patching_rect" : [ 41.0, 315.0, 181.0, 22.0 ],
					"text" : "fluid.list2buf @destination temps"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 45.0, 65.0, 31.0, 22.0 ],
					"text" : "t b s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 41.0, 30.0, 39.0, 22.0 ],
					"text" : "dump"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-16",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 41.0, 173.0, 534.0, 116.0 ],
					"setminmax" : [ -10.0, 105.0 ],
					"size" : 27756,
					"slidercolor" : [ 0.094117647058824, 0.76078431372549, 0.294117647058824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 41.0, 134.0, 156.0, 22.0 ],
					"text" : "zl.group @zlmaxsize 28000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 180.0, 99.0, 127.0, 20.0 ],
					"text" : "27756 hours of data"
				}

			}
, 			{
				"box" : 				{
					"coll_data" : 					{
						"count" : 27756,
						"data" : [ 							{
								"key" : 1,
								"value" : [ 33.82 ]
							}
, 							{
								"key" : 2,
								"value" : [ 33.009999999999998 ]
							}
, 							{
								"key" : 3,
								"value" : [ 32.130000000000003 ]
							}
, 							{
								"key" : 4,
								"value" : [ 30.850000000000001 ]
							}
, 							{
								"key" : 5,
								"value" : [ 29.5 ]
							}
, 							{
								"key" : 6,
								"value" : [ 28.710000000000001 ]
							}
, 							{
								"key" : 7,
								"value" : [ 28.760000000000002 ]
							}
, 							{
								"key" : 8,
								"value" : [ 29.120000000000001 ]
							}
, 							{
								"key" : 9,
								"value" : [ 29.41 ]
							}
, 							{
								"key" : 10,
								"value" : [ 30.379999999999999 ]
							}
, 							{
								"key" : 11,
								"value" : [ 31.73 ]
							}
, 							{
								"key" : 12,
								"value" : [ 32.670000000000002 ]
							}
, 							{
								"key" : 13,
								"value" : [ 33.299999999999997 ]
							}
, 							{
								"key" : 14,
								"value" : [ 33.729999999999997 ]
							}
, 							{
								"key" : 15,
								"value" : [ 33.960000000000001 ]
							}
, 							{
								"key" : 16,
								"value" : [ 33.850000000000001 ]
							}
, 							{
								"key" : 17,
								"value" : [ 33.479999999999997 ]
							}
, 							{
								"key" : 18,
								"value" : [ 32.68 ]
							}
, 							{
								"key" : 19,
								"value" : [ 31.010000000000002 ]
							}
, 							{
								"key" : 20,
								"value" : [ 30.719999999999999 ]
							}
, 							{
								"key" : 21,
								"value" : [ 30.719999999999999 ]
							}
, 							{
								"key" : 22,
								"value" : [ 31.100000000000001 ]
							}
, 							{
								"key" : 23,
								"value" : [ 31.59 ]
							}
, 							{
								"key" : 24,
								"value" : [ 32.090000000000003 ]
							}
, 							{
								"key" : 25,
								"value" : [ 32.399999999999999 ]
							}
, 							{
								"key" : 26,
								"value" : [ 32.590000000000003 ]
							}
, 							{
								"key" : 27,
								"value" : [ 32.609999999999999 ]
							}
, 							{
								"key" : 28,
								"value" : [ 32.469999999999999 ]
							}
, 							{
								"key" : 29,
								"value" : [ 32.450000000000003 ]
							}
, 							{
								"key" : 30,
								"value" : [ 32.399999999999999 ]
							}
, 							{
								"key" : 31,
								"value" : [ 33.57 ]
							}
, 							{
								"key" : 32,
								"value" : [ 35.109999999999999 ]
							}
, 							{
								"key" : 33,
								"value" : [ 36.640000000000001 ]
							}
, 							{
								"key" : 34,
								"value" : [ 38.479999999999997 ]
							}
, 							{
								"key" : 35,
								"value" : [ 39.939999999999998 ]
							}
, 							{
								"key" : 36,
								"value" : [ 41.289999999999999 ]
							}
, 							{
								"key" : 37,
								"value" : [ 42.490000000000002 ]
							}
, 							{
								"key" : 38,
								"value" : [ 43.479999999999997 ]
							}
, 							{
								"key" : 39,
								"value" : [ 44.219999999999999 ]
							}
, 							{
								"key" : 40,
								"value" : [ 44.689999999999998 ]
							}
, 							{
								"key" : 41,
								"value" : [ 44.689999999999998 ]
							}
, 							{
								"key" : 42,
								"value" : [ 43.140000000000001 ]
							}
, 							{
								"key" : 43,
								"value" : [ 41.219999999999999 ]
							}
, 							{
								"key" : 44,
								"value" : [ 40.75 ]
							}
, 							{
								"key" : 45,
								"value" : [ 39.899999999999999 ]
							}
, 							{
								"key" : 46,
								"value" : [ 38.950000000000003 ]
							}
, 							{
								"key" : 47,
								"value" : [ 38.170000000000002 ]
							}
, 							{
								"key" : 48,
								"value" : [ 37.539999999999999 ]
							}
, 							{
								"key" : 49,
								"value" : [ 37.020000000000003 ]
							}
, 							{
								"key" : 50,
								"value" : [ 36.539999999999999 ]
							}
, 							{
								"key" : 51,
								"value" : [ 36.32 ]
							}
, 							{
								"key" : 52,
								"value" : [ 36.43 ]
							}
, 							{
								"key" : 53,
								"value" : [ 36.140000000000001 ]
							}
, 							{
								"key" : 54,
								"value" : [ 35.82 ]
							}
, 							{
								"key" : 55,
								"value" : [ 36.539999999999999 ]
							}
, 							{
								"key" : 56,
								"value" : [ 39.0 ]
							}
, 							{
								"key" : 57,
								"value" : [ 43.630000000000003 ]
							}
, 							{
								"key" : 58,
								"value" : [ 47.890000000000001 ]
							}
, 							{
								"key" : 59,
								"value" : [ 50.880000000000003 ]
							}
, 							{
								"key" : 60,
								"value" : [ 53.060000000000002 ]
							}
, 							{
								"key" : 61,
								"value" : [ 54.549999999999997 ]
							}
, 							{
								"key" : 62,
								"value" : [ 55.539999999999999 ]
							}
, 							{
								"key" : 63,
								"value" : [ 56.079999999999998 ]
							}
, 							{
								"key" : 64,
								"value" : [ 56.280000000000001 ]
							}
, 							{
								"key" : 65,
								"value" : [ 55.899999999999999 ]
							}
, 							{
								"key" : 66,
								"value" : [ 53.869999999999997 ]
							}
, 							{
								"key" : 67,
								"value" : [ 51.619999999999997 ]
							}
, 							{
								"key" : 68,
								"value" : [ 51.039999999999999 ]
							}
, 							{
								"key" : 69,
								"value" : [ 51.119999999999997 ]
							}
, 							{
								"key" : 70,
								"value" : [ 51.240000000000002 ]
							}
, 							{
								"key" : 71,
								"value" : [ 51.119999999999997 ]
							}
, 							{
								"key" : 72,
								"value" : [ 51.100000000000001 ]
							}
, 							{
								"key" : 73,
								"value" : [ 51.460000000000001 ]
							}
, 							{
								"key" : 74,
								"value" : [ 51.799999999999997 ]
							}
, 							{
								"key" : 75,
								"value" : [ 52.049999999999997 ]
							}
, 							{
								"key" : 76,
								"value" : [ 51.369999999999997 ]
							}
, 							{
								"key" : 77,
								"value" : [ 50.229999999999997 ]
							}
, 							{
								"key" : 78,
								"value" : [ 48.740000000000002 ]
							}
, 							{
								"key" : 79,
								"value" : [ 47.530000000000001 ]
							}
, 							{
								"key" : 80,
								"value" : [ 47.729999999999997 ]
							}
, 							{
								"key" : 81,
								"value" : [ 48.359999999999999 ]
							}
, 							{
								"key" : 82,
								"value" : [ 50.109999999999999 ]
							}
, 							{
								"key" : 83,
								"value" : [ 53.869999999999997 ]
							}
, 							{
								"key" : 84,
								"value" : [ 58.299999999999997 ]
							}
, 							{
								"key" : 85,
								"value" : [ 60.759999999999998 ]
							}
, 							{
								"key" : 86,
								"value" : [ 62.200000000000003 ]
							}
, 							{
								"key" : 87,
								"value" : [ 63.390000000000001 ]
							}
, 							{
								"key" : 88,
								"value" : [ 64.060000000000002 ]
							}
, 							{
								"key" : 89,
								"value" : [ 63.090000000000003 ]
							}
, 							{
								"key" : 90,
								"value" : [ 59.43 ]
							}
, 							{
								"key" : 91,
								"value" : [ 55.810000000000002 ]
							}
, 							{
								"key" : 92,
								"value" : [ 54.299999999999997 ]
							}
, 							{
								"key" : 93,
								"value" : [ 53.130000000000003 ]
							}
, 							{
								"key" : 94,
								"value" : [ 52.07 ]
							}
, 							{
								"key" : 95,
								"value" : [ 51.039999999999999 ]
							}
, 							{
								"key" : 96,
								"value" : [ 50.340000000000003 ]
							}
, 							{
								"key" : 97,
								"value" : [ 49.890000000000001 ]
							}
, 							{
								"key" : 98,
								"value" : [ 49.590000000000003 ]
							}
, 							{
								"key" : 99,
								"value" : [ 48.880000000000003 ]
							}
, 							{
								"key" : 100,
								"value" : [ 48.719999999999999 ]
							}
, 							{
								"key" : 101,
								"value" : [ 48.600000000000001 ]
							}
, 							{
								"key" : 102,
								"value" : [ 48.219999999999999 ]
							}
, 							{
								"key" : 103,
								"value" : [ 48.219999999999999 ]
							}
, 							{
								"key" : 104,
								"value" : [ 49.710000000000001 ]
							}
, 							{
								"key" : 105,
								"value" : [ 52.990000000000002 ]
							}
, 							{
								"key" : 106,
								"value" : [ 57.219999999999999 ]
							}
, 							{
								"key" : 107,
								"value" : [ 59.590000000000003 ]
							}
, 							{
								"key" : 108,
								"value" : [ 60.490000000000002 ]
							}
, 							{
								"key" : 109,
								"value" : [ 61.0 ]
							}
, 							{
								"key" : 110,
								"value" : [ 61.049999999999997 ]
							}
, 							{
								"key" : 111,
								"value" : [ 60.75 ]
							}
, 							{
								"key" : 112,
								"value" : [ 61.030000000000001 ]
							}
, 							{
								"key" : 113,
								"value" : [ 61.93 ]
							}
, 							{
								"key" : 114,
								"value" : [ 61.07 ]
							}
, 							{
								"key" : 115,
								"value" : [ 58.049999999999997 ]
							}
, 							{
								"key" : 116,
								"value" : [ 56.57 ]
							}
, 							{
								"key" : 117,
								"value" : [ 55.530000000000001 ]
							}
, 							{
								"key" : 118,
								"value" : [ 54.549999999999997 ]
							}
, 							{
								"key" : 119,
								"value" : [ 53.890000000000001 ]
							}
, 							{
								"key" : 120,
								"value" : [ 53.039999999999999 ]
							}
, 							{
								"key" : 121,
								"value" : [ 52.090000000000003 ]
							}
, 							{
								"key" : 122,
								"value" : [ 51.149999999999999 ]
							}
, 							{
								"key" : 123,
								"value" : [ 50.159999999999997 ]
							}
, 							{
								"key" : 124,
								"value" : [ 49.479999999999997 ]
							}
, 							{
								"key" : 125,
								"value" : [ 49.060000000000002 ]
							}
, 							{
								"key" : 126,
								"value" : [ 48.899999999999999 ]
							}
, 							{
								"key" : 127,
								"value" : [ 49.75 ]
							}
, 							{
								"key" : 128,
								"value" : [ 51.350000000000001 ]
							}
, 							{
								"key" : 129,
								"value" : [ 54.009999999999998 ]
							}
, 							{
								"key" : 130,
								"value" : [ 57.469999999999999 ]
							}
, 							{
								"key" : 131,
								"value" : [ 60.310000000000002 ]
							}
, 							{
								"key" : 132,
								"value" : [ 62.399999999999999 ]
							}
, 							{
								"key" : 133,
								"value" : [ 63.880000000000003 ]
							}
, 							{
								"key" : 134,
								"value" : [ 64.629999999999995 ]
							}
, 							{
								"key" : 135,
								"value" : [ 64.799999999999997 ]
							}
, 							{
								"key" : 136,
								"value" : [ 64.090000000000003 ]
							}
, 							{
								"key" : 137,
								"value" : [ 62.759999999999998 ]
							}
, 							{
								"key" : 138,
								"value" : [ 61.049999999999997 ]
							}
, 							{
								"key" : 139,
								"value" : [ 59.789999999999999 ]
							}
, 							{
								"key" : 140,
								"value" : [ 58.82 ]
							}
, 							{
								"key" : 141,
								"value" : [ 57.149999999999999 ]
							}
, 							{
								"key" : 142,
								"value" : [ 55.869999999999997 ]
							}
, 							{
								"key" : 143,
								"value" : [ 55.060000000000002 ]
							}
, 							{
								"key" : 144,
								"value" : [ 54.030000000000001 ]
							}
, 							{
								"key" : 145,
								"value" : [ 52.810000000000002 ]
							}
, 							{
								"key" : 146,
								"value" : [ 51.780000000000001 ]
							}
, 							{
								"key" : 147,
								"value" : [ 51.170000000000002 ]
							}
, 							{
								"key" : 148,
								"value" : [ 50.68 ]
							}
, 							{
								"key" : 149,
								"value" : [ 50.130000000000003 ]
							}
, 							{
								"key" : 150,
								"value" : [ 50.039999999999999 ]
							}
, 							{
								"key" : 151,
								"value" : [ 51.189999999999998 ]
							}
, 							{
								"key" : 152,
								"value" : [ 52.840000000000003 ]
							}
, 							{
								"key" : 153,
								"value" : [ 55.359999999999999 ]
							}
, 							{
								"key" : 154,
								"value" : [ 58.119999999999997 ]
							}
, 							{
								"key" : 155,
								"value" : [ 60.310000000000002 ]
							}
, 							{
								"key" : 156,
								"value" : [ 61.859999999999999 ]
							}
, 							{
								"key" : 157,
								"value" : [ 62.850000000000001 ]
							}
, 							{
								"key" : 158,
								"value" : [ 63.210000000000001 ]
							}
, 							{
								"key" : 159,
								"value" : [ 63.18 ]
							}
, 							{
								"key" : 160,
								"value" : [ 62.530000000000001 ]
							}
, 							{
								"key" : 161,
								"value" : [ 61.5 ]
							}
, 							{
								"key" : 162,
								"value" : [ 59.770000000000003 ]
							}
, 							{
								"key" : 163,
								"value" : [ 57.560000000000002 ]
							}
, 							{
								"key" : 164,
								"value" : [ 56.530000000000001 ]
							}
, 							{
								"key" : 165,
								"value" : [ 55.780000000000001 ]
							}
, 							{
								"key" : 166,
								"value" : [ 55.18 ]
							}
, 							{
								"key" : 167,
								"value" : [ 54.390000000000001 ]
							}
, 							{
								"key" : 168,
								"value" : [ 53.710000000000001 ]
							}
, 							{
								"key" : 169,
								"value" : [ 53.619999999999997 ]
							}
, 							{
								"key" : 170,
								"value" : [ 53.530000000000001 ]
							}
, 							{
								"key" : 171,
								"value" : [ 53.490000000000002 ]
							}
, 							{
								"key" : 172,
								"value" : [ 53.170000000000002 ]
							}
, 							{
								"key" : 173,
								"value" : [ 52.880000000000003 ]
							}
, 							{
								"key" : 174,
								"value" : [ 52.68 ]
							}
, 							{
								"key" : 175,
								"value" : [ 53.039999999999999 ]
							}
, 							{
								"key" : 176,
								"value" : [ 53.799999999999997 ]
							}
, 							{
								"key" : 177,
								"value" : [ 54.520000000000003 ]
							}
, 							{
								"key" : 178,
								"value" : [ 54.729999999999997 ]
							}
, 							{
								"key" : 179,
								"value" : [ 54.82 ]
							}
, 							{
								"key" : 180,
								"value" : [ 54.909999999999997 ]
							}
, 							{
								"key" : 181,
								"value" : [ 54.340000000000003 ]
							}
, 							{
								"key" : 182,
								"value" : [ 53.600000000000001 ]
							}
, 							{
								"key" : 183,
								"value" : [ 53.689999999999998 ]
							}
, 							{
								"key" : 184,
								"value" : [ 53.82 ]
							}
, 							{
								"key" : 185,
								"value" : [ 53.039999999999999 ]
							}
, 							{
								"key" : 186,
								"value" : [ 51.780000000000001 ]
							}
, 							{
								"key" : 187,
								"value" : [ 50.359999999999999 ]
							}
, 							{
								"key" : 188,
								"value" : [ 49.060000000000002 ]
							}
, 							{
								"key" : 189,
								"value" : [ 47.770000000000003 ]
							}
, 							{
								"key" : 190,
								"value" : [ 46.850000000000001 ]
							}
, 							{
								"key" : 191,
								"value" : [ 46.439999999999998 ]
							}
, 							{
								"key" : 192,
								"value" : [ 46.079999999999998 ]
							}
, 							{
								"key" : 193,
								"value" : [ 45.789999999999999 ]
							}
, 							{
								"key" : 194,
								"value" : [ 46.079999999999998 ]
							}
, 							{
								"key" : 195,
								"value" : [ 46.530000000000001 ]
							}
, 							{
								"key" : 196,
								"value" : [ 46.810000000000002 ]
							}
, 							{
								"key" : 197,
								"value" : [ 46.939999999999998 ]
							}
, 							{
								"key" : 198,
								"value" : [ 46.960000000000001 ]
							}
, 							{
								"key" : 199,
								"value" : [ 47.100000000000001 ]
							}
, 							{
								"key" : 200,
								"value" : [ 47.890000000000001 ]
							}
, 							{
								"key" : 201,
								"value" : [ 49.140000000000001 ]
							}
, 							{
								"key" : 202,
								"value" : [ 50.340000000000003 ]
							}
, 							{
								"key" : 203,
								"value" : [ 50.950000000000003 ]
							}
, 							{
								"key" : 204,
								"value" : [ 51.350000000000001 ]
							}
, 							{
								"key" : 205,
								"value" : [ 52.359999999999999 ]
							}
, 							{
								"key" : 206,
								"value" : [ 53.460000000000001 ]
							}
, 							{
								"key" : 207,
								"value" : [ 54.159999999999997 ]
							}
, 							{
								"key" : 208,
								"value" : [ 54.119999999999997 ]
							}
, 							{
								"key" : 209,
								"value" : [ 54.009999999999998 ]
							}
, 							{
								"key" : 210,
								"value" : [ 53.369999999999997 ]
							}
, 							{
								"key" : 211,
								"value" : [ 51.579999999999998 ]
							}
, 							{
								"key" : 212,
								"value" : [ 50.939999999999998 ]
							}
, 							{
								"key" : 213,
								"value" : [ 50.789999999999999 ]
							}
, 							{
								"key" : 214,
								"value" : [ 50.5 ]
							}
, 							{
								"key" : 215,
								"value" : [ 49.619999999999997 ]
							}
, 							{
								"key" : 216,
								"value" : [ 48.43 ]
							}
, 							{
								"key" : 217,
								"value" : [ 48.130000000000003 ]
							}
, 							{
								"key" : 218,
								"value" : [ 48.090000000000003 ]
							}
, 							{
								"key" : 219,
								"value" : [ 47.969999999999999 ]
							}
, 							{
								"key" : 220,
								"value" : [ 47.340000000000003 ]
							}
, 							{
								"key" : 221,
								"value" : [ 46.490000000000002 ]
							}
, 							{
								"key" : 222,
								"value" : [ 45.479999999999997 ]
							}
, 							{
								"key" : 223,
								"value" : [ 46.170000000000002 ]
							}
, 							{
								"key" : 224,
								"value" : [ 46.560000000000002 ]
							}
, 							{
								"key" : 225,
								"value" : [ 46.810000000000002 ]
							}
, 							{
								"key" : 226,
								"value" : [ 46.799999999999997 ]
							}
, 							{
								"key" : 227,
								"value" : [ 46.990000000000002 ]
							}
, 							{
								"key" : 228,
								"value" : [ 47.259999999999998 ]
							}
, 							{
								"key" : 229,
								"value" : [ 47.700000000000003 ]
							}
, 							{
								"key" : 230,
								"value" : [ 48.420000000000002 ]
							}
, 							{
								"key" : 231,
								"value" : [ 48.990000000000002 ]
							}
, 							{
								"key" : 232,
								"value" : [ 49.439999999999998 ]
							}
, 							{
								"key" : 233,
								"value" : [ 49.57 ]
							}
, 							{
								"key" : 234,
								"value" : [ 49.240000000000002 ]
							}
, 							{
								"key" : 235,
								"value" : [ 48.869999999999997 ]
							}
, 							{
								"key" : 236,
								"value" : [ 49.329999999999998 ]
							}
, 							{
								"key" : 237,
								"value" : [ 48.939999999999998 ]
							}
, 							{
								"key" : 238,
								"value" : [ 48.060000000000002 ]
							}
, 							{
								"key" : 239,
								"value" : [ 46.689999999999998 ]
							}
, 							{
								"key" : 240,
								"value" : [ 45.369999999999997 ]
							}
, 							{
								"key" : 241,
								"value" : [ 44.240000000000002 ]
							}
, 							{
								"key" : 242,
								"value" : [ 43.560000000000002 ]
							}
, 							{
								"key" : 243,
								"value" : [ 42.979999999999997 ]
							}
, 							{
								"key" : 244,
								"value" : [ 42.460000000000001 ]
							}
, 							{
								"key" : 245,
								"value" : [ 42.009999999999998 ]
							}
, 							{
								"key" : 246,
								"value" : [ 42.170000000000002 ]
							}
, 							{
								"key" : 247,
								"value" : [ 43.859999999999999 ]
							}
, 							{
								"key" : 248,
								"value" : [ 45.32 ]
							}
, 							{
								"key" : 249,
								"value" : [ 46.619999999999997 ]
							}
, 							{
								"key" : 250,
								"value" : [ 47.140000000000001 ]
							}
, 							{
								"key" : 251,
								"value" : [ 47.119999999999997 ]
							}
, 							{
								"key" : 252,
								"value" : [ 46.810000000000002 ]
							}
, 							{
								"key" : 253,
								"value" : [ 46.490000000000002 ]
							}
, 							{
								"key" : 254,
								"value" : [ 46.450000000000003 ]
							}
, 							{
								"key" : 255,
								"value" : [ 46.670000000000002 ]
							}
, 							{
								"key" : 256,
								"value" : [ 47.100000000000001 ]
							}
, 							{
								"key" : 257,
								"value" : [ 47.25 ]
							}
, 							{
								"key" : 258,
								"value" : [ 46.359999999999999 ]
							}
, 							{
								"key" : 259,
								"value" : [ 43.950000000000003 ]
							}
, 							{
								"key" : 260,
								"value" : [ 42.890000000000001 ]
							}
, 							{
								"key" : 261,
								"value" : [ 42.490000000000002 ]
							}
, 							{
								"key" : 262,
								"value" : [ 42.57 ]
							}
, 							{
								"key" : 263,
								"value" : [ 43.030000000000001 ]
							}
, 							{
								"key" : 264,
								"value" : [ 43.590000000000003 ]
							}
, 							{
								"key" : 265,
								"value" : [ 43.810000000000002 ]
							}
, 							{
								"key" : 266,
								"value" : [ 43.950000000000003 ]
							}
, 							{
								"key" : 267,
								"value" : [ 44.420000000000002 ]
							}
, 							{
								"key" : 268,
								"value" : [ 44.670000000000002 ]
							}
, 							{
								"key" : 269,
								"value" : [ 44.509999999999998 ]
							}
, 							{
								"key" : 270,
								"value" : [ 44.780000000000001 ]
							}
, 							{
								"key" : 271,
								"value" : [ 46.039999999999999 ]
							}
, 							{
								"key" : 272,
								"value" : [ 47.609999999999999 ]
							}
, 							{
								"key" : 273,
								"value" : [ 49.369999999999997 ]
							}
, 							{
								"key" : 274,
								"value" : [ 50.899999999999999 ]
							}
, 							{
								"key" : 275,
								"value" : [ 52.289999999999999 ]
							}
, 							{
								"key" : 276,
								"value" : [ 53.369999999999997 ]
							}
, 							{
								"key" : 277,
								"value" : [ 54.07 ]
							}
, 							{
								"key" : 278,
								"value" : [ 54.270000000000003 ]
							}
, 							{
								"key" : 279,
								"value" : [ 54.009999999999998 ]
							}
, 							{
								"key" : 280,
								"value" : [ 53.469999999999999 ]
							}
, 							{
								"key" : 281,
								"value" : [ 52.649999999999999 ]
							}
, 							{
								"key" : 282,
								"value" : [ 51.259999999999998 ]
							}
, 							{
								"key" : 283,
								"value" : [ 48.780000000000001 ]
							}
, 							{
								"key" : 284,
								"value" : [ 47.079999999999998 ]
							}
, 							{
								"key" : 285,
								"value" : [ 45.729999999999997 ]
							}
, 							{
								"key" : 286,
								"value" : [ 44.740000000000002 ]
							}
, 							{
								"key" : 287,
								"value" : [ 43.93 ]
							}
, 							{
								"key" : 288,
								"value" : [ 43.210000000000001 ]
							}
, 							{
								"key" : 289,
								"value" : [ 42.439999999999998 ]
							}
, 							{
								"key" : 290,
								"value" : [ 41.670000000000002 ]
							}
, 							{
								"key" : 291,
								"value" : [ 41.049999999999997 ]
							}
, 							{
								"key" : 292,
								"value" : [ 40.409999999999997 ]
							}
, 							{
								"key" : 293,
								"value" : [ 39.539999999999999 ]
							}
, 							{
								"key" : 294,
								"value" : [ 39.060000000000002 ]
							}
, 							{
								"key" : 295,
								"value" : [ 40.210000000000001 ]
							}
, 							{
								"key" : 296,
								"value" : [ 42.75 ]
							}
, 							{
								"key" : 297,
								"value" : [ 45.07 ]
							}
, 							{
								"key" : 298,
								"value" : [ 45.93 ]
							}
, 							{
								"key" : 299,
								"value" : [ 46.799999999999997 ]
							}
, 							{
								"key" : 300,
								"value" : [ 47.729999999999997 ]
							}
, 							{
								"key" : 301,
								"value" : [ 48.579999999999998 ]
							}
, 							{
								"key" : 302,
								"value" : [ 49.100000000000001 ]
							}
, 							{
								"key" : 303,
								"value" : [ 49.299999999999997 ]
							}
, 							{
								"key" : 304,
								"value" : [ 49.32 ]
							}
, 							{
								"key" : 305,
								"value" : [ 48.960000000000001 ]
							}
, 							{
								"key" : 306,
								"value" : [ 48.060000000000002 ]
							}
, 							{
								"key" : 307,
								"value" : [ 46.420000000000002 ]
							}
, 							{
								"key" : 308,
								"value" : [ 45.210000000000001 ]
							}
, 							{
								"key" : 309,
								"value" : [ 44.009999999999998 ]
							}
, 							{
								"key" : 310,
								"value" : [ 43.299999999999997 ]
							}
, 							{
								"key" : 311,
								"value" : [ 42.549999999999997 ]
							}
, 							{
								"key" : 312,
								"value" : [ 42.009999999999998 ]
							}
, 							{
								"key" : 313,
								"value" : [ 41.090000000000003 ]
							}
, 							{
								"key" : 314,
								"value" : [ 39.670000000000002 ]
							}
, 							{
								"key" : 315,
								"value" : [ 38.479999999999997 ]
							}
, 							{
								"key" : 316,
								"value" : [ 37.420000000000002 ]
							}
, 							{
								"key" : 317,
								"value" : [ 36.520000000000003 ]
							}
, 							{
								"key" : 318,
								"value" : [ 36.270000000000003 ]
							}
, 							{
								"key" : 319,
								"value" : [ 38.07 ]
							}
, 							{
								"key" : 320,
								"value" : [ 40.369999999999997 ]
							}
, 							{
								"key" : 321,
								"value" : [ 41.829999999999998 ]
							}
, 							{
								"key" : 322,
								"value" : [ 43.030000000000001 ]
							}
, 							{
								"key" : 323,
								"value" : [ 44.039999999999999 ]
							}
, 							{
								"key" : 324,
								"value" : [ 44.600000000000001 ]
							}
, 							{
								"key" : 325,
								"value" : [ 45.090000000000003 ]
							}
, 							{
								"key" : 326,
								"value" : [ 45.409999999999997 ]
							}
, 							{
								"key" : 327,
								"value" : [ 45.460000000000001 ]
							}
, 							{
								"key" : 328,
								"value" : [ 45.18 ]
							}
, 							{
								"key" : 329,
								"value" : [ 44.530000000000001 ]
							}
, 							{
								"key" : 330,
								"value" : [ 43.520000000000003 ]
							}
, 							{
								"key" : 331,
								"value" : [ 42.039999999999999 ]
							}
, 							{
								"key" : 332,
								"value" : [ 41.049999999999997 ]
							}
, 							{
								"key" : 333,
								"value" : [ 40.189999999999998 ]
							}
, 							{
								"key" : 334,
								"value" : [ 39.380000000000003 ]
							}
, 							{
								"key" : 335,
								"value" : [ 38.710000000000001 ]
							}
, 							{
								"key" : 336,
								"value" : [ 37.899999999999999 ]
							}
, 							{
								"key" : 337,
								"value" : [ 37.130000000000003 ]
							}
, 							{
								"key" : 338,
								"value" : [ 36.700000000000003 ]
							}
, 							{
								"key" : 339,
								"value" : [ 37.380000000000003 ]
							}
, 							{
								"key" : 340,
								"value" : [ 38.009999999999998 ]
							}
, 							{
								"key" : 341,
								"value" : [ 38.549999999999997 ]
							}
, 							{
								"key" : 342,
								"value" : [ 38.640000000000001 ]
							}
, 							{
								"key" : 343,
								"value" : [ 39.670000000000002 ]
							}
, 							{
								"key" : 344,
								"value" : [ 41.090000000000003 ]
							}
, 							{
								"key" : 345,
								"value" : [ 42.909999999999997 ]
							}
, 							{
								"key" : 346,
								"value" : [ 44.689999999999998 ]
							}
, 							{
								"key" : 347,
								"value" : [ 46.020000000000003 ]
							}
, 							{
								"key" : 348,
								"value" : [ 47.119999999999997 ]
							}
, 							{
								"key" : 349,
								"value" : [ 48.0 ]
							}
, 							{
								"key" : 350,
								"value" : [ 48.539999999999999 ]
							}
, 							{
								"key" : 351,
								"value" : [ 48.509999999999998 ]
							}
, 							{
								"key" : 352,
								"value" : [ 47.700000000000003 ]
							}
, 							{
								"key" : 353,
								"value" : [ 46.490000000000002 ]
							}
, 							{
								"key" : 354,
								"value" : [ 44.939999999999998 ]
							}
, 							{
								"key" : 355,
								"value" : [ 42.939999999999998 ]
							}
, 							{
								"key" : 356,
								"value" : [ 41.859999999999999 ]
							}
, 							{
								"key" : 357,
								"value" : [ 41.759999999999998 ]
							}
, 							{
								"key" : 358,
								"value" : [ 41.07 ]
							}
, 							{
								"key" : 359,
								"value" : [ 41.0 ]
							}
, 							{
								"key" : 360,
								"value" : [ 41.270000000000003 ]
							}
, 							{
								"key" : 361,
								"value" : [ 41.340000000000003 ]
							}
, 							{
								"key" : 362,
								"value" : [ 41.159999999999997 ]
							}
, 							{
								"key" : 363,
								"value" : [ 40.869999999999997 ]
							}
, 							{
								"key" : 364,
								"value" : [ 40.420000000000002 ]
							}
, 							{
								"key" : 365,
								"value" : [ 39.329999999999998 ]
							}
, 							{
								"key" : 366,
								"value" : [ 39.020000000000003 ]
							}
, 							{
								"key" : 367,
								"value" : [ 40.82 ]
							}
, 							{
								"key" : 368,
								"value" : [ 41.789999999999999 ]
							}
, 							{
								"key" : 369,
								"value" : [ 42.939999999999998 ]
							}
, 							{
								"key" : 370,
								"value" : [ 43.840000000000003 ]
							}
, 							{
								"key" : 371,
								"value" : [ 44.740000000000002 ]
							}
, 							{
								"key" : 372,
								"value" : [ 45.609999999999999 ]
							}
, 							{
								"key" : 373,
								"value" : [ 46.329999999999998 ]
							}
, 							{
								"key" : 374,
								"value" : [ 46.619999999999997 ]
							}
, 							{
								"key" : 375,
								"value" : [ 46.219999999999999 ]
							}
, 							{
								"key" : 376,
								"value" : [ 45.280000000000001 ]
							}
, 							{
								"key" : 377,
								"value" : [ 43.719999999999999 ]
							}
, 							{
								"key" : 378,
								"value" : [ 41.340000000000003 ]
							}
, 							{
								"key" : 379,
								"value" : [ 38.950000000000003 ]
							}
, 							{
								"key" : 380,
								"value" : [ 38.159999999999997 ]
							}
, 							{
								"key" : 381,
								"value" : [ 37.619999999999997 ]
							}
, 							{
								"key" : 382,
								"value" : [ 37.420000000000002 ]
							}
, 							{
								"key" : 383,
								"value" : [ 37.399999999999999 ]
							}
, 							{
								"key" : 384,
								"value" : [ 37.530000000000001 ]
							}
, 							{
								"key" : 385,
								"value" : [ 37.649999999999999 ]
							}
, 							{
								"key" : 386,
								"value" : [ 37.759999999999998 ]
							}
, 							{
								"key" : 387,
								"value" : [ 37.960000000000001 ]
							}
, 							{
								"key" : 388,
								"value" : [ 37.990000000000002 ]
							}
, 							{
								"key" : 389,
								"value" : [ 37.979999999999997 ]
							}
, 							{
								"key" : 390,
								"value" : [ 38.479999999999997 ]
							}
, 							{
								"key" : 391,
								"value" : [ 40.189999999999998 ]
							}
, 							{
								"key" : 392,
								"value" : [ 41.289999999999999 ]
							}
, 							{
								"key" : 393,
								"value" : [ 42.240000000000002 ]
							}
, 							{
								"key" : 394,
								"value" : [ 43.0 ]
							}
, 							{
								"key" : 395,
								"value" : [ 43.340000000000003 ]
							}
, 							{
								"key" : 396,
								"value" : [ 43.590000000000003 ]
							}
, 							{
								"key" : 397,
								"value" : [ 44.240000000000002 ]
							}
, 							{
								"key" : 398,
								"value" : [ 45.100000000000001 ]
							}
, 							{
								"key" : 399,
								"value" : [ 45.93 ]
							}
, 							{
								"key" : 400,
								"value" : [ 46.289999999999999 ]
							}
, 							{
								"key" : 401,
								"value" : [ 46.020000000000003 ]
							}
, 							{
								"key" : 402,
								"value" : [ 44.829999999999998 ]
							}
, 							{
								"key" : 403,
								"value" : [ 42.170000000000002 ]
							}
, 							{
								"key" : 404,
								"value" : [ 40.869999999999997 ]
							}
, 							{
								"key" : 405,
								"value" : [ 40.549999999999997 ]
							}
, 							{
								"key" : 406,
								"value" : [ 41.130000000000003 ]
							}
, 							{
								"key" : 407,
								"value" : [ 41.539999999999999 ]
							}
, 							{
								"key" : 408,
								"value" : [ 41.43 ]
							}
, 							{
								"key" : 409,
								"value" : [ 41.140000000000001 ]
							}
, 							{
								"key" : 410,
								"value" : [ 40.869999999999997 ]
							}
, 							{
								"key" : 411,
								"value" : [ 40.729999999999997 ]
							}
, 							{
								"key" : 412,
								"value" : [ 40.549999999999997 ]
							}
, 							{
								"key" : 413,
								"value" : [ 40.299999999999997 ]
							}
, 							{
								"key" : 414,
								"value" : [ 40.299999999999997 ]
							}
, 							{
								"key" : 415,
								"value" : [ 41.670000000000002 ]
							}
, 							{
								"key" : 416,
								"value" : [ 42.619999999999997 ]
							}
, 							{
								"key" : 417,
								"value" : [ 44.109999999999999 ]
							}
, 							{
								"key" : 418,
								"value" : [ 46.869999999999997 ]
							}
, 							{
								"key" : 419,
								"value" : [ 49.710000000000001 ]
							}
, 							{
								"key" : 420,
								"value" : [ 52.18 ]
							}
, 							{
								"key" : 421,
								"value" : [ 53.619999999999997 ]
							}
, 							{
								"key" : 422,
								"value" : [ 54.07 ]
							}
, 							{
								"key" : 423,
								"value" : [ 54.119999999999997 ]
							}
, 							{
								"key" : 424,
								"value" : [ 54.030000000000001 ]
							}
, 							{
								"key" : 425,
								"value" : [ 53.619999999999997 ]
							}
, 							{
								"key" : 426,
								"value" : [ 52.409999999999997 ]
							}
, 							{
								"key" : 427,
								"value" : [ 50.939999999999998 ]
							}
, 							{
								"key" : 428,
								"value" : [ 50.090000000000003 ]
							}
, 							{
								"key" : 429,
								"value" : [ 49.009999999999998 ]
							}
, 							{
								"key" : 430,
								"value" : [ 47.880000000000003 ]
							}
, 							{
								"key" : 431,
								"value" : [ 46.939999999999998 ]
							}
, 							{
								"key" : 432,
								"value" : [ 45.93 ]
							}
, 							{
								"key" : 433,
								"value" : [ 45.07 ]
							}
, 							{
								"key" : 434,
								"value" : [ 44.289999999999999 ]
							}
, 							{
								"key" : 435,
								"value" : [ 43.390000000000001 ]
							}
, 							{
								"key" : 436,
								"value" : [ 42.75 ]
							}
, 							{
								"key" : 437,
								"value" : [ 43.020000000000003 ]
							}
, 							{
								"key" : 438,
								"value" : [ 43.32 ]
							}
, 							{
								"key" : 439,
								"value" : [ 44.200000000000003 ]
							}
, 							{
								"key" : 440,
								"value" : [ 44.960000000000001 ]
							}
, 							{
								"key" : 441,
								"value" : [ 45.57 ]
							}
, 							{
								"key" : 442,
								"value" : [ 44.490000000000002 ]
							}
, 							{
								"key" : 443,
								"value" : [ 43.829999999999998 ]
							}
, 							{
								"key" : 444,
								"value" : [ 44.200000000000003 ]
							}
, 							{
								"key" : 445,
								"value" : [ 45.369999999999997 ]
							}
, 							{
								"key" : 446,
								"value" : [ 45.990000000000002 ]
							}
, 							{
								"key" : 447,
								"value" : [ 45.0 ]
							}
, 							{
								"key" : 448,
								"value" : [ 44.009999999999998 ]
							}
, 							{
								"key" : 449,
								"value" : [ 43.880000000000003 ]
							}
, 							{
								"key" : 450,
								"value" : [ 43.880000000000003 ]
							}
, 							{
								"key" : 451,
								"value" : [ 43.140000000000001 ]
							}
, 							{
								"key" : 452,
								"value" : [ 42.57 ]
							}
, 							{
								"key" : 453,
								"value" : [ 42.310000000000002 ]
							}
, 							{
								"key" : 454,
								"value" : [ 41.950000000000003 ]
							}
, 							{
								"key" : 455,
								"value" : [ 40.960000000000001 ]
							}
, 							{
								"key" : 456,
								"value" : [ 39.990000000000002 ]
							}
, 							{
								"key" : 457,
								"value" : [ 39.670000000000002 ]
							}
, 							{
								"key" : 458,
								"value" : [ 38.969999999999999 ]
							}
, 							{
								"key" : 459,
								"value" : [ 38.640000000000001 ]
							}
, 							{
								"key" : 460,
								"value" : [ 38.439999999999998 ]
							}
, 							{
								"key" : 461,
								"value" : [ 38.210000000000001 ]
							}
, 							{
								"key" : 462,
								"value" : [ 38.030000000000001 ]
							}
, 							{
								"key" : 463,
								"value" : [ 37.710000000000001 ]
							}
, 							{
								"key" : 464,
								"value" : [ 36.840000000000003 ]
							}
, 							{
								"key" : 465,
								"value" : [ 35.420000000000002 ]
							}
, 							{
								"key" : 466,
								"value" : [ 35.039999999999999 ]
							}
, 							{
								"key" : 467,
								"value" : [ 35.109999999999999 ]
							}
, 							{
								"key" : 468,
								"value" : [ 35.310000000000002 ]
							}
, 							{
								"key" : 469,
								"value" : [ 35.640000000000001 ]
							}
, 							{
								"key" : 470,
								"value" : [ 35.920000000000002 ]
							}
, 							{
								"key" : 471,
								"value" : [ 35.689999999999998 ]
							}
, 							{
								"key" : 472,
								"value" : [ 35.640000000000001 ]
							}
, 							{
								"key" : 473,
								"value" : [ 36.030000000000001 ]
							}
, 							{
								"key" : 474,
								"value" : [ 36.189999999999998 ]
							}
, 							{
								"key" : 475,
								"value" : [ 35.920000000000002 ]
							}
, 							{
								"key" : 476,
								"value" : [ 36.140000000000001 ]
							}
, 							{
								"key" : 477,
								"value" : [ 36.719999999999999 ]
							}
, 							{
								"key" : 478,
								"value" : [ 36.82 ]
							}
, 							{
								"key" : 479,
								"value" : [ 36.479999999999997 ]
							}
, 							{
								"key" : 480,
								"value" : [ 36.18 ]
							}
, 							{
								"key" : 481,
								"value" : [ 35.869999999999997 ]
							}
, 							{
								"key" : 482,
								"value" : [ 35.710000000000001 ]
							}
, 							{
								"key" : 483,
								"value" : [ 35.740000000000002 ]
							}
, 							{
								"key" : 484,
								"value" : [ 35.799999999999997 ]
							}
, 							{
								"key" : 485,
								"value" : [ 35.829999999999998 ]
							}
, 							{
								"key" : 486,
								"value" : [ 35.939999999999998 ]
							}
, 							{
								"key" : 487,
								"value" : [ 36.57 ]
							}
, 							{
								"key" : 488,
								"value" : [ 37.509999999999998 ]
							}
, 							{
								"key" : 489,
								"value" : [ 39.149999999999999 ]
							}
, 							{
								"key" : 490,
								"value" : [ 40.32 ]
							}
, 							{
								"key" : 491,
								"value" : [ 41.289999999999999 ]
							}
, 							{
								"key" : 492,
								"value" : [ 41.920000000000002 ]
							}
, 							{
								"key" : 493,
								"value" : [ 42.170000000000002 ]
							}
, 							{
								"key" : 494,
								"value" : [ 42.130000000000003 ]
							}
, 							{
								"key" : 495,
								"value" : [ 41.859999999999999 ]
							}
, 							{
								"key" : 496,
								"value" : [ 41.0 ]
							}
, 							{
								"key" : 497,
								"value" : [ 39.759999999999998 ]
							}
, 							{
								"key" : 498,
								"value" : [ 38.25 ]
							}
, 							{
								"key" : 499,
								"value" : [ 36.280000000000001 ]
							}
, 							{
								"key" : 500,
								"value" : [ 34.969999999999999 ]
							}
, 							{
								"key" : 501,
								"value" : [ 34.210000000000001 ]
							}
, 							{
								"key" : 502,
								"value" : [ 34.270000000000003 ]
							}
, 							{
								"key" : 503,
								"value" : [ 34.719999999999999 ]
							}
, 							{
								"key" : 504,
								"value" : [ 34.969999999999999 ]
							}
, 							{
								"key" : 505,
								"value" : [ 35.289999999999999 ]
							}
, 							{
								"key" : 506,
								"value" : [ 35.549999999999997 ]
							}
, 							{
								"key" : 507,
								"value" : [ 35.109999999999999 ]
							}
, 							{
								"key" : 508,
								"value" : [ 34.649999999999999 ]
							}
, 							{
								"key" : 509,
								"value" : [ 34.159999999999997 ]
							}
, 							{
								"key" : 510,
								"value" : [ 34.390000000000001 ]
							}
, 							{
								"key" : 511,
								"value" : [ 36.68 ]
							}
, 							{
								"key" : 512,
								"value" : [ 39.399999999999999 ]
							}
, 							{
								"key" : 513,
								"value" : [ 41.109999999999999 ]
							}
, 							{
								"key" : 514,
								"value" : [ 42.759999999999998 ]
							}
, 							{
								"key" : 515,
								"value" : [ 44.600000000000001 ]
							}
, 							{
								"key" : 516,
								"value" : [ 46.270000000000003 ]
							}
, 							{
								"key" : 517,
								"value" : [ 47.729999999999997 ]
							}
, 							{
								"key" : 518,
								"value" : [ 48.969999999999999 ]
							}
, 							{
								"key" : 519,
								"value" : [ 49.799999999999997 ]
							}
, 							{
								"key" : 520,
								"value" : [ 50.5 ]
							}
, 							{
								"key" : 521,
								"value" : [ 51.030000000000001 ]
							}
, 							{
								"key" : 522,
								"value" : [ 50.590000000000003 ]
							}
, 							{
								"key" : 523,
								"value" : [ 48.020000000000003 ]
							}
, 							{
								"key" : 524,
								"value" : [ 46.670000000000002 ]
							}
, 							{
								"key" : 525,
								"value" : [ 46.130000000000003 ]
							}
, 							{
								"key" : 526,
								"value" : [ 45.68 ]
							}
, 							{
								"key" : 527,
								"value" : [ 44.869999999999997 ]
							}
, 							{
								"key" : 528,
								"value" : [ 43.75 ]
							}
, 							{
								"key" : 529,
								"value" : [ 42.759999999999998 ]
							}
, 							{
								"key" : 530,
								"value" : [ 41.920000000000002 ]
							}
, 							{
								"key" : 531,
								"value" : [ 41.409999999999997 ]
							}
, 							{
								"key" : 532,
								"value" : [ 41.719999999999999 ]
							}
, 							{
								"key" : 533,
								"value" : [ 41.43 ]
							}
, 							{
								"key" : 534,
								"value" : [ 41.469999999999999 ]
							}
, 							{
								"key" : 535,
								"value" : [ 42.240000000000002 ]
							}
, 							{
								"key" : 536,
								"value" : [ 44.170000000000002 ]
							}
, 							{
								"key" : 537,
								"value" : [ 47.840000000000003 ]
							}
, 							{
								"key" : 538,
								"value" : [ 50.159999999999997 ]
							}
, 							{
								"key" : 539,
								"value" : [ 51.399999999999999 ]
							}
, 							{
								"key" : 540,
								"value" : [ 52.390000000000001 ]
							}
, 							{
								"key" : 541,
								"value" : [ 53.369999999999997 ]
							}
, 							{
								"key" : 542,
								"value" : [ 53.689999999999998 ]
							}
, 							{
								"key" : 543,
								"value" : [ 53.649999999999999 ]
							}
, 							{
								"key" : 544,
								"value" : [ 53.350000000000001 ]
							}
, 							{
								"key" : 545,
								"value" : [ 52.840000000000003 ]
							}
, 							{
								"key" : 546,
								"value" : [ 51.82 ]
							}
, 							{
								"key" : 547,
								"value" : [ 49.770000000000003 ]
							}
, 							{
								"key" : 548,
								"value" : [ 48.490000000000002 ]
							}
, 							{
								"key" : 549,
								"value" : [ 48.0 ]
							}
, 							{
								"key" : 550,
								"value" : [ 47.770000000000003 ]
							}
, 							{
								"key" : 551,
								"value" : [ 47.340000000000003 ]
							}
, 							{
								"key" : 552,
								"value" : [ 46.869999999999997 ]
							}
, 							{
								"key" : 553,
								"value" : [ 46.420000000000002 ]
							}
, 							{
								"key" : 554,
								"value" : [ 46.289999999999999 ]
							}
, 							{
								"key" : 555,
								"value" : [ 46.039999999999999 ]
							}
, 							{
								"key" : 556,
								"value" : [ 45.969999999999999 ]
							}
, 							{
								"key" : 557,
								"value" : [ 45.880000000000003 ]
							}
, 							{
								"key" : 558,
								"value" : [ 45.93 ]
							}
, 							{
								"key" : 559,
								"value" : [ 46.619999999999997 ]
							}
, 							{
								"key" : 560,
								"value" : [ 47.520000000000003 ]
							}
, 							{
								"key" : 561,
								"value" : [ 49.590000000000003 ]
							}
, 							{
								"key" : 562,
								"value" : [ 50.899999999999999 ]
							}
, 							{
								"key" : 563,
								"value" : [ 50.939999999999998 ]
							}
, 							{
								"key" : 564,
								"value" : [ 50.990000000000002 ]
							}
, 							{
								"key" : 565,
								"value" : [ 51.369999999999997 ]
							}
, 							{
								"key" : 566,
								"value" : [ 52.0 ]
							}
, 							{
								"key" : 567,
								"value" : [ 53.020000000000003 ]
							}
, 							{
								"key" : 568,
								"value" : [ 54.520000000000003 ]
							}
, 							{
								"key" : 569,
								"value" : [ 55.420000000000002 ]
							}
, 							{
								"key" : 570,
								"value" : [ 55.219999999999999 ]
							}
, 							{
								"key" : 571,
								"value" : [ 54.280000000000001 ]
							}
, 							{
								"key" : 572,
								"value" : [ 52.390000000000001 ]
							}
, 							{
								"key" : 573,
								"value" : [ 50.409999999999997 ]
							}
, 							{
								"key" : 574,
								"value" : [ 48.869999999999997 ]
							}
, 							{
								"key" : 575,
								"value" : [ 45.840000000000003 ]
							}
, 							{
								"key" : 576,
								"value" : [ 43.469999999999999 ]
							}
, 							{
								"key" : 577,
								"value" : [ 42.460000000000001 ]
							}
, 							{
								"key" : 578,
								"value" : [ 41.789999999999999 ]
							}
, 							{
								"key" : 579,
								"value" : [ 40.75 ]
							}
, 							{
								"key" : 580,
								"value" : [ 39.789999999999999 ]
							}
, 							{
								"key" : 581,
								"value" : [ 38.82 ]
							}
, 							{
								"key" : 582,
								"value" : [ 38.439999999999998 ]
							}
, 							{
								"key" : 583,
								"value" : [ 38.890000000000001 ]
							}
, 							{
								"key" : 584,
								"value" : [ 39.560000000000002 ]
							}
, 							{
								"key" : 585,
								"value" : [ 40.32 ]
							}
, 							{
								"key" : 586,
								"value" : [ 40.420000000000002 ]
							}
, 							{
								"key" : 587,
								"value" : [ 39.969999999999999 ]
							}
, 							{
								"key" : 588,
								"value" : [ 39.789999999999999 ]
							}
, 							{
								"key" : 589,
								"value" : [ 40.140000000000001 ]
							}
, 							{
								"key" : 590,
								"value" : [ 40.229999999999997 ]
							}
, 							{
								"key" : 591,
								"value" : [ 39.539999999999999 ]
							}
, 							{
								"key" : 592,
								"value" : [ 38.619999999999997 ]
							}
, 							{
								"key" : 593,
								"value" : [ 38.210000000000001 ]
							}
, 							{
								"key" : 594,
								"value" : [ 38.189999999999998 ]
							}
, 							{
								"key" : 595,
								"value" : [ 38.170000000000002 ]
							}
, 							{
								"key" : 596,
								"value" : [ 38.32 ]
							}
, 							{
								"key" : 597,
								"value" : [ 38.460000000000001 ]
							}
, 							{
								"key" : 598,
								"value" : [ 38.520000000000003 ]
							}
, 							{
								"key" : 599,
								"value" : [ 38.68 ]
							}
, 							{
								"key" : 600,
								"value" : [ 38.770000000000003 ]
							}
, 							{
								"key" : 601,
								"value" : [ 39.090000000000003 ]
							}
, 							{
								"key" : 602,
								"value" : [ 39.340000000000003 ]
							}
, 							{
								"key" : 603,
								"value" : [ 39.869999999999997 ]
							}
, 							{
								"key" : 604,
								"value" : [ 39.920000000000002 ]
							}
, 							{
								"key" : 605,
								"value" : [ 39.969999999999999 ]
							}
, 							{
								"key" : 606,
								"value" : [ 40.280000000000001 ]
							}
, 							{
								"key" : 607,
								"value" : [ 41.090000000000003 ]
							}
, 							{
								"key" : 608,
								"value" : [ 43.57 ]
							}
, 							{
								"key" : 609,
								"value" : [ 47.049999999999997 ]
							}
, 							{
								"key" : 610,
								"value" : [ 50.68 ]
							}
, 							{
								"key" : 611,
								"value" : [ 54.229999999999997 ]
							}
, 							{
								"key" : 612,
								"value" : [ 56.75 ]
							}
, 							{
								"key" : 613,
								"value" : [ 57.759999999999998 ]
							}
, 							{
								"key" : 614,
								"value" : [ 59.490000000000002 ]
							}
, 							{
								"key" : 615,
								"value" : [ 60.710000000000001 ]
							}
, 							{
								"key" : 616,
								"value" : [ 61.560000000000002 ]
							}
, 							{
								"key" : 617,
								"value" : [ 61.630000000000003 ]
							}
, 							{
								"key" : 618,
								"value" : [ 60.57 ]
							}
, 							{
								"key" : 619,
								"value" : [ 58.82 ]
							}
, 							{
								"key" : 620,
								"value" : [ 57.509999999999998 ]
							}
, 							{
								"key" : 621,
								"value" : [ 56.640000000000001 ]
							}
, 							{
								"key" : 622,
								"value" : [ 56.100000000000001 ]
							}
, 							{
								"key" : 623,
								"value" : [ 55.490000000000002 ]
							}
, 							{
								"key" : 624,
								"value" : [ 54.840000000000003 ]
							}
, 							{
								"key" : 625,
								"value" : [ 54.450000000000003 ]
							}
, 							{
								"key" : 626,
								"value" : [ 54.140000000000001 ]
							}
, 							{
								"key" : 627,
								"value" : [ 54.049999999999997 ]
							}
, 							{
								"key" : 628,
								"value" : [ 53.530000000000001 ]
							}
, 							{
								"key" : 629,
								"value" : [ 52.590000000000003 ]
							}
, 							{
								"key" : 630,
								"value" : [ 52.520000000000003 ]
							}
, 							{
								"key" : 631,
								"value" : [ 53.369999999999997 ]
							}
, 							{
								"key" : 632,
								"value" : [ 55.109999999999999 ]
							}
, 							{
								"key" : 633,
								"value" : [ 58.009999999999998 ]
							}
, 							{
								"key" : 634,
								"value" : [ 60.710000000000001 ]
							}
, 							{
								"key" : 635,
								"value" : [ 62.689999999999998 ]
							}
, 							{
								"key" : 636,
								"value" : [ 64.540000000000006 ]
							}
, 							{
								"key" : 637,
								"value" : [ 65.879999999999995 ]
							}
, 							{
								"key" : 638,
								"value" : [ 66.420000000000002 ]
							}
, 							{
								"key" : 639,
								"value" : [ 66.739999999999995 ]
							}
, 							{
								"key" : 640,
								"value" : [ 66.560000000000002 ]
							}
, 							{
								"key" : 641,
								"value" : [ 65.969999999999999 ]
							}
, 							{
								"key" : 642,
								"value" : [ 64.540000000000006 ]
							}
, 							{
								"key" : 643,
								"value" : [ 62.509999999999998 ]
							}
, 							{
								"key" : 644,
								"value" : [ 61.200000000000003 ]
							}
, 							{
								"key" : 645,
								"value" : [ 60.240000000000002 ]
							}
, 							{
								"key" : 646,
								"value" : [ 58.979999999999997 ]
							}
, 							{
								"key" : 647,
								"value" : [ 57.609999999999999 ]
							}
, 							{
								"key" : 648,
								"value" : [ 56.770000000000003 ]
							}
, 							{
								"key" : 649,
								"value" : [ 56.189999999999998 ]
							}
, 							{
								"key" : 650,
								"value" : [ 55.060000000000002 ]
							}
, 							{
								"key" : 651,
								"value" : [ 54.100000000000001 ]
							}
, 							{
								"key" : 652,
								"value" : [ 53.329999999999998 ]
							}
, 							{
								"key" : 653,
								"value" : [ 52.25 ]
							}
, 							{
								"key" : 654,
								"value" : [ 51.119999999999997 ]
							}
, 							{
								"key" : 655,
								"value" : [ 50.270000000000003 ]
							}
, 							{
								"key" : 656,
								"value" : [ 47.82 ]
							}
, 							{
								"key" : 657,
								"value" : [ 45.880000000000003 ]
							}
, 							{
								"key" : 658,
								"value" : [ 45.119999999999997 ]
							}
, 							{
								"key" : 659,
								"value" : [ 44.009999999999998 ]
							}
, 							{
								"key" : 660,
								"value" : [ 42.490000000000002 ]
							}
, 							{
								"key" : 661,
								"value" : [ 42.009999999999998 ]
							}
, 							{
								"key" : 662,
								"value" : [ 41.939999999999998 ]
							}
, 							{
								"key" : 663,
								"value" : [ 41.68 ]
							}
, 							{
								"key" : 664,
								"value" : [ 41.579999999999998 ]
							}
, 							{
								"key" : 665,
								"value" : [ 41.670000000000002 ]
							}
, 							{
								"key" : 666,
								"value" : [ 41.859999999999999 ]
							}
, 							{
								"key" : 667,
								"value" : [ 41.920000000000002 ]
							}
, 							{
								"key" : 668,
								"value" : [ 41.670000000000002 ]
							}
, 							{
								"key" : 669,
								"value" : [ 41.590000000000003 ]
							}
, 							{
								"key" : 670,
								"value" : [ 41.740000000000002 ]
							}
, 							{
								"key" : 671,
								"value" : [ 42.009999999999998 ]
							}
, 							{
								"key" : 672,
								"value" : [ 42.039999999999999 ]
							}
, 							{
								"key" : 673,
								"value" : [ 41.969999999999999 ]
							}
, 							{
								"key" : 674,
								"value" : [ 42.030000000000001 ]
							}
, 							{
								"key" : 675,
								"value" : [ 42.039999999999999 ]
							}
, 							{
								"key" : 676,
								"value" : [ 42.100000000000001 ]
							}
, 							{
								"key" : 677,
								"value" : [ 42.189999999999998 ]
							}
, 							{
								"key" : 678,
								"value" : [ 42.57 ]
							}
, 							{
								"key" : 679,
								"value" : [ 43.469999999999999 ]
							}
, 							{
								"key" : 680,
								"value" : [ 45.119999999999997 ]
							}
, 							{
								"key" : 681,
								"value" : [ 46.810000000000002 ]
							}
, 							{
								"key" : 682,
								"value" : [ 47.859999999999999 ]
							}
, 							{
								"key" : 683,
								"value" : [ 48.560000000000002 ]
							}
, 							{
								"key" : 684,
								"value" : [ 49.229999999999997 ]
							}
, 							{
								"key" : 685,
								"value" : [ 49.960000000000001 ]
							}
, 							{
								"key" : 686,
								"value" : [ 51.780000000000001 ]
							}
, 							{
								"key" : 687,
								"value" : [ 53.689999999999998 ]
							}
, 							{
								"key" : 688,
								"value" : [ 54.549999999999997 ]
							}
, 							{
								"key" : 689,
								"value" : [ 56.5 ]
							}
, 							{
								"key" : 690,
								"value" : [ 56.659999999999997 ]
							}
, 							{
								"key" : 691,
								"value" : [ 54.390000000000001 ]
							}
, 							{
								"key" : 692,
								"value" : [ 52.299999999999997 ]
							}
, 							{
								"key" : 693,
								"value" : [ 50.920000000000002 ]
							}
, 							{
								"key" : 694,
								"value" : [ 49.890000000000001 ]
							}
, 							{
								"key" : 695,
								"value" : [ 48.060000000000002 ]
							}
, 							{
								"key" : 696,
								"value" : [ 46.109999999999999 ]
							}
, 							{
								"key" : 697,
								"value" : [ 46.240000000000002 ]
							}
, 							{
								"key" : 698,
								"value" : [ 47.170000000000002 ]
							}
, 							{
								"key" : 699,
								"value" : [ 45.5 ]
							}
, 							{
								"key" : 700,
								"value" : [ 45.659999999999997 ]
							}
, 							{
								"key" : 701,
								"value" : [ 46.439999999999998 ]
							}
, 							{
								"key" : 702,
								"value" : [ 46.979999999999997 ]
							}
, 							{
								"key" : 703,
								"value" : [ 48.0 ]
							}
, 							{
								"key" : 704,
								"value" : [ 47.890000000000001 ]
							}
, 							{
								"key" : 705,
								"value" : [ 46.359999999999999 ]
							}
, 							{
								"key" : 706,
								"value" : [ 45.280000000000001 ]
							}
, 							{
								"key" : 707,
								"value" : [ 44.939999999999998 ]
							}
, 							{
								"key" : 708,
								"value" : [ 45.07 ]
							}
, 							{
								"key" : 709,
								"value" : [ 45.460000000000001 ]
							}
, 							{
								"key" : 710,
								"value" : [ 45.990000000000002 ]
							}
, 							{
								"key" : 711,
								"value" : [ 46.420000000000002 ]
							}
, 							{
								"key" : 712,
								"value" : [ 46.689999999999998 ]
							}
, 							{
								"key" : 713,
								"value" : [ 46.530000000000001 ]
							}
, 							{
								"key" : 714,
								"value" : [ 45.479999999999997 ]
							}
, 							{
								"key" : 715,
								"value" : [ 42.939999999999998 ]
							}
, 							{
								"key" : 716,
								"value" : [ 40.729999999999997 ]
							}
, 							{
								"key" : 717,
								"value" : [ 40.079999999999998 ]
							}
, 							{
								"key" : 718,
								"value" : [ 40.149999999999999 ]
							}
, 							{
								"key" : 719,
								"value" : [ 40.439999999999998 ]
							}
, 							{
								"key" : 720,
								"value" : [ 41.140000000000001 ]
							}
, 							{
								"key" : 721,
								"value" : [ 41.310000000000002 ]
							}
, 							{
								"key" : 722,
								"value" : [ 41.270000000000003 ]
							}
, 							{
								"key" : 723,
								"value" : [ 40.840000000000003 ]
							}
, 							{
								"key" : 724,
								"value" : [ 40.619999999999997 ]
							}
, 							{
								"key" : 725,
								"value" : [ 40.57 ]
							}
, 							{
								"key" : 726,
								"value" : [ 41.18 ]
							}
, 							{
								"key" : 727,
								"value" : [ 43.109999999999999 ]
							}
, 							{
								"key" : 728,
								"value" : [ 46.649999999999999 ]
							}
, 							{
								"key" : 729,
								"value" : [ 50.700000000000003 ]
							}
, 							{
								"key" : 730,
								"value" : [ 53.640000000000001 ]
							}
, 							{
								"key" : 731,
								"value" : [ 56.100000000000001 ]
							}
, 							{
								"key" : 732,
								"value" : [ 58.710000000000001 ]
							}
, 							{
								"key" : 733,
								"value" : [ 61.789999999999999 ]
							}
, 							{
								"key" : 734,
								"value" : [ 64.290000000000006 ]
							}
, 							{
								"key" : 735,
								"value" : [ 65.950000000000003 ]
							}
, 							{
								"key" : 736,
								"value" : [ 66.959999999999994 ]
							}
, 							{
								"key" : 737,
								"value" : [ 66.670000000000002 ]
							}
, 							{
								"key" : 738,
								"value" : [ 65.209999999999994 ]
							}
, 							{
								"key" : 739,
								"value" : [ 63.280000000000001 ]
							}
, 							{
								"key" : 740,
								"value" : [ 61.520000000000003 ]
							}
, 							{
								"key" : 741,
								"value" : [ 59.990000000000002 ]
							}
, 							{
								"key" : 742,
								"value" : [ 59.270000000000003 ]
							}
, 							{
								"key" : 743,
								"value" : [ 58.780000000000001 ]
							}
, 							{
								"key" : 744,
								"value" : [ 58.549999999999997 ]
							}
, 							{
								"key" : 745,
								"value" : [ 57.869999999999997 ]
							}
, 							{
								"key" : 746,
								"value" : [ 56.840000000000003 ]
							}
, 							{
								"key" : 747,
								"value" : [ 55.810000000000002 ]
							}
, 							{
								"key" : 748,
								"value" : [ 54.899999999999999 ]
							}
, 							{
								"key" : 749,
								"value" : [ 54.25 ]
							}
, 							{
								"key" : 750,
								"value" : [ 54.140000000000001 ]
							}
, 							{
								"key" : 751,
								"value" : [ 55.090000000000003 ]
							}
, 							{
								"key" : 752,
								"value" : [ 57.539999999999999 ]
							}
, 							{
								"key" : 753,
								"value" : [ 60.490000000000002 ]
							}
, 							{
								"key" : 754,
								"value" : [ 62.329999999999998 ]
							}
, 							{
								"key" : 755,
								"value" : [ 63.840000000000003 ]
							}
, 							{
								"key" : 756,
								"value" : [ 65.209999999999994 ]
							}
, 							{
								"key" : 757,
								"value" : [ 66.290000000000006 ]
							}
, 							{
								"key" : 758,
								"value" : [ 66.810000000000002 ]
							}
, 							{
								"key" : 759,
								"value" : [ 66.760000000000005 ]
							}
, 							{
								"key" : 760,
								"value" : [ 66.159999999999997 ]
							}
, 							{
								"key" : 761,
								"value" : [ 64.920000000000002 ]
							}
, 							{
								"key" : 762,
								"value" : [ 62.82 ]
							}
, 							{
								"key" : 763,
								"value" : [ 60.310000000000002 ]
							}
, 							{
								"key" : 764,
								"value" : [ 58.350000000000001 ]
							}
, 							{
								"key" : 765,
								"value" : [ 56.979999999999997 ]
							}
, 							{
								"key" : 766,
								"value" : [ 55.810000000000002 ]
							}
, 							{
								"key" : 767,
								"value" : [ 55.0 ]
							}
, 							{
								"key" : 768,
								"value" : [ 54.359999999999999 ]
							}
, 							{
								"key" : 769,
								"value" : [ 53.82 ]
							}
, 							{
								"key" : 770,
								"value" : [ 53.600000000000001 ]
							}
, 							{
								"key" : 771,
								"value" : [ 53.469999999999999 ]
							}
, 							{
								"key" : 772,
								"value" : [ 53.240000000000002 ]
							}
, 							{
								"key" : 773,
								"value" : [ 53.009999999999998 ]
							}
, 							{
								"key" : 774,
								"value" : [ 52.950000000000003 ]
							}
, 							{
								"key" : 775,
								"value" : [ 53.240000000000002 ]
							}
, 							{
								"key" : 776,
								"value" : [ 54.25 ]
							}
, 							{
								"key" : 777,
								"value" : [ 56.210000000000001 ]
							}
, 							{
								"key" : 778,
								"value" : [ 58.439999999999998 ]
							}
, 							{
								"key" : 779,
								"value" : [ 60.490000000000002 ]
							}
, 							{
								"key" : 780,
								"value" : [ 62.289999999999999 ]
							}
, 							{
								"key" : 781,
								"value" : [ 63.640000000000001 ]
							}
, 							{
								"key" : 782,
								"value" : [ 64.689999999999998 ]
							}
, 							{
								"key" : 783,
								"value" : [ 65.260000000000005 ]
							}
, 							{
								"key" : 784,
								"value" : [ 64.900000000000006 ]
							}
, 							{
								"key" : 785,
								"value" : [ 63.340000000000003 ]
							}
, 							{
								"key" : 786,
								"value" : [ 61.340000000000003 ]
							}
, 							{
								"key" : 787,
								"value" : [ 59.539999999999999 ]
							}
, 							{
								"key" : 788,
								"value" : [ 57.960000000000001 ]
							}
, 							{
								"key" : 789,
								"value" : [ 56.93 ]
							}
, 							{
								"key" : 790,
								"value" : [ 56.460000000000001 ]
							}
, 							{
								"key" : 791,
								"value" : [ 56.25 ]
							}
, 							{
								"key" : 792,
								"value" : [ 55.670000000000002 ]
							}
, 							{
								"key" : 793,
								"value" : [ 52.950000000000003 ]
							}
, 							{
								"key" : 794,
								"value" : [ 48.149999999999999 ]
							}
, 							{
								"key" : 795,
								"value" : [ 46.219999999999999 ]
							}
, 							{
								"key" : 796,
								"value" : [ 46.399999999999999 ]
							}
, 							{
								"key" : 797,
								"value" : [ 46.869999999999997 ]
							}
, 							{
								"key" : 798,
								"value" : [ 47.840000000000003 ]
							}
, 							{
								"key" : 799,
								"value" : [ 49.119999999999997 ]
							}
, 							{
								"key" : 800,
								"value" : [ 50.219999999999999 ]
							}
, 							{
								"key" : 801,
								"value" : [ 50.850000000000001 ]
							}
, 							{
								"key" : 802,
								"value" : [ 50.770000000000003 ]
							}
, 							{
								"key" : 803,
								"value" : [ 50.229999999999997 ]
							}
, 							{
								"key" : 804,
								"value" : [ 49.689999999999998 ]
							}
, 							{
								"key" : 805,
								"value" : [ 49.32 ]
							}
, 							{
								"key" : 806,
								"value" : [ 48.990000000000002 ]
							}
, 							{
								"key" : 807,
								"value" : [ 48.689999999999998 ]
							}
, 							{
								"key" : 808,
								"value" : [ 48.689999999999998 ]
							}
, 							{
								"key" : 809,
								"value" : [ 48.829999999999998 ]
							}
, 							{
								"key" : 810,
								"value" : [ 48.990000000000002 ]
							}
, 							{
								"key" : 811,
								"value" : [ 47.969999999999999 ]
							}
, 							{
								"key" : 812,
								"value" : [ 46.509999999999998 ]
							}
, 							{
								"key" : 813,
								"value" : [ 45.700000000000003 ]
							}
, 							{
								"key" : 814,
								"value" : [ 44.939999999999998 ]
							}
, 							{
								"key" : 815,
								"value" : [ 44.369999999999997 ]
							}
, 							{
								"key" : 816,
								"value" : [ 44.490000000000002 ]
							}
, 							{
								"key" : 817,
								"value" : [ 44.060000000000002 ]
							}
, 							{
								"key" : 818,
								"value" : [ 43.560000000000002 ]
							}
, 							{
								"key" : 819,
								"value" : [ 43.289999999999999 ]
							}
, 							{
								"key" : 820,
								"value" : [ 42.939999999999998 ]
							}
, 							{
								"key" : 821,
								"value" : [ 42.549999999999997 ]
							}
, 							{
								"key" : 822,
								"value" : [ 43.659999999999997 ]
							}
, 							{
								"key" : 823,
								"value" : [ 45.630000000000003 ]
							}
, 							{
								"key" : 824,
								"value" : [ 46.990000000000002 ]
							}
, 							{
								"key" : 825,
								"value" : [ 48.090000000000003 ]
							}
, 							{
								"key" : 826,
								"value" : [ 48.920000000000002 ]
							}
, 							{
								"key" : 827,
								"value" : [ 49.549999999999997 ]
							}
, 							{
								"key" : 828,
								"value" : [ 50.0 ]
							}
, 							{
								"key" : 829,
								"value" : [ 50.219999999999999 ]
							}
, 							{
								"key" : 830,
								"value" : [ 50.32 ]
							}
, 							{
								"key" : 831,
								"value" : [ 50.340000000000003 ]
							}
, 							{
								"key" : 832,
								"value" : [ 50.049999999999997 ]
							}
, 							{
								"key" : 833,
								"value" : [ 49.140000000000001 ]
							}
, 							{
								"key" : 834,
								"value" : [ 47.520000000000003 ]
							}
, 							{
								"key" : 835,
								"value" : [ 44.82 ]
							}
, 							{
								"key" : 836,
								"value" : [ 43.049999999999997 ]
							}
, 							{
								"key" : 837,
								"value" : [ 42.939999999999998 ]
							}
, 							{
								"key" : 838,
								"value" : [ 43.520000000000003 ]
							}
, 							{
								"key" : 839,
								"value" : [ 44.240000000000002 ]
							}
, 							{
								"key" : 840,
								"value" : [ 44.689999999999998 ]
							}
, 							{
								"key" : 841,
								"value" : [ 45.07 ]
							}
, 							{
								"key" : 842,
								"value" : [ 45.460000000000001 ]
							}
, 							{
								"key" : 843,
								"value" : [ 45.520000000000003 ]
							}
, 							{
								"key" : 844,
								"value" : [ 45.409999999999997 ]
							}
, 							{
								"key" : 845,
								"value" : [ 45.18 ]
							}
, 							{
								"key" : 846,
								"value" : [ 45.229999999999997 ]
							}
, 							{
								"key" : 847,
								"value" : [ 45.659999999999997 ]
							}
, 							{
								"key" : 848,
								"value" : [ 46.090000000000003 ]
							}
, 							{
								"key" : 849,
								"value" : [ 46.670000000000002 ]
							}
, 							{
								"key" : 850,
								"value" : [ 46.109999999999999 ]
							}
, 							{
								"key" : 851,
								"value" : [ 44.490000000000002 ]
							}
, 							{
								"key" : 852,
								"value" : [ 43.07 ]
							}
, 							{
								"key" : 853,
								"value" : [ 43.210000000000001 ]
							}
, 							{
								"key" : 854,
								"value" : [ 44.549999999999997 ]
							}
, 							{
								"key" : 855,
								"value" : [ 45.700000000000003 ]
							}
, 							{
								"key" : 856,
								"value" : [ 46.090000000000003 ]
							}
, 							{
								"key" : 857,
								"value" : [ 46.170000000000002 ]
							}
, 							{
								"key" : 858,
								"value" : [ 45.880000000000003 ]
							}
, 							{
								"key" : 859,
								"value" : [ 44.619999999999997 ]
							}
, 							{
								"key" : 860,
								"value" : [ 43.390000000000001 ]
							}
, 							{
								"key" : 861,
								"value" : [ 43.340000000000003 ]
							}
, 							{
								"key" : 862,
								"value" : [ 43.560000000000002 ]
							}
, 							{
								"key" : 863,
								"value" : [ 43.789999999999999 ]
							}
, 							{
								"key" : 864,
								"value" : [ 43.590000000000003 ]
							}
, 							{
								"key" : 865,
								"value" : [ 43.5 ]
							}
, 							{
								"key" : 866,
								"value" : [ 43.340000000000003 ]
							}
, 							{
								"key" : 867,
								"value" : [ 43.020000000000003 ]
							}
, 							{
								"key" : 868,
								"value" : [ 43.560000000000002 ]
							}
, 							{
								"key" : 869,
								"value" : [ 43.719999999999999 ]
							}
, 							{
								"key" : 870,
								"value" : [ 44.469999999999999 ]
							}
, 							{
								"key" : 871,
								"value" : [ 46.439999999999998 ]
							}
, 							{
								"key" : 872,
								"value" : [ 49.299999999999997 ]
							}
, 							{
								"key" : 873,
								"value" : [ 50.539999999999999 ]
							}
, 							{
								"key" : 874,
								"value" : [ 50.789999999999999 ]
							}
, 							{
								"key" : 875,
								"value" : [ 51.009999999999998 ]
							}
, 							{
								"key" : 876,
								"value" : [ 51.170000000000002 ]
							}
, 							{
								"key" : 877,
								"value" : [ 51.240000000000002 ]
							}
, 							{
								"key" : 878,
								"value" : [ 51.210000000000001 ]
							}
, 							{
								"key" : 879,
								"value" : [ 50.880000000000003 ]
							}
, 							{
								"key" : 880,
								"value" : [ 49.890000000000001 ]
							}
, 							{
								"key" : 881,
								"value" : [ 48.609999999999999 ]
							}
, 							{
								"key" : 882,
								"value" : [ 47.119999999999997 ]
							}
, 							{
								"key" : 883,
								"value" : [ 45.009999999999998 ]
							}
, 							{
								"key" : 884,
								"value" : [ 42.799999999999997 ]
							}
, 							{
								"key" : 885,
								"value" : [ 41.630000000000003 ]
							}
, 							{
								"key" : 886,
								"value" : [ 40.909999999999997 ]
							}
, 							{
								"key" : 887,
								"value" : [ 40.590000000000003 ]
							}
, 							{
								"key" : 888,
								"value" : [ 40.509999999999998 ]
							}
, 							{
								"key" : 889,
								"value" : [ 40.5 ]
							}
, 							{
								"key" : 890,
								"value" : [ 40.549999999999997 ]
							}
, 							{
								"key" : 891,
								"value" : [ 40.640000000000001 ]
							}
, 							{
								"key" : 892,
								"value" : [ 40.689999999999998 ]
							}
, 							{
								"key" : 893,
								"value" : [ 40.780000000000001 ]
							}
, 							{
								"key" : 894,
								"value" : [ 41.560000000000002 ]
							}
, 							{
								"key" : 895,
								"value" : [ 43.43 ]
							}
, 							{
								"key" : 896,
								"value" : [ 44.689999999999998 ]
							}
, 							{
								"key" : 897,
								"value" : [ 45.840000000000003 ]
							}
, 							{
								"key" : 898,
								"value" : [ 46.420000000000002 ]
							}
, 							{
								"key" : 899,
								"value" : [ 46.670000000000002 ]
							}
, 							{
								"key" : 900,
								"value" : [ 46.689999999999998 ]
							}
, 							{
								"key" : 901,
								"value" : [ 46.170000000000002 ]
							}
, 							{
								"key" : 902,
								"value" : [ 45.770000000000003 ]
							}
, 							{
								"key" : 903,
								"value" : [ 45.229999999999997 ]
							}
, 							{
								"key" : 904,
								"value" : [ 44.829999999999998 ]
							}
, 							{
								"key" : 905,
								"value" : [ 44.420000000000002 ]
							}
, 							{
								"key" : 906,
								"value" : [ 43.969999999999999 ]
							}
, 							{
								"key" : 907,
								"value" : [ 43.520000000000003 ]
							}
, 							{
								"key" : 908,
								"value" : [ 42.780000000000001 ]
							}
, 							{
								"key" : 909,
								"value" : [ 41.409999999999997 ]
							}
, 							{
								"key" : 910,
								"value" : [ 40.299999999999997 ]
							}
, 							{
								"key" : 911,
								"value" : [ 38.609999999999999 ]
							}
, 							{
								"key" : 912,
								"value" : [ 37.240000000000002 ]
							}
, 							{
								"key" : 913,
								"value" : [ 37.689999999999998 ]
							}
, 							{
								"key" : 914,
								"value" : [ 37.420000000000002 ]
							}
, 							{
								"key" : 915,
								"value" : [ 36.32 ]
							}
, 							{
								"key" : 916,
								"value" : [ 36.270000000000003 ]
							}
, 							{
								"key" : 917,
								"value" : [ 36.340000000000003 ]
							}
, 							{
								"key" : 918,
								"value" : [ 36.770000000000003 ]
							}
, 							{
								"key" : 919,
								"value" : [ 38.659999999999997 ]
							}
, 							{
								"key" : 920,
								"value" : [ 40.460000000000001 ]
							}
, 							{
								"key" : 921,
								"value" : [ 42.039999999999999 ]
							}
, 							{
								"key" : 922,
								"value" : [ 43.270000000000003 ]
							}
, 							{
								"key" : 923,
								"value" : [ 44.399999999999999 ]
							}
, 							{
								"key" : 924,
								"value" : [ 46.18 ]
							}
, 							{
								"key" : 925,
								"value" : [ 47.390000000000001 ]
							}
, 							{
								"key" : 926,
								"value" : [ 47.909999999999997 ]
							}
, 							{
								"key" : 927,
								"value" : [ 48.219999999999999 ]
							}
, 							{
								"key" : 928,
								"value" : [ 48.579999999999998 ]
							}
, 							{
								"key" : 929,
								"value" : [ 48.340000000000003 ]
							}
, 							{
								"key" : 930,
								"value" : [ 47.390000000000001 ]
							}
, 							{
								"key" : 931,
								"value" : [ 45.520000000000003 ]
							}
, 							{
								"key" : 932,
								"value" : [ 43.409999999999997 ]
							}
, 							{
								"key" : 933,
								"value" : [ 42.960000000000001 ]
							}
, 							{
								"key" : 934,
								"value" : [ 42.369999999999997 ]
							}
, 							{
								"key" : 935,
								"value" : [ 41.969999999999999 ]
							}
, 							{
								"key" : 936,
								"value" : [ 41.899999999999999 ]
							}
, 							{
								"key" : 937,
								"value" : [ 41.829999999999998 ]
							}
, 							{
								"key" : 938,
								"value" : [ 41.649999999999999 ]
							}
, 							{
								"key" : 939,
								"value" : [ 41.920000000000002 ]
							}
, 							{
								"key" : 940,
								"value" : [ 41.789999999999999 ]
							}
, 							{
								"key" : 941,
								"value" : [ 41.700000000000003 ]
							}
, 							{
								"key" : 942,
								"value" : [ 42.850000000000001 ]
							}
, 							{
								"key" : 943,
								"value" : [ 43.789999999999999 ]
							}
, 							{
								"key" : 944,
								"value" : [ 43.57 ]
							}
, 							{
								"key" : 945,
								"value" : [ 42.850000000000001 ]
							}
, 							{
								"key" : 946,
								"value" : [ 41.880000000000003 ]
							}
, 							{
								"key" : 947,
								"value" : [ 41.68 ]
							}
, 							{
								"key" : 948,
								"value" : [ 43.200000000000003 ]
							}
, 							{
								"key" : 949,
								"value" : [ 44.689999999999998 ]
							}
, 							{
								"key" : 950,
								"value" : [ 45.210000000000001 ]
							}
, 							{
								"key" : 951,
								"value" : [ 45.100000000000001 ]
							}
, 							{
								"key" : 952,
								"value" : [ 44.939999999999998 ]
							}
, 							{
								"key" : 953,
								"value" : [ 44.670000000000002 ]
							}
, 							{
								"key" : 954,
								"value" : [ 44.189999999999998 ]
							}
, 							{
								"key" : 955,
								"value" : [ 43.340000000000003 ]
							}
, 							{
								"key" : 956,
								"value" : [ 42.460000000000001 ]
							}
, 							{
								"key" : 957,
								"value" : [ 42.759999999999998 ]
							}
, 							{
								"key" : 958,
								"value" : [ 42.869999999999997 ]
							}
, 							{
								"key" : 959,
								"value" : [ 42.869999999999997 ]
							}
, 							{
								"key" : 960,
								"value" : [ 42.619999999999997 ]
							}
, 							{
								"key" : 961,
								"value" : [ 42.57 ]
							}
, 							{
								"key" : 962,
								"value" : [ 42.439999999999998 ]
							}
, 							{
								"key" : 963,
								"value" : [ 41.920000000000002 ]
							}
, 							{
								"key" : 964,
								"value" : [ 41.25 ]
							}
, 							{
								"key" : 965,
								"value" : [ 40.57 ]
							}
, 							{
								"key" : 966,
								"value" : [ 41.759999999999998 ]
							}
, 							{
								"key" : 967,
								"value" : [ 44.060000000000002 ]
							}
, 							{
								"key" : 968,
								"value" : [ 45.770000000000003 ]
							}
, 							{
								"key" : 969,
								"value" : [ 46.869999999999997 ]
							}
, 							{
								"key" : 970,
								"value" : [ 47.590000000000003 ]
							}
, 							{
								"key" : 971,
								"value" : [ 48.18 ]
							}
, 							{
								"key" : 972,
								"value" : [ 48.560000000000002 ]
							}
, 							{
								"key" : 973,
								"value" : [ 48.670000000000002 ]
							}
, 							{
								"key" : 974,
								"value" : [ 48.420000000000002 ]
							}
, 							{
								"key" : 975,
								"value" : [ 47.909999999999997 ]
							}
, 							{
								"key" : 976,
								"value" : [ 47.5 ]
							}
, 							{
								"key" : 977,
								"value" : [ 47.100000000000001 ]
							}
, 							{
								"key" : 978,
								"value" : [ 46.530000000000001 ]
							}
, 							{
								"key" : 979,
								"value" : [ 45.140000000000001 ]
							}
, 							{
								"key" : 980,
								"value" : [ 44.039999999999999 ]
							}
, 							{
								"key" : 981,
								"value" : [ 44.329999999999998 ]
							}
, 							{
								"key" : 982,
								"value" : [ 44.439999999999998 ]
							}
, 							{
								"key" : 983,
								"value" : [ 44.219999999999999 ]
							}
, 							{
								"key" : 984,
								"value" : [ 43.899999999999999 ]
							}
, 							{
								"key" : 985,
								"value" : [ 43.590000000000003 ]
							}
, 							{
								"key" : 986,
								"value" : [ 43.359999999999999 ]
							}
, 							{
								"key" : 987,
								"value" : [ 43.210000000000001 ]
							}
, 							{
								"key" : 988,
								"value" : [ 43.119999999999997 ]
							}
, 							{
								"key" : 989,
								"value" : [ 43.030000000000001 ]
							}
, 							{
								"key" : 990,
								"value" : [ 44.079999999999998 ]
							}
, 							{
								"key" : 991,
								"value" : [ 46.670000000000002 ]
							}
, 							{
								"key" : 992,
								"value" : [ 48.670000000000002 ]
							}
, 							{
								"key" : 993,
								"value" : [ 49.960000000000001 ]
							}
, 							{
								"key" : 994,
								"value" : [ 50.829999999999998 ]
							}
, 							{
								"key" : 995,
								"value" : [ 51.439999999999998 ]
							}
, 							{
								"key" : 996,
								"value" : [ 51.840000000000003 ]
							}
, 							{
								"key" : 997,
								"value" : [ 52.07 ]
							}
, 							{
								"key" : 998,
								"value" : [ 52.229999999999997 ]
							}
, 							{
								"key" : 999,
								"value" : [ 52.289999999999999 ]
							}
, 							{
								"key" : 1000,
								"value" : [ 52.18 ]
							}
, 							{
								"key" : 1001,
								"value" : [ 51.890000000000001 ]
							}
, 							{
								"key" : 1002,
								"value" : [ 51.170000000000002 ]
							}
, 							{
								"key" : 1003,
								"value" : [ 48.920000000000002 ]
							}
, 							{
								"key" : 1004,
								"value" : [ 47.009999999999998 ]
							}
, 							{
								"key" : 1005,
								"value" : [ 46.829999999999998 ]
							}
, 							{
								"key" : 1006,
								"value" : [ 47.140000000000001 ]
							}
, 							{
								"key" : 1007,
								"value" : [ 47.57 ]
							}
, 							{
								"key" : 1008,
								"value" : [ 48.020000000000003 ]
							}
, 							{
								"key" : 1009,
								"value" : [ 48.509999999999998 ]
							}
, 							{
								"key" : 1010,
								"value" : [ 48.420000000000002 ]
							}
, 							{
								"key" : 1011,
								"value" : [ 47.710000000000001 ]
							}
, 							{
								"key" : 1012,
								"value" : [ 46.619999999999997 ]
							}
, 							{
								"key" : 1013,
								"value" : [ 45.719999999999999 ]
							}
, 							{
								"key" : 1014,
								"value" : [ 45.82 ]
							}
, 							{
								"key" : 1015,
								"value" : [ 47.93 ]
							}
, 							{
								"key" : 1016,
								"value" : [ 49.82 ]
							}
, 							{
								"key" : 1017,
								"value" : [ 54.100000000000001 ]
							}
, 							{
								"key" : 1018,
								"value" : [ 57.0 ]
							}
, 							{
								"key" : 1019,
								"value" : [ 59.039999999999999 ]
							}
, 							{
								"key" : 1020,
								"value" : [ 60.259999999999998 ]
							}
, 							{
								"key" : 1021,
								"value" : [ 60.93 ]
							}
, 							{
								"key" : 1022,
								"value" : [ 61.18 ]
							}
, 							{
								"key" : 1023,
								"value" : [ 61.030000000000001 ]
							}
, 							{
								"key" : 1024,
								"value" : [ 60.420000000000002 ]
							}
, 							{
								"key" : 1025,
								"value" : [ 59.670000000000002 ]
							}
, 							{
								"key" : 1026,
								"value" : [ 58.369999999999997 ]
							}
, 							{
								"key" : 1027,
								"value" : [ 55.329999999999998 ]
							}
, 							{
								"key" : 1028,
								"value" : [ 53.039999999999999 ]
							}
, 							{
								"key" : 1029,
								"value" : [ 52.390000000000001 ]
							}
, 							{
								"key" : 1030,
								"value" : [ 52.119999999999997 ]
							}
, 							{
								"key" : 1031,
								"value" : [ 51.799999999999997 ]
							}
, 							{
								"key" : 1032,
								"value" : [ 51.240000000000002 ]
							}
, 							{
								"key" : 1033,
								"value" : [ 50.630000000000003 ]
							}
, 							{
								"key" : 1034,
								"value" : [ 50.0 ]
							}
, 							{
								"key" : 1035,
								"value" : [ 49.439999999999998 ]
							}
, 							{
								"key" : 1036,
								"value" : [ 49.189999999999998 ]
							}
, 							{
								"key" : 1037,
								"value" : [ 48.939999999999998 ]
							}
, 							{
								"key" : 1038,
								"value" : [ 49.890000000000001 ]
							}
, 							{
								"key" : 1039,
								"value" : [ 52.049999999999997 ]
							}
, 							{
								"key" : 1040,
								"value" : [ 53.619999999999997 ]
							}
, 							{
								"key" : 1041,
								"value" : [ 57.0 ]
							}
, 							{
								"key" : 1042,
								"value" : [ 60.460000000000001 ]
							}
, 							{
								"key" : 1043,
								"value" : [ 61.789999999999999 ]
							}
, 							{
								"key" : 1044,
								"value" : [ 62.170000000000002 ]
							}
, 							{
								"key" : 1045,
								"value" : [ 62.219999999999999 ]
							}
, 							{
								"key" : 1046,
								"value" : [ 62.329999999999998 ]
							}
, 							{
								"key" : 1047,
								"value" : [ 62.710000000000001 ]
							}
, 							{
								"key" : 1048,
								"value" : [ 62.460000000000001 ]
							}
, 							{
								"key" : 1049,
								"value" : [ 61.32 ]
							}
, 							{
								"key" : 1050,
								"value" : [ 59.310000000000002 ]
							}
, 							{
								"key" : 1051,
								"value" : [ 56.5 ]
							}
, 							{
								"key" : 1052,
								"value" : [ 54.859999999999999 ]
							}
, 							{
								"key" : 1053,
								"value" : [ 54.57 ]
							}
, 							{
								"key" : 1054,
								"value" : [ 54.549999999999997 ]
							}
, 							{
								"key" : 1055,
								"value" : [ 54.57 ]
							}
, 							{
								"key" : 1056,
								"value" : [ 54.270000000000003 ]
							}
, 							{
								"key" : 1057,
								"value" : [ 53.420000000000002 ]
							}
, 							{
								"key" : 1058,
								"value" : [ 52.43 ]
							}
, 							{
								"key" : 1059,
								"value" : [ 51.369999999999997 ]
							}
, 							{
								"key" : 1060,
								"value" : [ 50.829999999999998 ]
							}
, 							{
								"key" : 1061,
								"value" : [ 50.590000000000003 ]
							}
, 							{
								"key" : 1062,
								"value" : [ 51.350000000000001 ]
							}
, 							{
								"key" : 1063,
								"value" : [ 52.030000000000001 ]
							}
, 							{
								"key" : 1064,
								"value" : [ 52.969999999999999 ]
							}
, 							{
								"key" : 1065,
								"value" : [ 54.93 ]
							}
, 							{
								"key" : 1066,
								"value" : [ 57.630000000000003 ]
							}
, 							{
								"key" : 1067,
								"value" : [ 58.369999999999997 ]
							}
, 							{
								"key" : 1068,
								"value" : [ 57.990000000000002 ]
							}
, 							{
								"key" : 1069,
								"value" : [ 57.130000000000003 ]
							}
, 							{
								"key" : 1070,
								"value" : [ 56.009999999999998 ]
							}
, 							{
								"key" : 1071,
								"value" : [ 55.359999999999999 ]
							}
, 							{
								"key" : 1072,
								"value" : [ 55.170000000000002 ]
							}
, 							{
								"key" : 1073,
								"value" : [ 54.969999999999999 ]
							}
, 							{
								"key" : 1074,
								"value" : [ 54.880000000000003 ]
							}
, 							{
								"key" : 1075,
								"value" : [ 54.840000000000003 ]
							}
, 							{
								"key" : 1076,
								"value" : [ 54.859999999999999 ]
							}
, 							{
								"key" : 1077,
								"value" : [ 54.909999999999997 ]
							}
, 							{
								"key" : 1078,
								"value" : [ 54.659999999999997 ]
							}
, 							{
								"key" : 1079,
								"value" : [ 54.100000000000001 ]
							}
, 							{
								"key" : 1080,
								"value" : [ 53.369999999999997 ]
							}
, 							{
								"key" : 1081,
								"value" : [ 52.450000000000003 ]
							}
, 							{
								"key" : 1082,
								"value" : [ 51.659999999999997 ]
							}
, 							{
								"key" : 1083,
								"value" : [ 51.310000000000002 ]
							}
, 							{
								"key" : 1084,
								"value" : [ 51.329999999999998 ]
							}
, 							{
								"key" : 1085,
								"value" : [ 51.579999999999998 ]
							}
, 							{
								"key" : 1086,
								"value" : [ 52.829999999999998 ]
							}
, 							{
								"key" : 1087,
								"value" : [ 54.299999999999997 ]
							}
, 							{
								"key" : 1088,
								"value" : [ 56.259999999999998 ]
							}
, 							{
								"key" : 1089,
								"value" : [ 58.979999999999997 ]
							}
, 							{
								"key" : 1090,
								"value" : [ 60.82 ]
							}
, 							{
								"key" : 1091,
								"value" : [ 62.420000000000002 ]
							}
, 							{
								"key" : 1092,
								"value" : [ 62.689999999999998 ]
							}
, 							{
								"key" : 1093,
								"value" : [ 62.689999999999998 ]
							}
, 							{
								"key" : 1094,
								"value" : [ 62.829999999999998 ]
							}
, 							{
								"key" : 1095,
								"value" : [ 61.719999999999999 ]
							}
, 							{
								"key" : 1096,
								"value" : [ 60.509999999999998 ]
							}
, 							{
								"key" : 1097,
								"value" : [ 58.119999999999997 ]
							}
, 							{
								"key" : 1098,
								"value" : [ 55.829999999999998 ]
							}
, 							{
								"key" : 1099,
								"value" : [ 54.229999999999997 ]
							}
, 							{
								"key" : 1100,
								"value" : [ 53.369999999999997 ]
							}
, 							{
								"key" : 1101,
								"value" : [ 53.020000000000003 ]
							}
, 							{
								"key" : 1102,
								"value" : [ 52.840000000000003 ]
							}
, 							{
								"key" : 1103,
								"value" : [ 52.880000000000003 ]
							}
, 							{
								"key" : 1104,
								"value" : [ 53.189999999999998 ]
							}
, 							{
								"key" : 1105,
								"value" : [ 53.670000000000002 ]
							}
, 							{
								"key" : 1106,
								"value" : [ 54.119999999999997 ]
							}
, 							{
								"key" : 1107,
								"value" : [ 54.539999999999999 ]
							}
, 							{
								"key" : 1108,
								"value" : [ 54.950000000000003 ]
							}
, 							{
								"key" : 1109,
								"value" : [ 54.609999999999999 ]
							}
, 							{
								"key" : 1110,
								"value" : [ 54.460000000000001 ]
							}
, 							{
								"key" : 1111,
								"value" : [ 55.380000000000003 ]
							}
, 							{
								"key" : 1112,
								"value" : [ 56.280000000000001 ]
							}
, 							{
								"key" : 1113,
								"value" : [ 57.43 ]
							}
, 							{
								"key" : 1114,
								"value" : [ 59.07 ]
							}
, 							{
								"key" : 1115,
								"value" : [ 60.439999999999998 ]
							}
, 							{
								"key" : 1116,
								"value" : [ 61.049999999999997 ]
							}
, 							{
								"key" : 1117,
								"value" : [ 61.109999999999999 ]
							}
, 							{
								"key" : 1118,
								"value" : [ 61.049999999999997 ]
							}
, 							{
								"key" : 1119,
								"value" : [ 61.18 ]
							}
, 							{
								"key" : 1120,
								"value" : [ 61.270000000000003 ]
							}
, 							{
								"key" : 1121,
								"value" : [ 61.380000000000003 ]
							}
, 							{
								"key" : 1122,
								"value" : [ 60.82 ]
							}
, 							{
								"key" : 1123,
								"value" : [ 58.840000000000003 ]
							}
, 							{
								"key" : 1124,
								"value" : [ 56.82 ]
							}
, 							{
								"key" : 1125,
								"value" : [ 56.079999999999998 ]
							}
, 							{
								"key" : 1126,
								"value" : [ 55.630000000000003 ]
							}
, 							{
								"key" : 1127,
								"value" : [ 55.509999999999998 ]
							}
, 							{
								"key" : 1128,
								"value" : [ 55.240000000000002 ]
							}
, 							{
								"key" : 1129,
								"value" : [ 55.109999999999999 ]
							}
, 							{
								"key" : 1130,
								"value" : [ 54.880000000000003 ]
							}
, 							{
								"key" : 1131,
								"value" : [ 54.520000000000003 ]
							}
, 							{
								"key" : 1132,
								"value" : [ 54.009999999999998 ]
							}
, 							{
								"key" : 1133,
								"value" : [ 53.399999999999999 ]
							}
, 							{
								"key" : 1134,
								"value" : [ 54.43 ]
							}
, 							{
								"key" : 1135,
								"value" : [ 55.380000000000003 ]
							}
, 							{
								"key" : 1136,
								"value" : [ 56.710000000000001 ]
							}
, 							{
								"key" : 1137,
								"value" : [ 59.020000000000003 ]
							}
, 							{
								"key" : 1138,
								"value" : [ 61.520000000000003 ]
							}
, 							{
								"key" : 1139,
								"value" : [ 63.590000000000003 ]
							}
, 							{
								"key" : 1140,
								"value" : [ 64.760000000000005 ]
							}
, 							{
								"key" : 1141,
								"value" : [ 65.069999999999993 ]
							}
, 							{
								"key" : 1142,
								"value" : [ 64.900000000000006 ]
							}
, 							{
								"key" : 1143,
								"value" : [ 64.239999999999995 ]
							}
, 							{
								"key" : 1144,
								"value" : [ 63.729999999999997 ]
							}
, 							{
								"key" : 1145,
								"value" : [ 63.340000000000003 ]
							}
, 							{
								"key" : 1146,
								"value" : [ 62.369999999999997 ]
							}
, 							{
								"key" : 1147,
								"value" : [ 61.450000000000003 ]
							}
, 							{
								"key" : 1148,
								"value" : [ 60.960000000000001 ]
							}
, 							{
								"key" : 1149,
								"value" : [ 60.689999999999998 ]
							}
, 							{
								"key" : 1150,
								"value" : [ 60.310000000000002 ]
							}
, 							{
								"key" : 1151,
								"value" : [ 60.119999999999997 ]
							}
, 							{
								"key" : 1152,
								"value" : [ 60.009999999999998 ]
							}
, 							{
								"key" : 1153,
								"value" : [ 59.880000000000003 ]
							}
, 							{
								"key" : 1154,
								"value" : [ 59.859999999999999 ]
							}
, 							{
								"key" : 1155,
								"value" : [ 59.899999999999999 ]
							}
, 							{
								"key" : 1156,
								"value" : [ 59.159999999999997 ]
							}
, 							{
								"key" : 1157,
								"value" : [ 58.659999999999997 ]
							}
, 							{
								"key" : 1158,
								"value" : [ 58.689999999999998 ]
							}
, 							{
								"key" : 1159,
								"value" : [ 59.229999999999997 ]
							}
, 							{
								"key" : 1160,
								"value" : [ 60.170000000000002 ]
							}
, 							{
								"key" : 1161,
								"value" : [ 61.520000000000003 ]
							}
, 							{
								"key" : 1162,
								"value" : [ 63.450000000000003 ]
							}
, 							{
								"key" : 1163,
								"value" : [ 65.069999999999993 ]
							}
, 							{
								"key" : 1164,
								"value" : [ 65.969999999999999 ]
							}
, 							{
								"key" : 1165,
								"value" : [ 66.579999999999998 ]
							}
, 							{
								"key" : 1166,
								"value" : [ 66.900000000000006 ]
							}
, 							{
								"key" : 1167,
								"value" : [ 66.969999999999999 ]
							}
, 							{
								"key" : 1168,
								"value" : [ 66.810000000000002 ]
							}
, 							{
								"key" : 1169,
								"value" : [ 66.450000000000003 ]
							}
, 							{
								"key" : 1170,
								"value" : [ 65.640000000000001 ]
							}
, 							{
								"key" : 1171,
								"value" : [ 64.290000000000006 ]
							}
, 							{
								"key" : 1172,
								"value" : [ 62.689999999999998 ]
							}
, 							{
								"key" : 1173,
								"value" : [ 62.020000000000003 ]
							}
, 							{
								"key" : 1174,
								"value" : [ 61.479999999999997 ]
							}
, 							{
								"key" : 1175,
								"value" : [ 61.07 ]
							}
, 							{
								"key" : 1176,
								"value" : [ 60.689999999999998 ]
							}
, 							{
								"key" : 1177,
								"value" : [ 60.460000000000001 ]
							}
, 							{
								"key" : 1178,
								"value" : [ 60.259999999999998 ]
							}
, 							{
								"key" : 1179,
								"value" : [ 59.950000000000003 ]
							}
, 							{
								"key" : 1180,
								"value" : [ 59.719999999999999 ]
							}
, 							{
								"key" : 1181,
								"value" : [ 59.649999999999999 ]
							}
, 							{
								"key" : 1182,
								"value" : [ 59.969999999999999 ]
							}
, 							{
								"key" : 1183,
								"value" : [ 60.710000000000001 ]
							}
, 							{
								"key" : 1184,
								"value" : [ 62.280000000000001 ]
							}
, 							{
								"key" : 1185,
								"value" : [ 63.659999999999997 ]
							}
, 							{
								"key" : 1186,
								"value" : [ 64.400000000000006 ]
							}
, 							{
								"key" : 1187,
								"value" : [ 65.409999999999997 ]
							}
, 							{
								"key" : 1188,
								"value" : [ 67.319999999999993 ]
							}
, 							{
								"key" : 1189,
								"value" : [ 69.129999999999995 ]
							}
, 							{
								"key" : 1190,
								"value" : [ 70.030000000000001 ]
							}
, 							{
								"key" : 1191,
								"value" : [ 70.159999999999997 ]
							}
, 							{
								"key" : 1192,
								"value" : [ 70.019999999999996 ]
							}
, 							{
								"key" : 1193,
								"value" : [ 69.780000000000001 ]
							}
, 							{
								"key" : 1194,
								"value" : [ 69.219999999999999 ]
							}
, 							{
								"key" : 1195,
								"value" : [ 67.680000000000007 ]
							}
, 							{
								"key" : 1196,
								"value" : [ 66.310000000000002 ]
							}
, 							{
								"key" : 1197,
								"value" : [ 65.519999999999996 ]
							}
, 							{
								"key" : 1198,
								"value" : [ 64.560000000000002 ]
							}
, 							{
								"key" : 1199,
								"value" : [ 63.840000000000003 ]
							}
, 							{
								"key" : 1200,
								"value" : [ 63.640000000000001 ]
							}
, 							{
								"key" : 1201,
								"value" : [ 63.520000000000003 ]
							}
, 							{
								"key" : 1202,
								"value" : [ 63.189999999999998 ]
							}
, 							{
								"key" : 1203,
								"value" : [ 62.640000000000001 ]
							}
, 							{
								"key" : 1204,
								"value" : [ 61.969999999999999 ]
							}
, 							{
								"key" : 1205,
								"value" : [ 61.140000000000001 ]
							}
, 							{
								"key" : 1206,
								"value" : [ 61.810000000000002 ]
							}
, 							{
								"key" : 1207,
								"value" : [ 62.869999999999997 ]
							}
, 							{
								"key" : 1208,
								"value" : [ 64.870000000000005 ]
							}
, 							{
								"key" : 1209,
								"value" : [ 67.370000000000005 ]
							}
, 							{
								"key" : 1210,
								"value" : [ 68.700000000000003 ]
							}
, 							{
								"key" : 1211,
								"value" : [ 69.239999999999995 ]
							}
, 							{
								"key" : 1212,
								"value" : [ 70.019999999999996 ]
							}
, 							{
								"key" : 1213,
								"value" : [ 70.659999999999997 ]
							}
, 							{
								"key" : 1214,
								"value" : [ 71.010000000000005 ]
							}
, 							{
								"key" : 1215,
								"value" : [ 70.700000000000003 ]
							}
, 							{
								"key" : 1216,
								"value" : [ 69.840000000000003 ]
							}
, 							{
								"key" : 1217,
								"value" : [ 69.930000000000007 ]
							}
, 							{
								"key" : 1218,
								"value" : [ 69.599999999999994 ]
							}
, 							{
								"key" : 1219,
								"value" : [ 68.269999999999996 ]
							}
, 							{
								"key" : 1220,
								"value" : [ 66.519999999999996 ]
							}
, 							{
								"key" : 1221,
								"value" : [ 66.0 ]
							}
, 							{
								"key" : 1222,
								"value" : [ 65.319999999999993 ]
							}
, 							{
								"key" : 1223,
								"value" : [ 64.359999999999999 ]
							}
, 							{
								"key" : 1224,
								"value" : [ 63.82 ]
							}
, 							{
								"key" : 1225,
								"value" : [ 63.32 ]
							}
, 							{
								"key" : 1226,
								"value" : [ 62.960000000000001 ]
							}
, 							{
								"key" : 1227,
								"value" : [ 62.850000000000001 ]
							}
, 							{
								"key" : 1228,
								"value" : [ 62.740000000000002 ]
							}
, 							{
								"key" : 1229,
								"value" : [ 62.469999999999999 ]
							}
, 							{
								"key" : 1230,
								"value" : [ 62.780000000000001 ]
							}
, 							{
								"key" : 1231,
								"value" : [ 63.630000000000003 ]
							}
, 							{
								"key" : 1232,
								"value" : [ 64.739999999999995 ]
							}
, 							{
								"key" : 1233,
								"value" : [ 66.359999999999999 ]
							}
, 							{
								"key" : 1234,
								"value" : [ 68.760000000000005 ]
							}
, 							{
								"key" : 1235,
								"value" : [ 71.579999999999998 ]
							}
, 							{
								"key" : 1236,
								"value" : [ 73.810000000000002 ]
							}
, 							{
								"key" : 1237,
								"value" : [ 75.159999999999997 ]
							}
, 							{
								"key" : 1238,
								"value" : [ 75.510000000000005 ]
							}
, 							{
								"key" : 1239,
								"value" : [ 75.340000000000003 ]
							}
, 							{
								"key" : 1240,
								"value" : [ 74.859999999999999 ]
							}
, 							{
								"key" : 1241,
								"value" : [ 74.140000000000001 ]
							}
, 							{
								"key" : 1242,
								"value" : [ 73.0 ]
							}
, 							{
								"key" : 1243,
								"value" : [ 70.5 ]
							}
, 							{
								"key" : 1244,
								"value" : [ 67.840000000000003 ]
							}
, 							{
								"key" : 1245,
								"value" : [ 66.540000000000006 ]
							}
, 							{
								"key" : 1246,
								"value" : [ 65.700000000000003 ]
							}
, 							{
								"key" : 1247,
								"value" : [ 64.829999999999998 ]
							}
, 							{
								"key" : 1248,
								"value" : [ 64.090000000000003 ]
							}
, 							{
								"key" : 1249,
								"value" : [ 63.539999999999999 ]
							}
, 							{
								"key" : 1250,
								"value" : [ 63.25 ]
							}
, 							{
								"key" : 1251,
								"value" : [ 63.07 ]
							}
, 							{
								"key" : 1252,
								"value" : [ 62.850000000000001 ]
							}
, 							{
								"key" : 1253,
								"value" : [ 62.689999999999998 ]
							}
, 							{
								"key" : 1254,
								"value" : [ 63.75 ]
							}
, 							{
								"key" : 1255,
								"value" : [ 64.799999999999997 ]
							}
, 							{
								"key" : 1256,
								"value" : [ 65.890000000000001 ]
							}
, 							{
								"key" : 1257,
								"value" : [ 66.870000000000005 ]
							}
, 							{
								"key" : 1258,
								"value" : [ 68.340000000000003 ]
							}
, 							{
								"key" : 1259,
								"value" : [ 70.269999999999996 ]
							}
, 							{
								"key" : 1260,
								"value" : [ 71.709999999999994 ]
							}
, 							{
								"key" : 1261,
								"value" : [ 72.590000000000003 ]
							}
, 							{
								"key" : 1262,
								"value" : [ 72.840000000000003 ]
							}
, 							{
								"key" : 1263,
								"value" : [ 72.590000000000003 ]
							}
, 							{
								"key" : 1264,
								"value" : [ 71.730000000000004 ]
							}
, 							{
								"key" : 1265,
								"value" : [ 70.090000000000003 ]
							}
, 							{
								"key" : 1266,
								"value" : [ 66.219999999999999 ]
							}
, 							{
								"key" : 1267,
								"value" : [ 59.939999999999998 ]
							}
, 							{
								"key" : 1268,
								"value" : [ 55.490000000000002 ]
							}
, 							{
								"key" : 1269,
								"value" : [ 53.399999999999999 ]
							}
, 							{
								"key" : 1270,
								"value" : [ 53.130000000000003 ]
							}
, 							{
								"key" : 1271,
								"value" : [ 53.170000000000002 ]
							}
, 							{
								"key" : 1272,
								"value" : [ 53.369999999999997 ]
							}
, 							{
								"key" : 1273,
								"value" : [ 53.670000000000002 ]
							}
, 							{
								"key" : 1274,
								"value" : [ 54.07 ]
							}
, 							{
								"key" : 1275,
								"value" : [ 54.590000000000003 ]
							}
, 							{
								"key" : 1276,
								"value" : [ 54.969999999999999 ]
							}
, 							{
								"key" : 1277,
								"value" : [ 55.289999999999999 ]
							}
, 							{
								"key" : 1278,
								"value" : [ 56.210000000000001 ]
							}
, 							{
								"key" : 1279,
								"value" : [ 57.689999999999998 ]
							}
, 							{
								"key" : 1280,
								"value" : [ 59.969999999999999 ]
							}
, 							{
								"key" : 1281,
								"value" : [ 64.060000000000002 ]
							}
, 							{
								"key" : 1282,
								"value" : [ 70.120000000000005 ]
							}
, 							{
								"key" : 1283,
								"value" : [ 74.25 ]
							}
, 							{
								"key" : 1284,
								"value" : [ 76.5 ]
							}
, 							{
								"key" : 1285,
								"value" : [ 78.239999999999995 ]
							}
, 							{
								"key" : 1286,
								"value" : [ 79.269999999999996 ]
							}
, 							{
								"key" : 1287,
								"value" : [ 79.209999999999994 ]
							}
, 							{
								"key" : 1288,
								"value" : [ 78.390000000000001 ]
							}
, 							{
								"key" : 1289,
								"value" : [ 77.049999999999997 ]
							}
, 							{
								"key" : 1290,
								"value" : [ 75.090000000000003 ]
							}
, 							{
								"key" : 1291,
								"value" : [ 72.480000000000004 ]
							}
, 							{
								"key" : 1292,
								"value" : [ 70.200000000000003 ]
							}
, 							{
								"key" : 1293,
								"value" : [ 69.079999999999998 ]
							}
, 							{
								"key" : 1294,
								"value" : [ 68.140000000000001 ]
							}
, 							{
								"key" : 1295,
								"value" : [ 66.790000000000006 ]
							}
, 							{
								"key" : 1296,
								"value" : [ 65.730000000000004 ]
							}
, 							{
								"key" : 1297,
								"value" : [ 65.189999999999998 ]
							}
, 							{
								"key" : 1298,
								"value" : [ 65.230000000000004 ]
							}
, 							{
								"key" : 1299,
								"value" : [ 65.170000000000002 ]
							}
, 							{
								"key" : 1300,
								"value" : [ 64.959999999999994 ]
							}
, 							{
								"key" : 1301,
								"value" : [ 64.689999999999998 ]
							}
, 							{
								"key" : 1302,
								"value" : [ 64.989999999999995 ]
							}
, 							{
								"key" : 1303,
								"value" : [ 66.129999999999995 ]
							}
, 							{
								"key" : 1304,
								"value" : [ 67.730000000000004 ]
							}
, 							{
								"key" : 1305,
								"value" : [ 69.689999999999998 ]
							}
, 							{
								"key" : 1306,
								"value" : [ 71.239999999999995 ]
							}
, 							{
								"key" : 1307,
								"value" : [ 72.269999999999996 ]
							}
, 							{
								"key" : 1308,
								"value" : [ 72.459999999999994 ]
							}
, 							{
								"key" : 1309,
								"value" : [ 71.909999999999997 ]
							}
, 							{
								"key" : 1310,
								"value" : [ 71.799999999999997 ]
							}
, 							{
								"key" : 1311,
								"value" : [ 72.099999999999994 ]
							}
, 							{
								"key" : 1312,
								"value" : [ 71.599999999999994 ]
							}
, 							{
								"key" : 1313,
								"value" : [ 70.680000000000007 ]
							}
, 							{
								"key" : 1314,
								"value" : [ 69.569999999999993 ]
							}
, 							{
								"key" : 1315,
								"value" : [ 68.140000000000001 ]
							}
, 							{
								"key" : 1316,
								"value" : [ 66.989999999999995 ]
							}
, 							{
								"key" : 1317,
								"value" : [ 66.359999999999999 ]
							}
, 							{
								"key" : 1318,
								"value" : [ 65.769999999999996 ]
							}
, 							{
								"key" : 1319,
								"value" : [ 65.260000000000005 ]
							}
, 							{
								"key" : 1320,
								"value" : [ 64.799999999999997 ]
							}
, 							{
								"key" : 1321,
								"value" : [ 64.650000000000006 ]
							}
, 							{
								"key" : 1322,
								"value" : [ 64.489999999999995 ]
							}
, 							{
								"key" : 1323,
								"value" : [ 64.219999999999999 ]
							}
, 							{
								"key" : 1324,
								"value" : [ 63.719999999999999 ]
							}
, 							{
								"key" : 1325,
								"value" : [ 63.210000000000001 ]
							}
, 							{
								"key" : 1326,
								"value" : [ 63.159999999999997 ]
							}
, 							{
								"key" : 1327,
								"value" : [ 63.390000000000001 ]
							}
, 							{
								"key" : 1328,
								"value" : [ 64.359999999999999 ]
							}
, 							{
								"key" : 1329,
								"value" : [ 66.469999999999999 ]
							}
, 							{
								"key" : 1330,
								"value" : [ 68.579999999999998 ]
							}
, 							{
								"key" : 1331,
								"value" : [ 69.890000000000001 ]
							}
, 							{
								"key" : 1332,
								"value" : [ 70.659999999999997 ]
							}
, 							{
								"key" : 1333,
								"value" : [ 71.200000000000003 ]
							}
, 							{
								"key" : 1334,
								"value" : [ 71.489999999999995 ]
							}
, 							{
								"key" : 1335,
								"value" : [ 71.370000000000005 ]
							}
, 							{
								"key" : 1336,
								"value" : [ 70.950000000000003 ]
							}
, 							{
								"key" : 1337,
								"value" : [ 70.069999999999993 ]
							}
, 							{
								"key" : 1338,
								"value" : [ 68.359999999999999 ]
							}
, 							{
								"key" : 1339,
								"value" : [ 65.120000000000005 ]
							}
, 							{
								"key" : 1340,
								"value" : [ 61.5 ]
							}
, 							{
								"key" : 1341,
								"value" : [ 58.82 ]
							}
, 							{
								"key" : 1342,
								"value" : [ 57.359999999999999 ]
							}
, 							{
								"key" : 1343,
								"value" : [ 56.640000000000001 ]
							}
, 							{
								"key" : 1344,
								"value" : [ 56.07 ]
							}
, 							{
								"key" : 1345,
								"value" : [ 55.759999999999998 ]
							}
, 							{
								"key" : 1346,
								"value" : [ 55.020000000000003 ]
							}
, 							{
								"key" : 1347,
								"value" : [ 53.579999999999998 ]
							}
, 							{
								"key" : 1348,
								"value" : [ 52.920000000000002 ]
							}
, 							{
								"key" : 1349,
								"value" : [ 52.789999999999999 ]
							}
, 							{
								"key" : 1350,
								"value" : [ 52.840000000000003 ]
							}
, 							{
								"key" : 1351,
								"value" : [ 53.109999999999999 ]
							}
, 							{
								"key" : 1352,
								"value" : [ 53.420000000000002 ]
							}
, 							{
								"key" : 1353,
								"value" : [ 53.829999999999998 ]
							}
, 							{
								"key" : 1354,
								"value" : [ 54.119999999999997 ]
							}
, 							{
								"key" : 1355,
								"value" : [ 54.340000000000003 ]
							}
, 							{
								"key" : 1356,
								"value" : [ 54.640000000000001 ]
							}
, 							{
								"key" : 1357,
								"value" : [ 55.240000000000002 ]
							}
, 							{
								"key" : 1358,
								"value" : [ 55.719999999999999 ]
							}
, 							{
								"key" : 1359,
								"value" : [ 56.119999999999997 ]
							}
, 							{
								"key" : 1360,
								"value" : [ 55.710000000000001 ]
							}
, 							{
								"key" : 1361,
								"value" : [ 54.719999999999999 ]
							}
, 							{
								"key" : 1362,
								"value" : [ 54.18 ]
							}
, 							{
								"key" : 1363,
								"value" : [ 54.460000000000001 ]
							}
, 							{
								"key" : 1364,
								"value" : [ 54.719999999999999 ]
							}
, 							{
								"key" : 1365,
								"value" : [ 54.810000000000002 ]
							}
, 							{
								"key" : 1366,
								"value" : [ 54.840000000000003 ]
							}
, 							{
								"key" : 1367,
								"value" : [ 54.899999999999999 ]
							}
, 							{
								"key" : 1368,
								"value" : [ 54.369999999999997 ]
							}
, 							{
								"key" : 1369,
								"value" : [ 52.969999999999999 ]
							}
, 							{
								"key" : 1370,
								"value" : [ 51.009999999999998 ]
							}
, 							{
								"key" : 1371,
								"value" : [ 48.920000000000002 ]
							}
, 							{
								"key" : 1372,
								"value" : [ 47.280000000000001 ]
							}
, 							{
								"key" : 1373,
								"value" : [ 47.100000000000001 ]
							}
, 							{
								"key" : 1374,
								"value" : [ 47.43 ]
							}
, 							{
								"key" : 1375,
								"value" : [ 47.770000000000003 ]
							}
, 							{
								"key" : 1376,
								"value" : [ 48.020000000000003 ]
							}
, 							{
								"key" : 1377,
								"value" : [ 48.240000000000002 ]
							}
, 							{
								"key" : 1378,
								"value" : [ 48.539999999999999 ]
							}
, 							{
								"key" : 1379,
								"value" : [ 49.32 ]
							}
, 							{
								"key" : 1380,
								"value" : [ 50.310000000000002 ]
							}
, 							{
								"key" : 1381,
								"value" : [ 51.009999999999998 ]
							}
, 							{
								"key" : 1382,
								"value" : [ 51.390000000000001 ]
							}
, 							{
								"key" : 1383,
								"value" : [ 52.020000000000003 ]
							}
, 							{
								"key" : 1384,
								"value" : [ 52.609999999999999 ]
							}
, 							{
								"key" : 1385,
								"value" : [ 53.100000000000001 ]
							}
, 							{
								"key" : 1386,
								"value" : [ 53.149999999999999 ]
							}
, 							{
								"key" : 1387,
								"value" : [ 52.649999999999999 ]
							}
, 							{
								"key" : 1388,
								"value" : [ 51.780000000000001 ]
							}
, 							{
								"key" : 1389,
								"value" : [ 51.119999999999997 ]
							}
, 							{
								"key" : 1390,
								"value" : [ 50.380000000000003 ]
							}
, 							{
								"key" : 1391,
								"value" : [ 49.590000000000003 ]
							}
, 							{
								"key" : 1392,
								"value" : [ 48.759999999999998 ]
							}
, 							{
								"key" : 1393,
								"value" : [ 48.109999999999999 ]
							}
, 							{
								"key" : 1394,
								"value" : [ 47.75 ]
							}
, 							{
								"key" : 1395,
								"value" : [ 47.609999999999999 ]
							}
, 							{
								"key" : 1396,
								"value" : [ 47.549999999999997 ]
							}
, 							{
								"key" : 1397,
								"value" : [ 47.789999999999999 ]
							}
, 							{
								"key" : 1398,
								"value" : [ 49.68 ]
							}
, 							{
								"key" : 1399,
								"value" : [ 50.990000000000002 ]
							}
, 							{
								"key" : 1400,
								"value" : [ 51.729999999999997 ]
							}
, 							{
								"key" : 1401,
								"value" : [ 52.289999999999999 ]
							}
, 							{
								"key" : 1402,
								"value" : [ 52.719999999999999 ]
							}
, 							{
								"key" : 1403,
								"value" : [ 53.130000000000003 ]
							}
, 							{
								"key" : 1404,
								"value" : [ 53.560000000000002 ]
							}
, 							{
								"key" : 1405,
								"value" : [ 53.909999999999997 ]
							}
, 							{
								"key" : 1406,
								"value" : [ 54.229999999999997 ]
							}
, 							{
								"key" : 1407,
								"value" : [ 54.390000000000001 ]
							}
, 							{
								"key" : 1408,
								"value" : [ 54.369999999999997 ]
							}
, 							{
								"key" : 1409,
								"value" : [ 54.090000000000003 ]
							}
, 							{
								"key" : 1410,
								"value" : [ 53.369999999999997 ]
							}
, 							{
								"key" : 1411,
								"value" : [ 51.850000000000001 ]
							}
, 							{
								"key" : 1412,
								"value" : [ 49.640000000000001 ]
							}
, 							{
								"key" : 1413,
								"value" : [ 49.119999999999997 ]
							}
, 							{
								"key" : 1414,
								"value" : [ 48.810000000000002 ]
							}
, 							{
								"key" : 1415,
								"value" : [ 48.630000000000003 ]
							}
, 							{
								"key" : 1416,
								"value" : [ 48.520000000000003 ]
							}
, 							{
								"key" : 1417,
								"value" : [ 48.700000000000003 ]
							}
, 							{
								"key" : 1418,
								"value" : [ 48.579999999999998 ]
							}
, 							{
								"key" : 1419,
								"value" : [ 48.159999999999997 ]
							}
, 							{
								"key" : 1420,
								"value" : [ 48.07 ]
							}
, 							{
								"key" : 1421,
								"value" : [ 48.18 ]
							}
, 							{
								"key" : 1422,
								"value" : [ 49.149999999999999 ]
							}
, 							{
								"key" : 1423,
								"value" : [ 50.810000000000002 ]
							}
, 							{
								"key" : 1424,
								"value" : [ 53.82 ]
							}
, 							{
								"key" : 1425,
								"value" : [ 55.869999999999997 ]
							}
, 							{
								"key" : 1426,
								"value" : [ 57.270000000000003 ]
							}
, 							{
								"key" : 1427,
								"value" : [ 57.829999999999998 ]
							}
, 							{
								"key" : 1428,
								"value" : [ 58.119999999999997 ]
							}
, 							{
								"key" : 1429,
								"value" : [ 58.439999999999998 ]
							}
, 							{
								"key" : 1430,
								"value" : [ 58.369999999999997 ]
							}
, 							{
								"key" : 1431,
								"value" : [ 58.170000000000002 ]
							}
, 							{
								"key" : 1432,
								"value" : [ 58.060000000000002 ]
							}
, 							{
								"key" : 1433,
								"value" : [ 57.990000000000002 ]
							}
, 							{
								"key" : 1434,
								"value" : [ 57.159999999999997 ]
							}
, 							{
								"key" : 1435,
								"value" : [ 55.079999999999998 ]
							}
, 							{
								"key" : 1436,
								"value" : [ 53.560000000000002 ]
							}
, 							{
								"key" : 1437,
								"value" : [ 53.289999999999999 ]
							}
, 							{
								"key" : 1438,
								"value" : [ 53.170000000000002 ]
							}
, 							{
								"key" : 1439,
								"value" : [ 53.109999999999999 ]
							}
, 							{
								"key" : 1440,
								"value" : [ 53.020000000000003 ]
							}
, 							{
								"key" : 1441,
								"value" : [ 52.590000000000003 ]
							}
, 							{
								"key" : 1442,
								"value" : [ 52.75 ]
							}
, 							{
								"key" : 1443,
								"value" : [ 52.840000000000003 ]
							}
, 							{
								"key" : 1444,
								"value" : [ 52.75 ]
							}
, 							{
								"key" : 1445,
								"value" : [ 52.609999999999999 ]
							}
, 							{
								"key" : 1446,
								"value" : [ 53.850000000000001 ]
							}
, 							{
								"key" : 1447,
								"value" : [ 55.270000000000003 ]
							}
, 							{
								"key" : 1448,
								"value" : [ 57.130000000000003 ]
							}
, 							{
								"key" : 1449,
								"value" : [ 60.93 ]
							}
, 							{
								"key" : 1450,
								"value" : [ 62.350000000000001 ]
							}
, 							{
								"key" : 1451,
								"value" : [ 62.829999999999998 ]
							}
, 							{
								"key" : 1452,
								"value" : [ 62.890000000000001 ]
							}
, 							{
								"key" : 1453,
								"value" : [ 62.960000000000001 ]
							}
, 							{
								"key" : 1454,
								"value" : [ 63.119999999999997 ]
							}
, 							{
								"key" : 1455,
								"value" : [ 63.340000000000003 ]
							}
, 							{
								"key" : 1456,
								"value" : [ 63.049999999999997 ]
							}
, 							{
								"key" : 1457,
								"value" : [ 62.399999999999999 ]
							}
, 							{
								"key" : 1458,
								"value" : [ 61.32 ]
							}
, 							{
								"key" : 1459,
								"value" : [ 59.789999999999999 ]
							}
, 							{
								"key" : 1460,
								"value" : [ 58.280000000000001 ]
							}
, 							{
								"key" : 1461,
								"value" : [ 57.340000000000003 ]
							}
, 							{
								"key" : 1462,
								"value" : [ 56.439999999999998 ]
							}
, 							{
								"key" : 1463,
								"value" : [ 55.240000000000002 ]
							}
, 							{
								"key" : 1464,
								"value" : [ 54.390000000000001 ]
							}
, 							{
								"key" : 1465,
								"value" : [ 53.640000000000001 ]
							}
, 							{
								"key" : 1466,
								"value" : [ 52.969999999999999 ]
							}
, 							{
								"key" : 1467,
								"value" : [ 52.359999999999999 ]
							}
, 							{
								"key" : 1468,
								"value" : [ 51.939999999999998 ]
							}
, 							{
								"key" : 1469,
								"value" : [ 51.619999999999997 ]
							}
, 							{
								"key" : 1470,
								"value" : [ 53.259999999999998 ]
							}
, 							{
								"key" : 1471,
								"value" : [ 54.770000000000003 ]
							}
, 							{
								"key" : 1472,
								"value" : [ 57.340000000000003 ]
							}
, 							{
								"key" : 1473,
								"value" : [ 61.590000000000003 ]
							}
, 							{
								"key" : 1474,
								"value" : [ 63.07 ]
							}
, 							{
								"key" : 1475,
								"value" : [ 63.719999999999999 ]
							}
, 							{
								"key" : 1476,
								"value" : [ 64.040000000000006 ]
							}
, 							{
								"key" : 1477,
								"value" : [ 64.109999999999999 ]
							}
, 							{
								"key" : 1478,
								"value" : [ 64.290000000000006 ]
							}
, 							{
								"key" : 1479,
								"value" : [ 64.530000000000001 ]
							}
, 							{
								"key" : 1480,
								"value" : [ 64.329999999999998 ]
							}
, 							{
								"key" : 1481,
								"value" : [ 63.460000000000001 ]
							}
, 							{
								"key" : 1482,
								"value" : [ 61.789999999999999 ]
							}
, 							{
								"key" : 1483,
								"value" : [ 58.909999999999997 ]
							}
, 							{
								"key" : 1484,
								"value" : [ 56.57 ]
							}
, 							{
								"key" : 1485,
								"value" : [ 55.810000000000002 ]
							}
, 							{
								"key" : 1486,
								"value" : [ 55.469999999999999 ]
							}
, 							{
								"key" : 1487,
								"value" : [ 55.469999999999999 ]
							}
, 							{
								"key" : 1488,
								"value" : [ 55.689999999999998 ]
							}
, 							{
								"key" : 1489,
								"value" : [ 55.890000000000001 ]
							}
, 							{
								"key" : 1490,
								"value" : [ 56.07 ]
							}
, 							{
								"key" : 1491,
								"value" : [ 56.119999999999997 ]
							}
, 							{
								"key" : 1492,
								"value" : [ 56.259999999999998 ]
							}
, 							{
								"key" : 1493,
								"value" : [ 56.229999999999997 ]
							}
, 							{
								"key" : 1494,
								"value" : [ 57.159999999999997 ]
							}
, 							{
								"key" : 1495,
								"value" : [ 58.840000000000003 ]
							}
, 							{
								"key" : 1496,
								"value" : [ 60.909999999999997 ]
							}
, 							{
								"key" : 1497,
								"value" : [ 63.950000000000003 ]
							}
, 							{
								"key" : 1498,
								"value" : [ 65.260000000000005 ]
							}
, 							{
								"key" : 1499,
								"value" : [ 65.390000000000001 ]
							}
, 							{
								"key" : 1500,
								"value" : [ 65.430000000000007 ]
							}
, 							{
								"key" : 1501,
								"value" : [ 64.989999999999995 ]
							}
, 							{
								"key" : 1502,
								"value" : [ 64.269999999999996 ]
							}
, 							{
								"key" : 1503,
								"value" : [ 63.479999999999997 ]
							}
, 							{
								"key" : 1504,
								"value" : [ 62.82 ]
							}
, 							{
								"key" : 1505,
								"value" : [ 62.130000000000003 ]
							}
, 							{
								"key" : 1506,
								"value" : [ 60.93 ]
							}
, 							{
								"key" : 1507,
								"value" : [ 59.409999999999997 ]
							}
, 							{
								"key" : 1508,
								"value" : [ 57.740000000000002 ]
							}
, 							{
								"key" : 1509,
								"value" : [ 57.649999999999999 ]
							}
, 							{
								"key" : 1510,
								"value" : [ 58.149999999999999 ]
							}
, 							{
								"key" : 1511,
								"value" : [ 58.479999999999997 ]
							}
, 							{
								"key" : 1512,
								"value" : [ 58.840000000000003 ]
							}
, 							{
								"key" : 1513,
								"value" : [ 58.479999999999997 ]
							}
, 							{
								"key" : 1514,
								"value" : [ 57.420000000000002 ]
							}
, 							{
								"key" : 1515,
								"value" : [ 56.659999999999997 ]
							}
, 							{
								"key" : 1516,
								"value" : [ 56.049999999999997 ]
							}
, 							{
								"key" : 1517,
								"value" : [ 55.539999999999999 ]
							}
, 							{
								"key" : 1518,
								"value" : [ 57.159999999999997 ]
							}
, 							{
								"key" : 1519,
								"value" : [ 59.200000000000003 ]
							}
, 							{
								"key" : 1520,
								"value" : [ 61.659999999999997 ]
							}
, 							{
								"key" : 1521,
								"value" : [ 65.980000000000004 ]
							}
, 							{
								"key" : 1522,
								"value" : [ 69.909999999999997 ]
							}
, 							{
								"key" : 1523,
								"value" : [ 72.25 ]
							}
, 							{
								"key" : 1524,
								"value" : [ 73.900000000000006 ]
							}
, 							{
								"key" : 1525,
								"value" : [ 74.969999999999999 ]
							}
, 							{
								"key" : 1526,
								"value" : [ 75.670000000000002 ]
							}
, 							{
								"key" : 1527,
								"value" : [ 76.140000000000001 ]
							}
, 							{
								"key" : 1528,
								"value" : [ 76.140000000000001 ]
							}
, 							{
								"key" : 1529,
								"value" : [ 75.379999999999995 ]
							}
, 							{
								"key" : 1530,
								"value" : [ 73.799999999999997 ]
							}
, 							{
								"key" : 1531,
								"value" : [ 71.260000000000005 ]
							}
, 							{
								"key" : 1532,
								"value" : [ 68.879999999999995 ]
							}
, 							{
								"key" : 1533,
								"value" : [ 67.640000000000001 ]
							}
, 							{
								"key" : 1534,
								"value" : [ 66.870000000000005 ]
							}
, 							{
								"key" : 1535,
								"value" : [ 66.159999999999997 ]
							}
, 							{
								"key" : 1536,
								"value" : [ 65.640000000000001 ]
							}
, 							{
								"key" : 1537,
								"value" : [ 64.870000000000005 ]
							}
, 							{
								"key" : 1538,
								"value" : [ 64.219999999999999 ]
							}
, 							{
								"key" : 1539,
								"value" : [ 63.5 ]
							}
, 							{
								"key" : 1540,
								"value" : [ 62.939999999999998 ]
							}
, 							{
								"key" : 1541,
								"value" : [ 62.579999999999998 ]
							}
, 							{
								"key" : 1542,
								"value" : [ 63.18 ]
							}
, 							{
								"key" : 1543,
								"value" : [ 64.739999999999995 ]
							}
, 							{
								"key" : 1544,
								"value" : [ 67.099999999999994 ]
							}
, 							{
								"key" : 1545,
								"value" : [ 68.719999999999999 ]
							}
, 							{
								"key" : 1546,
								"value" : [ 69.75 ]
							}
, 							{
								"key" : 1547,
								"value" : [ 71.489999999999995 ]
							}
, 							{
								"key" : 1548,
								"value" : [ 73.109999999999999 ]
							}
, 							{
								"key" : 1549,
								"value" : [ 74.569999999999993 ]
							}
, 							{
								"key" : 1550,
								"value" : [ 75.219999999999999 ]
							}
, 							{
								"key" : 1551,
								"value" : [ 75.420000000000002 ]
							}
, 							{
								"key" : 1552,
								"value" : [ 75.219999999999999 ]
							}
, 							{
								"key" : 1553,
								"value" : [ 74.569999999999993 ]
							}
, 							{
								"key" : 1554,
								"value" : [ 73.329999999999998 ]
							}
, 							{
								"key" : 1555,
								"value" : [ 71.239999999999995 ]
							}
, 							{
								"key" : 1556,
								"value" : [ 69.310000000000002 ]
							}
, 							{
								"key" : 1557,
								"value" : [ 68.379999999999995 ]
							}
, 							{
								"key" : 1558,
								"value" : [ 67.510000000000005 ]
							}
, 							{
								"key" : 1559,
								"value" : [ 66.670000000000002 ]
							}
, 							{
								"key" : 1560,
								"value" : [ 65.879999999999995 ]
							}
, 							{
								"key" : 1561,
								"value" : [ 65.120000000000005 ]
							}
, 							{
								"key" : 1562,
								"value" : [ 64.359999999999999 ]
							}
, 							{
								"key" : 1563,
								"value" : [ 63.630000000000003 ]
							}
, 							{
								"key" : 1564,
								"value" : [ 62.869999999999997 ]
							}
, 							{
								"key" : 1565,
								"value" : [ 62.420000000000002 ]
							}
, 							{
								"key" : 1566,
								"value" : [ 63.030000000000001 ]
							}
, 							{
								"key" : 1567,
								"value" : [ 64.810000000000002 ]
							}
, 							{
								"key" : 1568,
								"value" : [ 67.890000000000001 ]
							}
, 							{
								"key" : 1569,
								"value" : [ 71.010000000000005 ]
							}
, 							{
								"key" : 1570,
								"value" : [ 72.930000000000007 ]
							}
, 							{
								"key" : 1571,
								"value" : [ 74.230000000000004 ]
							}
, 							{
								"key" : 1572,
								"value" : [ 75.290000000000006 ]
							}
, 							{
								"key" : 1573,
								"value" : [ 76.120000000000005 ]
							}
, 							{
								"key" : 1574,
								"value" : [ 76.659999999999997 ]
							}
, 							{
								"key" : 1575,
								"value" : [ 76.439999999999998 ]
							}
, 							{
								"key" : 1576,
								"value" : [ 76.120000000000005 ]
							}
, 							{
								"key" : 1577,
								"value" : [ 75.810000000000002 ]
							}
, 							{
								"key" : 1578,
								"value" : [ 75.219999999999999 ]
							}
, 							{
								"key" : 1579,
								"value" : [ 73.689999999999998 ]
							}
, 							{
								"key" : 1580,
								"value" : [ 71.560000000000002 ]
							}
, 							{
								"key" : 1581,
								"value" : [ 70.469999999999999 ]
							}
, 							{
								"key" : 1582,
								"value" : [ 69.459999999999994 ]
							}
, 							{
								"key" : 1583,
								"value" : [ 68.319999999999993 ]
							}
, 							{
								"key" : 1584,
								"value" : [ 67.140000000000001 ]
							}
, 							{
								"key" : 1585,
								"value" : [ 66.019999999999996 ]
							}
, 							{
								"key" : 1586,
								"value" : [ 65.140000000000001 ]
							}
, 							{
								"key" : 1587,
								"value" : [ 64.420000000000002 ]
							}
, 							{
								"key" : 1588,
								"value" : [ 63.859999999999999 ]
							}
, 							{
								"key" : 1589,
								"value" : [ 63.659999999999997 ]
							}
, 							{
								"key" : 1590,
								"value" : [ 64.530000000000001 ]
							}
, 							{
								"key" : 1591,
								"value" : [ 66.340000000000003 ]
							}
, 							{
								"key" : 1592,
								"value" : [ 69.599999999999994 ]
							}
, 							{
								"key" : 1593,
								"value" : [ 73.150000000000006 ]
							}
, 							{
								"key" : 1594,
								"value" : [ 75.019999999999996 ]
							}
, 							{
								"key" : 1595,
								"value" : [ 75.920000000000002 ]
							}
, 							{
								"key" : 1596,
								"value" : [ 76.030000000000001 ]
							}
, 							{
								"key" : 1597,
								"value" : [ 75.340000000000003 ]
							}
, 							{
								"key" : 1598,
								"value" : [ 74.640000000000001 ]
							}
, 							{
								"key" : 1599,
								"value" : [ 74.569999999999993 ]
							}
, 							{
								"key" : 1600,
								"value" : [ 74.769999999999996 ]
							}
, 							{
								"key" : 1601,
								"value" : [ 74.730000000000004 ]
							}
, 							{
								"key" : 1602,
								"value" : [ 74.189999999999998 ]
							}
, 							{
								"key" : 1603,
								"value" : [ 72.769999999999996 ]
							}
, 							{
								"key" : 1604,
								"value" : [ 71.099999999999994 ]
							}
, 							{
								"key" : 1605,
								"value" : [ 70.030000000000001 ]
							}
, 							{
								"key" : 1606,
								"value" : [ 68.989999999999995 ]
							}
, 							{
								"key" : 1607,
								"value" : [ 68.25 ]
							}
, 							{
								"key" : 1608,
								"value" : [ 67.689999999999998 ]
							}
, 							{
								"key" : 1609,
								"value" : [ 67.209999999999994 ]
							}
, 							{
								"key" : 1610,
								"value" : [ 66.780000000000001 ]
							}
, 							{
								"key" : 1611,
								"value" : [ 66.469999999999999 ]
							}
, 							{
								"key" : 1612,
								"value" : [ 66.239999999999995 ]
							}
, 							{
								"key" : 1613,
								"value" : [ 66.159999999999997 ]
							}
, 							{
								"key" : 1614,
								"value" : [ 66.359999999999999 ]
							}
, 							{
								"key" : 1615,
								"value" : [ 66.879999999999995 ]
							}
, 							{
								"key" : 1616,
								"value" : [ 67.930000000000007 ]
							}
, 							{
								"key" : 1617,
								"value" : [ 69.150000000000006 ]
							}
, 							{
								"key" : 1618,
								"value" : [ 70.430000000000007 ]
							}
, 							{
								"key" : 1619,
								"value" : [ 71.689999999999998 ]
							}
, 							{
								"key" : 1620,
								"value" : [ 72.719999999999999 ]
							}
, 							{
								"key" : 1621,
								"value" : [ 73.599999999999994 ]
							}
, 							{
								"key" : 1622,
								"value" : [ 73.739999999999995 ]
							}
, 							{
								"key" : 1623,
								"value" : [ 73.379999999999995 ]
							}
, 							{
								"key" : 1624,
								"value" : [ 72.840000000000003 ]
							}
, 							{
								"key" : 1625,
								"value" : [ 72.390000000000001 ]
							}
, 							{
								"key" : 1626,
								"value" : [ 71.849999999999994 ]
							}
, 							{
								"key" : 1627,
								"value" : [ 71.010000000000005 ]
							}
, 							{
								"key" : 1628,
								"value" : [ 70.030000000000001 ]
							}
, 							{
								"key" : 1629,
								"value" : [ 69.549999999999997 ]
							}
, 							{
								"key" : 1630,
								"value" : [ 69.099999999999994 ]
							}
, 							{
								"key" : 1631,
								"value" : [ 68.5 ]
							}
, 							{
								"key" : 1632,
								"value" : [ 67.909999999999997 ]
							}
, 							{
								"key" : 1633,
								"value" : [ 67.459999999999994 ]
							}
, 							{
								"key" : 1634,
								"value" : [ 67.060000000000002 ]
							}
, 							{
								"key" : 1635,
								"value" : [ 66.760000000000005 ]
							}
, 							{
								"key" : 1636,
								"value" : [ 66.650000000000006 ]
							}
, 							{
								"key" : 1637,
								"value" : [ 66.810000000000002 ]
							}
, 							{
								"key" : 1638,
								"value" : [ 67.909999999999997 ]
							}
, 							{
								"key" : 1639,
								"value" : [ 68.989999999999995 ]
							}
, 							{
								"key" : 1640,
								"value" : [ 70.920000000000002 ]
							}
, 							{
								"key" : 1641,
								"value" : [ 72.879999999999995 ]
							}
, 							{
								"key" : 1642,
								"value" : [ 74.230000000000004 ]
							}
, 							{
								"key" : 1643,
								"value" : [ 75.090000000000003 ]
							}
, 							{
								"key" : 1644,
								"value" : [ 75.780000000000001 ]
							}
, 							{
								"key" : 1645,
								"value" : [ 76.590000000000003 ]
							}
, 							{
								"key" : 1646,
								"value" : [ 77.359999999999999 ]
							}
, 							{
								"key" : 1647,
								"value" : [ 78.310000000000002 ]
							}
, 							{
								"key" : 1648,
								"value" : [ 78.760000000000005 ]
							}
, 							{
								"key" : 1649,
								"value" : [ 78.569999999999993 ]
							}
, 							{
								"key" : 1650,
								"value" : [ 77.969999999999999 ]
							}
, 							{
								"key" : 1651,
								"value" : [ 76.319999999999993 ]
							}
, 							{
								"key" : 1652,
								"value" : [ 73.290000000000006 ]
							}
, 							{
								"key" : 1653,
								"value" : [ 71.280000000000001 ]
							}
, 							{
								"key" : 1654,
								"value" : [ 69.980000000000004 ]
							}
, 							{
								"key" : 1655,
								"value" : [ 69.170000000000002 ]
							}
, 							{
								"key" : 1656,
								"value" : [ 68.310000000000002 ]
							}
, 							{
								"key" : 1657,
								"value" : [ 67.319999999999993 ]
							}
, 							{
								"key" : 1658,
								"value" : [ 66.609999999999999 ]
							}
, 							{
								"key" : 1659,
								"value" : [ 66.090000000000003 ]
							}
, 							{
								"key" : 1660,
								"value" : [ 65.969999999999999 ]
							}
, 							{
								"key" : 1661,
								"value" : [ 66.540000000000006 ]
							}
, 							{
								"key" : 1662,
								"value" : [ 68.469999999999999 ]
							}
, 							{
								"key" : 1663,
								"value" : [ 70.609999999999999 ]
							}
, 							{
								"key" : 1664,
								"value" : [ 72.719999999999999 ]
							}
, 							{
								"key" : 1665,
								"value" : [ 73.670000000000002 ]
							}
, 							{
								"key" : 1666,
								"value" : [ 73.560000000000002 ]
							}
, 							{
								"key" : 1667,
								"value" : [ 73.219999999999999 ]
							}
, 							{
								"key" : 1668,
								"value" : [ 73.040000000000006 ]
							}
, 							{
								"key" : 1669,
								"value" : [ 73.150000000000006 ]
							}
, 							{
								"key" : 1670,
								"value" : [ 73.170000000000002 ]
							}
, 							{
								"key" : 1671,
								"value" : [ 73.109999999999999 ]
							}
, 							{
								"key" : 1672,
								"value" : [ 72.640000000000001 ]
							}
, 							{
								"key" : 1673,
								"value" : [ 71.620000000000005 ]
							}
, 							{
								"key" : 1674,
								"value" : [ 70.019999999999996 ]
							}
, 							{
								"key" : 1675,
								"value" : [ 67.549999999999997 ]
							}
, 							{
								"key" : 1676,
								"value" : [ 65.75 ]
							}
, 							{
								"key" : 1677,
								"value" : [ 65.700000000000003 ]
							}
, 							{
								"key" : 1678,
								"value" : [ 66.090000000000003 ]
							}
, 							{
								"key" : 1679,
								"value" : [ 66.629999999999995 ]
							}
, 							{
								"key" : 1680,
								"value" : [ 67.150000000000006 ]
							}
, 							{
								"key" : 1681,
								"value" : [ 67.569999999999993 ]
							}
, 							{
								"key" : 1682,
								"value" : [ 68.200000000000003 ]
							}
, 							{
								"key" : 1683,
								"value" : [ 68.879999999999995 ]
							}
, 							{
								"key" : 1684,
								"value" : [ 68.25 ]
							}
, 							{
								"key" : 1685,
								"value" : [ 67.640000000000001 ]
							}
, 							{
								"key" : 1686,
								"value" : [ 68.409999999999997 ]
							}
, 							{
								"key" : 1687,
								"value" : [ 69.530000000000001 ]
							}
, 							{
								"key" : 1688,
								"value" : [ 71.980000000000004 ]
							}
, 							{
								"key" : 1689,
								"value" : [ 75.760000000000005 ]
							}
, 							{
								"key" : 1690,
								"value" : [ 77.769999999999996 ]
							}
, 							{
								"key" : 1691,
								"value" : [ 78.349999999999994 ]
							}
, 							{
								"key" : 1692,
								"value" : [ 77.609999999999999 ]
							}
, 							{
								"key" : 1693,
								"value" : [ 76.689999999999998 ]
							}
, 							{
								"key" : 1694,
								"value" : [ 76.140000000000001 ]
							}
, 							{
								"key" : 1695,
								"value" : [ 75.719999999999999 ]
							}
, 							{
								"key" : 1696,
								"value" : [ 75.400000000000006 ]
							}
, 							{
								"key" : 1697,
								"value" : [ 75.159999999999997 ]
							}
, 							{
								"key" : 1698,
								"value" : [ 74.709999999999994 ]
							}
, 							{
								"key" : 1699,
								"value" : [ 73.329999999999998 ]
							}
, 							{
								"key" : 1700,
								"value" : [ 71.060000000000002 ]
							}
, 							{
								"key" : 1701,
								"value" : [ 69.909999999999997 ]
							}
, 							{
								"key" : 1702,
								"value" : [ 69.280000000000001 ]
							}
, 							{
								"key" : 1703,
								"value" : [ 68.879999999999995 ]
							}
, 							{
								"key" : 1704,
								"value" : [ 68.519999999999996 ]
							}
, 							{
								"key" : 1705,
								"value" : [ 68.269999999999996 ]
							}
, 							{
								"key" : 1706,
								"value" : [ 68.269999999999996 ]
							}
, 							{
								"key" : 1707,
								"value" : [ 68.739999999999995 ]
							}
, 							{
								"key" : 1708,
								"value" : [ 69.420000000000002 ]
							}
, 							{
								"key" : 1709,
								"value" : [ 69.870000000000005 ]
							}
, 							{
								"key" : 1710,
								"value" : [ 70.659999999999997 ]
							}
, 							{
								"key" : 1711,
								"value" : [ 72.159999999999997 ]
							}
, 							{
								"key" : 1712,
								"value" : [ 75.069999999999993 ]
							}
, 							{
								"key" : 1713,
								"value" : [ 77.5 ]
							}
, 							{
								"key" : 1714,
								"value" : [ 78.299999999999997 ]
							}
, 							{
								"key" : 1715,
								"value" : [ 78.890000000000001 ]
							}
, 							{
								"key" : 1716,
								"value" : [ 79.879999999999995 ]
							}
, 							{
								"key" : 1717,
								"value" : [ 80.870000000000005 ]
							}
, 							{
								"key" : 1718,
								"value" : [ 81.319999999999993 ]
							}
, 							{
								"key" : 1719,
								"value" : [ 81.430000000000007 ]
							}
, 							{
								"key" : 1720,
								"value" : [ 81.540000000000006 ]
							}
, 							{
								"key" : 1721,
								"value" : [ 81.769999999999996 ]
							}
, 							{
								"key" : 1722,
								"value" : [ 81.769999999999996 ]
							}
, 							{
								"key" : 1723,
								"value" : [ 80.239999999999995 ]
							}
, 							{
								"key" : 1724,
								"value" : [ 75.420000000000002 ]
							}
, 							{
								"key" : 1725,
								"value" : [ 72.459999999999994 ]
							}
, 							{
								"key" : 1726,
								"value" : [ 69.170000000000002 ]
							}
, 							{
								"key" : 1727,
								"value" : [ 67.530000000000001 ]
							}
, 							{
								"key" : 1728,
								"value" : [ 67.709999999999994 ]
							}
, 							{
								"key" : 1729,
								"value" : [ 68.180000000000007 ]
							}
, 							{
								"key" : 1730,
								"value" : [ 68.900000000000006 ]
							}
, 							{
								"key" : 1731,
								"value" : [ 69.819999999999993 ]
							}
, 							{
								"key" : 1732,
								"value" : [ 70.120000000000005 ]
							}
, 							{
								"key" : 1733,
								"value" : [ 70.200000000000003 ]
							}
, 							{
								"key" : 1734,
								"value" : [ 70.230000000000004 ]
							}
, 							{
								"key" : 1735,
								"value" : [ 70.319999999999993 ]
							}
, 							{
								"key" : 1736,
								"value" : [ 71.310000000000002 ]
							}
, 							{
								"key" : 1737,
								"value" : [ 72.909999999999997 ]
							}
, 							{
								"key" : 1738,
								"value" : [ 74.260000000000005 ]
							}
, 							{
								"key" : 1739,
								"value" : [ 75.879999999999995 ]
							}
, 							{
								"key" : 1740,
								"value" : [ 78.239999999999995 ]
							}
, 							{
								"key" : 1741,
								"value" : [ 78.849999999999994 ]
							}
, 							{
								"key" : 1742,
								"value" : [ 77.989999999999995 ]
							}
, 							{
								"key" : 1743,
								"value" : [ 75.989999999999995 ]
							}
, 							{
								"key" : 1744,
								"value" : [ 73.739999999999995 ]
							}
, 							{
								"key" : 1745,
								"value" : [ 71.980000000000004 ]
							}
, 							{
								"key" : 1746,
								"value" : [ 70.969999999999999 ]
							}
, 							{
								"key" : 1747,
								"value" : [ 70.650000000000006 ]
							}
, 							{
								"key" : 1748,
								"value" : [ 70.680000000000007 ]
							}
, 							{
								"key" : 1749,
								"value" : [ 70.920000000000002 ]
							}
, 							{
								"key" : 1750,
								"value" : [ 71.239999999999995 ]
							}
, 							{
								"key" : 1751,
								"value" : [ 71.019999999999996 ]
							}
, 							{
								"key" : 1752,
								"value" : [ 70.569999999999993 ]
							}
, 							{
								"key" : 1753,
								"value" : [ 69.849999999999994 ]
							}
, 							{
								"key" : 1754,
								"value" : [ 69.150000000000006 ]
							}
, 							{
								"key" : 1755,
								"value" : [ 68.450000000000003 ]
							}
, 							{
								"key" : 1756,
								"value" : [ 67.680000000000007 ]
							}
, 							{
								"key" : 1757,
								"value" : [ 67.170000000000002 ]
							}
, 							{
								"key" : 1758,
								"value" : [ 68.579999999999998 ]
							}
, 							{
								"key" : 1759,
								"value" : [ 69.75 ]
							}
, 							{
								"key" : 1760,
								"value" : [ 71.670000000000002 ]
							}
, 							{
								"key" : 1761,
								"value" : [ 73.219999999999999 ]
							}
, 							{
								"key" : 1762,
								"value" : [ 74.530000000000001 ]
							}
, 							{
								"key" : 1763,
								"value" : [ 75.310000000000002 ]
							}
, 							{
								"key" : 1764,
								"value" : [ 75.849999999999994 ]
							}
, 							{
								"key" : 1765,
								"value" : [ 76.329999999999998 ]
							}
, 							{
								"key" : 1766,
								"value" : [ 76.930000000000007 ]
							}
, 							{
								"key" : 1767,
								"value" : [ 77.560000000000002 ]
							}
, 							{
								"key" : 1768,
								"value" : [ 77.849999999999994 ]
							}
, 							{
								"key" : 1769,
								"value" : [ 77.719999999999999 ]
							}
, 							{
								"key" : 1770,
								"value" : [ 76.959999999999994 ]
							}
, 							{
								"key" : 1771,
								"value" : [ 75.019999999999996 ]
							}
, 							{
								"key" : 1772,
								"value" : [ 72.459999999999994 ]
							}
, 							{
								"key" : 1773,
								"value" : [ 71.739999999999995 ]
							}
, 							{
								"key" : 1774,
								"value" : [ 71.370000000000005 ]
							}
, 							{
								"key" : 1775,
								"value" : [ 71.239999999999995 ]
							}
, 							{
								"key" : 1776,
								"value" : [ 71.420000000000002 ]
							}
, 							{
								"key" : 1777,
								"value" : [ 71.349999999999994 ]
							}
, 							{
								"key" : 1778,
								"value" : [ 70.900000000000006 ]
							}
, 							{
								"key" : 1779,
								"value" : [ 69.890000000000001 ]
							}
, 							{
								"key" : 1780,
								"value" : [ 68.379999999999995 ]
							}
, 							{
								"key" : 1781,
								"value" : [ 66.760000000000005 ]
							}
, 							{
								"key" : 1782,
								"value" : [ 66.670000000000002 ]
							}
, 							{
								"key" : 1783,
								"value" : [ 67.370000000000005 ]
							}
, 							{
								"key" : 1784,
								"value" : [ 68.469999999999999 ]
							}
, 							{
								"key" : 1785,
								"value" : [ 69.079999999999998 ]
							}
, 							{
								"key" : 1786,
								"value" : [ 69.760000000000005 ]
							}
, 							{
								"key" : 1787,
								"value" : [ 70.989999999999995 ]
							}
, 							{
								"key" : 1788,
								"value" : [ 72.459999999999994 ]
							}
, 							{
								"key" : 1789,
								"value" : [ 73.599999999999994 ]
							}
, 							{
								"key" : 1790,
								"value" : [ 74.390000000000001 ]
							}
, 							{
								"key" : 1791,
								"value" : [ 74.819999999999993 ]
							}
, 							{
								"key" : 1792,
								"value" : [ 74.5 ]
							}
, 							{
								"key" : 1793,
								"value" : [ 72.989999999999995 ]
							}
, 							{
								"key" : 1794,
								"value" : [ 71.109999999999999 ]
							}
, 							{
								"key" : 1795,
								"value" : [ 69.480000000000004 ]
							}
, 							{
								"key" : 1796,
								"value" : [ 67.459999999999994 ]
							}
, 							{
								"key" : 1797,
								"value" : [ 66.510000000000005 ]
							}
, 							{
								"key" : 1798,
								"value" : [ 66.269999999999996 ]
							}
, 							{
								"key" : 1799,
								"value" : [ 66.420000000000002 ]
							}
, 							{
								"key" : 1800,
								"value" : [ 66.420000000000002 ]
							}
, 							{
								"key" : 1801,
								"value" : [ 66.109999999999999 ]
							}
, 							{
								"key" : 1802,
								"value" : [ 65.549999999999997 ]
							}
, 							{
								"key" : 1803,
								"value" : [ 64.900000000000006 ]
							}
, 							{
								"key" : 1804,
								"value" : [ 64.359999999999999 ]
							}
, 							{
								"key" : 1805,
								"value" : [ 64.090000000000003 ]
							}
, 							{
								"key" : 1806,
								"value" : [ 65.909999999999997 ]
							}
, 							{
								"key" : 1807,
								"value" : [ 67.189999999999998 ]
							}
, 							{
								"key" : 1808,
								"value" : [ 68.140000000000001 ]
							}
, 							{
								"key" : 1809,
								"value" : [ 68.859999999999999 ]
							}
, 							{
								"key" : 1810,
								"value" : [ 69.370000000000005 ]
							}
, 							{
								"key" : 1811,
								"value" : [ 69.659999999999997 ]
							}
, 							{
								"key" : 1812,
								"value" : [ 69.819999999999993 ]
							}
, 							{
								"key" : 1813,
								"value" : [ 69.549999999999997 ]
							}
, 							{
								"key" : 1814,
								"value" : [ 69.239999999999995 ]
							}
, 							{
								"key" : 1815,
								"value" : [ 69.079999999999998 ]
							}
, 							{
								"key" : 1816,
								"value" : [ 68.650000000000006 ]
							}
, 							{
								"key" : 1817,
								"value" : [ 68.040000000000006 ]
							}
, 							{
								"key" : 1818,
								"value" : [ 67.209999999999994 ]
							}
, 							{
								"key" : 1819,
								"value" : [ 66.019999999999996 ]
							}
, 							{
								"key" : 1820,
								"value" : [ 64.489999999999995 ]
							}
, 							{
								"key" : 1821,
								"value" : [ 63.840000000000003 ]
							}
, 							{
								"key" : 1822,
								"value" : [ 63.549999999999997 ]
							}
, 							{
								"key" : 1823,
								"value" : [ 63.280000000000001 ]
							}
, 							{
								"key" : 1824,
								"value" : [ 62.909999999999997 ]
							}
, 							{
								"key" : 1825,
								"value" : [ 62.369999999999997 ]
							}
, 							{
								"key" : 1826,
								"value" : [ 61.880000000000003 ]
							}
, 							{
								"key" : 1827,
								"value" : [ 61.57 ]
							}
, 							{
								"key" : 1828,
								"value" : [ 60.909999999999997 ]
							}
, 							{
								"key" : 1829,
								"value" : [ 60.57 ]
							}
, 							{
								"key" : 1830,
								"value" : [ 62.380000000000003 ]
							}
, 							{
								"key" : 1831,
								"value" : [ 63.640000000000001 ]
							}
, 							{
								"key" : 1832,
								"value" : [ 64.760000000000005 ]
							}
, 							{
								"key" : 1833,
								"value" : [ 65.75 ]
							}
, 							{
								"key" : 1834,
								"value" : [ 66.379999999999995 ]
							}
, 							{
								"key" : 1835,
								"value" : [ 66.810000000000002 ]
							}
, 							{
								"key" : 1836,
								"value" : [ 67.120000000000005 ]
							}
, 							{
								"key" : 1837,
								"value" : [ 67.030000000000001 ]
							}
, 							{
								"key" : 1838,
								"value" : [ 66.989999999999995 ]
							}
, 							{
								"key" : 1839,
								"value" : [ 66.989999999999995 ]
							}
, 							{
								"key" : 1840,
								"value" : [ 66.870000000000005 ]
							}
, 							{
								"key" : 1841,
								"value" : [ 66.519999999999996 ]
							}
, 							{
								"key" : 1842,
								"value" : [ 65.769999999999996 ]
							}
, 							{
								"key" : 1843,
								"value" : [ 64.359999999999999 ]
							}
, 							{
								"key" : 1844,
								"value" : [ 62.219999999999999 ]
							}
, 							{
								"key" : 1845,
								"value" : [ 61.840000000000003 ]
							}
, 							{
								"key" : 1846,
								"value" : [ 61.840000000000003 ]
							}
, 							{
								"key" : 1847,
								"value" : [ 61.899999999999999 ]
							}
, 							{
								"key" : 1848,
								"value" : [ 61.810000000000002 ]
							}
, 							{
								"key" : 1849,
								"value" : [ 61.700000000000003 ]
							}
, 							{
								"key" : 1850,
								"value" : [ 62.130000000000003 ]
							}
, 							{
								"key" : 1851,
								"value" : [ 62.310000000000002 ]
							}
, 							{
								"key" : 1852,
								"value" : [ 61.340000000000003 ]
							}
, 							{
								"key" : 1853,
								"value" : [ 60.840000000000003 ]
							}
, 							{
								"key" : 1854,
								"value" : [ 62.740000000000002 ]
							}
, 							{
								"key" : 1855,
								"value" : [ 64.219999999999999 ]
							}
, 							{
								"key" : 1856,
								"value" : [ 66.739999999999995 ]
							}
, 							{
								"key" : 1857,
								"value" : [ 70.739999999999995 ]
							}
, 							{
								"key" : 1858,
								"value" : [ 73.530000000000001 ]
							}
, 							{
								"key" : 1859,
								"value" : [ 75.400000000000006 ]
							}
, 							{
								"key" : 1860,
								"value" : [ 76.819999999999993 ]
							}
, 							{
								"key" : 1861,
								"value" : [ 78.040000000000006 ]
							}
, 							{
								"key" : 1862,
								"value" : [ 78.640000000000001 ]
							}
, 							{
								"key" : 1863,
								"value" : [ 78.939999999999998 ]
							}
, 							{
								"key" : 1864,
								"value" : [ 79.390000000000001 ]
							}
, 							{
								"key" : 1865,
								"value" : [ 79.140000000000001 ]
							}
, 							{
								"key" : 1866,
								"value" : [ 77.900000000000006 ]
							}
, 							{
								"key" : 1867,
								"value" : [ 75.829999999999998 ]
							}
, 							{
								"key" : 1868,
								"value" : [ 74.390000000000001 ]
							}
, 							{
								"key" : 1869,
								"value" : [ 71.939999999999998 ]
							}
, 							{
								"key" : 1870,
								"value" : [ 71.530000000000001 ]
							}
, 							{
								"key" : 1871,
								"value" : [ 71.189999999999998 ]
							}
, 							{
								"key" : 1872,
								"value" : [ 70.719999999999999 ]
							}
, 							{
								"key" : 1873,
								"value" : [ 70.209999999999994 ]
							}
, 							{
								"key" : 1874,
								"value" : [ 69.549999999999997 ]
							}
, 							{
								"key" : 1875,
								"value" : [ 69.310000000000002 ]
							}
, 							{
								"key" : 1876,
								"value" : [ 68.829999999999998 ]
							}
, 							{
								"key" : 1877,
								"value" : [ 68.140000000000001 ]
							}
, 							{
								"key" : 1878,
								"value" : [ 68.579999999999998 ]
							}
, 							{
								"key" : 1879,
								"value" : [ 69.370000000000005 ]
							}
, 							{
								"key" : 1880,
								"value" : [ 69.980000000000004 ]
							}
, 							{
								"key" : 1881,
								"value" : [ 71.310000000000002 ]
							}
, 							{
								"key" : 1882,
								"value" : [ 73.310000000000002 ]
							}
, 							{
								"key" : 1883,
								"value" : [ 75.239999999999995 ]
							}
, 							{
								"key" : 1884,
								"value" : [ 77.180000000000007 ]
							}
, 							{
								"key" : 1885,
								"value" : [ 77.739999999999995 ]
							}
, 							{
								"key" : 1886,
								"value" : [ 77.739999999999995 ]
							}
, 							{
								"key" : 1887,
								"value" : [ 77.939999999999998 ]
							}
, 							{
								"key" : 1888,
								"value" : [ 79.269999999999996 ]
							}
, 							{
								"key" : 1889,
								"value" : [ 80.280000000000001 ]
							}
, 							{
								"key" : 1890,
								"value" : [ 80.890000000000001 ]
							}
, 							{
								"key" : 1891,
								"value" : [ 80.109999999999999 ]
							}
, 							{
								"key" : 1892,
								"value" : [ 78.209999999999994 ]
							}
, 							{
								"key" : 1893,
								"value" : [ 75.900000000000006 ]
							}
, 							{
								"key" : 1894,
								"value" : [ 72.989999999999995 ]
							}
, 							{
								"key" : 1895,
								"value" : [ 74.030000000000001 ]
							}
, 							{
								"key" : 1896,
								"value" : [ 74.730000000000004 ]
							}
, 							{
								"key" : 1897,
								"value" : [ 74.260000000000005 ]
							}
, 							{
								"key" : 1898,
								"value" : [ 74.319999999999993 ]
							}
, 							{
								"key" : 1899,
								"value" : [ 71.400000000000006 ]
							}
, 							{
								"key" : 1900,
								"value" : [ 68.989999999999995 ]
							}
, 							{
								"key" : 1901,
								"value" : [ 68.219999999999999 ]
							}
, 							{
								"key" : 1902,
								"value" : [ 68.540000000000006 ]
							}
, 							{
								"key" : 1903,
								"value" : [ 69.329999999999998 ]
							}
, 							{
								"key" : 1904,
								"value" : [ 71.290000000000006 ]
							}
, 							{
								"key" : 1905,
								"value" : [ 73.540000000000006 ]
							}
, 							{
								"key" : 1906,
								"value" : [ 75.310000000000002 ]
							}
, 							{
								"key" : 1907,
								"value" : [ 77.290000000000006 ]
							}
, 							{
								"key" : 1908,
								"value" : [ 79.019999999999996 ]
							}
, 							{
								"key" : 1909,
								"value" : [ 79.790000000000006 ]
							}
, 							{
								"key" : 1910,
								"value" : [ 80.040000000000006 ]
							}
, 							{
								"key" : 1911,
								"value" : [ 80.109999999999999 ]
							}
, 							{
								"key" : 1912,
								"value" : [ 79.790000000000006 ]
							}
, 							{
								"key" : 1913,
								"value" : [ 78.849999999999994 ]
							}
, 							{
								"key" : 1914,
								"value" : [ 75.519999999999996 ]
							}
, 							{
								"key" : 1915,
								"value" : [ 70.359999999999999 ]
							}
, 							{
								"key" : 1916,
								"value" : [ 64.739999999999995 ]
							}
, 							{
								"key" : 1917,
								"value" : [ 63.210000000000001 ]
							}
, 							{
								"key" : 1918,
								"value" : [ 63.280000000000001 ]
							}
, 							{
								"key" : 1919,
								"value" : [ 63.43 ]
							}
, 							{
								"key" : 1920,
								"value" : [ 63.460000000000001 ]
							}
, 							{
								"key" : 1921,
								"value" : [ 63.409999999999997 ]
							}
, 							{
								"key" : 1922,
								"value" : [ 63.700000000000003 ]
							}
, 							{
								"key" : 1923,
								"value" : [ 64.090000000000003 ]
							}
, 							{
								"key" : 1924,
								"value" : [ 63.969999999999999 ]
							}
, 							{
								"key" : 1925,
								"value" : [ 64.019999999999996 ]
							}
, 							{
								"key" : 1926,
								"value" : [ 65.480000000000004 ]
							}
, 							{
								"key" : 1927,
								"value" : [ 66.510000000000005 ]
							}
, 							{
								"key" : 1928,
								"value" : [ 68.430000000000007 ]
							}
, 							{
								"key" : 1929,
								"value" : [ 72.099999999999994 ]
							}
, 							{
								"key" : 1930,
								"value" : [ 75.200000000000003 ]
							}
, 							{
								"key" : 1931,
								"value" : [ 76.769999999999996 ]
							}
, 							{
								"key" : 1932,
								"value" : [ 77.519999999999996 ]
							}
, 							{
								"key" : 1933,
								"value" : [ 77.969999999999999 ]
							}
, 							{
								"key" : 1934,
								"value" : [ 78.120000000000005 ]
							}
, 							{
								"key" : 1935,
								"value" : [ 78.189999999999998 ]
							}
, 							{
								"key" : 1936,
								"value" : [ 79.409999999999997 ]
							}
, 							{
								"key" : 1937,
								"value" : [ 79.950000000000003 ]
							}
, 							{
								"key" : 1938,
								"value" : [ 78.370000000000005 ]
							}
, 							{
								"key" : 1939,
								"value" : [ 75.739999999999995 ]
							}
, 							{
								"key" : 1940,
								"value" : [ 73.620000000000005 ]
							}
, 							{
								"key" : 1941,
								"value" : [ 73.040000000000006 ]
							}
, 							{
								"key" : 1942,
								"value" : [ 72.480000000000004 ]
							}
, 							{
								"key" : 1943,
								"value" : [ 71.870000000000005 ]
							}
, 							{
								"key" : 1944,
								"value" : [ 71.670000000000002 ]
							}
, 							{
								"key" : 1945,
								"value" : [ 71.219999999999999 ]
							}
, 							{
								"key" : 1946,
								"value" : [ 70.25 ]
							}
, 							{
								"key" : 1947,
								"value" : [ 68.269999999999996 ]
							}
, 							{
								"key" : 1948,
								"value" : [ 66.060000000000002 ]
							}
, 							{
								"key" : 1949,
								"value" : [ 65.159999999999997 ]
							}
, 							{
								"key" : 1950,
								"value" : [ 64.489999999999995 ]
							}
, 							{
								"key" : 1951,
								"value" : [ 64.510000000000005 ]
							}
, 							{
								"key" : 1952,
								"value" : [ 65.709999999999994 ]
							}
, 							{
								"key" : 1953,
								"value" : [ 66.829999999999998 ]
							}
, 							{
								"key" : 1954,
								"value" : [ 67.769999999999996 ]
							}
, 							{
								"key" : 1955,
								"value" : [ 68.450000000000003 ]
							}
, 							{
								"key" : 1956,
								"value" : [ 68.560000000000002 ]
							}
, 							{
								"key" : 1957,
								"value" : [ 68.340000000000003 ]
							}
, 							{
								"key" : 1958,
								"value" : [ 68.310000000000002 ]
							}
, 							{
								"key" : 1959,
								"value" : [ 68.379999999999995 ]
							}
, 							{
								"key" : 1960,
								"value" : [ 68.540000000000006 ]
							}
, 							{
								"key" : 1961,
								"value" : [ 68.230000000000004 ]
							}
, 							{
								"key" : 1962,
								"value" : [ 67.150000000000006 ]
							}
, 							{
								"key" : 1963,
								"value" : [ 65.519999999999996 ]
							}
, 							{
								"key" : 1964,
								"value" : [ 63.460000000000001 ]
							}
, 							{
								"key" : 1965,
								"value" : [ 62.380000000000003 ]
							}
, 							{
								"key" : 1966,
								"value" : [ 61.25 ]
							}
, 							{
								"key" : 1967,
								"value" : [ 60.170000000000002 ]
							}
, 							{
								"key" : 1968,
								"value" : [ 59.469999999999999 ]
							}
, 							{
								"key" : 1969,
								"value" : [ 59.399999999999999 ]
							}
, 							{
								"key" : 1970,
								"value" : [ 59.700000000000003 ]
							}
, 							{
								"key" : 1971,
								"value" : [ 59.090000000000003 ]
							}
, 							{
								"key" : 1972,
								"value" : [ 58.5 ]
							}
, 							{
								"key" : 1973,
								"value" : [ 58.119999999999997 ]
							}
, 							{
								"key" : 1974,
								"value" : [ 59.759999999999998 ]
							}
, 							{
								"key" : 1975,
								"value" : [ 61.210000000000001 ]
							}
, 							{
								"key" : 1976,
								"value" : [ 62.939999999999998 ]
							}
, 							{
								"key" : 1977,
								"value" : [ 64.670000000000002 ]
							}
, 							{
								"key" : 1978,
								"value" : [ 66.060000000000002 ]
							}
, 							{
								"key" : 1979,
								"value" : [ 67.209999999999994 ]
							}
, 							{
								"key" : 1980,
								"value" : [ 68.219999999999999 ]
							}
, 							{
								"key" : 1981,
								"value" : [ 68.900000000000006 ]
							}
, 							{
								"key" : 1982,
								"value" : [ 69.420000000000002 ]
							}
, 							{
								"key" : 1983,
								"value" : [ 69.489999999999995 ]
							}
, 							{
								"key" : 1984,
								"value" : [ 69.349999999999994 ]
							}
, 							{
								"key" : 1985,
								"value" : [ 69.120000000000005 ]
							}
, 							{
								"key" : 1986,
								"value" : [ 68.920000000000002 ]
							}
, 							{
								"key" : 1987,
								"value" : [ 68.900000000000006 ]
							}
, 							{
								"key" : 1988,
								"value" : [ 68.859999999999999 ]
							}
, 							{
								"key" : 1989,
								"value" : [ 67.060000000000002 ]
							}
, 							{
								"key" : 1990,
								"value" : [ 65.890000000000001 ]
							}
, 							{
								"key" : 1991,
								"value" : [ 65.799999999999997 ]
							}
, 							{
								"key" : 1992,
								"value" : [ 65.609999999999999 ]
							}
, 							{
								"key" : 1993,
								"value" : [ 64.939999999999998 ]
							}
, 							{
								"key" : 1994,
								"value" : [ 63.729999999999997 ]
							}
, 							{
								"key" : 1995,
								"value" : [ 62.579999999999998 ]
							}
, 							{
								"key" : 1996,
								"value" : [ 62.399999999999999 ]
							}
, 							{
								"key" : 1997,
								"value" : [ 62.600000000000001 ]
							}
, 							{
								"key" : 1998,
								"value" : [ 63.009999999999998 ]
							}
, 							{
								"key" : 1999,
								"value" : [ 63.590000000000003 ]
							}
, 							{
								"key" : 2000,
								"value" : [ 64.079999999999998 ]
							}
, 							{
								"key" : 2001,
								"value" : [ 64.170000000000002 ]
							}
, 							{
								"key" : 2002,
								"value" : [ 64.290000000000006 ]
							}
, 							{
								"key" : 2003,
								"value" : [ 65.590000000000003 ]
							}
, 							{
								"key" : 2004,
								"value" : [ 68.269999999999996 ]
							}
, 							{
								"key" : 2005,
								"value" : [ 69.620000000000005 ]
							}
, 							{
								"key" : 2006,
								"value" : [ 69.890000000000001 ]
							}
, 							{
								"key" : 2007,
								"value" : [ 71.439999999999998 ]
							}
, 							{
								"key" : 2008,
								"value" : [ 72.549999999999997 ]
							}
, 							{
								"key" : 2009,
								"value" : [ 73.200000000000003 ]
							}
, 							{
								"key" : 2010,
								"value" : [ 72.969999999999999 ]
							}
, 							{
								"key" : 2011,
								"value" : [ 71.760000000000005 ]
							}
, 							{
								"key" : 2012,
								"value" : [ 69.890000000000001 ]
							}
, 							{
								"key" : 2013,
								"value" : [ 68.219999999999999 ]
							}
, 							{
								"key" : 2014,
								"value" : [ 67.189999999999998 ]
							}
, 							{
								"key" : 2015,
								"value" : [ 66.450000000000003 ]
							}
, 							{
								"key" : 2016,
								"value" : [ 65.769999999999996 ]
							}
, 							{
								"key" : 2017,
								"value" : [ 65.209999999999994 ]
							}
, 							{
								"key" : 2018,
								"value" : [ 64.849999999999994 ]
							}
, 							{
								"key" : 2019,
								"value" : [ 64.670000000000002 ]
							}
, 							{
								"key" : 2020,
								"value" : [ 64.359999999999999 ]
							}
, 							{
								"key" : 2021,
								"value" : [ 63.840000000000003 ]
							}
, 							{
								"key" : 2022,
								"value" : [ 64.359999999999999 ]
							}
, 							{
								"key" : 2023,
								"value" : [ 66.670000000000002 ]
							}
, 							{
								"key" : 2024,
								"value" : [ 69.299999999999997 ]
							}
, 							{
								"key" : 2025,
								"value" : [ 71.709999999999994 ]
							}
, 							{
								"key" : 2026,
								"value" : [ 73.510000000000005 ]
							}
, 							{
								"key" : 2027,
								"value" : [ 74.640000000000001 ]
							}
, 							{
								"key" : 2028,
								"value" : [ 75.109999999999999 ]
							}
, 							{
								"key" : 2029,
								"value" : [ 74.799999999999997 ]
							}
, 							{
								"key" : 2030,
								"value" : [ 74.439999999999998 ]
							}
, 							{
								"key" : 2031,
								"value" : [ 73.060000000000002 ]
							}
, 							{
								"key" : 2032,
								"value" : [ 71.819999999999993 ]
							}
, 							{
								"key" : 2033,
								"value" : [ 71.129999999999995 ]
							}
, 							{
								"key" : 2034,
								"value" : [ 70.769999999999996 ]
							}
, 							{
								"key" : 2035,
								"value" : [ 70.269999999999996 ]
							}
, 							{
								"key" : 2036,
								"value" : [ 69.890000000000001 ]
							}
, 							{
								"key" : 2037,
								"value" : [ 69.239999999999995 ]
							}
, 							{
								"key" : 2038,
								"value" : [ 69.010000000000005 ]
							}
, 							{
								"key" : 2039,
								"value" : [ 68.760000000000005 ]
							}
, 							{
								"key" : 2040,
								"value" : [ 68.269999999999996 ]
							}
, 							{
								"key" : 2041,
								"value" : [ 67.959999999999994 ]
							}
, 							{
								"key" : 2042,
								"value" : [ 68.129999999999995 ]
							}
, 							{
								"key" : 2043,
								"value" : [ 68.560000000000002 ]
							}
, 							{
								"key" : 2044,
								"value" : [ 68.700000000000003 ]
							}
, 							{
								"key" : 2045,
								"value" : [ 68.540000000000006 ]
							}
, 							{
								"key" : 2046,
								"value" : [ 68.680000000000007 ]
							}
, 							{
								"key" : 2047,
								"value" : [ 68.590000000000003 ]
							}
, 							{
								"key" : 2048,
								"value" : [ 68.719999999999999 ]
							}
, 							{
								"key" : 2049,
								"value" : [ 68.859999999999999 ]
							}
, 							{
								"key" : 2050,
								"value" : [ 69.730000000000004 ]
							}
, 							{
								"key" : 2051,
								"value" : [ 70.989999999999995 ]
							}
, 							{
								"key" : 2052,
								"value" : [ 71.870000000000005 ]
							}
, 							{
								"key" : 2053,
								"value" : [ 72.909999999999997 ]
							}
, 							{
								"key" : 2054,
								"value" : [ 72.680000000000007 ]
							}
, 							{
								"key" : 2055,
								"value" : [ 72.680000000000007 ]
							}
, 							{
								"key" : 2056,
								"value" : [ 73.290000000000006 ]
							}
, 							{
								"key" : 2057,
								"value" : [ 73.200000000000003 ]
							}
, 							{
								"key" : 2058,
								"value" : [ 71.579999999999998 ]
							}
, 							{
								"key" : 2059,
								"value" : [ 69.75 ]
							}
, 							{
								"key" : 2060,
								"value" : [ 68.989999999999995 ]
							}
, 							{
								"key" : 2061,
								"value" : [ 69.239999999999995 ]
							}
, 							{
								"key" : 2062,
								"value" : [ 68.829999999999998 ]
							}
, 							{
								"key" : 2063,
								"value" : [ 67.819999999999993 ]
							}
, 							{
								"key" : 2064,
								"value" : [ 67.329999999999998 ]
							}
, 							{
								"key" : 2065,
								"value" : [ 68.269999999999996 ]
							}
, 							{
								"key" : 2066,
								"value" : [ 69.299999999999997 ]
							}
, 							{
								"key" : 2067,
								"value" : [ 70.140000000000001 ]
							}
, 							{
								"key" : 2068,
								"value" : [ 70.680000000000007 ]
							}
, 							{
								"key" : 2069,
								"value" : [ 70.340000000000003 ]
							}
, 							{
								"key" : 2070,
								"value" : [ 70.140000000000001 ]
							}
, 							{
								"key" : 2071,
								"value" : [ 70.209999999999994 ]
							}
, 							{
								"key" : 2072,
								"value" : [ 70.469999999999999 ]
							}
, 							{
								"key" : 2073,
								"value" : [ 71.370000000000005 ]
							}
, 							{
								"key" : 2074,
								"value" : [ 72.540000000000006 ]
							}
, 							{
								"key" : 2075,
								"value" : [ 73.810000000000002 ]
							}
, 							{
								"key" : 2076,
								"value" : [ 74.280000000000001 ]
							}
, 							{
								"key" : 2077,
								"value" : [ 74.349999999999994 ]
							}
, 							{
								"key" : 2078,
								"value" : [ 74.189999999999998 ]
							}
, 							{
								"key" : 2079,
								"value" : [ 73.810000000000002 ]
							}
, 							{
								"key" : 2080,
								"value" : [ 73.489999999999995 ]
							}
, 							{
								"key" : 2081,
								"value" : [ 73.109999999999999 ]
							}
, 							{
								"key" : 2082,
								"value" : [ 72.810000000000002 ]
							}
, 							{
								"key" : 2083,
								"value" : [ 72.640000000000001 ]
							}
, 							{
								"key" : 2084,
								"value" : [ 72.519999999999996 ]
							}
, 							{
								"key" : 2085,
								"value" : [ 72.030000000000001 ]
							}
, 							{
								"key" : 2086,
								"value" : [ 71.439999999999998 ]
							}
, 							{
								"key" : 2087,
								"value" : [ 70.859999999999999 ]
							}
, 							{
								"key" : 2088,
								"value" : [ 70.390000000000001 ]
							}
, 							{
								"key" : 2089,
								"value" : [ 70.030000000000001 ]
							}
, 							{
								"key" : 2090,
								"value" : [ 69.799999999999997 ]
							}
, 							{
								"key" : 2091,
								"value" : [ 69.75 ]
							}
, 							{
								"key" : 2092,
								"value" : [ 69.75 ]
							}
, 							{
								"key" : 2093,
								"value" : [ 69.760000000000005 ]
							}
, 							{
								"key" : 2094,
								"value" : [ 70.120000000000005 ]
							}
, 							{
								"key" : 2095,
								"value" : [ 70.969999999999999 ]
							}
, 							{
								"key" : 2096,
								"value" : [ 71.939999999999998 ]
							}
, 							{
								"key" : 2097,
								"value" : [ 72.840000000000003 ]
							}
, 							{
								"key" : 2098,
								"value" : [ 73.540000000000006 ]
							}
, 							{
								"key" : 2099,
								"value" : [ 73.959999999999994 ]
							}
, 							{
								"key" : 2100,
								"value" : [ 74.439999999999998 ]
							}
, 							{
								"key" : 2101,
								"value" : [ 74.730000000000004 ]
							}
, 							{
								"key" : 2102,
								"value" : [ 75.060000000000002 ]
							}
, 							{
								"key" : 2103,
								"value" : [ 75.340000000000003 ]
							}
, 							{
								"key" : 2104,
								"value" : [ 75.269999999999996 ]
							}
, 							{
								"key" : 2105,
								"value" : [ 74.980000000000004 ]
							}
, 							{
								"key" : 2106,
								"value" : [ 75.0 ]
							}
, 							{
								"key" : 2107,
								"value" : [ 74.709999999999994 ]
							}
, 							{
								"key" : 2108,
								"value" : [ 73.349999999999994 ]
							}
, 							{
								"key" : 2109,
								"value" : [ 71.420000000000002 ]
							}
, 							{
								"key" : 2110,
								"value" : [ 69.370000000000005 ]
							}
, 							{
								"key" : 2111,
								"value" : [ 67.769999999999996 ]
							}
, 							{
								"key" : 2112,
								"value" : [ 66.739999999999995 ]
							}
, 							{
								"key" : 2113,
								"value" : [ 66.109999999999999 ]
							}
, 							{
								"key" : 2114,
								"value" : [ 65.680000000000007 ]
							}
, 							{
								"key" : 2115,
								"value" : [ 65.5 ]
							}
, 							{
								"key" : 2116,
								"value" : [ 65.480000000000004 ]
							}
, 							{
								"key" : 2117,
								"value" : [ 65.480000000000004 ]
							}
, 							{
								"key" : 2118,
								"value" : [ 65.769999999999996 ]
							}
, 							{
								"key" : 2119,
								"value" : [ 66.430000000000007 ]
							}
, 							{
								"key" : 2120,
								"value" : [ 67.409999999999997 ]
							}
, 							{
								"key" : 2121,
								"value" : [ 69.459999999999994 ]
							}
, 							{
								"key" : 2122,
								"value" : [ 71.290000000000006 ]
							}
, 							{
								"key" : 2123,
								"value" : [ 72.819999999999993 ]
							}
, 							{
								"key" : 2124,
								"value" : [ 74.349999999999994 ]
							}
, 							{
								"key" : 2125,
								"value" : [ 75.719999999999999 ]
							}
, 							{
								"key" : 2126,
								"value" : [ 76.769999999999996 ]
							}
, 							{
								"key" : 2127,
								"value" : [ 77.680000000000007 ]
							}
, 							{
								"key" : 2128,
								"value" : [ 77.790000000000006 ]
							}
, 							{
								"key" : 2129,
								"value" : [ 77.219999999999999 ]
							}
, 							{
								"key" : 2130,
								"value" : [ 76.680000000000007 ]
							}
, 							{
								"key" : 2131,
								"value" : [ 76.099999999999994 ]
							}
, 							{
								"key" : 2132,
								"value" : [ 75.430000000000007 ]
							}
, 							{
								"key" : 2133,
								"value" : [ 74.120000000000005 ]
							}
, 							{
								"key" : 2134,
								"value" : [ 72.590000000000003 ]
							}
, 							{
								"key" : 2135,
								"value" : [ 71.829999999999998 ]
							}
, 							{
								"key" : 2136,
								"value" : [ 71.459999999999994 ]
							}
, 							{
								"key" : 2137,
								"value" : [ 71.260000000000005 ]
							}
, 							{
								"key" : 2138,
								"value" : [ 71.099999999999994 ]
							}
, 							{
								"key" : 2139,
								"value" : [ 70.859999999999999 ]
							}
, 							{
								"key" : 2140,
								"value" : [ 70.659999999999997 ]
							}
, 							{
								"key" : 2141,
								"value" : [ 70.519999999999996 ]
							}
, 							{
								"key" : 2142,
								"value" : [ 70.680000000000007 ]
							}
, 							{
								"key" : 2143,
								"value" : [ 71.129999999999995 ]
							}
, 							{
								"key" : 2144,
								"value" : [ 71.959999999999994 ]
							}
, 							{
								"key" : 2145,
								"value" : [ 73.079999999999998 ]
							}
, 							{
								"key" : 2146,
								"value" : [ 74.140000000000001 ]
							}
, 							{
								"key" : 2147,
								"value" : [ 75.019999999999996 ]
							}
, 							{
								"key" : 2148,
								"value" : [ 75.670000000000002 ]
							}
, 							{
								"key" : 2149,
								"value" : [ 76.010000000000005 ]
							}
, 							{
								"key" : 2150,
								"value" : [ 76.189999999999998 ]
							}
, 							{
								"key" : 2151,
								"value" : [ 76.439999999999998 ]
							}
, 							{
								"key" : 2152,
								"value" : [ 76.959999999999994 ]
							}
, 							{
								"key" : 2153,
								"value" : [ 77.25 ]
							}
, 							{
								"key" : 2154,
								"value" : [ 76.640000000000001 ]
							}
, 							{
								"key" : 2155,
								"value" : [ 75.700000000000003 ]
							}
, 							{
								"key" : 2156,
								"value" : [ 74.730000000000004 ]
							}
, 							{
								"key" : 2157,
								"value" : [ 73.810000000000002 ]
							}
, 							{
								"key" : 2158,
								"value" : [ 72.769999999999996 ]
							}
, 							{
								"key" : 2159,
								"value" : [ 71.939999999999998 ]
							}
, 							{
								"key" : 2160,
								"value" : [ 71.400000000000006 ]
							}
, 							{
								"key" : 2161,
								"value" : [ 70.989999999999995 ]
							}
, 							{
								"key" : 2162,
								"value" : [ 70.560000000000002 ]
							}
, 							{
								"key" : 2163,
								"value" : [ 70.109999999999999 ]
							}
, 							{
								"key" : 2164,
								"value" : [ 69.620000000000005 ]
							}
, 							{
								"key" : 2165,
								"value" : [ 69.299999999999997 ]
							}
, 							{
								"key" : 2166,
								"value" : [ 69.480000000000004 ]
							}
, 							{
								"key" : 2167,
								"value" : [ 69.620000000000005 ]
							}
, 							{
								"key" : 2168,
								"value" : [ 70.090000000000003 ]
							}
, 							{
								"key" : 2169,
								"value" : [ 71.620000000000005 ]
							}
, 							{
								"key" : 2170,
								"value" : [ 73.689999999999998 ]
							}
, 							{
								"key" : 2171,
								"value" : [ 75.159999999999997 ]
							}
, 							{
								"key" : 2172,
								"value" : [ 75.790000000000006 ]
							}
, 							{
								"key" : 2173,
								"value" : [ 75.540000000000006 ]
							}
, 							{
								"key" : 2174,
								"value" : [ 75.239999999999995 ]
							}
, 							{
								"key" : 2175,
								"value" : [ 75.200000000000003 ]
							}
, 							{
								"key" : 2176,
								"value" : [ 75.469999999999999 ]
							}
, 							{
								"key" : 2177,
								"value" : [ 75.420000000000002 ]
							}
, 							{
								"key" : 2178,
								"value" : [ 74.969999999999999 ]
							}
, 							{
								"key" : 2179,
								"value" : [ 74.099999999999994 ]
							}
, 							{
								"key" : 2180,
								"value" : [ 72.5 ]
							}
, 							{
								"key" : 2181,
								"value" : [ 71.290000000000006 ]
							}
, 							{
								"key" : 2182,
								"value" : [ 70.950000000000003 ]
							}
, 							{
								"key" : 2183,
								"value" : [ 70.879999999999995 ]
							}
, 							{
								"key" : 2184,
								"value" : [ 70.390000000000001 ]
							}
, 							{
								"key" : 2185,
								"value" : [ 69.280000000000001 ]
							}
, 							{
								"key" : 2186,
								"value" : [ 68.0 ]
							}
, 							{
								"key" : 2187,
								"value" : [ 67.329999999999998 ]
							}
, 							{
								"key" : 2188,
								"value" : [ 67.230000000000004 ]
							}
, 							{
								"key" : 2189,
								"value" : [ 66.829999999999998 ]
							}
, 							{
								"key" : 2190,
								"value" : [ 66.689999999999998 ]
							}
, 							{
								"key" : 2191,
								"value" : [ 66.920000000000002 ]
							}
, 							{
								"key" : 2192,
								"value" : [ 67.510000000000005 ]
							}
, 							{
								"key" : 2193,
								"value" : [ 67.909999999999997 ]
							}
, 							{
								"key" : 2194,
								"value" : [ 68.090000000000003 ]
							}
, 							{
								"key" : 2195,
								"value" : [ 68.140000000000001 ]
							}
, 							{
								"key" : 2196,
								"value" : [ 68.359999999999999 ]
							}
, 							{
								"key" : 2197,
								"value" : [ 68.450000000000003 ]
							}
, 							{
								"key" : 2198,
								"value" : [ 68.219999999999999 ]
							}
, 							{
								"key" : 2199,
								"value" : [ 67.530000000000001 ]
							}
, 							{
								"key" : 2200,
								"value" : [ 66.760000000000005 ]
							}
, 							{
								"key" : 2201,
								"value" : [ 65.840000000000003 ]
							}
, 							{
								"key" : 2202,
								"value" : [ 64.829999999999998 ]
							}
, 							{
								"key" : 2203,
								"value" : [ 63.82 ]
							}
, 							{
								"key" : 2204,
								"value" : [ 62.729999999999997 ]
							}
, 							{
								"key" : 2205,
								"value" : [ 62.200000000000003 ]
							}
, 							{
								"key" : 2206,
								"value" : [ 62.490000000000002 ]
							}
, 							{
								"key" : 2207,
								"value" : [ 62.780000000000001 ]
							}
, 							{
								"key" : 2208,
								"value" : [ 62.939999999999998 ]
							}
, 							{
								"key" : 2209,
								"value" : [ 63.07 ]
							}
, 							{
								"key" : 2210,
								"value" : [ 62.729999999999997 ]
							}
, 							{
								"key" : 2211,
								"value" : [ 62.829999999999998 ]
							}
, 							{
								"key" : 2212,
								"value" : [ 62.869999999999997 ]
							}
, 							{
								"key" : 2213,
								"value" : [ 62.920000000000002 ]
							}
, 							{
								"key" : 2214,
								"value" : [ 63.93 ]
							}
, 							{
								"key" : 2215,
								"value" : [ 64.599999999999994 ]
							}
, 							{
								"key" : 2216,
								"value" : [ 65.069999999999993 ]
							}
, 							{
								"key" : 2217,
								"value" : [ 65.640000000000001 ]
							}
, 							{
								"key" : 2218,
								"value" : [ 66.150000000000006 ]
							}
, 							{
								"key" : 2219,
								"value" : [ 66.469999999999999 ]
							}
, 							{
								"key" : 2220,
								"value" : [ 66.739999999999995 ]
							}
, 							{
								"key" : 2221,
								"value" : [ 66.670000000000002 ]
							}
, 							{
								"key" : 2222,
								"value" : [ 66.599999999999994 ]
							}
, 							{
								"key" : 2223,
								"value" : [ 66.579999999999998 ]
							}
, 							{
								"key" : 2224,
								"value" : [ 66.670000000000002 ]
							}
, 							{
								"key" : 2225,
								"value" : [ 66.180000000000007 ]
							}
, 							{
								"key" : 2226,
								"value" : [ 65.680000000000007 ]
							}
, 							{
								"key" : 2227,
								"value" : [ 64.810000000000002 ]
							}
, 							{
								"key" : 2228,
								"value" : [ 63.840000000000003 ]
							}
, 							{
								"key" : 2229,
								"value" : [ 63.700000000000003 ]
							}
, 							{
								"key" : 2230,
								"value" : [ 64.129999999999995 ]
							}
, 							{
								"key" : 2231,
								"value" : [ 64.420000000000002 ]
							}
, 							{
								"key" : 2232,
								"value" : [ 63.729999999999997 ]
							}
, 							{
								"key" : 2233,
								"value" : [ 63.009999999999998 ]
							}
, 							{
								"key" : 2234,
								"value" : [ 62.259999999999998 ]
							}
, 							{
								"key" : 2235,
								"value" : [ 61.770000000000003 ]
							}
, 							{
								"key" : 2236,
								"value" : [ 61.469999999999999 ]
							}
, 							{
								"key" : 2237,
								"value" : [ 61.409999999999997 ]
							}
, 							{
								"key" : 2238,
								"value" : [ 62.740000000000002 ]
							}
, 							{
								"key" : 2239,
								"value" : [ 64.060000000000002 ]
							}
, 							{
								"key" : 2240,
								"value" : [ 66.239999999999995 ]
							}
, 							{
								"key" : 2241,
								"value" : [ 69.299999999999997 ]
							}
, 							{
								"key" : 2242,
								"value" : [ 71.819999999999993 ]
							}
, 							{
								"key" : 2243,
								"value" : [ 73.719999999999999 ]
							}
, 							{
								"key" : 2244,
								"value" : [ 75.090000000000003 ]
							}
, 							{
								"key" : 2245,
								"value" : [ 76.140000000000001 ]
							}
, 							{
								"key" : 2246,
								"value" : [ 76.959999999999994 ]
							}
, 							{
								"key" : 2247,
								"value" : [ 77.450000000000003 ]
							}
, 							{
								"key" : 2248,
								"value" : [ 77.650000000000006 ]
							}
, 							{
								"key" : 2249,
								"value" : [ 77.400000000000006 ]
							}
, 							{
								"key" : 2250,
								"value" : [ 76.530000000000001 ]
							}
, 							{
								"key" : 2251,
								"value" : [ 74.769999999999996 ]
							}
, 							{
								"key" : 2252,
								"value" : [ 73.060000000000002 ]
							}
, 							{
								"key" : 2253,
								"value" : [ 72.189999999999998 ]
							}
, 							{
								"key" : 2254,
								"value" : [ 71.459999999999994 ]
							}
, 							{
								"key" : 2255,
								"value" : [ 70.739999999999995 ]
							}
, 							{
								"key" : 2256,
								"value" : [ 70.030000000000001 ]
							}
, 							{
								"key" : 2257,
								"value" : [ 69.400000000000006 ]
							}
, 							{
								"key" : 2258,
								"value" : [ 68.790000000000006 ]
							}
, 							{
								"key" : 2259,
								"value" : [ 68.219999999999999 ]
							}
, 							{
								"key" : 2260,
								"value" : [ 67.680000000000007 ]
							}
, 							{
								"key" : 2261,
								"value" : [ 67.299999999999997 ]
							}
, 							{
								"key" : 2262,
								"value" : [ 68.019999999999996 ]
							}
, 							{
								"key" : 2263,
								"value" : [ 68.810000000000002 ]
							}
, 							{
								"key" : 2264,
								"value" : [ 70.560000000000002 ]
							}
, 							{
								"key" : 2265,
								"value" : [ 73.420000000000002 ]
							}
, 							{
								"key" : 2266,
								"value" : [ 75.810000000000002 ]
							}
, 							{
								"key" : 2267,
								"value" : [ 78.040000000000006 ]
							}
, 							{
								"key" : 2268,
								"value" : [ 79.989999999999995 ]
							}
, 							{
								"key" : 2269,
								"value" : [ 81.180000000000007 ]
							}
, 							{
								"key" : 2270,
								"value" : [ 81.459999999999994 ]
							}
, 							{
								"key" : 2271,
								"value" : [ 81.180000000000007 ]
							}
, 							{
								"key" : 2272,
								"value" : [ 80.170000000000002 ]
							}
, 							{
								"key" : 2273,
								"value" : [ 78.849999999999994 ]
							}
, 							{
								"key" : 2274,
								"value" : [ 77.5 ]
							}
, 							{
								"key" : 2275,
								"value" : [ 75.920000000000002 ]
							}
, 							{
								"key" : 2276,
								"value" : [ 74.409999999999997 ]
							}
, 							{
								"key" : 2277,
								"value" : [ 73.739999999999995 ]
							}
, 							{
								"key" : 2278,
								"value" : [ 73.200000000000003 ]
							}
, 							{
								"key" : 2279,
								"value" : [ 72.549999999999997 ]
							}
, 							{
								"key" : 2280,
								"value" : [ 71.760000000000005 ]
							}
, 							{
								"key" : 2281,
								"value" : [ 70.920000000000002 ]
							}
, 							{
								"key" : 2282,
								"value" : [ 70.359999999999999 ]
							}
, 							{
								"key" : 2283,
								"value" : [ 69.939999999999998 ]
							}
, 							{
								"key" : 2284,
								"value" : [ 69.599999999999994 ]
							}
, 							{
								"key" : 2285,
								"value" : [ 69.390000000000001 ]
							}
, 							{
								"key" : 2286,
								"value" : [ 69.780000000000001 ]
							}
, 							{
								"key" : 2287,
								"value" : [ 70.859999999999999 ]
							}
, 							{
								"key" : 2288,
								"value" : [ 72.769999999999996 ]
							}
, 							{
								"key" : 2289,
								"value" : [ 75.340000000000003 ]
							}
, 							{
								"key" : 2290,
								"value" : [ 76.930000000000007 ]
							}
, 							{
								"key" : 2291,
								"value" : [ 78.239999999999995 ]
							}
, 							{
								"key" : 2292,
								"value" : [ 79.140000000000001 ]
							}
, 							{
								"key" : 2293,
								"value" : [ 79.719999999999999 ]
							}
, 							{
								"key" : 2294,
								"value" : [ 80.109999999999999 ]
							}
, 							{
								"key" : 2295,
								"value" : [ 80.290000000000006 ]
							}
, 							{
								"key" : 2296,
								"value" : [ 80.189999999999998 ]
							}
, 							{
								"key" : 2297,
								"value" : [ 79.829999999999998 ]
							}
, 							{
								"key" : 2298,
								"value" : [ 79.019999999999996 ]
							}
, 							{
								"key" : 2299,
								"value" : [ 77.760000000000005 ]
							}
, 							{
								"key" : 2300,
								"value" : [ 76.260000000000005 ]
							}
, 							{
								"key" : 2301,
								"value" : [ 75.609999999999999 ]
							}
, 							{
								"key" : 2302,
								"value" : [ 75.069999999999993 ]
							}
, 							{
								"key" : 2303,
								"value" : [ 74.409999999999997 ]
							}
, 							{
								"key" : 2304,
								"value" : [ 73.799999999999997 ]
							}
, 							{
								"key" : 2305,
								"value" : [ 73.939999999999998 ]
							}
, 							{
								"key" : 2306,
								"value" : [ 73.670000000000002 ]
							}
, 							{
								"key" : 2307,
								"value" : [ 73.269999999999996 ]
							}
, 							{
								"key" : 2308,
								"value" : [ 72.909999999999997 ]
							}
, 							{
								"key" : 2309,
								"value" : [ 72.189999999999998 ]
							}
, 							{
								"key" : 2310,
								"value" : [ 72.069999999999993 ]
							}
, 							{
								"key" : 2311,
								"value" : [ 73.0 ]
							}
, 							{
								"key" : 2312,
								"value" : [ 75.25 ]
							}
, 							{
								"key" : 2313,
								"value" : [ 77.650000000000006 ]
							}
, 							{
								"key" : 2314,
								"value" : [ 78.980000000000004 ]
							}
, 							{
								"key" : 2315,
								"value" : [ 80.060000000000002 ]
							}
, 							{
								"key" : 2316,
								"value" : [ 80.829999999999998 ]
							}
, 							{
								"key" : 2317,
								"value" : [ 81.140000000000001 ]
							}
, 							{
								"key" : 2318,
								"value" : [ 81.230000000000004 ]
							}
, 							{
								"key" : 2319,
								"value" : [ 81.25 ]
							}
, 							{
								"key" : 2320,
								"value" : [ 80.799999999999997 ]
							}
, 							{
								"key" : 2321,
								"value" : [ 80.109999999999999 ]
							}
, 							{
								"key" : 2322,
								"value" : [ 79.140000000000001 ]
							}
, 							{
								"key" : 2323,
								"value" : [ 77.680000000000007 ]
							}
, 							{
								"key" : 2324,
								"value" : [ 76.150000000000006 ]
							}
, 							{
								"key" : 2325,
								"value" : [ 75.359999999999999 ]
							}
, 							{
								"key" : 2326,
								"value" : [ 74.680000000000007 ]
							}
, 							{
								"key" : 2327,
								"value" : [ 74.049999999999997 ]
							}
, 							{
								"key" : 2328,
								"value" : [ 73.469999999999999 ]
							}
, 							{
								"key" : 2329,
								"value" : [ 72.909999999999997 ]
							}
, 							{
								"key" : 2330,
								"value" : [ 72.340000000000003 ]
							}
, 							{
								"key" : 2331,
								"value" : [ 71.689999999999998 ]
							}
, 							{
								"key" : 2332,
								"value" : [ 71.010000000000005 ]
							}
, 							{
								"key" : 2333,
								"value" : [ 70.859999999999999 ]
							}
, 							{
								"key" : 2334,
								"value" : [ 71.730000000000004 ]
							}
, 							{
								"key" : 2335,
								"value" : [ 72.75 ]
							}
, 							{
								"key" : 2336,
								"value" : [ 74.879999999999995 ]
							}
, 							{
								"key" : 2337,
								"value" : [ 76.870000000000005 ]
							}
, 							{
								"key" : 2338,
								"value" : [ 78.219999999999999 ]
							}
, 							{
								"key" : 2339,
								"value" : [ 79.159999999999997 ]
							}
, 							{
								"key" : 2340,
								"value" : [ 79.810000000000002 ]
							}
, 							{
								"key" : 2341,
								"value" : [ 79.969999999999999 ]
							}
, 							{
								"key" : 2342,
								"value" : [ 79.700000000000003 ]
							}
, 							{
								"key" : 2343,
								"value" : [ 79.269999999999996 ]
							}
, 							{
								"key" : 2344,
								"value" : [ 77.5 ]
							}
, 							{
								"key" : 2345,
								"value" : [ 74.209999999999994 ]
							}
, 							{
								"key" : 2346,
								"value" : [ 70.469999999999999 ]
							}
, 							{
								"key" : 2347,
								"value" : [ 67.439999999999998 ]
							}
, 							{
								"key" : 2348,
								"value" : [ 66.430000000000007 ]
							}
, 							{
								"key" : 2349,
								"value" : [ 66.489999999999995 ]
							}
, 							{
								"key" : 2350,
								"value" : [ 66.629999999999995 ]
							}
, 							{
								"key" : 2351,
								"value" : [ 66.689999999999998 ]
							}
, 							{
								"key" : 2352,
								"value" : [ 66.469999999999999 ]
							}
, 							{
								"key" : 2353,
								"value" : [ 66.310000000000002 ]
							}
, 							{
								"key" : 2354,
								"value" : [ 66.090000000000003 ]
							}
, 							{
								"key" : 2355,
								"value" : [ 65.769999999999996 ]
							}
, 							{
								"key" : 2356,
								"value" : [ 65.439999999999998 ]
							}
, 							{
								"key" : 2357,
								"value" : [ 64.989999999999995 ]
							}
, 							{
								"key" : 2358,
								"value" : [ 64.670000000000002 ]
							}
, 							{
								"key" : 2359,
								"value" : [ 64.709999999999994 ]
							}
, 							{
								"key" : 2360,
								"value" : [ 65.390000000000001 ]
							}
, 							{
								"key" : 2361,
								"value" : [ 66.760000000000005 ]
							}
, 							{
								"key" : 2362,
								"value" : [ 67.640000000000001 ]
							}
, 							{
								"key" : 2363,
								"value" : [ 68.219999999999999 ]
							}
, 							{
								"key" : 2364,
								"value" : [ 68.629999999999995 ]
							}
, 							{
								"key" : 2365,
								"value" : [ 69.040000000000006 ]
							}
, 							{
								"key" : 2366,
								"value" : [ 68.769999999999996 ]
							}
, 							{
								"key" : 2367,
								"value" : [ 67.890000000000001 ]
							}
, 							{
								"key" : 2368,
								"value" : [ 66.469999999999999 ]
							}
, 							{
								"key" : 2369,
								"value" : [ 64.989999999999995 ]
							}
, 							{
								"key" : 2370,
								"value" : [ 64.400000000000006 ]
							}
, 							{
								"key" : 2371,
								"value" : [ 64.170000000000002 ]
							}
, 							{
								"key" : 2372,
								"value" : [ 63.68 ]
							}
, 							{
								"key" : 2373,
								"value" : [ 63.409999999999997 ]
							}
, 							{
								"key" : 2374,
								"value" : [ 63.450000000000003 ]
							}
, 							{
								"key" : 2375,
								"value" : [ 63.280000000000001 ]
							}
, 							{
								"key" : 2376,
								"value" : [ 63.189999999999998 ]
							}
, 							{
								"key" : 2377,
								"value" : [ 63.090000000000003 ]
							}
, 							{
								"key" : 2378,
								"value" : [ 62.960000000000001 ]
							}
, 							{
								"key" : 2379,
								"value" : [ 62.759999999999998 ]
							}
, 							{
								"key" : 2380,
								"value" : [ 62.509999999999998 ]
							}
, 							{
								"key" : 2381,
								"value" : [ 62.469999999999999 ]
							}
, 							{
								"key" : 2382,
								"value" : [ 64.219999999999999 ]
							}
, 							{
								"key" : 2383,
								"value" : [ 65.530000000000001 ]
							}
, 							{
								"key" : 2384,
								"value" : [ 66.290000000000006 ]
							}
, 							{
								"key" : 2385,
								"value" : [ 66.670000000000002 ]
							}
, 							{
								"key" : 2386,
								"value" : [ 67.120000000000005 ]
							}
, 							{
								"key" : 2387,
								"value" : [ 68.230000000000004 ]
							}
, 							{
								"key" : 2388,
								"value" : [ 68.829999999999998 ]
							}
, 							{
								"key" : 2389,
								"value" : [ 69.040000000000006 ]
							}
, 							{
								"key" : 2390,
								"value" : [ 69.120000000000005 ]
							}
, 							{
								"key" : 2391,
								"value" : [ 68.920000000000002 ]
							}
, 							{
								"key" : 2392,
								"value" : [ 68.670000000000002 ]
							}
, 							{
								"key" : 2393,
								"value" : [ 68.590000000000003 ]
							}
, 							{
								"key" : 2394,
								"value" : [ 68.409999999999997 ]
							}
, 							{
								"key" : 2395,
								"value" : [ 67.780000000000001 ]
							}
, 							{
								"key" : 2396,
								"value" : [ 66.780000000000001 ]
							}
, 							{
								"key" : 2397,
								"value" : [ 66.469999999999999 ]
							}
, 							{
								"key" : 2398,
								"value" : [ 66.159999999999997 ]
							}
, 							{
								"key" : 2399,
								"value" : [ 65.709999999999994 ]
							}
, 							{
								"key" : 2400,
								"value" : [ 65.209999999999994 ]
							}
, 							{
								"key" : 2401,
								"value" : [ 64.760000000000005 ]
							}
, 							{
								"key" : 2402,
								"value" : [ 64.540000000000006 ]
							}
, 							{
								"key" : 2403,
								"value" : [ 64.469999999999999 ]
							}
, 							{
								"key" : 2404,
								"value" : [ 64.420000000000002 ]
							}
, 							{
								"key" : 2405,
								"value" : [ 64.709999999999994 ]
							}
, 							{
								"key" : 2406,
								"value" : [ 65.890000000000001 ]
							}
, 							{
								"key" : 2407,
								"value" : [ 66.379999999999995 ]
							}
, 							{
								"key" : 2408,
								"value" : [ 65.909999999999997 ]
							}
, 							{
								"key" : 2409,
								"value" : [ 65.260000000000005 ]
							}
, 							{
								"key" : 2410,
								"value" : [ 65.609999999999999 ]
							}
, 							{
								"key" : 2411,
								"value" : [ 66.540000000000006 ]
							}
, 							{
								"key" : 2412,
								"value" : [ 66.939999999999998 ]
							}
, 							{
								"key" : 2413,
								"value" : [ 67.510000000000005 ]
							}
, 							{
								"key" : 2414,
								"value" : [ 68.670000000000002 ]
							}
, 							{
								"key" : 2415,
								"value" : [ 69.689999999999998 ]
							}
, 							{
								"key" : 2416,
								"value" : [ 70.159999999999997 ]
							}
, 							{
								"key" : 2417,
								"value" : [ 69.799999999999997 ]
							}
, 							{
								"key" : 2418,
								"value" : [ 68.849999999999994 ]
							}
, 							{
								"key" : 2419,
								"value" : [ 67.769999999999996 ]
							}
, 							{
								"key" : 2420,
								"value" : [ 67.299999999999997 ]
							}
, 							{
								"key" : 2421,
								"value" : [ 67.409999999999997 ]
							}
, 							{
								"key" : 2422,
								"value" : [ 67.769999999999996 ]
							}
, 							{
								"key" : 2423,
								"value" : [ 67.959999999999994 ]
							}
, 							{
								"key" : 2424,
								"value" : [ 67.840000000000003 ]
							}
, 							{
								"key" : 2425,
								"value" : [ 67.640000000000001 ]
							}
, 							{
								"key" : 2426,
								"value" : [ 67.390000000000001 ]
							}
, 							{
								"key" : 2427,
								"value" : [ 67.140000000000001 ]
							}
, 							{
								"key" : 2428,
								"value" : [ 66.920000000000002 ]
							}
, 							{
								"key" : 2429,
								"value" : [ 66.849999999999994 ]
							}
, 							{
								"key" : 2430,
								"value" : [ 67.010000000000005 ]
							}
, 							{
								"key" : 2431,
								"value" : [ 67.319999999999993 ]
							}
, 							{
								"key" : 2432,
								"value" : [ 67.620000000000005 ]
							}
, 							{
								"key" : 2433,
								"value" : [ 68.0 ]
							}
, 							{
								"key" : 2434,
								"value" : [ 68.269999999999996 ]
							}
, 							{
								"key" : 2435,
								"value" : [ 68.609999999999999 ]
							}
, 							{
								"key" : 2436,
								"value" : [ 68.849999999999994 ]
							}
, 							{
								"key" : 2437,
								"value" : [ 68.920000000000002 ]
							}
, 							{
								"key" : 2438,
								"value" : [ 68.340000000000003 ]
							}
, 							{
								"key" : 2439,
								"value" : [ 67.370000000000005 ]
							}
, 							{
								"key" : 2440,
								"value" : [ 66.870000000000005 ]
							}
, 							{
								"key" : 2441,
								"value" : [ 66.870000000000005 ]
							}
, 							{
								"key" : 2442,
								"value" : [ 67.079999999999998 ]
							}
, 							{
								"key" : 2443,
								"value" : [ 67.120000000000005 ]
							}
, 							{
								"key" : 2444,
								"value" : [ 67.079999999999998 ]
							}
, 							{
								"key" : 2445,
								"value" : [ 67.349999999999994 ]
							}
, 							{
								"key" : 2446,
								"value" : [ 67.620000000000005 ]
							}
, 							{
								"key" : 2447,
								"value" : [ 67.75 ]
							}
, 							{
								"key" : 2448,
								"value" : [ 67.640000000000001 ]
							}
, 							{
								"key" : 2449,
								"value" : [ 67.370000000000005 ]
							}
, 							{
								"key" : 2450,
								"value" : [ 66.829999999999998 ]
							}
, 							{
								"key" : 2451,
								"value" : [ 66.400000000000006 ]
							}
, 							{
								"key" : 2452,
								"value" : [ 65.980000000000004 ]
							}
, 							{
								"key" : 2453,
								"value" : [ 65.840000000000003 ]
							}
, 							{
								"key" : 2454,
								"value" : [ 67.049999999999997 ]
							}
, 							{
								"key" : 2455,
								"value" : [ 67.840000000000003 ]
							}
, 							{
								"key" : 2456,
								"value" : [ 68.560000000000002 ]
							}
, 							{
								"key" : 2457,
								"value" : [ 69.390000000000001 ]
							}
, 							{
								"key" : 2458,
								"value" : [ 70.049999999999997 ]
							}
, 							{
								"key" : 2459,
								"value" : [ 70.340000000000003 ]
							}
, 							{
								"key" : 2460,
								"value" : [ 70.140000000000001 ]
							}
, 							{
								"key" : 2461,
								"value" : [ 69.599999999999994 ]
							}
, 							{
								"key" : 2462,
								"value" : [ 68.849999999999994 ]
							}
, 							{
								"key" : 2463,
								"value" : [ 68.269999999999996 ]
							}
, 							{
								"key" : 2464,
								"value" : [ 68.180000000000007 ]
							}
, 							{
								"key" : 2465,
								"value" : [ 68.219999999999999 ]
							}
, 							{
								"key" : 2466,
								"value" : [ 67.950000000000003 ]
							}
, 							{
								"key" : 2467,
								"value" : [ 67.480000000000004 ]
							}
, 							{
								"key" : 2468,
								"value" : [ 67.120000000000005 ]
							}
, 							{
								"key" : 2469,
								"value" : [ 67.390000000000001 ]
							}
, 							{
								"key" : 2470,
								"value" : [ 67.599999999999994 ]
							}
, 							{
								"key" : 2471,
								"value" : [ 67.599999999999994 ]
							}
, 							{
								"key" : 2472,
								"value" : [ 67.659999999999997 ]
							}
, 							{
								"key" : 2473,
								"value" : [ 67.769999999999996 ]
							}
, 							{
								"key" : 2474,
								"value" : [ 68.140000000000001 ]
							}
, 							{
								"key" : 2475,
								"value" : [ 68.409999999999997 ]
							}
, 							{
								"key" : 2476,
								"value" : [ 68.469999999999999 ]
							}
, 							{
								"key" : 2477,
								"value" : [ 68.579999999999998 ]
							}
, 							{
								"key" : 2478,
								"value" : [ 69.060000000000002 ]
							}
, 							{
								"key" : 2479,
								"value" : [ 69.780000000000001 ]
							}
, 							{
								"key" : 2480,
								"value" : [ 70.810000000000002 ]
							}
, 							{
								"key" : 2481,
								"value" : [ 71.819999999999993 ]
							}
, 							{
								"key" : 2482,
								"value" : [ 72.319999999999993 ]
							}
, 							{
								"key" : 2483,
								"value" : [ 72.459999999999994 ]
							}
, 							{
								"key" : 2484,
								"value" : [ 72.719999999999999 ]
							}
, 							{
								"key" : 2485,
								"value" : [ 72.989999999999995 ]
							}
, 							{
								"key" : 2486,
								"value" : [ 73.379999999999995 ]
							}
, 							{
								"key" : 2487,
								"value" : [ 74.069999999999993 ]
							}
, 							{
								"key" : 2488,
								"value" : [ 74.969999999999999 ]
							}
, 							{
								"key" : 2489,
								"value" : [ 75.920000000000002 ]
							}
, 							{
								"key" : 2490,
								"value" : [ 76.280000000000001 ]
							}
, 							{
								"key" : 2491,
								"value" : [ 75.109999999999999 ]
							}
, 							{
								"key" : 2492,
								"value" : [ 72.719999999999999 ]
							}
, 							{
								"key" : 2493,
								"value" : [ 71.489999999999995 ]
							}
, 							{
								"key" : 2494,
								"value" : [ 70.950000000000003 ]
							}
, 							{
								"key" : 2495,
								"value" : [ 70.920000000000002 ]
							}
, 							{
								"key" : 2496,
								"value" : [ 70.560000000000002 ]
							}
, 							{
								"key" : 2497,
								"value" : [ 69.689999999999998 ]
							}
, 							{
								"key" : 2498,
								"value" : [ 69.060000000000002 ]
							}
, 							{
								"key" : 2499,
								"value" : [ 68.719999999999999 ]
							}
, 							{
								"key" : 2500,
								"value" : [ 68.379999999999995 ]
							}
, 							{
								"key" : 2501,
								"value" : [ 68.090000000000003 ]
							}
, 							{
								"key" : 2502,
								"value" : [ 68.950000000000003 ]
							}
, 							{
								"key" : 2503,
								"value" : [ 69.930000000000007 ]
							}
, 							{
								"key" : 2504,
								"value" : [ 71.959999999999994 ]
							}
, 							{
								"key" : 2505,
								"value" : [ 74.519999999999996 ]
							}
, 							{
								"key" : 2506,
								"value" : [ 75.900000000000006 ]
							}
, 							{
								"key" : 2507,
								"value" : [ 76.769999999999996 ]
							}
, 							{
								"key" : 2508,
								"value" : [ 77.469999999999999 ]
							}
, 							{
								"key" : 2509,
								"value" : [ 78.060000000000002 ]
							}
, 							{
								"key" : 2510,
								"value" : [ 78.120000000000005 ]
							}
, 							{
								"key" : 2511,
								"value" : [ 77.859999999999999 ]
							}
, 							{
								"key" : 2512,
								"value" : [ 77.090000000000003 ]
							}
, 							{
								"key" : 2513,
								"value" : [ 76.120000000000005 ]
							}
, 							{
								"key" : 2514,
								"value" : [ 75.290000000000006 ]
							}
, 							{
								"key" : 2515,
								"value" : [ 74.530000000000001 ]
							}
, 							{
								"key" : 2516,
								"value" : [ 73.959999999999994 ]
							}
, 							{
								"key" : 2517,
								"value" : [ 73.599999999999994 ]
							}
, 							{
								"key" : 2518,
								"value" : [ 73.150000000000006 ]
							}
, 							{
								"key" : 2519,
								"value" : [ 73.109999999999999 ]
							}
, 							{
								"key" : 2520,
								"value" : [ 73.489999999999995 ]
							}
, 							{
								"key" : 2521,
								"value" : [ 72.719999999999999 ]
							}
, 							{
								"key" : 2522,
								"value" : [ 72.010000000000005 ]
							}
, 							{
								"key" : 2523,
								"value" : [ 71.959999999999994 ]
							}
, 							{
								"key" : 2524,
								"value" : [ 72.459999999999994 ]
							}
, 							{
								"key" : 2525,
								"value" : [ 72.590000000000003 ]
							}
, 							{
								"key" : 2526,
								"value" : [ 72.140000000000001 ]
							}
, 							{
								"key" : 2527,
								"value" : [ 72.049999999999997 ]
							}
, 							{
								"key" : 2528,
								"value" : [ 72.069999999999993 ]
							}
, 							{
								"key" : 2529,
								"value" : [ 71.709999999999994 ]
							}
, 							{
								"key" : 2530,
								"value" : [ 71.689999999999998 ]
							}
, 							{
								"key" : 2531,
								"value" : [ 71.939999999999998 ]
							}
, 							{
								"key" : 2532,
								"value" : [ 72.540000000000006 ]
							}
, 							{
								"key" : 2533,
								"value" : [ 73.109999999999999 ]
							}
, 							{
								"key" : 2534,
								"value" : [ 73.239999999999995 ]
							}
, 							{
								"key" : 2535,
								"value" : [ 72.590000000000003 ]
							}
, 							{
								"key" : 2536,
								"value" : [ 71.650000000000006 ]
							}
, 							{
								"key" : 2537,
								"value" : [ 70.569999999999993 ]
							}
, 							{
								"key" : 2538,
								"value" : [ 69.640000000000001 ]
							}
, 							{
								"key" : 2539,
								"value" : [ 68.849999999999994 ]
							}
, 							{
								"key" : 2540,
								"value" : [ 68.230000000000004 ]
							}
, 							{
								"key" : 2541,
								"value" : [ 68.019999999999996 ]
							}
, 							{
								"key" : 2542,
								"value" : [ 67.859999999999999 ]
							}
, 							{
								"key" : 2543,
								"value" : [ 67.640000000000001 ]
							}
, 							{
								"key" : 2544,
								"value" : [ 67.409999999999997 ]
							}
, 							{
								"key" : 2545,
								"value" : [ 67.260000000000005 ]
							}
, 							{
								"key" : 2546,
								"value" : [ 67.189999999999998 ]
							}
, 							{
								"key" : 2547,
								"value" : [ 67.189999999999998 ]
							}
, 							{
								"key" : 2548,
								"value" : [ 67.319999999999993 ]
							}
, 							{
								"key" : 2549,
								"value" : [ 67.439999999999998 ]
							}
, 							{
								"key" : 2550,
								"value" : [ 67.620000000000005 ]
							}
, 							{
								"key" : 2551,
								"value" : [ 67.680000000000007 ]
							}
, 							{
								"key" : 2552,
								"value" : [ 67.659999999999997 ]
							}
, 							{
								"key" : 2553,
								"value" : [ 67.659999999999997 ]
							}
, 							{
								"key" : 2554,
								"value" : [ 67.870000000000005 ]
							}
, 							{
								"key" : 2555,
								"value" : [ 68.129999999999995 ]
							}
, 							{
								"key" : 2556,
								"value" : [ 68.430000000000007 ]
							}
, 							{
								"key" : 2557,
								"value" : [ 68.540000000000006 ]
							}
, 							{
								"key" : 2558,
								"value" : [ 68.680000000000007 ]
							}
, 							{
								"key" : 2559,
								"value" : [ 68.859999999999999 ]
							}
, 							{
								"key" : 2560,
								"value" : [ 69.040000000000006 ]
							}
, 							{
								"key" : 2561,
								"value" : [ 69.099999999999994 ]
							}
, 							{
								"key" : 2562,
								"value" : [ 69.150000000000006 ]
							}
, 							{
								"key" : 2563,
								"value" : [ 68.939999999999998 ]
							}
, 							{
								"key" : 2564,
								"value" : [ 68.609999999999999 ]
							}
, 							{
								"key" : 2565,
								"value" : [ 68.489999999999995 ]
							}
, 							{
								"key" : 2566,
								"value" : [ 68.430000000000007 ]
							}
, 							{
								"key" : 2567,
								"value" : [ 68.319999999999993 ]
							}
, 							{
								"key" : 2568,
								"value" : [ 68.069999999999993 ]
							}
, 							{
								"key" : 2569,
								"value" : [ 67.680000000000007 ]
							}
, 							{
								"key" : 2570,
								"value" : [ 67.239999999999995 ]
							}
, 							{
								"key" : 2571,
								"value" : [ 66.959999999999994 ]
							}
, 							{
								"key" : 2572,
								"value" : [ 66.810000000000002 ]
							}
, 							{
								"key" : 2573,
								"value" : [ 66.739999999999995 ]
							}
, 							{
								"key" : 2574,
								"value" : [ 67.5 ]
							}
, 							{
								"key" : 2575,
								"value" : [ 68.140000000000001 ]
							}
, 							{
								"key" : 2576,
								"value" : [ 68.859999999999999 ]
							}
, 							{
								"key" : 2577,
								"value" : [ 69.420000000000002 ]
							}
, 							{
								"key" : 2578,
								"value" : [ 69.709999999999994 ]
							}
, 							{
								"key" : 2579,
								"value" : [ 70.030000000000001 ]
							}
, 							{
								"key" : 2580,
								"value" : [ 70.379999999999995 ]
							}
, 							{
								"key" : 2581,
								"value" : [ 70.569999999999993 ]
							}
, 							{
								"key" : 2582,
								"value" : [ 70.719999999999999 ]
							}
, 							{
								"key" : 2583,
								"value" : [ 70.739999999999995 ]
							}
, 							{
								"key" : 2584,
								"value" : [ 70.590000000000003 ]
							}
, 							{
								"key" : 2585,
								"value" : [ 70.390000000000001 ]
							}
, 							{
								"key" : 2586,
								"value" : [ 69.909999999999997 ]
							}
, 							{
								"key" : 2587,
								"value" : [ 68.849999999999994 ]
							}
, 							{
								"key" : 2588,
								"value" : [ 67.75 ]
							}
, 							{
								"key" : 2589,
								"value" : [ 67.75 ]
							}
, 							{
								"key" : 2590,
								"value" : [ 67.950000000000003 ]
							}
, 							{
								"key" : 2591,
								"value" : [ 68.25 ]
							}
, 							{
								"key" : 2592,
								"value" : [ 68.590000000000003 ]
							}
, 							{
								"key" : 2593,
								"value" : [ 68.670000000000002 ]
							}
, 							{
								"key" : 2594,
								"value" : [ 68.519999999999996 ]
							}
, 							{
								"key" : 2595,
								"value" : [ 68.290000000000006 ]
							}
, 							{
								"key" : 2596,
								"value" : [ 67.980000000000004 ]
							}
, 							{
								"key" : 2597,
								"value" : [ 67.730000000000004 ]
							}
, 							{
								"key" : 2598,
								"value" : [ 68.719999999999999 ]
							}
, 							{
								"key" : 2599,
								"value" : [ 69.400000000000006 ]
							}
, 							{
								"key" : 2600,
								"value" : [ 70.450000000000003 ]
							}
, 							{
								"key" : 2601,
								"value" : [ 71.599999999999994 ]
							}
, 							{
								"key" : 2602,
								"value" : [ 72.5 ]
							}
, 							{
								"key" : 2603,
								"value" : [ 73.150000000000006 ]
							}
, 							{
								"key" : 2604,
								"value" : [ 73.579999999999998 ]
							}
, 							{
								"key" : 2605,
								"value" : [ 73.760000000000005 ]
							}
, 							{
								"key" : 2606,
								"value" : [ 73.760000000000005 ]
							}
, 							{
								"key" : 2607,
								"value" : [ 73.530000000000001 ]
							}
, 							{
								"key" : 2608,
								"value" : [ 73.079999999999998 ]
							}
, 							{
								"key" : 2609,
								"value" : [ 72.450000000000003 ]
							}
, 							{
								"key" : 2610,
								"value" : [ 71.599999999999994 ]
							}
, 							{
								"key" : 2611,
								"value" : [ 70.200000000000003 ]
							}
, 							{
								"key" : 2612,
								"value" : [ 68.609999999999999 ]
							}
, 							{
								"key" : 2613,
								"value" : [ 68.069999999999993 ]
							}
, 							{
								"key" : 2614,
								"value" : [ 67.769999999999996 ]
							}
, 							{
								"key" : 2615,
								"value" : [ 67.549999999999997 ]
							}
, 							{
								"key" : 2616,
								"value" : [ 67.370000000000005 ]
							}
, 							{
								"key" : 2617,
								"value" : [ 67.239999999999995 ]
							}
, 							{
								"key" : 2618,
								"value" : [ 67.140000000000001 ]
							}
, 							{
								"key" : 2619,
								"value" : [ 67.010000000000005 ]
							}
, 							{
								"key" : 2620,
								"value" : [ 66.959999999999994 ]
							}
, 							{
								"key" : 2621,
								"value" : [ 66.879999999999995 ]
							}
, 							{
								"key" : 2622,
								"value" : [ 67.930000000000007 ]
							}
, 							{
								"key" : 2623,
								"value" : [ 69.390000000000001 ]
							}
, 							{
								"key" : 2624,
								"value" : [ 70.879999999999995 ]
							}
, 							{
								"key" : 2625,
								"value" : [ 72.549999999999997 ]
							}
, 							{
								"key" : 2626,
								"value" : [ 74.25 ]
							}
, 							{
								"key" : 2627,
								"value" : [ 75.340000000000003 ]
							}
, 							{
								"key" : 2628,
								"value" : [ 76.010000000000005 ]
							}
, 							{
								"key" : 2629,
								"value" : [ 76.049999999999997 ]
							}
, 							{
								"key" : 2630,
								"value" : [ 75.879999999999995 ]
							}
, 							{
								"key" : 2631,
								"value" : [ 75.519999999999996 ]
							}
, 							{
								"key" : 2632,
								"value" : [ 74.879999999999995 ]
							}
, 							{
								"key" : 2633,
								"value" : [ 74.069999999999993 ]
							}
, 							{
								"key" : 2634,
								"value" : [ 72.989999999999995 ]
							}
, 							{
								"key" : 2635,
								"value" : [ 71.329999999999998 ]
							}
, 							{
								"key" : 2636,
								"value" : [ 69.870000000000005 ]
							}
, 							{
								"key" : 2637,
								"value" : [ 69.599999999999994 ]
							}
, 							{
								"key" : 2638,
								"value" : [ 70.030000000000001 ]
							}
, 							{
								"key" : 2639,
								"value" : [ 70.450000000000003 ]
							}
, 							{
								"key" : 2640,
								"value" : [ 70.230000000000004 ]
							}
, 							{
								"key" : 2641,
								"value" : [ 69.760000000000005 ]
							}
, 							{
								"key" : 2642,
								"value" : [ 69.040000000000006 ]
							}
, 							{
								"key" : 2643,
								"value" : [ 68.560000000000002 ]
							}
, 							{
								"key" : 2644,
								"value" : [ 68.159999999999997 ]
							}
, 							{
								"key" : 2645,
								"value" : [ 67.819999999999993 ]
							}
, 							{
								"key" : 2646,
								"value" : [ 68.859999999999999 ]
							}
, 							{
								"key" : 2647,
								"value" : [ 70.340000000000003 ]
							}
, 							{
								"key" : 2648,
								"value" : [ 71.890000000000001 ]
							}
, 							{
								"key" : 2649,
								"value" : [ 74.519999999999996 ]
							}
, 							{
								"key" : 2650,
								"value" : [ 76.260000000000005 ]
							}
, 							{
								"key" : 2651,
								"value" : [ 77.519999999999996 ]
							}
, 							{
								"key" : 2652,
								"value" : [ 78.890000000000001 ]
							}
, 							{
								"key" : 2653,
								"value" : [ 80.170000000000002 ]
							}
, 							{
								"key" : 2654,
								"value" : [ 80.870000000000005 ]
							}
, 							{
								"key" : 2655,
								"value" : [ 80.260000000000005 ]
							}
, 							{
								"key" : 2656,
								"value" : [ 77.849999999999994 ]
							}
, 							{
								"key" : 2657,
								"value" : [ 73.939999999999998 ]
							}
, 							{
								"key" : 2658,
								"value" : [ 70.269999999999996 ]
							}
, 							{
								"key" : 2659,
								"value" : [ 68.810000000000002 ]
							}
, 							{
								"key" : 2660,
								"value" : [ 68.340000000000003 ]
							}
, 							{
								"key" : 2661,
								"value" : [ 68.129999999999995 ]
							}
, 							{
								"key" : 2662,
								"value" : [ 67.909999999999997 ]
							}
, 							{
								"key" : 2663,
								"value" : [ 67.680000000000007 ]
							}
, 							{
								"key" : 2664,
								"value" : [ 67.859999999999999 ]
							}
, 							{
								"key" : 2665,
								"value" : [ 67.870000000000005 ]
							}
, 							{
								"key" : 2666,
								"value" : [ 67.819999999999993 ]
							}
, 							{
								"key" : 2667,
								"value" : [ 67.480000000000004 ]
							}
, 							{
								"key" : 2668,
								"value" : [ 67.260000000000005 ]
							}
, 							{
								"key" : 2669,
								"value" : [ 67.010000000000005 ]
							}
, 							{
								"key" : 2670,
								"value" : [ 68.0 ]
							}
, 							{
								"key" : 2671,
								"value" : [ 68.680000000000007 ]
							}
, 							{
								"key" : 2672,
								"value" : [ 69.099999999999994 ]
							}
, 							{
								"key" : 2673,
								"value" : [ 69.370000000000005 ]
							}
, 							{
								"key" : 2674,
								"value" : [ 69.689999999999998 ]
							}
, 							{
								"key" : 2675,
								"value" : [ 70.159999999999997 ]
							}
, 							{
								"key" : 2676,
								"value" : [ 70.230000000000004 ]
							}
, 							{
								"key" : 2677,
								"value" : [ 69.370000000000005 ]
							}
, 							{
								"key" : 2678,
								"value" : [ 68.739999999999995 ]
							}
, 							{
								"key" : 2679,
								"value" : [ 68.469999999999999 ]
							}
, 							{
								"key" : 2680,
								"value" : [ 68.469999999999999 ]
							}
, 							{
								"key" : 2681,
								"value" : [ 68.560000000000002 ]
							}
, 							{
								"key" : 2682,
								"value" : [ 68.290000000000006 ]
							}
, 							{
								"key" : 2683,
								"value" : [ 67.640000000000001 ]
							}
, 							{
								"key" : 2684,
								"value" : [ 66.900000000000006 ]
							}
, 							{
								"key" : 2685,
								"value" : [ 66.780000000000001 ]
							}
, 							{
								"key" : 2686,
								"value" : [ 66.510000000000005 ]
							}
, 							{
								"key" : 2687,
								"value" : [ 66.430000000000007 ]
							}
, 							{
								"key" : 2688,
								"value" : [ 66.519999999999996 ]
							}
, 							{
								"key" : 2689,
								"value" : [ 66.700000000000003 ]
							}
, 							{
								"key" : 2690,
								"value" : [ 66.870000000000005 ]
							}
, 							{
								"key" : 2691,
								"value" : [ 66.900000000000006 ]
							}
, 							{
								"key" : 2692,
								"value" : [ 66.900000000000006 ]
							}
, 							{
								"key" : 2693,
								"value" : [ 66.780000000000001 ]
							}
, 							{
								"key" : 2694,
								"value" : [ 67.349999999999994 ]
							}
, 							{
								"key" : 2695,
								"value" : [ 68.790000000000006 ]
							}
, 							{
								"key" : 2696,
								"value" : [ 70.430000000000007 ]
							}
, 							{
								"key" : 2697,
								"value" : [ 72.719999999999999 ]
							}
, 							{
								"key" : 2698,
								"value" : [ 74.969999999999999 ]
							}
, 							{
								"key" : 2699,
								"value" : [ 76.780000000000001 ]
							}
, 							{
								"key" : 2700,
								"value" : [ 78.040000000000006 ]
							}
, 							{
								"key" : 2701,
								"value" : [ 78.760000000000005 ]
							}
, 							{
								"key" : 2702,
								"value" : [ 78.870000000000005 ]
							}
, 							{
								"key" : 2703,
								"value" : [ 78.799999999999997 ]
							}
, 							{
								"key" : 2704,
								"value" : [ 78.569999999999993 ]
							}
, 							{
								"key" : 2705,
								"value" : [ 78.129999999999995 ]
							}
, 							{
								"key" : 2706,
								"value" : [ 77.159999999999997 ]
							}
, 							{
								"key" : 2707,
								"value" : [ 75.469999999999999 ]
							}
, 							{
								"key" : 2708,
								"value" : [ 74.390000000000001 ]
							}
, 							{
								"key" : 2709,
								"value" : [ 74.260000000000005 ]
							}
, 							{
								"key" : 2710,
								"value" : [ 74.069999999999993 ]
							}
, 							{
								"key" : 2711,
								"value" : [ 73.890000000000001 ]
							}
, 							{
								"key" : 2712,
								"value" : [ 73.439999999999998 ]
							}
, 							{
								"key" : 2713,
								"value" : [ 72.909999999999997 ]
							}
, 							{
								"key" : 2714,
								"value" : [ 72.280000000000001 ]
							}
, 							{
								"key" : 2715,
								"value" : [ 71.829999999999998 ]
							}
, 							{
								"key" : 2716,
								"value" : [ 71.439999999999998 ]
							}
, 							{
								"key" : 2717,
								"value" : [ 71.170000000000002 ]
							}
, 							{
								"key" : 2718,
								"value" : [ 71.890000000000001 ]
							}
, 							{
								"key" : 2719,
								"value" : [ 72.900000000000006 ]
							}
, 							{
								"key" : 2720,
								"value" : [ 74.769999999999996 ]
							}
, 							{
								"key" : 2721,
								"value" : [ 77.540000000000006 ]
							}
, 							{
								"key" : 2722,
								"value" : [ 79.390000000000001 ]
							}
, 							{
								"key" : 2723,
								"value" : [ 80.939999999999998 ]
							}
, 							{
								"key" : 2724,
								"value" : [ 82.290000000000006 ]
							}
, 							{
								"key" : 2725,
								"value" : [ 82.670000000000002 ]
							}
, 							{
								"key" : 2726,
								"value" : [ 82.650000000000006 ]
							}
, 							{
								"key" : 2727,
								"value" : [ 82.420000000000002 ]
							}
, 							{
								"key" : 2728,
								"value" : [ 82.359999999999999 ]
							}
, 							{
								"key" : 2729,
								"value" : [ 81.810000000000002 ]
							}
, 							{
								"key" : 2730,
								"value" : [ 80.939999999999998 ]
							}
, 							{
								"key" : 2731,
								"value" : [ 79.25 ]
							}
, 							{
								"key" : 2732,
								"value" : [ 77.540000000000006 ]
							}
, 							{
								"key" : 2733,
								"value" : [ 76.689999999999998 ]
							}
, 							{
								"key" : 2734,
								"value" : [ 76.010000000000005 ]
							}
, 							{
								"key" : 2735,
								"value" : [ 75.519999999999996 ]
							}
, 							{
								"key" : 2736,
								"value" : [ 75.200000000000003 ]
							}
, 							{
								"key" : 2737,
								"value" : [ 74.769999999999996 ]
							}
, 							{
								"key" : 2738,
								"value" : [ 74.260000000000005 ]
							}
, 							{
								"key" : 2739,
								"value" : [ 73.780000000000001 ]
							}
, 							{
								"key" : 2740,
								"value" : [ 73.359999999999999 ]
							}
, 							{
								"key" : 2741,
								"value" : [ 73.040000000000006 ]
							}
, 							{
								"key" : 2742,
								"value" : [ 73.359999999999999 ]
							}
, 							{
								"key" : 2743,
								"value" : [ 74.390000000000001 ]
							}
, 							{
								"key" : 2744,
								"value" : [ 76.299999999999997 ]
							}
, 							{
								"key" : 2745,
								"value" : [ 78.310000000000002 ]
							}
, 							{
								"key" : 2746,
								"value" : [ 79.920000000000002 ]
							}
, 							{
								"key" : 2747,
								"value" : [ 81.299999999999997 ]
							}
, 							{
								"key" : 2748,
								"value" : [ 82.420000000000002 ]
							}
, 							{
								"key" : 2749,
								"value" : [ 82.989999999999995 ]
							}
, 							{
								"key" : 2750,
								"value" : [ 83.439999999999998 ]
							}
, 							{
								"key" : 2751,
								"value" : [ 83.609999999999999 ]
							}
, 							{
								"key" : 2752,
								"value" : [ 82.920000000000002 ]
							}
, 							{
								"key" : 2753,
								"value" : [ 82.129999999999995 ]
							}
, 							{
								"key" : 2754,
								"value" : [ 80.959999999999994 ]
							}
, 							{
								"key" : 2755,
								"value" : [ 79.790000000000006 ]
							}
, 							{
								"key" : 2756,
								"value" : [ 78.569999999999993 ]
							}
, 							{
								"key" : 2757,
								"value" : [ 77.269999999999996 ]
							}
, 							{
								"key" : 2758,
								"value" : [ 75.900000000000006 ]
							}
, 							{
								"key" : 2759,
								"value" : [ 74.700000000000003 ]
							}
, 							{
								"key" : 2760,
								"value" : [ 73.870000000000005 ]
							}
, 							{
								"key" : 2761,
								"value" : [ 73.219999999999999 ]
							}
, 							{
								"key" : 2762,
								"value" : [ 72.75 ]
							}
, 							{
								"key" : 2763,
								"value" : [ 72.269999999999996 ]
							}
, 							{
								"key" : 2764,
								"value" : [ 71.689999999999998 ]
							}
, 							{
								"key" : 2765,
								"value" : [ 71.239999999999995 ]
							}
, 							{
								"key" : 2766,
								"value" : [ 72.099999999999994 ]
							}
, 							{
								"key" : 2767,
								"value" : [ 72.840000000000003 ]
							}
, 							{
								"key" : 2768,
								"value" : [ 74.170000000000002 ]
							}
, 							{
								"key" : 2769,
								"value" : [ 77.590000000000003 ]
							}
, 							{
								"key" : 2770,
								"value" : [ 80.109999999999999 ]
							}
, 							{
								"key" : 2771,
								"value" : [ 81.189999999999998 ]
							}
, 							{
								"key" : 2772,
								"value" : [ 82.109999999999999 ]
							}
, 							{
								"key" : 2773,
								"value" : [ 83.030000000000001 ]
							}
, 							{
								"key" : 2774,
								"value" : [ 83.620000000000005 ]
							}
, 							{
								"key" : 2775,
								"value" : [ 83.969999999999999 ]
							}
, 							{
								"key" : 2776,
								"value" : [ 84.599999999999994 ]
							}
, 							{
								"key" : 2777,
								"value" : [ 84.629999999999995 ]
							}
, 							{
								"key" : 2778,
								"value" : [ 83.640000000000001 ]
							}
, 							{
								"key" : 2779,
								"value" : [ 81.519999999999996 ]
							}
, 							{
								"key" : 2780,
								"value" : [ 79.049999999999997 ]
							}
, 							{
								"key" : 2781,
								"value" : [ 77.019999999999996 ]
							}
, 							{
								"key" : 2782,
								"value" : [ 75.609999999999999 ]
							}
, 							{
								"key" : 2783,
								"value" : [ 74.390000000000001 ]
							}
, 							{
								"key" : 2784,
								"value" : [ 73.620000000000005 ]
							}
, 							{
								"key" : 2785,
								"value" : [ 73.019999999999996 ]
							}
, 							{
								"key" : 2786,
								"value" : [ 72.390000000000001 ]
							}
, 							{
								"key" : 2787,
								"value" : [ 71.689999999999998 ]
							}
, 							{
								"key" : 2788,
								"value" : [ 71.079999999999998 ]
							}
, 							{
								"key" : 2789,
								"value" : [ 70.719999999999999 ]
							}
, 							{
								"key" : 2790,
								"value" : [ 72.140000000000001 ]
							}
, 							{
								"key" : 2791,
								"value" : [ 73.980000000000004 ]
							}
, 							{
								"key" : 2792,
								"value" : [ 75.269999999999996 ]
							}
, 							{
								"key" : 2793,
								"value" : [ 78.170000000000002 ]
							}
, 							{
								"key" : 2794,
								"value" : [ 81.099999999999994 ]
							}
, 							{
								"key" : 2795,
								"value" : [ 82.420000000000002 ]
							}
, 							{
								"key" : 2796,
								"value" : [ 83.519999999999996 ]
							}
, 							{
								"key" : 2797,
								"value" : [ 84.469999999999999 ]
							}
, 							{
								"key" : 2798,
								"value" : [ 85.120000000000005 ]
							}
, 							{
								"key" : 2799,
								"value" : [ 85.420000000000002 ]
							}
, 							{
								"key" : 2800,
								"value" : [ 85.459999999999994 ]
							}
, 							{
								"key" : 2801,
								"value" : [ 85.280000000000001 ]
							}
, 							{
								"key" : 2802,
								"value" : [ 84.219999999999999 ]
							}
, 							{
								"key" : 2803,
								"value" : [ 80.909999999999997 ]
							}
, 							{
								"key" : 2804,
								"value" : [ 78.060000000000002 ]
							}
, 							{
								"key" : 2805,
								"value" : [ 77.0 ]
							}
, 							{
								"key" : 2806,
								"value" : [ 76.209999999999994 ]
							}
, 							{
								"key" : 2807,
								"value" : [ 75.420000000000002 ]
							}
, 							{
								"key" : 2808,
								"value" : [ 74.620000000000005 ]
							}
, 							{
								"key" : 2809,
								"value" : [ 73.810000000000002 ]
							}
, 							{
								"key" : 2810,
								"value" : [ 73.090000000000003 ]
							}
, 							{
								"key" : 2811,
								"value" : [ 72.450000000000003 ]
							}
, 							{
								"key" : 2812,
								"value" : [ 72.359999999999999 ]
							}
, 							{
								"key" : 2813,
								"value" : [ 72.140000000000001 ]
							}
, 							{
								"key" : 2814,
								"value" : [ 73.060000000000002 ]
							}
, 							{
								"key" : 2815,
								"value" : [ 74.25 ]
							}
, 							{
								"key" : 2816,
								"value" : [ 74.609999999999999 ]
							}
, 							{
								"key" : 2817,
								"value" : [ 74.799999999999997 ]
							}
, 							{
								"key" : 2818,
								"value" : [ 76.230000000000004 ]
							}
, 							{
								"key" : 2819,
								"value" : [ 78.780000000000001 ]
							}
, 							{
								"key" : 2820,
								"value" : [ 80.310000000000002 ]
							}
, 							{
								"key" : 2821,
								"value" : [ 81.430000000000007 ]
							}
, 							{
								"key" : 2822,
								"value" : [ 82.450000000000003 ]
							}
, 							{
								"key" : 2823,
								"value" : [ 83.260000000000005 ]
							}
, 							{
								"key" : 2824,
								"value" : [ 83.640000000000001 ]
							}
, 							{
								"key" : 2825,
								"value" : [ 83.439999999999998 ]
							}
, 							{
								"key" : 2826,
								"value" : [ 82.359999999999999 ]
							}
, 							{
								"key" : 2827,
								"value" : [ 79.739999999999995 ]
							}
, 							{
								"key" : 2828,
								"value" : [ 77.670000000000002 ]
							}
, 							{
								"key" : 2829,
								"value" : [ 76.620000000000005 ]
							}
, 							{
								"key" : 2830,
								"value" : [ 75.810000000000002 ]
							}
, 							{
								"key" : 2831,
								"value" : [ 75.25 ]
							}
, 							{
								"key" : 2832,
								"value" : [ 74.890000000000001 ]
							}
, 							{
								"key" : 2833,
								"value" : [ 74.530000000000001 ]
							}
, 							{
								"key" : 2834,
								"value" : [ 74.260000000000005 ]
							}
, 							{
								"key" : 2835,
								"value" : [ 74.049999999999997 ]
							}
, 							{
								"key" : 2836,
								"value" : [ 73.810000000000002 ]
							}
, 							{
								"key" : 2837,
								"value" : [ 73.530000000000001 ]
							}
, 							{
								"key" : 2838,
								"value" : [ 73.989999999999995 ]
							}
, 							{
								"key" : 2839,
								"value" : [ 74.640000000000001 ]
							}
, 							{
								"key" : 2840,
								"value" : [ 75.519999999999996 ]
							}
, 							{
								"key" : 2841,
								"value" : [ 77.540000000000006 ]
							}
, 							{
								"key" : 2842,
								"value" : [ 79.840000000000003 ]
							}
, 							{
								"key" : 2843,
								"value" : [ 81.569999999999993 ]
							}
, 							{
								"key" : 2844,
								"value" : [ 82.870000000000005 ]
							}
, 							{
								"key" : 2845,
								"value" : [ 83.390000000000001 ]
							}
, 							{
								"key" : 2846,
								"value" : [ 83.069999999999993 ]
							}
, 							{
								"key" : 2847,
								"value" : [ 82.739999999999995 ]
							}
, 							{
								"key" : 2848,
								"value" : [ 82.489999999999995 ]
							}
, 							{
								"key" : 2849,
								"value" : [ 81.969999999999999 ]
							}
, 							{
								"key" : 2850,
								"value" : [ 80.939999999999998 ]
							}
, 							{
								"key" : 2851,
								"value" : [ 79.25 ]
							}
, 							{
								"key" : 2852,
								"value" : [ 77.989999999999995 ]
							}
, 							{
								"key" : 2853,
								"value" : [ 77.540000000000006 ]
							}
, 							{
								"key" : 2854,
								"value" : [ 77.129999999999995 ]
							}
, 							{
								"key" : 2855,
								"value" : [ 76.840000000000003 ]
							}
, 							{
								"key" : 2856,
								"value" : [ 76.769999999999996 ]
							}
, 							{
								"key" : 2857,
								"value" : [ 76.390000000000001 ]
							}
, 							{
								"key" : 2858,
								"value" : [ 75.670000000000002 ]
							}
, 							{
								"key" : 2859,
								"value" : [ 75.159999999999997 ]
							}
, 							{
								"key" : 2860,
								"value" : [ 74.790000000000006 ]
							}
, 							{
								"key" : 2861,
								"value" : [ 74.640000000000001 ]
							}
, 							{
								"key" : 2862,
								"value" : [ 74.390000000000001 ]
							}
, 							{
								"key" : 2863,
								"value" : [ 75.090000000000003 ]
							}
, 							{
								"key" : 2864,
								"value" : [ 76.959999999999994 ]
							}
, 							{
								"key" : 2865,
								"value" : [ 79.290000000000006 ]
							}
, 							{
								"key" : 2866,
								"value" : [ 80.760000000000005 ]
							}
, 							{
								"key" : 2867,
								"value" : [ 81.189999999999998 ]
							}
, 							{
								"key" : 2868,
								"value" : [ 79.900000000000006 ]
							}
, 							{
								"key" : 2869,
								"value" : [ 78.170000000000002 ]
							}
, 							{
								"key" : 2870,
								"value" : [ 77.379999999999995 ]
							}
, 							{
								"key" : 2871,
								"value" : [ 77.140000000000001 ]
							}
, 							{
								"key" : 2872,
								"value" : [ 76.769999999999996 ]
							}
, 							{
								"key" : 2873,
								"value" : [ 75.879999999999995 ]
							}
, 							{
								"key" : 2874,
								"value" : [ 74.189999999999998 ]
							}
, 							{
								"key" : 2875,
								"value" : [ 72.319999999999993 ]
							}
, 							{
								"key" : 2876,
								"value" : [ 71.489999999999995 ]
							}
, 							{
								"key" : 2877,
								"value" : [ 71.040000000000006 ]
							}
, 							{
								"key" : 2878,
								"value" : [ 70.840000000000003 ]
							}
, 							{
								"key" : 2879,
								"value" : [ 71.170000000000002 ]
							}
, 							{
								"key" : 2880,
								"value" : [ 71.469999999999999 ]
							}
, 							{
								"key" : 2881,
								"value" : [ 71.200000000000003 ]
							}
, 							{
								"key" : 2882,
								"value" : [ 70.359999999999999 ]
							}
, 							{
								"key" : 2883,
								"value" : [ 69.579999999999998 ]
							}
, 							{
								"key" : 2884,
								"value" : [ 68.719999999999999 ]
							}
, 							{
								"key" : 2885,
								"value" : [ 67.930000000000007 ]
							}
, 							{
								"key" : 2886,
								"value" : [ 68.159999999999997 ]
							}
, 							{
								"key" : 2887,
								"value" : [ 68.719999999999999 ]
							}
, 							{
								"key" : 2888,
								"value" : [ 68.989999999999995 ]
							}
, 							{
								"key" : 2889,
								"value" : [ 69.219999999999999 ]
							}
, 							{
								"key" : 2890,
								"value" : [ 69.239999999999995 ]
							}
, 							{
								"key" : 2891,
								"value" : [ 69.189999999999998 ]
							}
, 							{
								"key" : 2892,
								"value" : [ 69.280000000000001 ]
							}
, 							{
								"key" : 2893,
								"value" : [ 69.349999999999994 ]
							}
, 							{
								"key" : 2894,
								"value" : [ 69.280000000000001 ]
							}
, 							{
								"key" : 2895,
								"value" : [ 68.450000000000003 ]
							}
, 							{
								"key" : 2896,
								"value" : [ 67.870000000000005 ]
							}
, 							{
								"key" : 2897,
								"value" : [ 67.640000000000001 ]
							}
, 							{
								"key" : 2898,
								"value" : [ 67.209999999999994 ]
							}
, 							{
								"key" : 2899,
								"value" : [ 66.790000000000006 ]
							}
, 							{
								"key" : 2900,
								"value" : [ 66.420000000000002 ]
							}
, 							{
								"key" : 2901,
								"value" : [ 65.930000000000007 ]
							}
, 							{
								"key" : 2902,
								"value" : [ 65.890000000000001 ]
							}
, 							{
								"key" : 2903,
								"value" : [ 66.200000000000003 ]
							}
, 							{
								"key" : 2904,
								"value" : [ 66.430000000000007 ]
							}
, 							{
								"key" : 2905,
								"value" : [ 66.790000000000006 ]
							}
, 							{
								"key" : 2906,
								"value" : [ 66.780000000000001 ]
							}
, 							{
								"key" : 2907,
								"value" : [ 66.629999999999995 ]
							}
, 							{
								"key" : 2908,
								"value" : [ 66.379999999999995 ]
							}
, 							{
								"key" : 2909,
								"value" : [ 66.670000000000002 ]
							}
, 							{
								"key" : 2910,
								"value" : [ 67.329999999999998 ]
							}
, 							{
								"key" : 2911,
								"value" : [ 68.409999999999997 ]
							}
, 							{
								"key" : 2912,
								"value" : [ 69.439999999999998 ]
							}
, 							{
								"key" : 2913,
								"value" : [ 70.790000000000006 ]
							}
, 							{
								"key" : 2914,
								"value" : [ 72.230000000000004 ]
							}
, 							{
								"key" : 2915,
								"value" : [ 73.620000000000005 ]
							}
, 							{
								"key" : 2916,
								"value" : [ 74.640000000000001 ]
							}
, 							{
								"key" : 2917,
								"value" : [ 75.489999999999995 ]
							}
, 							{
								"key" : 2918,
								"value" : [ 76.439999999999998 ]
							}
, 							{
								"key" : 2919,
								"value" : [ 77.180000000000007 ]
							}
, 							{
								"key" : 2920,
								"value" : [ 77.469999999999999 ]
							}
, 							{
								"key" : 2921,
								"value" : [ 77.310000000000002 ]
							}
, 							{
								"key" : 2922,
								"value" : [ 76.689999999999998 ]
							}
, 							{
								"key" : 2923,
								"value" : [ 74.659999999999997 ]
							}
, 							{
								"key" : 2924,
								"value" : [ 73.329999999999998 ]
							}
, 							{
								"key" : 2925,
								"value" : [ 72.909999999999997 ]
							}
, 							{
								"key" : 2926,
								"value" : [ 72.340000000000003 ]
							}
, 							{
								"key" : 2927,
								"value" : [ 71.349999999999994 ]
							}
, 							{
								"key" : 2928,
								"value" : [ 70.390000000000001 ]
							}
, 							{
								"key" : 2929,
								"value" : [ 69.459999999999994 ]
							}
, 							{
								"key" : 2930,
								"value" : [ 68.560000000000002 ]
							}
, 							{
								"key" : 2931,
								"value" : [ 67.799999999999997 ]
							}
, 							{
								"key" : 2932,
								"value" : [ 67.480000000000004 ]
							}
, 							{
								"key" : 2933,
								"value" : [ 67.780000000000001 ]
							}
, 							{
								"key" : 2934,
								"value" : [ 69.260000000000005 ]
							}
, 							{
								"key" : 2935,
								"value" : [ 70.659999999999997 ]
							}
, 							{
								"key" : 2936,
								"value" : [ 71.370000000000005 ]
							}
, 							{
								"key" : 2937,
								"value" : [ 71.689999999999998 ]
							}
, 							{
								"key" : 2938,
								"value" : [ 71.819999999999993 ]
							}
, 							{
								"key" : 2939,
								"value" : [ 71.730000000000004 ]
							}
, 							{
								"key" : 2940,
								"value" : [ 71.640000000000001 ]
							}
, 							{
								"key" : 2941,
								"value" : [ 71.640000000000001 ]
							}
, 							{
								"key" : 2942,
								"value" : [ 71.780000000000001 ]
							}
, 							{
								"key" : 2943,
								"value" : [ 71.640000000000001 ]
							}
, 							{
								"key" : 2944,
								"value" : [ 71.170000000000002 ]
							}
, 							{
								"key" : 2945,
								"value" : [ 70.269999999999996 ]
							}
, 							{
								"key" : 2946,
								"value" : [ 69.239999999999995 ]
							}
, 							{
								"key" : 2947,
								"value" : [ 68.219999999999999 ]
							}
, 							{
								"key" : 2948,
								"value" : [ 67.329999999999998 ]
							}
, 							{
								"key" : 2949,
								"value" : [ 67.049999999999997 ]
							}
, 							{
								"key" : 2950,
								"value" : [ 66.989999999999995 ]
							}
, 							{
								"key" : 2951,
								"value" : [ 67.140000000000001 ]
							}
, 							{
								"key" : 2952,
								"value" : [ 67.370000000000005 ]
							}
, 							{
								"key" : 2953,
								"value" : [ 67.549999999999997 ]
							}
, 							{
								"key" : 2954,
								"value" : [ 67.590000000000003 ]
							}
, 							{
								"key" : 2955,
								"value" : [ 67.599999999999994 ]
							}
, 							{
								"key" : 2956,
								"value" : [ 67.599999999999994 ]
							}
, 							{
								"key" : 2957,
								"value" : [ 67.769999999999996 ]
							}
, 							{
								"key" : 2958,
								"value" : [ 68.489999999999995 ]
							}
, 							{
								"key" : 2959,
								"value" : [ 70.019999999999996 ]
							}
, 							{
								"key" : 2960,
								"value" : [ 70.900000000000006 ]
							}
, 							{
								"key" : 2961,
								"value" : [ 71.959999999999994 ]
							}
, 							{
								"key" : 2962,
								"value" : [ 72.969999999999999 ]
							}
, 							{
								"key" : 2963,
								"value" : [ 73.760000000000005 ]
							}
, 							{
								"key" : 2964,
								"value" : [ 74.159999999999997 ]
							}
, 							{
								"key" : 2965,
								"value" : [ 74.209999999999994 ]
							}
, 							{
								"key" : 2966,
								"value" : [ 74.049999999999997 ]
							}
, 							{
								"key" : 2967,
								"value" : [ 73.420000000000002 ]
							}
, 							{
								"key" : 2968,
								"value" : [ 73.040000000000006 ]
							}
, 							{
								"key" : 2969,
								"value" : [ 72.609999999999999 ]
							}
, 							{
								"key" : 2970,
								"value" : [ 72.0 ]
							}
, 							{
								"key" : 2971,
								"value" : [ 70.650000000000006 ]
							}
, 							{
								"key" : 2972,
								"value" : [ 69.760000000000005 ]
							}
, 							{
								"key" : 2973,
								"value" : [ 69.890000000000001 ]
							}
, 							{
								"key" : 2974,
								"value" : [ 70.140000000000001 ]
							}
, 							{
								"key" : 2975,
								"value" : [ 70.200000000000003 ]
							}
, 							{
								"key" : 2976,
								"value" : [ 70.069999999999993 ]
							}
, 							{
								"key" : 2977,
								"value" : [ 69.849999999999994 ]
							}
, 							{
								"key" : 2978,
								"value" : [ 69.480000000000004 ]
							}
, 							{
								"key" : 2979,
								"value" : [ 69.040000000000006 ]
							}
, 							{
								"key" : 2980,
								"value" : [ 68.5 ]
							}
, 							{
								"key" : 2981,
								"value" : [ 67.890000000000001 ]
							}
, 							{
								"key" : 2982,
								"value" : [ 67.890000000000001 ]
							}
, 							{
								"key" : 2983,
								"value" : [ 69.209999999999994 ]
							}
, 							{
								"key" : 2984,
								"value" : [ 71.370000000000005 ]
							}
, 							{
								"key" : 2985,
								"value" : [ 73.510000000000005 ]
							}
, 							{
								"key" : 2986,
								"value" : [ 74.840000000000003 ]
							}
, 							{
								"key" : 2987,
								"value" : [ 75.790000000000006 ]
							}
, 							{
								"key" : 2988,
								"value" : [ 76.329999999999998 ]
							}
, 							{
								"key" : 2989,
								"value" : [ 76.599999999999994 ]
							}
, 							{
								"key" : 2990,
								"value" : [ 76.640000000000001 ]
							}
, 							{
								"key" : 2991,
								"value" : [ 76.530000000000001 ]
							}
, 							{
								"key" : 2992,
								"value" : [ 76.280000000000001 ]
							}
, 							{
								"key" : 2993,
								"value" : [ 75.870000000000005 ]
							}
, 							{
								"key" : 2994,
								"value" : [ 75.090000000000003 ]
							}
, 							{
								"key" : 2995,
								"value" : [ 73.200000000000003 ]
							}
, 							{
								"key" : 2996,
								"value" : [ 71.439999999999998 ]
							}
, 							{
								"key" : 2997,
								"value" : [ 71.040000000000006 ]
							}
, 							{
								"key" : 2998,
								"value" : [ 70.769999999999996 ]
							}
, 							{
								"key" : 2999,
								"value" : [ 70.450000000000003 ]
							}
, 							{
								"key" : 3000,
								"value" : [ 69.980000000000004 ]
							}
, 							{
								"key" : 3001,
								"value" : [ 69.400000000000006 ]
							}
, 							{
								"key" : 3002,
								"value" : [ 68.859999999999999 ]
							}
, 							{
								"key" : 3003,
								"value" : [ 68.340000000000003 ]
							}
, 							{
								"key" : 3004,
								"value" : [ 67.870000000000005 ]
							}
, 							{
								"key" : 3005,
								"value" : [ 67.659999999999997 ]
							}
, 							{
								"key" : 3006,
								"value" : [ 68.049999999999997 ]
							}
, 							{
								"key" : 3007,
								"value" : [ 68.900000000000006 ]
							}
, 							{
								"key" : 3008,
								"value" : [ 71.329999999999998 ]
							}
, 							{
								"key" : 3009,
								"value" : [ 74.950000000000003 ]
							}
, 							{
								"key" : 3010,
								"value" : [ 76.150000000000006 ]
							}
, 							{
								"key" : 3011,
								"value" : [ 76.959999999999994 ]
							}
, 							{
								"key" : 3012,
								"value" : [ 77.400000000000006 ]
							}
, 							{
								"key" : 3013,
								"value" : [ 77.5 ]
							}
, 							{
								"key" : 3014,
								"value" : [ 77.489999999999995 ]
							}
, 							{
								"key" : 3015,
								"value" : [ 77.359999999999999 ]
							}
, 							{
								"key" : 3016,
								"value" : [ 77.069999999999993 ]
							}
, 							{
								"key" : 3017,
								"value" : [ 76.590000000000003 ]
							}
, 							{
								"key" : 3018,
								"value" : [ 75.739999999999995 ]
							}
, 							{
								"key" : 3019,
								"value" : [ 73.670000000000002 ]
							}
, 							{
								"key" : 3020,
								"value" : [ 72.180000000000007 ]
							}
, 							{
								"key" : 3021,
								"value" : [ 71.920000000000002 ]
							}
, 							{
								"key" : 3022,
								"value" : [ 71.730000000000004 ]
							}
, 							{
								"key" : 3023,
								"value" : [ 71.290000000000006 ]
							}
, 							{
								"key" : 3024,
								"value" : [ 70.650000000000006 ]
							}
, 							{
								"key" : 3025,
								"value" : [ 70.019999999999996 ]
							}
, 							{
								"key" : 3026,
								"value" : [ 69.489999999999995 ]
							}
, 							{
								"key" : 3027,
								"value" : [ 69.170000000000002 ]
							}
, 							{
								"key" : 3028,
								"value" : [ 68.900000000000006 ]
							}
, 							{
								"key" : 3029,
								"value" : [ 68.670000000000002 ]
							}
, 							{
								"key" : 3030,
								"value" : [ 69.120000000000005 ]
							}
, 							{
								"key" : 3031,
								"value" : [ 70.629999999999995 ]
							}
, 							{
								"key" : 3032,
								"value" : [ 72.069999999999993 ]
							}
, 							{
								"key" : 3033,
								"value" : [ 75.269999999999996 ]
							}
, 							{
								"key" : 3034,
								"value" : [ 77.269999999999996 ]
							}
, 							{
								"key" : 3035,
								"value" : [ 78.689999999999998 ]
							}
, 							{
								"key" : 3036,
								"value" : [ 79.569999999999993 ]
							}
, 							{
								"key" : 3037,
								"value" : [ 80.200000000000003 ]
							}
, 							{
								"key" : 3038,
								"value" : [ 80.689999999999998 ]
							}
, 							{
								"key" : 3039,
								"value" : [ 80.909999999999997 ]
							}
, 							{
								"key" : 3040,
								"value" : [ 80.739999999999995 ]
							}
, 							{
								"key" : 3041,
								"value" : [ 80.129999999999995 ]
							}
, 							{
								"key" : 3042,
								"value" : [ 78.939999999999998 ]
							}
, 							{
								"key" : 3043,
								"value" : [ 76.370000000000005 ]
							}
, 							{
								"key" : 3044,
								"value" : [ 74.790000000000006 ]
							}
, 							{
								"key" : 3045,
								"value" : [ 74.099999999999994 ]
							}
, 							{
								"key" : 3046,
								"value" : [ 73.290000000000006 ]
							}
, 							{
								"key" : 3047,
								"value" : [ 72.409999999999997 ]
							}
, 							{
								"key" : 3048,
								"value" : [ 71.689999999999998 ]
							}
, 							{
								"key" : 3049,
								"value" : [ 71.099999999999994 ]
							}
, 							{
								"key" : 3050,
								"value" : [ 70.700000000000003 ]
							}
, 							{
								"key" : 3051,
								"value" : [ 70.629999999999995 ]
							}
, 							{
								"key" : 3052,
								"value" : [ 70.609999999999999 ]
							}
, 							{
								"key" : 3053,
								"value" : [ 70.319999999999993 ]
							}
, 							{
								"key" : 3054,
								"value" : [ 69.819999999999993 ]
							}
, 							{
								"key" : 3055,
								"value" : [ 70.319999999999993 ]
							}
, 							{
								"key" : 3056,
								"value" : [ 72.680000000000007 ]
							}
, 							{
								"key" : 3057,
								"value" : [ 76.099999999999994 ]
							}
, 							{
								"key" : 3058,
								"value" : [ 78.310000000000002 ]
							}
, 							{
								"key" : 3059,
								"value" : [ 79.109999999999999 ]
							}
, 							{
								"key" : 3060,
								"value" : [ 79.409999999999997 ]
							}
, 							{
								"key" : 3061,
								"value" : [ 79.719999999999999 ]
							}
, 							{
								"key" : 3062,
								"value" : [ 79.739999999999995 ]
							}
, 							{
								"key" : 3063,
								"value" : [ 79.519999999999996 ]
							}
, 							{
								"key" : 3064,
								"value" : [ 78.799999999999997 ]
							}
, 							{
								"key" : 3065,
								"value" : [ 77.810000000000002 ]
							}
, 							{
								"key" : 3066,
								"value" : [ 76.689999999999998 ]
							}
, 							{
								"key" : 3067,
								"value" : [ 75.609999999999999 ]
							}
, 							{
								"key" : 3068,
								"value" : [ 74.790000000000006 ]
							}
, 							{
								"key" : 3069,
								"value" : [ 74.189999999999998 ]
							}
, 							{
								"key" : 3070,
								"value" : [ 73.379999999999995 ]
							}
, 							{
								"key" : 3071,
								"value" : [ 72.319999999999993 ]
							}
, 							{
								"key" : 3072,
								"value" : [ 71.469999999999999 ]
							}
, 							{
								"key" : 3073,
								"value" : [ 70.969999999999999 ]
							}
, 							{
								"key" : 3074,
								"value" : [ 70.609999999999999 ]
							}
, 							{
								"key" : 3075,
								"value" : [ 70.290000000000006 ]
							}
, 							{
								"key" : 3076,
								"value" : [ 70.269999999999996 ]
							}
, 							{
								"key" : 3077,
								"value" : [ 70.25 ]
							}
, 							{
								"key" : 3078,
								"value" : [ 70.950000000000003 ]
							}
, 							{
								"key" : 3079,
								"value" : [ 71.849999999999994 ]
							}
, 							{
								"key" : 3080,
								"value" : [ 73.489999999999995 ]
							}
, 							{
								"key" : 3081,
								"value" : [ 75.739999999999995 ]
							}
, 							{
								"key" : 3082,
								"value" : [ 78.569999999999993 ]
							}
, 							{
								"key" : 3083,
								"value" : [ 80.469999999999999 ]
							}
, 							{
								"key" : 3084,
								"value" : [ 81.269999999999996 ]
							}
, 							{
								"key" : 3085,
								"value" : [ 81.819999999999993 ]
							}
, 							{
								"key" : 3086,
								"value" : [ 82.219999999999999 ]
							}
, 							{
								"key" : 3087,
								"value" : [ 82.349999999999994 ]
							}
, 							{
								"key" : 3088,
								"value" : [ 82.260000000000005 ]
							}
, 							{
								"key" : 3089,
								"value" : [ 81.370000000000005 ]
							}
, 							{
								"key" : 3090,
								"value" : [ 79.659999999999997 ]
							}
, 							{
								"key" : 3091,
								"value" : [ 78.370000000000005 ]
							}
, 							{
								"key" : 3092,
								"value" : [ 77.540000000000006 ]
							}
, 							{
								"key" : 3093,
								"value" : [ 77.019999999999996 ]
							}
, 							{
								"key" : 3094,
								"value" : [ 76.620000000000005 ]
							}
, 							{
								"key" : 3095,
								"value" : [ 76.319999999999993 ]
							}
, 							{
								"key" : 3096,
								"value" : [ 76.030000000000001 ]
							}
, 							{
								"key" : 3097,
								"value" : [ 75.420000000000002 ]
							}
, 							{
								"key" : 3098,
								"value" : [ 74.840000000000003 ]
							}
, 							{
								"key" : 3099,
								"value" : [ 74.189999999999998 ]
							}
, 							{
								"key" : 3100,
								"value" : [ 73.420000000000002 ]
							}
, 							{
								"key" : 3101,
								"value" : [ 72.540000000000006 ]
							}
, 							{
								"key" : 3102,
								"value" : [ 72.480000000000004 ]
							}
, 							{
								"key" : 3103,
								"value" : [ 73.219999999999999 ]
							}
, 							{
								"key" : 3104,
								"value" : [ 75.0 ]
							}
, 							{
								"key" : 3105,
								"value" : [ 77.430000000000007 ]
							}
, 							{
								"key" : 3106,
								"value" : [ 80.099999999999994 ]
							}
, 							{
								"key" : 3107,
								"value" : [ 82.109999999999999 ]
							}
, 							{
								"key" : 3108,
								"value" : [ 83.319999999999993 ]
							}
, 							{
								"key" : 3109,
								"value" : [ 84.090000000000003 ]
							}
, 							{
								"key" : 3110,
								"value" : [ 84.159999999999997 ]
							}
, 							{
								"key" : 3111,
								"value" : [ 83.700000000000003 ]
							}
, 							{
								"key" : 3112,
								"value" : [ 82.670000000000002 ]
							}
, 							{
								"key" : 3113,
								"value" : [ 81.540000000000006 ]
							}
, 							{
								"key" : 3114,
								"value" : [ 80.109999999999999 ]
							}
, 							{
								"key" : 3115,
								"value" : [ 78.349999999999994 ]
							}
, 							{
								"key" : 3116,
								"value" : [ 76.890000000000001 ]
							}
, 							{
								"key" : 3117,
								"value" : [ 75.900000000000006 ]
							}
, 							{
								"key" : 3118,
								"value" : [ 74.980000000000004 ]
							}
, 							{
								"key" : 3119,
								"value" : [ 74.439999999999998 ]
							}
, 							{
								"key" : 3120,
								"value" : [ 73.989999999999995 ]
							}
, 							{
								"key" : 3121,
								"value" : [ 73.560000000000002 ]
							}
, 							{
								"key" : 3122,
								"value" : [ 73.200000000000003 ]
							}
, 							{
								"key" : 3123,
								"value" : [ 72.840000000000003 ]
							}
, 							{
								"key" : 3124,
								"value" : [ 72.629999999999995 ]
							}
, 							{
								"key" : 3125,
								"value" : [ 72.5 ]
							}
, 							{
								"key" : 3126,
								"value" : [ 72.430000000000007 ]
							}
, 							{
								"key" : 3127,
								"value" : [ 72.769999999999996 ]
							}
, 							{
								"key" : 3128,
								"value" : [ 73.420000000000002 ]
							}
, 							{
								"key" : 3129,
								"value" : [ 74.549999999999997 ]
							}
, 							{
								"key" : 3130,
								"value" : [ 75.650000000000006 ]
							}
, 							{
								"key" : 3131,
								"value" : [ 76.640000000000001 ]
							}
, 							{
								"key" : 3132,
								"value" : [ 77.670000000000002 ]
							}
, 							{
								"key" : 3133,
								"value" : [ 78.640000000000001 ]
							}
, 							{
								"key" : 3134,
								"value" : [ 79.290000000000006 ]
							}
, 							{
								"key" : 3135,
								"value" : [ 79.5 ]
							}
, 							{
								"key" : 3136,
								"value" : [ 79.319999999999993 ]
							}
, 							{
								"key" : 3137,
								"value" : [ 78.689999999999998 ]
							}
, 							{
								"key" : 3138,
								"value" : [ 78.129999999999995 ]
							}
, 							{
								"key" : 3139,
								"value" : [ 77.519999999999996 ]
							}
, 							{
								"key" : 3140,
								"value" : [ 76.930000000000007 ]
							}
, 							{
								"key" : 3141,
								"value" : [ 76.5 ]
							}
, 							{
								"key" : 3142,
								"value" : [ 76.299999999999997 ]
							}
, 							{
								"key" : 3143,
								"value" : [ 76.099999999999994 ]
							}
, 							{
								"key" : 3144,
								"value" : [ 75.739999999999995 ]
							}
, 							{
								"key" : 3145,
								"value" : [ 75.069999999999993 ]
							}
, 							{
								"key" : 3146,
								"value" : [ 74.280000000000001 ]
							}
, 							{
								"key" : 3147,
								"value" : [ 73.579999999999998 ]
							}
, 							{
								"key" : 3148,
								"value" : [ 73.150000000000006 ]
							}
, 							{
								"key" : 3149,
								"value" : [ 72.930000000000007 ]
							}
, 							{
								"key" : 3150,
								"value" : [ 73.689999999999998 ]
							}
, 							{
								"key" : 3151,
								"value" : [ 75.290000000000006 ]
							}
, 							{
								"key" : 3152,
								"value" : [ 76.959999999999994 ]
							}
, 							{
								"key" : 3153,
								"value" : [ 79.069999999999993 ]
							}
, 							{
								"key" : 3154,
								"value" : [ 81.75 ]
							}
, 							{
								"key" : 3155,
								"value" : [ 83.569999999999993 ]
							}
, 							{
								"key" : 3156,
								"value" : [ 84.430000000000007 ]
							}
, 							{
								"key" : 3157,
								"value" : [ 84.129999999999995 ]
							}
, 							{
								"key" : 3158,
								"value" : [ 83.75 ]
							}
, 							{
								"key" : 3159,
								"value" : [ 83.370000000000005 ]
							}
, 							{
								"key" : 3160,
								"value" : [ 82.989999999999995 ]
							}
, 							{
								"key" : 3161,
								"value" : [ 82.420000000000002 ]
							}
, 							{
								"key" : 3162,
								"value" : [ 81.590000000000003 ]
							}
, 							{
								"key" : 3163,
								"value" : [ 80.739999999999995 ]
							}
, 							{
								"key" : 3164,
								"value" : [ 80.109999999999999 ]
							}
, 							{
								"key" : 3165,
								"value" : [ 79.390000000000001 ]
							}
, 							{
								"key" : 3166,
								"value" : [ 78.170000000000002 ]
							}
, 							{
								"key" : 3167,
								"value" : [ 76.950000000000003 ]
							}
, 							{
								"key" : 3168,
								"value" : [ 76.230000000000004 ]
							}
, 							{
								"key" : 3169,
								"value" : [ 75.650000000000006 ]
							}
, 							{
								"key" : 3170,
								"value" : [ 75.090000000000003 ]
							}
, 							{
								"key" : 3171,
								"value" : [ 74.659999999999997 ]
							}
, 							{
								"key" : 3172,
								"value" : [ 74.700000000000003 ]
							}
, 							{
								"key" : 3173,
								"value" : [ 74.909999999999997 ]
							}
, 							{
								"key" : 3174,
								"value" : [ 75.329999999999998 ]
							}
, 							{
								"key" : 3175,
								"value" : [ 75.989999999999995 ]
							}
, 							{
								"key" : 3176,
								"value" : [ 77.019999999999996 ]
							}
, 							{
								"key" : 3177,
								"value" : [ 78.489999999999995 ]
							}
, 							{
								"key" : 3178,
								"value" : [ 80.239999999999995 ]
							}
, 							{
								"key" : 3179,
								"value" : [ 81.390000000000001 ]
							}
, 							{
								"key" : 3180,
								"value" : [ 82.180000000000007 ]
							}
, 							{
								"key" : 3181,
								"value" : [ 82.290000000000006 ]
							}
, 							{
								"key" : 3182,
								"value" : [ 82.400000000000006 ]
							}
, 							{
								"key" : 3183,
								"value" : [ 82.689999999999998 ]
							}
, 							{
								"key" : 3184,
								"value" : [ 82.629999999999995 ]
							}
, 							{
								"key" : 3185,
								"value" : [ 81.840000000000003 ]
							}
, 							{
								"key" : 3186,
								"value" : [ 80.640000000000001 ]
							}
, 							{
								"key" : 3187,
								"value" : [ 79.75 ]
							}
, 							{
								"key" : 3188,
								"value" : [ 79.209999999999994 ]
							}
, 							{
								"key" : 3189,
								"value" : [ 78.730000000000004 ]
							}
, 							{
								"key" : 3190,
								"value" : [ 78.280000000000001 ]
							}
, 							{
								"key" : 3191,
								"value" : [ 77.900000000000006 ]
							}
, 							{
								"key" : 3192,
								"value" : [ 77.859999999999999 ]
							}
, 							{
								"key" : 3193,
								"value" : [ 77.769999999999996 ]
							}
, 							{
								"key" : 3194,
								"value" : [ 77.409999999999997 ]
							}
, 							{
								"key" : 3195,
								"value" : [ 76.959999999999994 ]
							}
, 							{
								"key" : 3196,
								"value" : [ 75.939999999999998 ]
							}
, 							{
								"key" : 3197,
								"value" : [ 74.709999999999994 ]
							}
, 							{
								"key" : 3198,
								"value" : [ 74.390000000000001 ]
							}
, 							{
								"key" : 3199,
								"value" : [ 75.090000000000003 ]
							}
, 							{
								"key" : 3200,
								"value" : [ 76.060000000000002 ]
							}
, 							{
								"key" : 3201,
								"value" : [ 77.090000000000003 ]
							}
, 							{
								"key" : 3202,
								"value" : [ 78.370000000000005 ]
							}
, 							{
								"key" : 3203,
								"value" : [ 79.810000000000002 ]
							}
, 							{
								"key" : 3204,
								"value" : [ 81.0 ]
							}
, 							{
								"key" : 3205,
								"value" : [ 81.659999999999997 ]
							}
, 							{
								"key" : 3206,
								"value" : [ 81.730000000000004 ]
							}
, 							{
								"key" : 3207,
								"value" : [ 81.189999999999998 ]
							}
, 							{
								"key" : 3208,
								"value" : [ 80.459999999999994 ]
							}
, 							{
								"key" : 3209,
								"value" : [ 79.340000000000003 ]
							}
, 							{
								"key" : 3210,
								"value" : [ 78.060000000000002 ]
							}
, 							{
								"key" : 3211,
								"value" : [ 76.819999999999993 ]
							}
, 							{
								"key" : 3212,
								"value" : [ 75.790000000000006 ]
							}
, 							{
								"key" : 3213,
								"value" : [ 75.069999999999993 ]
							}
, 							{
								"key" : 3214,
								"value" : [ 74.769999999999996 ]
							}
, 							{
								"key" : 3215,
								"value" : [ 74.709999999999994 ]
							}
, 							{
								"key" : 3216,
								"value" : [ 74.370000000000005 ]
							}
, 							{
								"key" : 3217,
								"value" : [ 73.760000000000005 ]
							}
, 							{
								"key" : 3218,
								"value" : [ 73.349999999999994 ]
							}
, 							{
								"key" : 3219,
								"value" : [ 72.859999999999999 ]
							}
, 							{
								"key" : 3220,
								"value" : [ 72.280000000000001 ]
							}
, 							{
								"key" : 3221,
								"value" : [ 71.689999999999998 ]
							}
, 							{
								"key" : 3222,
								"value" : [ 71.730000000000004 ]
							}
, 							{
								"key" : 3223,
								"value" : [ 72.25 ]
							}
, 							{
								"key" : 3224,
								"value" : [ 73.469999999999999 ]
							}
, 							{
								"key" : 3225,
								"value" : [ 75.25 ]
							}
, 							{
								"key" : 3226,
								"value" : [ 76.189999999999998 ]
							}
, 							{
								"key" : 3227,
								"value" : [ 76.640000000000001 ]
							}
, 							{
								"key" : 3228,
								"value" : [ 76.980000000000004 ]
							}
, 							{
								"key" : 3229,
								"value" : [ 77.269999999999996 ]
							}
, 							{
								"key" : 3230,
								"value" : [ 77.409999999999997 ]
							}
, 							{
								"key" : 3231,
								"value" : [ 77.379999999999995 ]
							}
, 							{
								"key" : 3232,
								"value" : [ 77.409999999999997 ]
							}
, 							{
								"key" : 3233,
								"value" : [ 77.540000000000006 ]
							}
, 							{
								"key" : 3234,
								"value" : [ 77.379999999999995 ]
							}
, 							{
								"key" : 3235,
								"value" : [ 76.120000000000005 ]
							}
, 							{
								"key" : 3236,
								"value" : [ 74.799999999999997 ]
							}
, 							{
								"key" : 3237,
								"value" : [ 73.579999999999998 ]
							}
, 							{
								"key" : 3238,
								"value" : [ 72.769999999999996 ]
							}
, 							{
								"key" : 3239,
								"value" : [ 71.870000000000005 ]
							}
, 							{
								"key" : 3240,
								"value" : [ 71.060000000000002 ]
							}
, 							{
								"key" : 3241,
								"value" : [ 70.769999999999996 ]
							}
, 							{
								"key" : 3242,
								"value" : [ 70.390000000000001 ]
							}
, 							{
								"key" : 3243,
								"value" : [ 69.939999999999998 ]
							}
, 							{
								"key" : 3244,
								"value" : [ 69.569999999999993 ]
							}
, 							{
								"key" : 3245,
								"value" : [ 69.329999999999998 ]
							}
, 							{
								"key" : 3246,
								"value" : [ 69.930000000000007 ]
							}
, 							{
								"key" : 3247,
								"value" : [ 72.099999999999994 ]
							}
, 							{
								"key" : 3248,
								"value" : [ 72.969999999999999 ]
							}
, 							{
								"key" : 3249,
								"value" : [ 73.689999999999998 ]
							}
, 							{
								"key" : 3250,
								"value" : [ 74.299999999999997 ]
							}
, 							{
								"key" : 3251,
								"value" : [ 74.730000000000004 ]
							}
, 							{
								"key" : 3252,
								"value" : [ 74.930000000000007 ]
							}
, 							{
								"key" : 3253,
								"value" : [ 74.969999999999999 ]
							}
, 							{
								"key" : 3254,
								"value" : [ 74.769999999999996 ]
							}
, 							{
								"key" : 3255,
								"value" : [ 74.480000000000004 ]
							}
, 							{
								"key" : 3256,
								"value" : [ 74.049999999999997 ]
							}
, 							{
								"key" : 3257,
								"value" : [ 73.489999999999995 ]
							}
, 							{
								"key" : 3258,
								"value" : [ 72.719999999999999 ]
							}
, 							{
								"key" : 3259,
								"value" : [ 70.879999999999995 ]
							}
, 							{
								"key" : 3260,
								"value" : [ 70.430000000000007 ]
							}
, 							{
								"key" : 3261,
								"value" : [ 70.480000000000004 ]
							}
, 							{
								"key" : 3262,
								"value" : [ 70.209999999999994 ]
							}
, 							{
								"key" : 3263,
								"value" : [ 70.030000000000001 ]
							}
, 							{
								"key" : 3264,
								"value" : [ 69.75 ]
							}
, 							{
								"key" : 3265,
								"value" : [ 69.310000000000002 ]
							}
, 							{
								"key" : 3266,
								"value" : [ 68.790000000000006 ]
							}
, 							{
								"key" : 3267,
								"value" : [ 68.109999999999999 ]
							}
, 							{
								"key" : 3268,
								"value" : [ 67.409999999999997 ]
							}
, 							{
								"key" : 3269,
								"value" : [ 66.900000000000006 ]
							}
, 							{
								"key" : 3270,
								"value" : [ 67.079999999999998 ]
							}
, 							{
								"key" : 3271,
								"value" : [ 69.120000000000005 ]
							}
, 							{
								"key" : 3272,
								"value" : [ 71.469999999999999 ]
							}
, 							{
								"key" : 3273,
								"value" : [ 73.329999999999998 ]
							}
, 							{
								"key" : 3274,
								"value" : [ 74.640000000000001 ]
							}
, 							{
								"key" : 3275,
								"value" : [ 75.469999999999999 ]
							}
, 							{
								"key" : 3276,
								"value" : [ 75.900000000000006 ]
							}
, 							{
								"key" : 3277,
								"value" : [ 76.049999999999997 ]
							}
, 							{
								"key" : 3278,
								"value" : [ 75.989999999999995 ]
							}
, 							{
								"key" : 3279,
								"value" : [ 75.870000000000005 ]
							}
, 							{
								"key" : 3280,
								"value" : [ 75.670000000000002 ]
							}
, 							{
								"key" : 3281,
								"value" : [ 75.290000000000006 ]
							}
, 							{
								"key" : 3282,
								"value" : [ 74.519999999999996 ]
							}
, 							{
								"key" : 3283,
								"value" : [ 72.269999999999996 ]
							}
, 							{
								"key" : 3284,
								"value" : [ 71.109999999999999 ]
							}
, 							{
								"key" : 3285,
								"value" : [ 70.840000000000003 ]
							}
, 							{
								"key" : 3286,
								"value" : [ 70.650000000000006 ]
							}
, 							{
								"key" : 3287,
								"value" : [ 70.319999999999993 ]
							}
, 							{
								"key" : 3288,
								"value" : [ 69.819999999999993 ]
							}
, 							{
								"key" : 3289,
								"value" : [ 69.239999999999995 ]
							}
, 							{
								"key" : 3290,
								"value" : [ 68.670000000000002 ]
							}
, 							{
								"key" : 3291,
								"value" : [ 68.519999999999996 ]
							}
, 							{
								"key" : 3292,
								"value" : [ 68.340000000000003 ]
							}
, 							{
								"key" : 3293,
								"value" : [ 67.980000000000004 ]
							}
, 							{
								"key" : 3294,
								"value" : [ 68.409999999999997 ]
							}
, 							{
								"key" : 3295,
								"value" : [ 70.629999999999995 ]
							}
, 							{
								"key" : 3296,
								"value" : [ 72.180000000000007 ]
							}
, 							{
								"key" : 3297,
								"value" : [ 73.329999999999998 ]
							}
, 							{
								"key" : 3298,
								"value" : [ 74.069999999999993 ]
							}
, 							{
								"key" : 3299,
								"value" : [ 74.519999999999996 ]
							}
, 							{
								"key" : 3300,
								"value" : [ 74.709999999999994 ]
							}
, 							{
								"key" : 3301,
								"value" : [ 74.659999999999997 ]
							}
, 							{
								"key" : 3302,
								"value" : [ 74.439999999999998 ]
							}
, 							{
								"key" : 3303,
								"value" : [ 74.069999999999993 ]
							}
, 							{
								"key" : 3304,
								"value" : [ 73.709999999999994 ]
							}
, 							{
								"key" : 3305,
								"value" : [ 73.219999999999999 ]
							}
, 							{
								"key" : 3306,
								"value" : [ 72.540000000000006 ]
							}
, 							{
								"key" : 3307,
								"value" : [ 70.769999999999996 ]
							}
, 							{
								"key" : 3308,
								"value" : [ 70.140000000000001 ]
							}
, 							{
								"key" : 3309,
								"value" : [ 70.430000000000007 ]
							}
, 							{
								"key" : 3310,
								"value" : [ 70.659999999999997 ]
							}
, 							{
								"key" : 3311,
								"value" : [ 70.859999999999999 ]
							}
, 							{
								"key" : 3312,
								"value" : [ 71.150000000000006 ]
							}
, 							{
								"key" : 3313,
								"value" : [ 71.370000000000005 ]
							}
, 							{
								"key" : 3314,
								"value" : [ 71.420000000000002 ]
							}
, 							{
								"key" : 3315,
								"value" : [ 71.329999999999998 ]
							}
, 							{
								"key" : 3316,
								"value" : [ 70.810000000000002 ]
							}
, 							{
								"key" : 3317,
								"value" : [ 70.209999999999994 ]
							}
, 							{
								"key" : 3318,
								"value" : [ 70.319999999999993 ]
							}
, 							{
								"key" : 3319,
								"value" : [ 71.870000000000005 ]
							}
, 							{
								"key" : 3320,
								"value" : [ 73.719999999999999 ]
							}
, 							{
								"key" : 3321,
								"value" : [ 75.219999999999999 ]
							}
, 							{
								"key" : 3322,
								"value" : [ 76.010000000000005 ]
							}
, 							{
								"key" : 3323,
								"value" : [ 76.640000000000001 ]
							}
, 							{
								"key" : 3324,
								"value" : [ 77.019999999999996 ]
							}
, 							{
								"key" : 3325,
								"value" : [ 77.219999999999999 ]
							}
, 							{
								"key" : 3326,
								"value" : [ 77.319999999999993 ]
							}
, 							{
								"key" : 3327,
								"value" : [ 77.269999999999996 ]
							}
, 							{
								"key" : 3328,
								"value" : [ 77.040000000000006 ]
							}
, 							{
								"key" : 3329,
								"value" : [ 76.549999999999997 ]
							}
, 							{
								"key" : 3330,
								"value" : [ 75.650000000000006 ]
							}
, 							{
								"key" : 3331,
								"value" : [ 73.870000000000005 ]
							}
, 							{
								"key" : 3332,
								"value" : [ 72.810000000000002 ]
							}
, 							{
								"key" : 3333,
								"value" : [ 72.590000000000003 ]
							}
, 							{
								"key" : 3334,
								"value" : [ 72.629999999999995 ]
							}
, 							{
								"key" : 3335,
								"value" : [ 72.769999999999996 ]
							}
, 							{
								"key" : 3336,
								"value" : [ 72.909999999999997 ]
							}
, 							{
								"key" : 3337,
								"value" : [ 72.989999999999995 ]
							}
, 							{
								"key" : 3338,
								"value" : [ 72.969999999999999 ]
							}
, 							{
								"key" : 3339,
								"value" : [ 72.879999999999995 ]
							}
, 							{
								"key" : 3340,
								"value" : [ 72.730000000000004 ]
							}
, 							{
								"key" : 3341,
								"value" : [ 72.640000000000001 ]
							}
, 							{
								"key" : 3342,
								"value" : [ 72.769999999999996 ]
							}
, 							{
								"key" : 3343,
								"value" : [ 73.739999999999995 ]
							}
, 							{
								"key" : 3344,
								"value" : [ 74.700000000000003 ]
							}
, 							{
								"key" : 3345,
								"value" : [ 76.439999999999998 ]
							}
, 							{
								"key" : 3346,
								"value" : [ 77.719999999999999 ]
							}
, 							{
								"key" : 3347,
								"value" : [ 78.620000000000005 ]
							}
, 							{
								"key" : 3348,
								"value" : [ 79.140000000000001 ]
							}
, 							{
								"key" : 3349,
								"value" : [ 79.430000000000007 ]
							}
, 							{
								"key" : 3350,
								"value" : [ 79.469999999999999 ]
							}
, 							{
								"key" : 3351,
								"value" : [ 79.25 ]
							}
, 							{
								"key" : 3352,
								"value" : [ 78.760000000000005 ]
							}
, 							{
								"key" : 3353,
								"value" : [ 77.969999999999999 ]
							}
, 							{
								"key" : 3354,
								"value" : [ 76.799999999999997 ]
							}
, 							{
								"key" : 3355,
								"value" : [ 75.040000000000006 ]
							}
, 							{
								"key" : 3356,
								"value" : [ 73.920000000000002 ]
							}
, 							{
								"key" : 3357,
								"value" : [ 73.599999999999994 ]
							}
, 							{
								"key" : 3358,
								"value" : [ 73.579999999999998 ]
							}
, 							{
								"key" : 3359,
								"value" : [ 73.719999999999999 ]
							}
, 							{
								"key" : 3360,
								"value" : [ 73.939999999999998 ]
							}
, 							{
								"key" : 3361,
								"value" : [ 74.159999999999997 ]
							}
, 							{
								"key" : 3362,
								"value" : [ 74.430000000000007 ]
							}
, 							{
								"key" : 3363,
								"value" : [ 74.609999999999999 ]
							}
, 							{
								"key" : 3364,
								"value" : [ 75.019999999999996 ]
							}
, 							{
								"key" : 3365,
								"value" : [ 74.909999999999997 ]
							}
, 							{
								"key" : 3366,
								"value" : [ 74.709999999999994 ]
							}
, 							{
								"key" : 3367,
								"value" : [ 75.469999999999999 ]
							}
, 							{
								"key" : 3368,
								"value" : [ 77.140000000000001 ]
							}
, 							{
								"key" : 3369,
								"value" : [ 79.140000000000001 ]
							}
, 							{
								"key" : 3370,
								"value" : [ 80.170000000000002 ]
							}
, 							{
								"key" : 3371,
								"value" : [ 80.689999999999998 ]
							}
, 							{
								"key" : 3372,
								"value" : [ 81.159999999999997 ]
							}
, 							{
								"key" : 3373,
								"value" : [ 81.540000000000006 ]
							}
, 							{
								"key" : 3374,
								"value" : [ 81.640000000000001 ]
							}
, 							{
								"key" : 3375,
								"value" : [ 81.319999999999993 ]
							}
, 							{
								"key" : 3376,
								"value" : [ 80.599999999999994 ]
							}
, 							{
								"key" : 3377,
								"value" : [ 79.659999999999997 ]
							}
, 							{
								"key" : 3378,
								"value" : [ 78.260000000000005 ]
							}
, 							{
								"key" : 3379,
								"value" : [ 76.230000000000004 ]
							}
, 							{
								"key" : 3380,
								"value" : [ 74.840000000000003 ]
							}
, 							{
								"key" : 3381,
								"value" : [ 74.230000000000004 ]
							}
, 							{
								"key" : 3382,
								"value" : [ 73.980000000000004 ]
							}
, 							{
								"key" : 3383,
								"value" : [ 73.939999999999998 ]
							}
, 							{
								"key" : 3384,
								"value" : [ 73.989999999999995 ]
							}
, 							{
								"key" : 3385,
								"value" : [ 74.159999999999997 ]
							}
, 							{
								"key" : 3386,
								"value" : [ 74.25 ]
							}
, 							{
								"key" : 3387,
								"value" : [ 74.120000000000005 ]
							}
, 							{
								"key" : 3388,
								"value" : [ 73.829999999999998 ]
							}
, 							{
								"key" : 3389,
								"value" : [ 73.530000000000001 ]
							}
, 							{
								"key" : 3390,
								"value" : [ 73.620000000000005 ]
							}
, 							{
								"key" : 3391,
								"value" : [ 75.200000000000003 ]
							}
, 							{
								"key" : 3392,
								"value" : [ 77.340000000000003 ]
							}
, 							{
								"key" : 3393,
								"value" : [ 79.069999999999993 ]
							}
, 							{
								"key" : 3394,
								"value" : [ 80.290000000000006 ]
							}
, 							{
								"key" : 3395,
								"value" : [ 81.090000000000003 ]
							}
, 							{
								"key" : 3396,
								"value" : [ 81.879999999999995 ]
							}
, 							{
								"key" : 3397,
								"value" : [ 82.670000000000002 ]
							}
, 							{
								"key" : 3398,
								"value" : [ 83.390000000000001 ]
							}
, 							{
								"key" : 3399,
								"value" : [ 83.840000000000003 ]
							}
, 							{
								"key" : 3400,
								"value" : [ 83.840000000000003 ]
							}
, 							{
								"key" : 3401,
								"value" : [ 83.430000000000007 ]
							}
, 							{
								"key" : 3402,
								"value" : [ 82.260000000000005 ]
							}
, 							{
								"key" : 3403,
								"value" : [ 79.719999999999999 ]
							}
, 							{
								"key" : 3404,
								"value" : [ 78.640000000000001 ]
							}
, 							{
								"key" : 3405,
								"value" : [ 78.060000000000002 ]
							}
, 							{
								"key" : 3406,
								"value" : [ 77.409999999999997 ]
							}
, 							{
								"key" : 3407,
								"value" : [ 76.859999999999999 ]
							}
, 							{
								"key" : 3408,
								"value" : [ 76.439999999999998 ]
							}
, 							{
								"key" : 3409,
								"value" : [ 76.049999999999997 ]
							}
, 							{
								"key" : 3410,
								"value" : [ 75.540000000000006 ]
							}
, 							{
								"key" : 3411,
								"value" : [ 75.150000000000006 ]
							}
, 							{
								"key" : 3412,
								"value" : [ 74.659999999999997 ]
							}
, 							{
								"key" : 3413,
								"value" : [ 73.989999999999995 ]
							}
, 							{
								"key" : 3414,
								"value" : [ 73.810000000000002 ]
							}
, 							{
								"key" : 3415,
								"value" : [ 74.700000000000003 ]
							}
, 							{
								"key" : 3416,
								"value" : [ 76.120000000000005 ]
							}
, 							{
								"key" : 3417,
								"value" : [ 79.019999999999996 ]
							}
, 							{
								"key" : 3418,
								"value" : [ 81.409999999999997 ]
							}
, 							{
								"key" : 3419,
								"value" : [ 82.780000000000001 ]
							}
, 							{
								"key" : 3420,
								"value" : [ 83.819999999999993 ]
							}
, 							{
								"key" : 3421,
								"value" : [ 84.560000000000002 ]
							}
, 							{
								"key" : 3422,
								"value" : [ 84.469999999999999 ]
							}
, 							{
								"key" : 3423,
								"value" : [ 84.290000000000006 ]
							}
, 							{
								"key" : 3424,
								"value" : [ 83.840000000000003 ]
							}
, 							{
								"key" : 3425,
								"value" : [ 83.010000000000005 ]
							}
, 							{
								"key" : 3426,
								"value" : [ 81.659999999999997 ]
							}
, 							{
								"key" : 3427,
								"value" : [ 79.5 ]
							}
, 							{
								"key" : 3428,
								"value" : [ 78.150000000000006 ]
							}
, 							{
								"key" : 3429,
								"value" : [ 77.25 ]
							}
, 							{
								"key" : 3430,
								"value" : [ 76.709999999999994 ]
							}
, 							{
								"key" : 3431,
								"value" : [ 76.420000000000002 ]
							}
, 							{
								"key" : 3432,
								"value" : [ 76.170000000000002 ]
							}
, 							{
								"key" : 3433,
								"value" : [ 75.790000000000006 ]
							}
, 							{
								"key" : 3434,
								"value" : [ 74.890000000000001 ]
							}
, 							{
								"key" : 3435,
								"value" : [ 73.650000000000006 ]
							}
, 							{
								"key" : 3436,
								"value" : [ 72.730000000000004 ]
							}
, 							{
								"key" : 3437,
								"value" : [ 72.269999999999996 ]
							}
, 							{
								"key" : 3438,
								"value" : [ 72.120000000000005 ]
							}
, 							{
								"key" : 3439,
								"value" : [ 72.719999999999999 ]
							}
, 							{
								"key" : 3440,
								"value" : [ 73.650000000000006 ]
							}
, 							{
								"key" : 3441,
								"value" : [ 75.019999999999996 ]
							}
, 							{
								"key" : 3442,
								"value" : [ 76.319999999999993 ]
							}
, 							{
								"key" : 3443,
								"value" : [ 77.049999999999997 ]
							}
, 							{
								"key" : 3444,
								"value" : [ 77.400000000000006 ]
							}
, 							{
								"key" : 3445,
								"value" : [ 77.489999999999995 ]
							}
, 							{
								"key" : 3446,
								"value" : [ 77.219999999999999 ]
							}
, 							{
								"key" : 3447,
								"value" : [ 76.480000000000004 ]
							}
, 							{
								"key" : 3448,
								"value" : [ 75.290000000000006 ]
							}
, 							{
								"key" : 3449,
								"value" : [ 73.920000000000002 ]
							}
, 							{
								"key" : 3450,
								"value" : [ 72.540000000000006 ]
							}
, 							{
								"key" : 3451,
								"value" : [ 71.620000000000005 ]
							}
, 							{
								"key" : 3452,
								"value" : [ 71.219999999999999 ]
							}
, 							{
								"key" : 3453,
								"value" : [ 70.840000000000003 ]
							}
, 							{
								"key" : 3454,
								"value" : [ 70.75 ]
							}
, 							{
								"key" : 3455,
								"value" : [ 70.810000000000002 ]
							}
, 							{
								"key" : 3456,
								"value" : [ 71.129999999999995 ]
							}
, 							{
								"key" : 3457,
								"value" : [ 71.579999999999998 ]
							}
, 							{
								"key" : 3458,
								"value" : [ 71.959999999999994 ]
							}
, 							{
								"key" : 3459,
								"value" : [ 72.370000000000005 ]
							}
, 							{
								"key" : 3460,
								"value" : [ 72.459999999999994 ]
							}
, 							{
								"key" : 3461,
								"value" : [ 72.390000000000001 ]
							}
, 							{
								"key" : 3462,
								"value" : [ 72.590000000000003 ]
							}
, 							{
								"key" : 3463,
								"value" : [ 73.599999999999994 ]
							}
, 							{
								"key" : 3464,
								"value" : [ 74.700000000000003 ]
							}
, 							{
								"key" : 3465,
								"value" : [ 76.439999999999998 ]
							}
, 							{
								"key" : 3466,
								"value" : [ 78.040000000000006 ]
							}
, 							{
								"key" : 3467,
								"value" : [ 80.060000000000002 ]
							}
, 							{
								"key" : 3468,
								"value" : [ 81.280000000000001 ]
							}
, 							{
								"key" : 3469,
								"value" : [ 83.569999999999993 ]
							}
, 							{
								"key" : 3470,
								"value" : [ 84.629999999999995 ]
							}
, 							{
								"key" : 3471,
								"value" : [ 84.700000000000003 ]
							}
, 							{
								"key" : 3472,
								"value" : [ 84.560000000000002 ]
							}
, 							{
								"key" : 3473,
								"value" : [ 84.599999999999994 ]
							}
, 							{
								"key" : 3474,
								"value" : [ 84.310000000000002 ]
							}
, 							{
								"key" : 3475,
								"value" : [ 82.379999999999995 ]
							}
, 							{
								"key" : 3476,
								"value" : [ 80.310000000000002 ]
							}
, 							{
								"key" : 3477,
								"value" : [ 79.069999999999993 ]
							}
, 							{
								"key" : 3478,
								"value" : [ 78.349999999999994 ]
							}
, 							{
								"key" : 3479,
								"value" : [ 77.859999999999999 ]
							}
, 							{
								"key" : 3480,
								"value" : [ 77.540000000000006 ]
							}
, 							{
								"key" : 3481,
								"value" : [ 77.129999999999995 ]
							}
, 							{
								"key" : 3482,
								"value" : [ 76.680000000000007 ]
							}
, 							{
								"key" : 3483,
								"value" : [ 76.260000000000005 ]
							}
, 							{
								"key" : 3484,
								"value" : [ 75.989999999999995 ]
							}
, 							{
								"key" : 3485,
								"value" : [ 75.810000000000002 ]
							}
, 							{
								"key" : 3486,
								"value" : [ 75.849999999999994 ]
							}
, 							{
								"key" : 3487,
								"value" : [ 76.530000000000001 ]
							}
, 							{
								"key" : 3488,
								"value" : [ 77.219999999999999 ]
							}
, 							{
								"key" : 3489,
								"value" : [ 78.659999999999997 ]
							}
, 							{
								"key" : 3490,
								"value" : [ 80.760000000000005 ]
							}
, 							{
								"key" : 3491,
								"value" : [ 82.260000000000005 ]
							}
, 							{
								"key" : 3492,
								"value" : [ 83.530000000000001 ]
							}
, 							{
								"key" : 3493,
								"value" : [ 84.670000000000002 ]
							}
, 							{
								"key" : 3494,
								"value" : [ 85.420000000000002 ]
							}
, 							{
								"key" : 3495,
								"value" : [ 85.950000000000003 ]
							}
, 							{
								"key" : 3496,
								"value" : [ 85.480000000000004 ]
							}
, 							{
								"key" : 3497,
								"value" : [ 84.290000000000006 ]
							}
, 							{
								"key" : 3498,
								"value" : [ 82.329999999999998 ]
							}
, 							{
								"key" : 3499,
								"value" : [ 80.099999999999994 ]
							}
, 							{
								"key" : 3500,
								"value" : [ 78.939999999999998 ]
							}
, 							{
								"key" : 3501,
								"value" : [ 78.099999999999994 ]
							}
, 							{
								"key" : 3502,
								"value" : [ 77.489999999999995 ]
							}
, 							{
								"key" : 3503,
								"value" : [ 77.140000000000001 ]
							}
, 							{
								"key" : 3504,
								"value" : [ 76.959999999999994 ]
							}
, 							{
								"key" : 3505,
								"value" : [ 76.780000000000001 ]
							}
, 							{
								"key" : 3506,
								"value" : [ 76.640000000000001 ]
							}
, 							{
								"key" : 3507,
								"value" : [ 76.569999999999993 ]
							}
, 							{
								"key" : 3508,
								"value" : [ 76.530000000000001 ]
							}
, 							{
								"key" : 3509,
								"value" : [ 76.319999999999993 ]
							}
, 							{
								"key" : 3510,
								"value" : [ 75.939999999999998 ]
							}
, 							{
								"key" : 3511,
								"value" : [ 76.010000000000005 ]
							}
, 							{
								"key" : 3512,
								"value" : [ 76.75 ]
							}
, 							{
								"key" : 3513,
								"value" : [ 78.239999999999995 ]
							}
, 							{
								"key" : 3514,
								"value" : [ 80.170000000000002 ]
							}
, 							{
								"key" : 3515,
								"value" : [ 81.180000000000007 ]
							}
, 							{
								"key" : 3516,
								"value" : [ 82.439999999999998 ]
							}
, 							{
								"key" : 3517,
								"value" : [ 84.069999999999993 ]
							}
, 							{
								"key" : 3518,
								"value" : [ 84.969999999999999 ]
							}
, 							{
								"key" : 3519,
								"value" : [ 84.829999999999998 ]
							}
, 							{
								"key" : 3520,
								"value" : [ 84.790000000000006 ]
							}
, 							{
								"key" : 3521,
								"value" : [ 84.290000000000006 ]
							}
, 							{
								"key" : 3522,
								"value" : [ 81.969999999999999 ]
							}
, 							{
								"key" : 3523,
								"value" : [ 79.269999999999996 ]
							}
, 							{
								"key" : 3524,
								"value" : [ 77.859999999999999 ]
							}
, 							{
								"key" : 3525,
								"value" : [ 77.140000000000001 ]
							}
, 							{
								"key" : 3526,
								"value" : [ 76.659999999999997 ]
							}
, 							{
								"key" : 3527,
								"value" : [ 76.319999999999993 ]
							}
, 							{
								"key" : 3528,
								"value" : [ 75.959999999999994 ]
							}
, 							{
								"key" : 3529,
								"value" : [ 75.510000000000005 ]
							}
, 							{
								"key" : 3530,
								"value" : [ 74.930000000000007 ]
							}
, 							{
								"key" : 3531,
								"value" : [ 74.370000000000005 ]
							}
, 							{
								"key" : 3532,
								"value" : [ 73.870000000000005 ]
							}
, 							{
								"key" : 3533,
								"value" : [ 73.620000000000005 ]
							}
, 							{
								"key" : 3534,
								"value" : [ 73.870000000000005 ]
							}
, 							{
								"key" : 3535,
								"value" : [ 74.890000000000001 ]
							}
, 							{
								"key" : 3536,
								"value" : [ 75.870000000000005 ]
							}
, 							{
								"key" : 3537,
								"value" : [ 77.140000000000001 ]
							}
, 							{
								"key" : 3538,
								"value" : [ 78.939999999999998 ]
							}
, 							{
								"key" : 3539,
								"value" : [ 80.560000000000002 ]
							}
, 							{
								"key" : 3540,
								"value" : [ 81.390000000000001 ]
							}
, 							{
								"key" : 3541,
								"value" : [ 81.810000000000002 ]
							}
, 							{
								"key" : 3542,
								"value" : [ 81.879999999999995 ]
							}
, 							{
								"key" : 3543,
								"value" : [ 81.700000000000003 ]
							}
, 							{
								"key" : 3544,
								"value" : [ 81.140000000000001 ]
							}
, 							{
								"key" : 3545,
								"value" : [ 80.260000000000005 ]
							}
, 							{
								"key" : 3546,
								"value" : [ 78.849999999999994 ]
							}
, 							{
								"key" : 3547,
								"value" : [ 77.180000000000007 ]
							}
, 							{
								"key" : 3548,
								"value" : [ 76.510000000000005 ]
							}
, 							{
								"key" : 3549,
								"value" : [ 76.530000000000001 ]
							}
, 							{
								"key" : 3550,
								"value" : [ 76.599999999999994 ]
							}
, 							{
								"key" : 3551,
								"value" : [ 76.409999999999997 ]
							}
, 							{
								"key" : 3552,
								"value" : [ 75.969999999999999 ]
							}
, 							{
								"key" : 3553,
								"value" : [ 75.400000000000006 ]
							}
, 							{
								"key" : 3554,
								"value" : [ 74.859999999999999 ]
							}
, 							{
								"key" : 3555,
								"value" : [ 74.319999999999993 ]
							}
, 							{
								"key" : 3556,
								"value" : [ 73.810000000000002 ]
							}
, 							{
								"key" : 3557,
								"value" : [ 73.560000000000002 ]
							}
, 							{
								"key" : 3558,
								"value" : [ 73.599999999999994 ]
							}
, 							{
								"key" : 3559,
								"value" : [ 74.439999999999998 ]
							}
, 							{
								"key" : 3560,
								"value" : [ 76.230000000000004 ]
							}
, 							{
								"key" : 3561,
								"value" : [ 78.569999999999993 ]
							}
, 							{
								"key" : 3562,
								"value" : [ 80.370000000000005 ]
							}
, 							{
								"key" : 3563,
								"value" : [ 82.219999999999999 ]
							}
, 							{
								"key" : 3564,
								"value" : [ 83.530000000000001 ]
							}
, 							{
								"key" : 3565,
								"value" : [ 84.560000000000002 ]
							}
, 							{
								"key" : 3566,
								"value" : [ 85.299999999999997 ]
							}
, 							{
								"key" : 3567,
								"value" : [ 85.569999999999993 ]
							}
, 							{
								"key" : 3568,
								"value" : [ 85.480000000000004 ]
							}
, 							{
								"key" : 3569,
								"value" : [ 84.989999999999995 ]
							}
, 							{
								"key" : 3570,
								"value" : [ 83.409999999999997 ]
							}
, 							{
								"key" : 3571,
								"value" : [ 81.430000000000007 ]
							}
, 							{
								"key" : 3572,
								"value" : [ 80.640000000000001 ]
							}
, 							{
								"key" : 3573,
								"value" : [ 80.079999999999998 ]
							}
, 							{
								"key" : 3574,
								"value" : [ 79.569999999999993 ]
							}
, 							{
								"key" : 3575,
								"value" : [ 79.049999999999997 ]
							}
, 							{
								"key" : 3576,
								"value" : [ 78.489999999999995 ]
							}
, 							{
								"key" : 3577,
								"value" : [ 77.719999999999999 ]
							}
, 							{
								"key" : 3578,
								"value" : [ 76.780000000000001 ]
							}
, 							{
								"key" : 3579,
								"value" : [ 75.810000000000002 ]
							}
, 							{
								"key" : 3580,
								"value" : [ 74.969999999999999 ]
							}
, 							{
								"key" : 3581,
								"value" : [ 74.409999999999997 ]
							}
, 							{
								"key" : 3582,
								"value" : [ 74.349999999999994 ]
							}
, 							{
								"key" : 3583,
								"value" : [ 75.359999999999999 ]
							}
, 							{
								"key" : 3584,
								"value" : [ 77.489999999999995 ]
							}
, 							{
								"key" : 3585,
								"value" : [ 79.969999999999999 ]
							}
, 							{
								"key" : 3586,
								"value" : [ 81.900000000000006 ]
							}
, 							{
								"key" : 3587,
								"value" : [ 83.799999999999997 ]
							}
, 							{
								"key" : 3588,
								"value" : [ 85.120000000000005 ]
							}
, 							{
								"key" : 3589,
								"value" : [ 85.780000000000001 ]
							}
, 							{
								"key" : 3590,
								"value" : [ 85.959999999999994 ]
							}
, 							{
								"key" : 3591,
								"value" : [ 85.819999999999993 ]
							}
, 							{
								"key" : 3592,
								"value" : [ 85.260000000000005 ]
							}
, 							{
								"key" : 3593,
								"value" : [ 84.540000000000006 ]
							}
, 							{
								"key" : 3594,
								"value" : [ 83.409999999999997 ]
							}
, 							{
								"key" : 3595,
								"value" : [ 81.719999999999999 ]
							}
, 							{
								"key" : 3596,
								"value" : [ 80.870000000000005 ]
							}
, 							{
								"key" : 3597,
								"value" : [ 80.170000000000002 ]
							}
, 							{
								"key" : 3598,
								"value" : [ 79.519999999999996 ]
							}
, 							{
								"key" : 3599,
								"value" : [ 78.799999999999997 ]
							}
, 							{
								"key" : 3600,
								"value" : [ 77.900000000000006 ]
							}
, 							{
								"key" : 3601,
								"value" : [ 77.040000000000006 ]
							}
, 							{
								"key" : 3602,
								"value" : [ 76.239999999999995 ]
							}
, 							{
								"key" : 3603,
								"value" : [ 75.579999999999998 ]
							}
, 							{
								"key" : 3604,
								"value" : [ 75.019999999999996 ]
							}
, 							{
								"key" : 3605,
								"value" : [ 74.730000000000004 ]
							}
, 							{
								"key" : 3606,
								"value" : [ 74.75 ]
							}
, 							{
								"key" : 3607,
								"value" : [ 75.689999999999998 ]
							}
, 							{
								"key" : 3608,
								"value" : [ 77.359999999999999 ]
							}
, 							{
								"key" : 3609,
								"value" : [ 79.430000000000007 ]
							}
, 							{
								"key" : 3610,
								"value" : [ 81.120000000000005 ]
							}
, 							{
								"key" : 3611,
								"value" : [ 82.090000000000003 ]
							}
, 							{
								"key" : 3612,
								"value" : [ 82.849999999999994 ]
							}
, 							{
								"key" : 3613,
								"value" : [ 83.349999999999994 ]
							}
, 							{
								"key" : 3614,
								"value" : [ 83.549999999999997 ]
							}
, 							{
								"key" : 3615,
								"value" : [ 83.609999999999999 ]
							}
, 							{
								"key" : 3616,
								"value" : [ 83.459999999999994 ]
							}
, 							{
								"key" : 3617,
								"value" : [ 82.870000000000005 ]
							}
, 							{
								"key" : 3618,
								"value" : [ 81.519999999999996 ]
							}
, 							{
								"key" : 3619,
								"value" : [ 79.650000000000006 ]
							}
, 							{
								"key" : 3620,
								"value" : [ 78.439999999999998 ]
							}
, 							{
								"key" : 3621,
								"value" : [ 77.409999999999997 ]
							}
, 							{
								"key" : 3622,
								"value" : [ 76.370000000000005 ]
							}
, 							{
								"key" : 3623,
								"value" : [ 75.25 ]
							}
, 							{
								"key" : 3624,
								"value" : [ 74.170000000000002 ]
							}
, 							{
								"key" : 3625,
								"value" : [ 73.170000000000002 ]
							}
, 							{
								"key" : 3626,
								"value" : [ 72.370000000000005 ]
							}
, 							{
								"key" : 3627,
								"value" : [ 71.829999999999998 ]
							}
, 							{
								"key" : 3628,
								"value" : [ 71.219999999999999 ]
							}
, 							{
								"key" : 3629,
								"value" : [ 70.75 ]
							}
, 							{
								"key" : 3630,
								"value" : [ 70.629999999999995 ]
							}
, 							{
								"key" : 3631,
								"value" : [ 71.870000000000005 ]
							}
, 							{
								"key" : 3632,
								"value" : [ 73.359999999999999 ]
							}
, 							{
								"key" : 3633,
								"value" : [ 76.239999999999995 ]
							}
, 							{
								"key" : 3634,
								"value" : [ 77.609999999999999 ]
							}
, 							{
								"key" : 3635,
								"value" : [ 78.349999999999994 ]
							}
, 							{
								"key" : 3636,
								"value" : [ 78.75 ]
							}
, 							{
								"key" : 3637,
								"value" : [ 78.819999999999993 ]
							}
, 							{
								"key" : 3638,
								"value" : [ 79.030000000000001 ]
							}
, 							{
								"key" : 3639,
								"value" : [ 79.299999999999997 ]
							}
, 							{
								"key" : 3640,
								"value" : [ 79.200000000000003 ]
							}
, 							{
								"key" : 3641,
								"value" : [ 78.760000000000005 ]
							}
, 							{
								"key" : 3642,
								"value" : [ 77.760000000000005 ]
							}
, 							{
								"key" : 3643,
								"value" : [ 75.359999999999999 ]
							}
, 							{
								"key" : 3644,
								"value" : [ 74.530000000000001 ]
							}
, 							{
								"key" : 3645,
								"value" : [ 74.230000000000004 ]
							}
, 							{
								"key" : 3646,
								"value" : [ 74.099999999999994 ]
							}
, 							{
								"key" : 3647,
								"value" : [ 74.439999999999998 ]
							}
, 							{
								"key" : 3648,
								"value" : [ 74.480000000000004 ]
							}
, 							{
								"key" : 3649,
								"value" : [ 73.920000000000002 ]
							}
, 							{
								"key" : 3650,
								"value" : [ 73.829999999999998 ]
							}
, 							{
								"key" : 3651,
								"value" : [ 74.079999999999998 ]
							}
, 							{
								"key" : 3652,
								"value" : [ 73.469999999999999 ]
							}
, 							{
								"key" : 3653,
								"value" : [ 72.969999999999999 ]
							}
, 							{
								"key" : 3654,
								"value" : [ 72.769999999999996 ]
							}
, 							{
								"key" : 3655,
								"value" : [ 74.340000000000003 ]
							}
, 							{
								"key" : 3656,
								"value" : [ 75.670000000000002 ]
							}
, 							{
								"key" : 3657,
								"value" : [ 76.840000000000003 ]
							}
, 							{
								"key" : 3658,
								"value" : [ 77.920000000000002 ]
							}
, 							{
								"key" : 3659,
								"value" : [ 78.689999999999998 ]
							}
, 							{
								"key" : 3660,
								"value" : [ 78.730000000000004 ]
							}
, 							{
								"key" : 3661,
								"value" : [ 78.709999999999994 ]
							}
, 							{
								"key" : 3662,
								"value" : [ 78.400000000000006 ]
							}
, 							{
								"key" : 3663,
								"value" : [ 77.719999999999999 ]
							}
, 							{
								"key" : 3664,
								"value" : [ 77.019999999999996 ]
							}
, 							{
								"key" : 3665,
								"value" : [ 76.120000000000005 ]
							}
, 							{
								"key" : 3666,
								"value" : [ 75.159999999999997 ]
							}
, 							{
								"key" : 3667,
								"value" : [ 74.620000000000005 ]
							}
, 							{
								"key" : 3668,
								"value" : [ 74.879999999999995 ]
							}
, 							{
								"key" : 3669,
								"value" : [ 74.890000000000001 ]
							}
, 							{
								"key" : 3670,
								"value" : [ 74.569999999999993 ]
							}
, 							{
								"key" : 3671,
								"value" : [ 74.079999999999998 ]
							}
, 							{
								"key" : 3672,
								"value" : [ 73.349999999999994 ]
							}
, 							{
								"key" : 3673,
								"value" : [ 72.819999999999993 ]
							}
, 							{
								"key" : 3674,
								"value" : [ 72.319999999999993 ]
							}
, 							{
								"key" : 3675,
								"value" : [ 71.829999999999998 ]
							}
, 							{
								"key" : 3676,
								"value" : [ 71.290000000000006 ]
							}
, 							{
								"key" : 3677,
								"value" : [ 70.75 ]
							}
, 							{
								"key" : 3678,
								"value" : [ 70.390000000000001 ]
							}
, 							{
								"key" : 3679,
								"value" : [ 71.560000000000002 ]
							}
, 							{
								"key" : 3680,
								"value" : [ 72.319999999999993 ]
							}
, 							{
								"key" : 3681,
								"value" : [ 73.040000000000006 ]
							}
, 							{
								"key" : 3682,
								"value" : [ 73.379999999999995 ]
							}
, 							{
								"key" : 3683,
								"value" : [ 73.540000000000006 ]
							}
, 							{
								"key" : 3684,
								"value" : [ 73.670000000000002 ]
							}
, 							{
								"key" : 3685,
								"value" : [ 73.670000000000002 ]
							}
, 							{
								"key" : 3686,
								"value" : [ 73.530000000000001 ]
							}
, 							{
								"key" : 3687,
								"value" : [ 73.260000000000005 ]
							}
, 							{
								"key" : 3688,
								"value" : [ 72.930000000000007 ]
							}
, 							{
								"key" : 3689,
								"value" : [ 72.609999999999999 ]
							}
, 							{
								"key" : 3690,
								"value" : [ 72.099999999999994 ]
							}
, 							{
								"key" : 3691,
								"value" : [ 70.790000000000006 ]
							}
, 							{
								"key" : 3692,
								"value" : [ 70.519999999999996 ]
							}
, 							{
								"key" : 3693,
								"value" : [ 70.519999999999996 ]
							}
, 							{
								"key" : 3694,
								"value" : [ 70.650000000000006 ]
							}
, 							{
								"key" : 3695,
								"value" : [ 70.840000000000003 ]
							}
, 							{
								"key" : 3696,
								"value" : [ 70.879999999999995 ]
							}
, 							{
								"key" : 3697,
								"value" : [ 70.700000000000003 ]
							}
, 							{
								"key" : 3698,
								"value" : [ 70.379999999999995 ]
							}
, 							{
								"key" : 3699,
								"value" : [ 70.0 ]
							}
, 							{
								"key" : 3700,
								"value" : [ 69.569999999999993 ]
							}
, 							{
								"key" : 3701,
								"value" : [ 69.170000000000002 ]
							}
, 							{
								"key" : 3702,
								"value" : [ 68.939999999999998 ]
							}
, 							{
								"key" : 3703,
								"value" : [ 70.629999999999995 ]
							}
, 							{
								"key" : 3704,
								"value" : [ 72.010000000000005 ]
							}
, 							{
								"key" : 3705,
								"value" : [ 73.040000000000006 ]
							}
, 							{
								"key" : 3706,
								"value" : [ 73.870000000000005 ]
							}
, 							{
								"key" : 3707,
								"value" : [ 74.5 ]
							}
, 							{
								"key" : 3708,
								"value" : [ 74.840000000000003 ]
							}
, 							{
								"key" : 3709,
								"value" : [ 74.930000000000007 ]
							}
, 							{
								"key" : 3710,
								"value" : [ 74.480000000000004 ]
							}
, 							{
								"key" : 3711,
								"value" : [ 73.170000000000002 ]
							}
, 							{
								"key" : 3712,
								"value" : [ 72.090000000000003 ]
							}
, 							{
								"key" : 3713,
								"value" : [ 71.489999999999995 ]
							}
, 							{
								"key" : 3714,
								"value" : [ 70.840000000000003 ]
							}
, 							{
								"key" : 3715,
								"value" : [ 69.980000000000004 ]
							}
, 							{
								"key" : 3716,
								"value" : [ 69.870000000000005 ]
							}
, 							{
								"key" : 3717,
								"value" : [ 69.890000000000001 ]
							}
, 							{
								"key" : 3718,
								"value" : [ 69.939999999999998 ]
							}
, 							{
								"key" : 3719,
								"value" : [ 69.980000000000004 ]
							}
, 							{
								"key" : 3720,
								"value" : [ 70.019999999999996 ]
							}
, 							{
								"key" : 3721,
								"value" : [ 69.980000000000004 ]
							}
, 							{
								"key" : 3722,
								"value" : [ 69.209999999999994 ]
							}
, 							{
								"key" : 3723,
								"value" : [ 68.340000000000003 ]
							}
, 							{
								"key" : 3724,
								"value" : [ 67.5 ]
							}
, 							{
								"key" : 3725,
								"value" : [ 66.780000000000001 ]
							}
, 							{
								"key" : 3726,
								"value" : [ 66.670000000000002 ]
							}
, 							{
								"key" : 3727,
								"value" : [ 67.049999999999997 ]
							}
, 							{
								"key" : 3728,
								"value" : [ 68.269999999999996 ]
							}
, 							{
								"key" : 3729,
								"value" : [ 70.650000000000006 ]
							}
, 							{
								"key" : 3730,
								"value" : [ 72.790000000000006 ]
							}
, 							{
								"key" : 3731,
								"value" : [ 73.810000000000002 ]
							}
, 							{
								"key" : 3732,
								"value" : [ 74.640000000000001 ]
							}
, 							{
								"key" : 3733,
								"value" : [ 74.640000000000001 ]
							}
, 							{
								"key" : 3734,
								"value" : [ 74.620000000000005 ]
							}
, 							{
								"key" : 3735,
								"value" : [ 75.219999999999999 ]
							}
, 							{
								"key" : 3736,
								"value" : [ 75.760000000000005 ]
							}
, 							{
								"key" : 3737,
								"value" : [ 75.420000000000002 ]
							}
, 							{
								"key" : 3738,
								"value" : [ 73.920000000000002 ]
							}
, 							{
								"key" : 3739,
								"value" : [ 71.819999999999993 ]
							}
, 							{
								"key" : 3740,
								"value" : [ 71.379999999999995 ]
							}
, 							{
								"key" : 3741,
								"value" : [ 70.739999999999995 ]
							}
, 							{
								"key" : 3742,
								"value" : [ 70.019999999999996 ]
							}
, 							{
								"key" : 3743,
								"value" : [ 69.329999999999998 ]
							}
, 							{
								"key" : 3744,
								"value" : [ 68.950000000000003 ]
							}
, 							{
								"key" : 3745,
								"value" : [ 68.739999999999995 ]
							}
, 							{
								"key" : 3746,
								"value" : [ 68.109999999999999 ]
							}
, 							{
								"key" : 3747,
								"value" : [ 67.280000000000001 ]
							}
, 							{
								"key" : 3748,
								"value" : [ 66.540000000000006 ]
							}
, 							{
								"key" : 3749,
								"value" : [ 66.269999999999996 ]
							}
, 							{
								"key" : 3750,
								"value" : [ 66.540000000000006 ]
							}
, 							{
								"key" : 3751,
								"value" : [ 67.319999999999993 ]
							}
, 							{
								"key" : 3752,
								"value" : [ 68.469999999999999 ]
							}
, 							{
								"key" : 3753,
								"value" : [ 69.870000000000005 ]
							}
, 							{
								"key" : 3754,
								"value" : [ 71.689999999999998 ]
							}
, 							{
								"key" : 3755,
								"value" : [ 73.019999999999996 ]
							}
, 							{
								"key" : 3756,
								"value" : [ 73.780000000000001 ]
							}
, 							{
								"key" : 3757,
								"value" : [ 74.120000000000005 ]
							}
, 							{
								"key" : 3758,
								"value" : [ 74.659999999999997 ]
							}
, 							{
								"key" : 3759,
								"value" : [ 75.060000000000002 ]
							}
, 							{
								"key" : 3760,
								"value" : [ 75.379999999999995 ]
							}
, 							{
								"key" : 3761,
								"value" : [ 75.400000000000006 ]
							}
, 							{
								"key" : 3762,
								"value" : [ 74.5 ]
							}
, 							{
								"key" : 3763,
								"value" : [ 73.129999999999995 ]
							}
, 							{
								"key" : 3764,
								"value" : [ 71.489999999999995 ]
							}
, 							{
								"key" : 3765,
								"value" : [ 69.280000000000001 ]
							}
, 							{
								"key" : 3766,
								"value" : [ 67.959999999999994 ]
							}
, 							{
								"key" : 3767,
								"value" : [ 67.319999999999993 ]
							}
, 							{
								"key" : 3768,
								"value" : [ 66.879999999999995 ]
							}
, 							{
								"key" : 3769,
								"value" : [ 66.430000000000007 ]
							}
, 							{
								"key" : 3770,
								"value" : [ 65.969999999999999 ]
							}
, 							{
								"key" : 3771,
								"value" : [ 65.390000000000001 ]
							}
, 							{
								"key" : 3772,
								"value" : [ 64.540000000000006 ]
							}
, 							{
								"key" : 3773,
								"value" : [ 63.75 ]
							}
, 							{
								"key" : 3774,
								"value" : [ 63.229999999999997 ]
							}
, 							{
								"key" : 3775,
								"value" : [ 64.510000000000005 ]
							}
, 							{
								"key" : 3776,
								"value" : [ 66.269999999999996 ]
							}
, 							{
								"key" : 3777,
								"value" : [ 70.090000000000003 ]
							}
, 							{
								"key" : 3778,
								"value" : [ 74.140000000000001 ]
							}
, 							{
								"key" : 3779,
								"value" : [ 75.780000000000001 ]
							}
, 							{
								"key" : 3780,
								"value" : [ 76.769999999999996 ]
							}
, 							{
								"key" : 3781,
								"value" : [ 77.560000000000002 ]
							}
, 							{
								"key" : 3782,
								"value" : [ 78.170000000000002 ]
							}
, 							{
								"key" : 3783,
								"value" : [ 78.489999999999995 ]
							}
, 							{
								"key" : 3784,
								"value" : [ 77.939999999999998 ]
							}
, 							{
								"key" : 3785,
								"value" : [ 77.700000000000003 ]
							}
, 							{
								"key" : 3786,
								"value" : [ 76.370000000000005 ]
							}
, 							{
								"key" : 3787,
								"value" : [ 74.030000000000001 ]
							}
, 							{
								"key" : 3788,
								"value" : [ 72.930000000000007 ]
							}
, 							{
								"key" : 3789,
								"value" : [ 71.620000000000005 ]
							}
, 							{
								"key" : 3790,
								"value" : [ 70.159999999999997 ]
							}
, 							{
								"key" : 3791,
								"value" : [ 69.260000000000005 ]
							}
, 							{
								"key" : 3792,
								"value" : [ 68.859999999999999 ]
							}
, 							{
								"key" : 3793,
								"value" : [ 68.230000000000004 ]
							}
, 							{
								"key" : 3794,
								"value" : [ 67.510000000000005 ]
							}
, 							{
								"key" : 3795,
								"value" : [ 67.140000000000001 ]
							}
, 							{
								"key" : 3796,
								"value" : [ 66.739999999999995 ]
							}
, 							{
								"key" : 3797,
								"value" : [ 66.469999999999999 ]
							}
, 							{
								"key" : 3798,
								"value" : [ 66.450000000000003 ]
							}
, 							{
								"key" : 3799,
								"value" : [ 68.489999999999995 ]
							}
, 							{
								"key" : 3800,
								"value" : [ 70.700000000000003 ]
							}
, 							{
								"key" : 3801,
								"value" : [ 72.390000000000001 ]
							}
, 							{
								"key" : 3802,
								"value" : [ 73.709999999999994 ]
							}
, 							{
								"key" : 3803,
								"value" : [ 74.519999999999996 ]
							}
, 							{
								"key" : 3804,
								"value" : [ 75.069999999999993 ]
							}
, 							{
								"key" : 3805,
								"value" : [ 75.469999999999999 ]
							}
, 							{
								"key" : 3806,
								"value" : [ 75.650000000000006 ]
							}
, 							{
								"key" : 3807,
								"value" : [ 75.609999999999999 ]
							}
, 							{
								"key" : 3808,
								"value" : [ 75.109999999999999 ]
							}
, 							{
								"key" : 3809,
								"value" : [ 74.170000000000002 ]
							}
, 							{
								"key" : 3810,
								"value" : [ 72.099999999999994 ]
							}
, 							{
								"key" : 3811,
								"value" : [ 69.120000000000005 ]
							}
, 							{
								"key" : 3812,
								"value" : [ 68.450000000000003 ]
							}
, 							{
								"key" : 3813,
								"value" : [ 68.219999999999999 ]
							}
, 							{
								"key" : 3814,
								"value" : [ 68.25 ]
							}
, 							{
								"key" : 3815,
								"value" : [ 68.319999999999993 ]
							}
, 							{
								"key" : 3816,
								"value" : [ 68.140000000000001 ]
							}
, 							{
								"key" : 3817,
								"value" : [ 67.819999999999993 ]
							}
, 							{
								"key" : 3818,
								"value" : [ 67.730000000000004 ]
							}
, 							{
								"key" : 3819,
								"value" : [ 68.0 ]
							}
, 							{
								"key" : 3820,
								"value" : [ 68.340000000000003 ]
							}
, 							{
								"key" : 3821,
								"value" : [ 68.359999999999999 ]
							}
, 							{
								"key" : 3822,
								"value" : [ 68.359999999999999 ]
							}
, 							{
								"key" : 3823,
								"value" : [ 69.549999999999997 ]
							}
, 							{
								"key" : 3824,
								"value" : [ 71.439999999999998 ]
							}
, 							{
								"key" : 3825,
								"value" : [ 74.640000000000001 ]
							}
, 							{
								"key" : 3826,
								"value" : [ 76.859999999999999 ]
							}
, 							{
								"key" : 3827,
								"value" : [ 78.260000000000005 ]
							}
, 							{
								"key" : 3828,
								"value" : [ 80.310000000000002 ]
							}
, 							{
								"key" : 3829,
								"value" : [ 81.549999999999997 ]
							}
, 							{
								"key" : 3830,
								"value" : [ 81.969999999999999 ]
							}
, 							{
								"key" : 3831,
								"value" : [ 81.319999999999993 ]
							}
, 							{
								"key" : 3832,
								"value" : [ 78.620000000000005 ]
							}
, 							{
								"key" : 3833,
								"value" : [ 75.879999999999995 ]
							}
, 							{
								"key" : 3834,
								"value" : [ 74.459999999999994 ]
							}
, 							{
								"key" : 3835,
								"value" : [ 72.810000000000002 ]
							}
, 							{
								"key" : 3836,
								"value" : [ 71.760000000000005 ]
							}
, 							{
								"key" : 3837,
								"value" : [ 70.739999999999995 ]
							}
, 							{
								"key" : 3838,
								"value" : [ 69.549999999999997 ]
							}
, 							{
								"key" : 3839,
								"value" : [ 68.629999999999995 ]
							}
, 							{
								"key" : 3840,
								"value" : [ 67.780000000000001 ]
							}
, 							{
								"key" : 3841,
								"value" : [ 66.969999999999999 ]
							}
, 							{
								"key" : 3842,
								"value" : [ 66.090000000000003 ]
							}
, 							{
								"key" : 3843,
								"value" : [ 65.519999999999996 ]
							}
, 							{
								"key" : 3844,
								"value" : [ 64.709999999999994 ]
							}
, 							{
								"key" : 3845,
								"value" : [ 63.640000000000001 ]
							}
, 							{
								"key" : 3846,
								"value" : [ 62.850000000000001 ]
							}
, 							{
								"key" : 3847,
								"value" : [ 63.840000000000003 ]
							}
, 							{
								"key" : 3848,
								"value" : [ 65.530000000000001 ]
							}
, 							{
								"key" : 3849,
								"value" : [ 69.579999999999998 ]
							}
, 							{
								"key" : 3850,
								"value" : [ 73.489999999999995 ]
							}
, 							{
								"key" : 3851,
								"value" : [ 74.969999999999999 ]
							}
, 							{
								"key" : 3852,
								"value" : [ 75.760000000000005 ]
							}
, 							{
								"key" : 3853,
								"value" : [ 76.230000000000004 ]
							}
, 							{
								"key" : 3854,
								"value" : [ 76.319999999999993 ]
							}
, 							{
								"key" : 3855,
								"value" : [ 76.049999999999997 ]
							}
, 							{
								"key" : 3856,
								"value" : [ 75.400000000000006 ]
							}
, 							{
								"key" : 3857,
								"value" : [ 74.280000000000001 ]
							}
, 							{
								"key" : 3858,
								"value" : [ 72.569999999999993 ]
							}
, 							{
								"key" : 3859,
								"value" : [ 70.109999999999999 ]
							}
, 							{
								"key" : 3860,
								"value" : [ 68.920000000000002 ]
							}
, 							{
								"key" : 3861,
								"value" : [ 67.959999999999994 ]
							}
, 							{
								"key" : 3862,
								"value" : [ 67.280000000000001 ]
							}
, 							{
								"key" : 3863,
								"value" : [ 66.739999999999995 ]
							}
, 							{
								"key" : 3864,
								"value" : [ 66.239999999999995 ]
							}
, 							{
								"key" : 3865,
								"value" : [ 65.769999999999996 ]
							}
, 							{
								"key" : 3866,
								"value" : [ 65.370000000000005 ]
							}
, 							{
								"key" : 3867,
								"value" : [ 64.959999999999994 ]
							}
, 							{
								"key" : 3868,
								"value" : [ 64.510000000000005 ]
							}
, 							{
								"key" : 3869,
								"value" : [ 64.150000000000006 ]
							}
, 							{
								"key" : 3870,
								"value" : [ 64.0 ]
							}
, 							{
								"key" : 3871,
								"value" : [ 65.890000000000001 ]
							}
, 							{
								"key" : 3872,
								"value" : [ 67.420000000000002 ]
							}
, 							{
								"key" : 3873,
								"value" : [ 68.760000000000005 ]
							}
, 							{
								"key" : 3874,
								"value" : [ 69.939999999999998 ]
							}
, 							{
								"key" : 3875,
								"value" : [ 70.969999999999999 ]
							}
, 							{
								"key" : 3876,
								"value" : [ 71.760000000000005 ]
							}
, 							{
								"key" : 3877,
								"value" : [ 72.430000000000007 ]
							}
, 							{
								"key" : 3878,
								"value" : [ 72.840000000000003 ]
							}
, 							{
								"key" : 3879,
								"value" : [ 72.769999999999996 ]
							}
, 							{
								"key" : 3880,
								"value" : [ 72.5 ]
							}
, 							{
								"key" : 3881,
								"value" : [ 71.980000000000004 ]
							}
, 							{
								"key" : 3882,
								"value" : [ 70.950000000000003 ]
							}
, 							{
								"key" : 3883,
								"value" : [ 68.989999999999995 ]
							}
, 							{
								"key" : 3884,
								"value" : [ 67.870000000000005 ]
							}
, 							{
								"key" : 3885,
								"value" : [ 67.189999999999998 ]
							}
, 							{
								"key" : 3886,
								"value" : [ 66.760000000000005 ]
							}
, 							{
								"key" : 3887,
								"value" : [ 66.290000000000006 ]
							}
, 							{
								"key" : 3888,
								"value" : [ 65.890000000000001 ]
							}
, 							{
								"key" : 3889,
								"value" : [ 65.340000000000003 ]
							}
, 							{
								"key" : 3890,
								"value" : [ 64.620000000000005 ]
							}
, 							{
								"key" : 3891,
								"value" : [ 63.969999999999999 ]
							}
, 							{
								"key" : 3892,
								"value" : [ 63.0 ]
							}
, 							{
								"key" : 3893,
								"value" : [ 62.460000000000001 ]
							}
, 							{
								"key" : 3894,
								"value" : [ 61.899999999999999 ]
							}
, 							{
								"key" : 3895,
								"value" : [ 63.25 ]
							}
, 							{
								"key" : 3896,
								"value" : [ 65.069999999999993 ]
							}
, 							{
								"key" : 3897,
								"value" : [ 68.650000000000006 ]
							}
, 							{
								"key" : 3898,
								"value" : [ 72.459999999999994 ]
							}
, 							{
								"key" : 3899,
								"value" : [ 73.900000000000006 ]
							}
, 							{
								"key" : 3900,
								"value" : [ 74.950000000000003 ]
							}
, 							{
								"key" : 3901,
								"value" : [ 75.849999999999994 ]
							}
, 							{
								"key" : 3902,
								"value" : [ 76.439999999999998 ]
							}
, 							{
								"key" : 3903,
								"value" : [ 76.709999999999994 ]
							}
, 							{
								"key" : 3904,
								"value" : [ 76.569999999999993 ]
							}
, 							{
								"key" : 3905,
								"value" : [ 76.010000000000005 ]
							}
, 							{
								"key" : 3906,
								"value" : [ 74.010000000000005 ]
							}
, 							{
								"key" : 3907,
								"value" : [ 72.069999999999993 ]
							}
, 							{
								"key" : 3908,
								"value" : [ 71.109999999999999 ]
							}
, 							{
								"key" : 3909,
								"value" : [ 70.019999999999996 ]
							}
, 							{
								"key" : 3910,
								"value" : [ 68.920000000000002 ]
							}
, 							{
								"key" : 3911,
								"value" : [ 67.950000000000003 ]
							}
, 							{
								"key" : 3912,
								"value" : [ 67.319999999999993 ]
							}
, 							{
								"key" : 3913,
								"value" : [ 66.430000000000007 ]
							}
, 							{
								"key" : 3914,
								"value" : [ 65.840000000000003 ]
							}
, 							{
								"key" : 3915,
								"value" : [ 65.390000000000001 ]
							}
, 							{
								"key" : 3916,
								"value" : [ 64.890000000000001 ]
							}
, 							{
								"key" : 3917,
								"value" : [ 64.799999999999997 ]
							}
, 							{
								"key" : 3918,
								"value" : [ 64.870000000000005 ]
							}
, 							{
								"key" : 3919,
								"value" : [ 66.150000000000006 ]
							}
, 							{
								"key" : 3920,
								"value" : [ 68.310000000000002 ]
							}
, 							{
								"key" : 3921,
								"value" : [ 71.019999999999996 ]
							}
, 							{
								"key" : 3922,
								"value" : [ 73.400000000000006 ]
							}
, 							{
								"key" : 3923,
								"value" : [ 75.599999999999994 ]
							}
, 							{
								"key" : 3924,
								"value" : [ 77.519999999999996 ]
							}
, 							{
								"key" : 3925,
								"value" : [ 79.069999999999993 ]
							}
, 							{
								"key" : 3926,
								"value" : [ 80.129999999999995 ]
							}
, 							{
								"key" : 3927,
								"value" : [ 80.640000000000001 ]
							}
, 							{
								"key" : 3928,
								"value" : [ 80.620000000000005 ]
							}
, 							{
								"key" : 3929,
								"value" : [ 79.950000000000003 ]
							}
, 							{
								"key" : 3930,
								"value" : [ 78.209999999999994 ]
							}
, 							{
								"key" : 3931,
								"value" : [ 76.370000000000005 ]
							}
, 							{
								"key" : 3932,
								"value" : [ 75.469999999999999 ]
							}
, 							{
								"key" : 3933,
								"value" : [ 74.319999999999993 ]
							}
, 							{
								"key" : 3934,
								"value" : [ 73.540000000000006 ]
							}
, 							{
								"key" : 3935,
								"value" : [ 73.450000000000003 ]
							}
, 							{
								"key" : 3936,
								"value" : [ 72.549999999999997 ]
							}
, 							{
								"key" : 3937,
								"value" : [ 71.530000000000001 ]
							}
, 							{
								"key" : 3938,
								"value" : [ 70.519999999999996 ]
							}
, 							{
								"key" : 3939,
								"value" : [ 69.819999999999993 ]
							}
, 							{
								"key" : 3940,
								"value" : [ 69.390000000000001 ]
							}
, 							{
								"key" : 3941,
								"value" : [ 69.219999999999999 ]
							}
, 							{
								"key" : 3942,
								"value" : [ 69.129999999999995 ]
							}
, 							{
								"key" : 3943,
								"value" : [ 69.709999999999994 ]
							}
, 							{
								"key" : 3944,
								"value" : [ 71.890000000000001 ]
							}
, 							{
								"key" : 3945,
								"value" : [ 74.859999999999999 ]
							}
, 							{
								"key" : 3946,
								"value" : [ 76.959999999999994 ]
							}
, 							{
								"key" : 3947,
								"value" : [ 78.480000000000004 ]
							}
, 							{
								"key" : 3948,
								"value" : [ 79.719999999999999 ]
							}
, 							{
								"key" : 3949,
								"value" : [ 80.640000000000001 ]
							}
, 							{
								"key" : 3950,
								"value" : [ 80.939999999999998 ]
							}
, 							{
								"key" : 3951,
								"value" : [ 80.760000000000005 ]
							}
, 							{
								"key" : 3952,
								"value" : [ 79.790000000000006 ]
							}
, 							{
								"key" : 3953,
								"value" : [ 77.090000000000003 ]
							}
, 							{
								"key" : 3954,
								"value" : [ 73.579999999999998 ]
							}
, 							{
								"key" : 3955,
								"value" : [ 70.609999999999999 ]
							}
, 							{
								"key" : 3956,
								"value" : [ 68.939999999999998 ]
							}
, 							{
								"key" : 3957,
								"value" : [ 68.129999999999995 ]
							}
, 							{
								"key" : 3958,
								"value" : [ 67.840000000000003 ]
							}
, 							{
								"key" : 3959,
								"value" : [ 68.019999999999996 ]
							}
, 							{
								"key" : 3960,
								"value" : [ 68.129999999999995 ]
							}
, 							{
								"key" : 3961,
								"value" : [ 68.409999999999997 ]
							}
, 							{
								"key" : 3962,
								"value" : [ 68.760000000000005 ]
							}
, 							{
								"key" : 3963,
								"value" : [ 69.040000000000006 ]
							}
, 							{
								"key" : 3964,
								"value" : [ 69.310000000000002 ]
							}
, 							{
								"key" : 3965,
								"value" : [ 69.599999999999994 ]
							}
, 							{
								"key" : 3966,
								"value" : [ 69.760000000000005 ]
							}
, 							{
								"key" : 3967,
								"value" : [ 70.519999999999996 ]
							}
, 							{
								"key" : 3968,
								"value" : [ 71.780000000000001 ]
							}
, 							{
								"key" : 3969,
								"value" : [ 72.819999999999993 ]
							}
, 							{
								"key" : 3970,
								"value" : [ 73.900000000000006 ]
							}
, 							{
								"key" : 3971,
								"value" : [ 74.609999999999999 ]
							}
, 							{
								"key" : 3972,
								"value" : [ 75.790000000000006 ]
							}
, 							{
								"key" : 3973,
								"value" : [ 77.859999999999999 ]
							}
, 							{
								"key" : 3974,
								"value" : [ 80.010000000000005 ]
							}
, 							{
								"key" : 3975,
								"value" : [ 81.909999999999997 ]
							}
, 							{
								"key" : 3976,
								"value" : [ 82.939999999999998 ]
							}
, 							{
								"key" : 3977,
								"value" : [ 81.459999999999994 ]
							}
, 							{
								"key" : 3978,
								"value" : [ 77.090000000000003 ]
							}
, 							{
								"key" : 3979,
								"value" : [ 73.810000000000002 ]
							}
, 							{
								"key" : 3980,
								"value" : [ 72.640000000000001 ]
							}
, 							{
								"key" : 3981,
								"value" : [ 72.069999999999993 ]
							}
, 							{
								"key" : 3982,
								"value" : [ 72.390000000000001 ]
							}
, 							{
								"key" : 3983,
								"value" : [ 72.969999999999999 ]
							}
, 							{
								"key" : 3984,
								"value" : [ 73.090000000000003 ]
							}
, 							{
								"key" : 3985,
								"value" : [ 72.819999999999993 ]
							}
, 							{
								"key" : 3986,
								"value" : [ 72.5 ]
							}
, 							{
								"key" : 3987,
								"value" : [ 71.829999999999998 ]
							}
, 							{
								"key" : 3988,
								"value" : [ 71.370000000000005 ]
							}
, 							{
								"key" : 3989,
								"value" : [ 71.829999999999998 ]
							}
, 							{
								"key" : 3990,
								"value" : [ 71.739999999999995 ]
							}
, 							{
								"key" : 3991,
								"value" : [ 71.489999999999995 ]
							}
, 							{
								"key" : 3992,
								"value" : [ 73.290000000000006 ]
							}
, 							{
								"key" : 3993,
								"value" : [ 76.769999999999996 ]
							}
, 							{
								"key" : 3994,
								"value" : [ 79.159999999999997 ]
							}
, 							{
								"key" : 3995,
								"value" : [ 80.400000000000006 ]
							}
, 							{
								"key" : 3996,
								"value" : [ 81.099999999999994 ]
							}
, 							{
								"key" : 3997,
								"value" : [ 81.319999999999993 ]
							}
, 							{
								"key" : 3998,
								"value" : [ 80.510000000000005 ]
							}
, 							{
								"key" : 3999,
								"value" : [ 80.040000000000006 ]
							}
, 							{
								"key" : 4000,
								"value" : [ 79.379999999999995 ]
							}
, 							{
								"key" : 4001,
								"value" : [ 77.579999999999998 ]
							}
, 							{
								"key" : 4002,
								"value" : [ 75.019999999999996 ]
							}
, 							{
								"key" : 4003,
								"value" : [ 72.25 ]
							}
, 							{
								"key" : 4004,
								"value" : [ 70.390000000000001 ]
							}
, 							{
								"key" : 4005,
								"value" : [ 68.849999999999994 ]
							}
, 							{
								"key" : 4006,
								"value" : [ 67.980000000000004 ]
							}
, 							{
								"key" : 4007,
								"value" : [ 67.590000000000003 ]
							}
, 							{
								"key" : 4008,
								"value" : [ 67.239999999999995 ]
							}
, 							{
								"key" : 4009,
								"value" : [ 66.920000000000002 ]
							}
, 							{
								"key" : 4010,
								"value" : [ 66.579999999999998 ]
							}
, 							{
								"key" : 4011,
								"value" : [ 66.180000000000007 ]
							}
, 							{
								"key" : 4012,
								"value" : [ 65.640000000000001 ]
							}
, 							{
								"key" : 4013,
								"value" : [ 64.989999999999995 ]
							}
, 							{
								"key" : 4014,
								"value" : [ 64.599999999999994 ]
							}
, 							{
								"key" : 4015,
								"value" : [ 66.019999999999996 ]
							}
, 							{
								"key" : 4016,
								"value" : [ 67.439999999999998 ]
							}
, 							{
								"key" : 4017,
								"value" : [ 69.120000000000005 ]
							}
, 							{
								"key" : 4018,
								"value" : [ 70.900000000000006 ]
							}
, 							{
								"key" : 4019,
								"value" : [ 72.140000000000001 ]
							}
, 							{
								"key" : 4020,
								"value" : [ 72.840000000000003 ]
							}
, 							{
								"key" : 4021,
								"value" : [ 73.109999999999999 ]
							}
, 							{
								"key" : 4022,
								"value" : [ 73.060000000000002 ]
							}
, 							{
								"key" : 4023,
								"value" : [ 72.719999999999999 ]
							}
, 							{
								"key" : 4024,
								"value" : [ 72.069999999999993 ]
							}
, 							{
								"key" : 4025,
								"value" : [ 71.150000000000006 ]
							}
, 							{
								"key" : 4026,
								"value" : [ 69.640000000000001 ]
							}
, 							{
								"key" : 4027,
								"value" : [ 67.819999999999993 ]
							}
, 							{
								"key" : 4028,
								"value" : [ 67.420000000000002 ]
							}
, 							{
								"key" : 4029,
								"value" : [ 67.120000000000005 ]
							}
, 							{
								"key" : 4030,
								"value" : [ 66.849999999999994 ]
							}
, 							{
								"key" : 4031,
								"value" : [ 66.670000000000002 ]
							}
, 							{
								"key" : 4032,
								"value" : [ 66.560000000000002 ]
							}
, 							{
								"key" : 4033,
								"value" : [ 66.560000000000002 ]
							}
, 							{
								"key" : 4034,
								"value" : [ 66.629999999999995 ]
							}
, 							{
								"key" : 4035,
								"value" : [ 66.650000000000006 ]
							}
, 							{
								"key" : 4036,
								"value" : [ 66.420000000000002 ]
							}
, 							{
								"key" : 4037,
								"value" : [ 65.890000000000001 ]
							}
, 							{
								"key" : 4038,
								"value" : [ 65.260000000000005 ]
							}
, 							{
								"key" : 4039,
								"value" : [ 66.219999999999999 ]
							}
, 							{
								"key" : 4040,
								"value" : [ 68.450000000000003 ]
							}
, 							{
								"key" : 4041,
								"value" : [ 70.590000000000003 ]
							}
, 							{
								"key" : 4042,
								"value" : [ 73.219999999999999 ]
							}
, 							{
								"key" : 4043,
								"value" : [ 74.620000000000005 ]
							}
, 							{
								"key" : 4044,
								"value" : [ 75.430000000000007 ]
							}
, 							{
								"key" : 4045,
								"value" : [ 76.120000000000005 ]
							}
, 							{
								"key" : 4046,
								"value" : [ 76.680000000000007 ]
							}
, 							{
								"key" : 4047,
								"value" : [ 77.129999999999995 ]
							}
, 							{
								"key" : 4048,
								"value" : [ 77.219999999999999 ]
							}
, 							{
								"key" : 4049,
								"value" : [ 76.640000000000001 ]
							}
, 							{
								"key" : 4050,
								"value" : [ 74.140000000000001 ]
							}
, 							{
								"key" : 4051,
								"value" : [ 72.140000000000001 ]
							}
, 							{
								"key" : 4052,
								"value" : [ 71.560000000000002 ]
							}
, 							{
								"key" : 4053,
								"value" : [ 70.680000000000007 ]
							}
, 							{
								"key" : 4054,
								"value" : [ 69.689999999999998 ]
							}
, 							{
								"key" : 4055,
								"value" : [ 68.700000000000003 ]
							}
, 							{
								"key" : 4056,
								"value" : [ 67.769999999999996 ]
							}
, 							{
								"key" : 4057,
								"value" : [ 67.030000000000001 ]
							}
, 							{
								"key" : 4058,
								"value" : [ 66.519999999999996 ]
							}
, 							{
								"key" : 4059,
								"value" : [ 66.239999999999995 ]
							}
, 							{
								"key" : 4060,
								"value" : [ 66.019999999999996 ]
							}
, 							{
								"key" : 4061,
								"value" : [ 65.769999999999996 ]
							}
, 							{
								"key" : 4062,
								"value" : [ 65.569999999999993 ]
							}
, 							{
								"key" : 4063,
								"value" : [ 66.920000000000002 ]
							}
, 							{
								"key" : 4064,
								"value" : [ 69.170000000000002 ]
							}
, 							{
								"key" : 4065,
								"value" : [ 73.040000000000006 ]
							}
, 							{
								"key" : 4066,
								"value" : [ 76.319999999999993 ]
							}
, 							{
								"key" : 4067,
								"value" : [ 77.900000000000006 ]
							}
, 							{
								"key" : 4068,
								"value" : [ 79.299999999999997 ]
							}
, 							{
								"key" : 4069,
								"value" : [ 80.599999999999994 ]
							}
, 							{
								"key" : 4070,
								"value" : [ 81.659999999999997 ]
							}
, 							{
								"key" : 4071,
								"value" : [ 82.290000000000006 ]
							}
, 							{
								"key" : 4072,
								"value" : [ 82.359999999999999 ]
							}
, 							{
								"key" : 4073,
								"value" : [ 81.810000000000002 ]
							}
, 							{
								"key" : 4074,
								"value" : [ 79.319999999999993 ]
							}
, 							{
								"key" : 4075,
								"value" : [ 77.200000000000003 ]
							}
, 							{
								"key" : 4076,
								"value" : [ 74.640000000000001 ]
							}
, 							{
								"key" : 4077,
								"value" : [ 72.099999999999994 ]
							}
, 							{
								"key" : 4078,
								"value" : [ 71.370000000000005 ]
							}
, 							{
								"key" : 4079,
								"value" : [ 71.260000000000005 ]
							}
, 							{
								"key" : 4080,
								"value" : [ 71.170000000000002 ]
							}
, 							{
								"key" : 4081,
								"value" : [ 70.920000000000002 ]
							}
, 							{
								"key" : 4082,
								"value" : [ 70.739999999999995 ]
							}
, 							{
								"key" : 4083,
								"value" : [ 70.810000000000002 ]
							}
, 							{
								"key" : 4084,
								"value" : [ 70.879999999999995 ]
							}
, 							{
								"key" : 4085,
								"value" : [ 70.700000000000003 ]
							}
, 							{
								"key" : 4086,
								"value" : [ 70.230000000000004 ]
							}
, 							{
								"key" : 4087,
								"value" : [ 70.319999999999993 ]
							}
, 							{
								"key" : 4088,
								"value" : [ 70.629999999999995 ]
							}
, 							{
								"key" : 4089,
								"value" : [ 70.840000000000003 ]
							}
, 							{
								"key" : 4090,
								"value" : [ 70.969999999999999 ]
							}
, 							{
								"key" : 4091,
								"value" : [ 71.099999999999994 ]
							}
, 							{
								"key" : 4092,
								"value" : [ 71.200000000000003 ]
							}
, 							{
								"key" : 4093,
								"value" : [ 71.310000000000002 ]
							}
, 							{
								"key" : 4094,
								"value" : [ 71.400000000000006 ]
							}
, 							{
								"key" : 4095,
								"value" : [ 71.370000000000005 ]
							}
, 							{
								"key" : 4096,
								"value" : [ 71.060000000000002 ]
							}
, 							{
								"key" : 4097,
								"value" : [ 70.5 ]
							}
, 							{
								"key" : 4098,
								"value" : [ 69.489999999999995 ]
							}
, 							{
								"key" : 4099,
								"value" : [ 68.319999999999993 ]
							}
, 							{
								"key" : 4100,
								"value" : [ 68.519999999999996 ]
							}
, 							{
								"key" : 4101,
								"value" : [ 69.120000000000005 ]
							}
, 							{
								"key" : 4102,
								"value" : [ 69.640000000000001 ]
							}
, 							{
								"key" : 4103,
								"value" : [ 69.659999999999997 ]
							}
, 							{
								"key" : 4104,
								"value" : [ 69.310000000000002 ]
							}
, 							{
								"key" : 4105,
								"value" : [ 68.879999999999995 ]
							}
, 							{
								"key" : 4106,
								"value" : [ 68.409999999999997 ]
							}
, 							{
								"key" : 4107,
								"value" : [ 67.870000000000005 ]
							}
, 							{
								"key" : 4108,
								"value" : [ 67.189999999999998 ]
							}
, 							{
								"key" : 4109,
								"value" : [ 66.420000000000002 ]
							}
, 							{
								"key" : 4110,
								"value" : [ 65.950000000000003 ]
							}
, 							{
								"key" : 4111,
								"value" : [ 67.230000000000004 ]
							}
, 							{
								"key" : 4112,
								"value" : [ 68.920000000000002 ]
							}
, 							{
								"key" : 4113,
								"value" : [ 71.420000000000002 ]
							}
, 							{
								"key" : 4114,
								"value" : [ 73.379999999999995 ]
							}
, 							{
								"key" : 4115,
								"value" : [ 75.810000000000002 ]
							}
, 							{
								"key" : 4116,
								"value" : [ 78.599999999999994 ]
							}
, 							{
								"key" : 4117,
								"value" : [ 80.060000000000002 ]
							}
, 							{
								"key" : 4118,
								"value" : [ 81.269999999999996 ]
							}
, 							{
								"key" : 4119,
								"value" : [ 82.290000000000006 ]
							}
, 							{
								"key" : 4120,
								"value" : [ 82.329999999999998 ]
							}
, 							{
								"key" : 4121,
								"value" : [ 80.920000000000002 ]
							}
, 							{
								"key" : 4122,
								"value" : [ 77.969999999999999 ]
							}
, 							{
								"key" : 4123,
								"value" : [ 76.260000000000005 ]
							}
, 							{
								"key" : 4124,
								"value" : [ 75.790000000000006 ]
							}
, 							{
								"key" : 4125,
								"value" : [ 75.340000000000003 ]
							}
, 							{
								"key" : 4126,
								"value" : [ 74.879999999999995 ]
							}
, 							{
								"key" : 4127,
								"value" : [ 74.5 ]
							}
, 							{
								"key" : 4128,
								"value" : [ 73.829999999999998 ]
							}
, 							{
								"key" : 4129,
								"value" : [ 73.180000000000007 ]
							}
, 							{
								"key" : 4130,
								"value" : [ 72.590000000000003 ]
							}
, 							{
								"key" : 4131,
								"value" : [ 71.890000000000001 ]
							}
, 							{
								"key" : 4132,
								"value" : [ 71.280000000000001 ]
							}
, 							{
								"key" : 4133,
								"value" : [ 71.040000000000006 ]
							}
, 							{
								"key" : 4134,
								"value" : [ 71.040000000000006 ]
							}
, 							{
								"key" : 4135,
								"value" : [ 71.290000000000006 ]
							}
, 							{
								"key" : 4136,
								"value" : [ 71.689999999999998 ]
							}
, 							{
								"key" : 4137,
								"value" : [ 72.590000000000003 ]
							}
, 							{
								"key" : 4138,
								"value" : [ 73.810000000000002 ]
							}
, 							{
								"key" : 4139,
								"value" : [ 75.150000000000006 ]
							}
, 							{
								"key" : 4140,
								"value" : [ 76.599999999999994 ]
							}
, 							{
								"key" : 4141,
								"value" : [ 77.900000000000006 ]
							}
, 							{
								"key" : 4142,
								"value" : [ 78.75 ]
							}
, 							{
								"key" : 4143,
								"value" : [ 78.930000000000007 ]
							}
, 							{
								"key" : 4144,
								"value" : [ 78.370000000000005 ]
							}
, 							{
								"key" : 4145,
								"value" : [ 77.590000000000003 ]
							}
, 							{
								"key" : 4146,
								"value" : [ 76.409999999999997 ]
							}
, 							{
								"key" : 4147,
								"value" : [ 75.150000000000006 ]
							}
, 							{
								"key" : 4148,
								"value" : [ 74.370000000000005 ]
							}
, 							{
								"key" : 4149,
								"value" : [ 74.069999999999993 ]
							}
, 							{
								"key" : 4150,
								"value" : [ 73.780000000000001 ]
							}
, 							{
								"key" : 4151,
								"value" : [ 73.239999999999995 ]
							}
, 							{
								"key" : 4152,
								"value" : [ 72.269999999999996 ]
							}
, 							{
								"key" : 4153,
								"value" : [ 71.560000000000002 ]
							}
, 							{
								"key" : 4154,
								"value" : [ 71.010000000000005 ]
							}
, 							{
								"key" : 4155,
								"value" : [ 70.700000000000003 ]
							}
, 							{
								"key" : 4156,
								"value" : [ 70.659999999999997 ]
							}
, 							{
								"key" : 4157,
								"value" : [ 70.069999999999993 ]
							}
, 							{
								"key" : 4158,
								"value" : [ 68.670000000000002 ]
							}
, 							{
								"key" : 4159,
								"value" : [ 66.0 ]
							}
, 							{
								"key" : 4160,
								"value" : [ 64.349999999999994 ]
							}
, 							{
								"key" : 4161,
								"value" : [ 64.239999999999995 ]
							}
, 							{
								"key" : 4162,
								"value" : [ 65.75 ]
							}
, 							{
								"key" : 4163,
								"value" : [ 67.370000000000005 ]
							}
, 							{
								"key" : 4164,
								"value" : [ 68.25 ]
							}
, 							{
								"key" : 4165,
								"value" : [ 68.700000000000003 ]
							}
, 							{
								"key" : 4166,
								"value" : [ 68.739999999999995 ]
							}
, 							{
								"key" : 4167,
								"value" : [ 68.230000000000004 ]
							}
, 							{
								"key" : 4168,
								"value" : [ 67.620000000000005 ]
							}
, 							{
								"key" : 4169,
								"value" : [ 66.430000000000007 ]
							}
, 							{
								"key" : 4170,
								"value" : [ 64.629999999999995 ]
							}
, 							{
								"key" : 4171,
								"value" : [ 64.060000000000002 ]
							}
, 							{
								"key" : 4172,
								"value" : [ 64.0 ]
							}
, 							{
								"key" : 4173,
								"value" : [ 64.090000000000003 ]
							}
, 							{
								"key" : 4174,
								"value" : [ 63.859999999999999 ]
							}
, 							{
								"key" : 4175,
								"value" : [ 63.390000000000001 ]
							}
, 							{
								"key" : 4176,
								"value" : [ 62.799999999999997 ]
							}
, 							{
								"key" : 4177,
								"value" : [ 62.109999999999999 ]
							}
, 							{
								"key" : 4178,
								"value" : [ 61.969999999999999 ]
							}
, 							{
								"key" : 4179,
								"value" : [ 62.079999999999998 ]
							}
, 							{
								"key" : 4180,
								"value" : [ 62.020000000000003 ]
							}
, 							{
								"key" : 4181,
								"value" : [ 61.899999999999999 ]
							}
, 							{
								"key" : 4182,
								"value" : [ 61.840000000000003 ]
							}
, 							{
								"key" : 4183,
								"value" : [ 61.93 ]
							}
, 							{
								"key" : 4184,
								"value" : [ 62.109999999999999 ]
							}
, 							{
								"key" : 4185,
								"value" : [ 62.420000000000002 ]
							}
, 							{
								"key" : 4186,
								"value" : [ 62.780000000000001 ]
							}
, 							{
								"key" : 4187,
								"value" : [ 63.340000000000003 ]
							}
, 							{
								"key" : 4188,
								"value" : [ 63.450000000000003 ]
							}
, 							{
								"key" : 4189,
								"value" : [ 63.189999999999998 ]
							}
, 							{
								"key" : 4190,
								"value" : [ 63.009999999999998 ]
							}
, 							{
								"key" : 4191,
								"value" : [ 63.07 ]
							}
, 							{
								"key" : 4192,
								"value" : [ 63.049999999999997 ]
							}
, 							{
								"key" : 4193,
								"value" : [ 62.689999999999998 ]
							}
, 							{
								"key" : 4194,
								"value" : [ 62.100000000000001 ]
							}
, 							{
								"key" : 4195,
								"value" : [ 61.829999999999998 ]
							}
, 							{
								"key" : 4196,
								"value" : [ 61.880000000000003 ]
							}
, 							{
								"key" : 4197,
								"value" : [ 61.789999999999999 ]
							}
, 							{
								"key" : 4198,
								"value" : [ 61.969999999999999 ]
							}
, 							{
								"key" : 4199,
								"value" : [ 62.009999999999998 ]
							}
, 							{
								"key" : 4200,
								"value" : [ 61.5 ]
							}
, 							{
								"key" : 4201,
								"value" : [ 60.869999999999997 ]
							}
, 							{
								"key" : 4202,
								"value" : [ 60.439999999999998 ]
							}
, 							{
								"key" : 4203,
								"value" : [ 60.119999999999997 ]
							}
, 							{
								"key" : 4204,
								"value" : [ 59.609999999999999 ]
							}
, 							{
								"key" : 4205,
								"value" : [ 59.07 ]
							}
, 							{
								"key" : 4206,
								"value" : [ 58.439999999999998 ]
							}
, 							{
								"key" : 4207,
								"value" : [ 57.789999999999999 ]
							}
, 							{
								"key" : 4208,
								"value" : [ 57.829999999999998 ]
							}
, 							{
								"key" : 4209,
								"value" : [ 57.780000000000001 ]
							}
, 							{
								"key" : 4210,
								"value" : [ 57.920000000000002 ]
							}
, 							{
								"key" : 4211,
								"value" : [ 59.090000000000003 ]
							}
, 							{
								"key" : 4212,
								"value" : [ 60.299999999999997 ]
							}
, 							{
								"key" : 4213,
								"value" : [ 61.270000000000003 ]
							}
, 							{
								"key" : 4214,
								"value" : [ 62.130000000000003 ]
							}
, 							{
								"key" : 4215,
								"value" : [ 63.25 ]
							}
, 							{
								"key" : 4216,
								"value" : [ 64.060000000000002 ]
							}
, 							{
								"key" : 4217,
								"value" : [ 64.170000000000002 ]
							}
, 							{
								"key" : 4218,
								"value" : [ 63.07 ]
							}
, 							{
								"key" : 4219,
								"value" : [ 62.170000000000002 ]
							}
, 							{
								"key" : 4220,
								"value" : [ 61.770000000000003 ]
							}
, 							{
								"key" : 4221,
								"value" : [ 60.909999999999997 ]
							}
, 							{
								"key" : 4222,
								"value" : [ 60.119999999999997 ]
							}
, 							{
								"key" : 4223,
								"value" : [ 59.469999999999999 ]
							}
, 							{
								"key" : 4224,
								"value" : [ 58.799999999999997 ]
							}
, 							{
								"key" : 4225,
								"value" : [ 58.189999999999998 ]
							}
, 							{
								"key" : 4226,
								"value" : [ 57.490000000000002 ]
							}
, 							{
								"key" : 4227,
								"value" : [ 56.729999999999997 ]
							}
, 							{
								"key" : 4228,
								"value" : [ 56.189999999999998 ]
							}
, 							{
								"key" : 4229,
								"value" : [ 55.619999999999997 ]
							}
, 							{
								"key" : 4230,
								"value" : [ 55.240000000000002 ]
							}
, 							{
								"key" : 4231,
								"value" : [ 55.920000000000002 ]
							}
, 							{
								"key" : 4232,
								"value" : [ 58.240000000000002 ]
							}
, 							{
								"key" : 4233,
								"value" : [ 61.810000000000002 ]
							}
, 							{
								"key" : 4234,
								"value" : [ 67.060000000000002 ]
							}
, 							{
								"key" : 4235,
								"value" : [ 70.209999999999994 ]
							}
, 							{
								"key" : 4236,
								"value" : [ 71.890000000000001 ]
							}
, 							{
								"key" : 4237,
								"value" : [ 73.219999999999999 ]
							}
, 							{
								"key" : 4238,
								"value" : [ 74.079999999999998 ]
							}
, 							{
								"key" : 4239,
								"value" : [ 73.719999999999999 ]
							}
, 							{
								"key" : 4240,
								"value" : [ 73.219999999999999 ]
							}
, 							{
								"key" : 4241,
								"value" : [ 72.549999999999997 ]
							}
, 							{
								"key" : 4242,
								"value" : [ 71.739999999999995 ]
							}
, 							{
								"key" : 4243,
								"value" : [ 70.989999999999995 ]
							}
, 							{
								"key" : 4244,
								"value" : [ 69.459999999999994 ]
							}
, 							{
								"key" : 4245,
								"value" : [ 67.689999999999998 ]
							}
, 							{
								"key" : 4246,
								"value" : [ 64.019999999999996 ]
							}
, 							{
								"key" : 4247,
								"value" : [ 59.700000000000003 ]
							}
, 							{
								"key" : 4248,
								"value" : [ 58.100000000000001 ]
							}
, 							{
								"key" : 4249,
								"value" : [ 57.719999999999999 ]
							}
, 							{
								"key" : 4250,
								"value" : [ 57.600000000000001 ]
							}
, 							{
								"key" : 4251,
								"value" : [ 57.329999999999998 ]
							}
, 							{
								"key" : 4252,
								"value" : [ 56.189999999999998 ]
							}
, 							{
								"key" : 4253,
								"value" : [ 55.219999999999999 ]
							}
, 							{
								"key" : 4254,
								"value" : [ 54.719999999999999 ]
							}
, 							{
								"key" : 4255,
								"value" : [ 55.490000000000002 ]
							}
, 							{
								"key" : 4256,
								"value" : [ 56.880000000000003 ]
							}
, 							{
								"key" : 4257,
								"value" : [ 59.020000000000003 ]
							}
, 							{
								"key" : 4258,
								"value" : [ 62.060000000000002 ]
							}
, 							{
								"key" : 4259,
								"value" : [ 64.510000000000005 ]
							}
, 							{
								"key" : 4260,
								"value" : [ 65.640000000000001 ]
							}
, 							{
								"key" : 4261,
								"value" : [ 66.109999999999999 ]
							}
, 							{
								"key" : 4262,
								"value" : [ 67.189999999999998 ]
							}
, 							{
								"key" : 4263,
								"value" : [ 67.819999999999993 ]
							}
, 							{
								"key" : 4264,
								"value" : [ 68.090000000000003 ]
							}
, 							{
								"key" : 4265,
								"value" : [ 67.780000000000001 ]
							}
, 							{
								"key" : 4266,
								"value" : [ 65.590000000000003 ]
							}
, 							{
								"key" : 4267,
								"value" : [ 63.590000000000003 ]
							}
, 							{
								"key" : 4268,
								"value" : [ 62.600000000000001 ]
							}
, 							{
								"key" : 4269,
								"value" : [ 61.25 ]
							}
, 							{
								"key" : 4270,
								"value" : [ 60.259999999999998 ]
							}
, 							{
								"key" : 4271,
								"value" : [ 59.130000000000003 ]
							}
, 							{
								"key" : 4272,
								"value" : [ 58.060000000000002 ]
							}
, 							{
								"key" : 4273,
								"value" : [ 56.909999999999997 ]
							}
, 							{
								"key" : 4274,
								"value" : [ 55.740000000000002 ]
							}
, 							{
								"key" : 4275,
								"value" : [ 55.0 ]
							}
, 							{
								"key" : 4276,
								"value" : [ 54.789999999999999 ]
							}
, 							{
								"key" : 4277,
								"value" : [ 54.840000000000003 ]
							}
, 							{
								"key" : 4278,
								"value" : [ 54.840000000000003 ]
							}
, 							{
								"key" : 4279,
								"value" : [ 55.289999999999999 ]
							}
, 							{
								"key" : 4280,
								"value" : [ 57.560000000000002 ]
							}
, 							{
								"key" : 4281,
								"value" : [ 61.469999999999999 ]
							}
, 							{
								"key" : 4282,
								"value" : [ 66.540000000000006 ]
							}
, 							{
								"key" : 4283,
								"value" : [ 71.290000000000006 ]
							}
, 							{
								"key" : 4284,
								"value" : [ 74.079999999999998 ]
							}
, 							{
								"key" : 4285,
								"value" : [ 75.239999999999995 ]
							}
, 							{
								"key" : 4286,
								"value" : [ 75.019999999999996 ]
							}
, 							{
								"key" : 4287,
								"value" : [ 74.769999999999996 ]
							}
, 							{
								"key" : 4288,
								"value" : [ 73.920000000000002 ]
							}
, 							{
								"key" : 4289,
								"value" : [ 72.640000000000001 ]
							}
, 							{
								"key" : 4290,
								"value" : [ 71.370000000000005 ]
							}
, 							{
								"key" : 4291,
								"value" : [ 70.379999999999995 ]
							}
, 							{
								"key" : 4292,
								"value" : [ 69.510000000000005 ]
							}
, 							{
								"key" : 4293,
								"value" : [ 68.859999999999999 ]
							}
, 							{
								"key" : 4294,
								"value" : [ 68.290000000000006 ]
							}
, 							{
								"key" : 4295,
								"value" : [ 67.510000000000005 ]
							}
, 							{
								"key" : 4296,
								"value" : [ 66.780000000000001 ]
							}
, 							{
								"key" : 4297,
								"value" : [ 65.909999999999997 ]
							}
, 							{
								"key" : 4298,
								"value" : [ 64.939999999999998 ]
							}
, 							{
								"key" : 4299,
								"value" : [ 63.990000000000002 ]
							}
, 							{
								"key" : 4300,
								"value" : [ 63.43 ]
							}
, 							{
								"key" : 4301,
								"value" : [ 63.07 ]
							}
, 							{
								"key" : 4302,
								"value" : [ 62.649999999999999 ]
							}
, 							{
								"key" : 4303,
								"value" : [ 62.850000000000001 ]
							}
, 							{
								"key" : 4304,
								"value" : [ 64.689999999999998 ]
							}
, 							{
								"key" : 4305,
								"value" : [ 68.219999999999999 ]
							}
, 							{
								"key" : 4306,
								"value" : [ 71.260000000000005 ]
							}
, 							{
								"key" : 4307,
								"value" : [ 73.379999999999995 ]
							}
, 							{
								"key" : 4308,
								"value" : [ 75.290000000000006 ]
							}
, 							{
								"key" : 4309,
								"value" : [ 77.019999999999996 ]
							}
, 							{
								"key" : 4310,
								"value" : [ 78.549999999999997 ]
							}
, 							{
								"key" : 4311,
								"value" : [ 78.040000000000006 ]
							}
, 							{
								"key" : 4312,
								"value" : [ 74.299999999999997 ]
							}
, 							{
								"key" : 4313,
								"value" : [ 69.170000000000002 ]
							}
, 							{
								"key" : 4314,
								"value" : [ 64.599999999999994 ]
							}
, 							{
								"key" : 4315,
								"value" : [ 63.520000000000003 ]
							}
, 							{
								"key" : 4316,
								"value" : [ 63.270000000000003 ]
							}
, 							{
								"key" : 4317,
								"value" : [ 63.119999999999997 ]
							}
, 							{
								"key" : 4318,
								"value" : [ 63.57 ]
							}
, 							{
								"key" : 4319,
								"value" : [ 64.420000000000002 ]
							}
, 							{
								"key" : 4320,
								"value" : [ 64.870000000000005 ]
							}
, 							{
								"key" : 4321,
								"value" : [ 64.810000000000002 ]
							}
, 							{
								"key" : 4322,
								"value" : [ 64.579999999999998 ]
							}
, 							{
								"key" : 4323,
								"value" : [ 64.090000000000003 ]
							}
, 							{
								"key" : 4324,
								"value" : [ 63.390000000000001 ]
							}
, 							{
								"key" : 4325,
								"value" : [ 62.619999999999997 ]
							}
, 							{
								"key" : 4326,
								"value" : [ 62.009999999999998 ]
							}
, 							{
								"key" : 4327,
								"value" : [ 62.549999999999997 ]
							}
, 							{
								"key" : 4328,
								"value" : [ 63.909999999999997 ]
							}
, 							{
								"key" : 4329,
								"value" : [ 64.760000000000005 ]
							}
, 							{
								"key" : 4330,
								"value" : [ 65.439999999999998 ]
							}
, 							{
								"key" : 4331,
								"value" : [ 65.969999999999999 ]
							}
, 							{
								"key" : 4332,
								"value" : [ 66.359999999999999 ]
							}
, 							{
								"key" : 4333,
								"value" : [ 66.579999999999998 ]
							}
, 							{
								"key" : 4334,
								"value" : [ 66.629999999999995 ]
							}
, 							{
								"key" : 4335,
								"value" : [ 66.579999999999998 ]
							}
, 							{
								"key" : 4336,
								"value" : [ 66.239999999999995 ]
							}
, 							{
								"key" : 4337,
								"value" : [ 65.280000000000001 ]
							}
, 							{
								"key" : 4338,
								"value" : [ 63.390000000000001 ]
							}
, 							{
								"key" : 4339,
								"value" : [ 62.280000000000001 ]
							}
, 							{
								"key" : 4340,
								"value" : [ 62.259999999999998 ]
							}
, 							{
								"key" : 4341,
								"value" : [ 62.460000000000001 ]
							}
, 							{
								"key" : 4342,
								"value" : [ 62.710000000000001 ]
							}
, 							{
								"key" : 4343,
								"value" : [ 62.799999999999997 ]
							}
, 							{
								"key" : 4344,
								"value" : [ 62.619999999999997 ]
							}
, 							{
								"key" : 4345,
								"value" : [ 62.219999999999999 ]
							}
, 							{
								"key" : 4346,
								"value" : [ 61.659999999999997 ]
							}
, 							{
								"key" : 4347,
								"value" : [ 61.07 ]
							}
, 							{
								"key" : 4348,
								"value" : [ 60.57 ]
							}
, 							{
								"key" : 4349,
								"value" : [ 60.060000000000002 ]
							}
, 							{
								"key" : 4350,
								"value" : [ 59.539999999999999 ]
							}
, 							{
								"key" : 4351,
								"value" : [ 60.009999999999998 ]
							}
, 							{
								"key" : 4352,
								"value" : [ 62.100000000000001 ]
							}
, 							{
								"key" : 4353,
								"value" : [ 64.060000000000002 ]
							}
, 							{
								"key" : 4354,
								"value" : [ 67.260000000000005 ]
							}
, 							{
								"key" : 4355,
								"value" : [ 70.5 ]
							}
, 							{
								"key" : 4356,
								"value" : [ 71.760000000000005 ]
							}
, 							{
								"key" : 4357,
								"value" : [ 72.209999999999994 ]
							}
, 							{
								"key" : 4358,
								"value" : [ 72.370000000000005 ]
							}
, 							{
								"key" : 4359,
								"value" : [ 72.069999999999993 ]
							}
, 							{
								"key" : 4360,
								"value" : [ 71.189999999999998 ]
							}
, 							{
								"key" : 4361,
								"value" : [ 69.549999999999997 ]
							}
, 							{
								"key" : 4362,
								"value" : [ 66.870000000000005 ]
							}
, 							{
								"key" : 4363,
								"value" : [ 65.439999999999998 ]
							}
, 							{
								"key" : 4364,
								"value" : [ 65.25 ]
							}
, 							{
								"key" : 4365,
								"value" : [ 65.189999999999998 ]
							}
, 							{
								"key" : 4366,
								"value" : [ 65.25 ]
							}
, 							{
								"key" : 4367,
								"value" : [ 65.189999999999998 ]
							}
, 							{
								"key" : 4368,
								"value" : [ 64.739999999999995 ]
							}
, 							{
								"key" : 4369,
								"value" : [ 64.090000000000003 ]
							}
, 							{
								"key" : 4370,
								"value" : [ 63.210000000000001 ]
							}
, 							{
								"key" : 4371,
								"value" : [ 62.189999999999998 ]
							}
, 							{
								"key" : 4372,
								"value" : [ 61.469999999999999 ]
							}
, 							{
								"key" : 4373,
								"value" : [ 60.869999999999997 ]
							}
, 							{
								"key" : 4374,
								"value" : [ 60.240000000000002 ]
							}
, 							{
								"key" : 4375,
								"value" : [ 60.439999999999998 ]
							}
, 							{
								"key" : 4376,
								"value" : [ 61.840000000000003 ]
							}
, 							{
								"key" : 4377,
								"value" : [ 63.390000000000001 ]
							}
, 							{
								"key" : 4378,
								"value" : [ 65.530000000000001 ]
							}
, 							{
								"key" : 4379,
								"value" : [ 67.950000000000003 ]
							}
, 							{
								"key" : 4380,
								"value" : [ 70.299999999999997 ]
							}
, 							{
								"key" : 4381,
								"value" : [ 72.189999999999998 ]
							}
, 							{
								"key" : 4382,
								"value" : [ 72.909999999999997 ]
							}
, 							{
								"key" : 4383,
								"value" : [ 72.769999999999996 ]
							}
, 							{
								"key" : 4384,
								"value" : [ 72.140000000000001 ]
							}
, 							{
								"key" : 4385,
								"value" : [ 70.769999999999996 ]
							}
, 							{
								"key" : 4386,
								"value" : [ 68.219999999999999 ]
							}
, 							{
								"key" : 4387,
								"value" : [ 67.010000000000005 ]
							}
, 							{
								"key" : 4388,
								"value" : [ 66.609999999999999 ]
							}
, 							{
								"key" : 4389,
								"value" : [ 66.159999999999997 ]
							}
, 							{
								"key" : 4390,
								"value" : [ 65.569999999999993 ]
							}
, 							{
								"key" : 4391,
								"value" : [ 64.959999999999994 ]
							}
, 							{
								"key" : 4392,
								"value" : [ 64.290000000000006 ]
							}
, 							{
								"key" : 4393,
								"value" : [ 63.630000000000003 ]
							}
, 							{
								"key" : 4394,
								"value" : [ 62.979999999999997 ]
							}
, 							{
								"key" : 4395,
								"value" : [ 62.350000000000001 ]
							}
, 							{
								"key" : 4396,
								"value" : [ 61.700000000000003 ]
							}
, 							{
								"key" : 4397,
								"value" : [ 61.020000000000003 ]
							}
, 							{
								"key" : 4398,
								"value" : [ 60.420000000000002 ]
							}
, 							{
								"key" : 4399,
								"value" : [ 60.729999999999997 ]
							}
, 							{
								"key" : 4400,
								"value" : [ 62.380000000000003 ]
							}
, 							{
								"key" : 4401,
								"value" : [ 64.870000000000005 ]
							}
, 							{
								"key" : 4402,
								"value" : [ 68.489999999999995 ]
							}
, 							{
								"key" : 4403,
								"value" : [ 72.719999999999999 ]
							}
, 							{
								"key" : 4404,
								"value" : [ 75.900000000000006 ]
							}
, 							{
								"key" : 4405,
								"value" : [ 77.760000000000005 ]
							}
, 							{
								"key" : 4406,
								"value" : [ 78.870000000000005 ]
							}
, 							{
								"key" : 4407,
								"value" : [ 79.140000000000001 ]
							}
, 							{
								"key" : 4408,
								"value" : [ 78.310000000000002 ]
							}
, 							{
								"key" : 4409,
								"value" : [ 75.959999999999994 ]
							}
, 							{
								"key" : 4410,
								"value" : [ 72.609999999999999 ]
							}
, 							{
								"key" : 4411,
								"value" : [ 71.239999999999995 ]
							}
, 							{
								"key" : 4412,
								"value" : [ 70.5 ]
							}
, 							{
								"key" : 4413,
								"value" : [ 69.799999999999997 ]
							}
, 							{
								"key" : 4414,
								"value" : [ 68.859999999999999 ]
							}
, 							{
								"key" : 4415,
								"value" : [ 67.709999999999994 ]
							}
, 							{
								"key" : 4416,
								"value" : [ 66.579999999999998 ]
							}
, 							{
								"key" : 4417,
								"value" : [ 65.859999999999999 ]
							}
, 							{
								"key" : 4418,
								"value" : [ 65.439999999999998 ]
							}
, 							{
								"key" : 4419,
								"value" : [ 65.170000000000002 ]
							}
, 							{
								"key" : 4420,
								"value" : [ 64.890000000000001 ]
							}
, 							{
								"key" : 4421,
								"value" : [ 64.540000000000006 ]
							}
, 							{
								"key" : 4422,
								"value" : [ 64.200000000000003 ]
							}
, 							{
								"key" : 4423,
								"value" : [ 64.219999999999999 ]
							}
, 							{
								"key" : 4424,
								"value" : [ 64.739999999999995 ]
							}
, 							{
								"key" : 4425,
								"value" : [ 65.969999999999999 ]
							}
, 							{
								"key" : 4426,
								"value" : [ 68.409999999999997 ]
							}
, 							{
								"key" : 4427,
								"value" : [ 70.569999999999993 ]
							}
, 							{
								"key" : 4428,
								"value" : [ 71.310000000000002 ]
							}
, 							{
								"key" : 4429,
								"value" : [ 71.620000000000005 ]
							}
, 							{
								"key" : 4430,
								"value" : [ 71.760000000000005 ]
							}
, 							{
								"key" : 4431,
								"value" : [ 71.739999999999995 ]
							}
, 							{
								"key" : 4432,
								"value" : [ 71.400000000000006 ]
							}
, 							{
								"key" : 4433,
								"value" : [ 70.590000000000003 ]
							}
, 							{
								"key" : 4434,
								"value" : [ 69.640000000000001 ]
							}
, 							{
								"key" : 4435,
								"value" : [ 69.120000000000005 ]
							}
, 							{
								"key" : 4436,
								"value" : [ 68.739999999999995 ]
							}
, 							{
								"key" : 4437,
								"value" : [ 68.5 ]
							}
, 							{
								"key" : 4438,
								"value" : [ 68.230000000000004 ]
							}
, 							{
								"key" : 4439,
								"value" : [ 67.959999999999994 ]
							}
, 							{
								"key" : 4440,
								"value" : [ 67.569999999999993 ]
							}
, 							{
								"key" : 4441,
								"value" : [ 67.189999999999998 ]
							}
, 							{
								"key" : 4442,
								"value" : [ 66.790000000000006 ]
							}
, 							{
								"key" : 4443,
								"value" : [ 66.469999999999999 ]
							}
, 							{
								"key" : 4444,
								"value" : [ 66.269999999999996 ]
							}
, 							{
								"key" : 4445,
								"value" : [ 66.150000000000006 ]
							}
, 							{
								"key" : 4446,
								"value" : [ 66.040000000000006 ]
							}
, 							{
								"key" : 4447,
								"value" : [ 66.239999999999995 ]
							}
, 							{
								"key" : 4448,
								"value" : [ 67.170000000000002 ]
							}
, 							{
								"key" : 4449,
								"value" : [ 67.769999999999996 ]
							}
, 							{
								"key" : 4450,
								"value" : [ 69.569999999999993 ]
							}
, 							{
								"key" : 4451,
								"value" : [ 71.640000000000001 ]
							}
, 							{
								"key" : 4452,
								"value" : [ 73.040000000000006 ]
							}
, 							{
								"key" : 4453,
								"value" : [ 72.900000000000006 ]
							}
, 							{
								"key" : 4454,
								"value" : [ 72.390000000000001 ]
							}
, 							{
								"key" : 4455,
								"value" : [ 71.870000000000005 ]
							}
, 							{
								"key" : 4456,
								"value" : [ 71.349999999999994 ]
							}
, 							{
								"key" : 4457,
								"value" : [ 70.590000000000003 ]
							}
, 							{
								"key" : 4458,
								"value" : [ 69.040000000000006 ]
							}
, 							{
								"key" : 4459,
								"value" : [ 68.090000000000003 ]
							}
, 							{
								"key" : 4460,
								"value" : [ 67.439999999999998 ]
							}
, 							{
								"key" : 4461,
								"value" : [ 66.810000000000002 ]
							}
, 							{
								"key" : 4462,
								"value" : [ 66.180000000000007 ]
							}
, 							{
								"key" : 4463,
								"value" : [ 65.569999999999993 ]
							}
, 							{
								"key" : 4464,
								"value" : [ 64.939999999999998 ]
							}
, 							{
								"key" : 4465,
								"value" : [ 64.359999999999999 ]
							}
, 							{
								"key" : 4466,
								"value" : [ 63.969999999999999 ]
							}
, 							{
								"key" : 4467,
								"value" : [ 63.899999999999999 ]
							}
, 							{
								"key" : 4468,
								"value" : [ 64.040000000000006 ]
							}
, 							{
								"key" : 4469,
								"value" : [ 64.180000000000007 ]
							}
, 							{
								"key" : 4470,
								"value" : [ 64.489999999999995 ]
							}
, 							{
								"key" : 4471,
								"value" : [ 65.319999999999993 ]
							}
, 							{
								"key" : 4472,
								"value" : [ 66.599999999999994 ]
							}
, 							{
								"key" : 4473,
								"value" : [ 67.349999999999994 ]
							}
, 							{
								"key" : 4474,
								"value" : [ 67.930000000000007 ]
							}
, 							{
								"key" : 4475,
								"value" : [ 68.700000000000003 ]
							}
, 							{
								"key" : 4476,
								"value" : [ 69.099999999999994 ]
							}
, 							{
								"key" : 4477,
								"value" : [ 68.939999999999998 ]
							}
, 							{
								"key" : 4478,
								"value" : [ 68.560000000000002 ]
							}
, 							{
								"key" : 4479,
								"value" : [ 67.859999999999999 ]
							}
, 							{
								"key" : 4480,
								"value" : [ 66.959999999999994 ]
							}
, 							{
								"key" : 4481,
								"value" : [ 66.090000000000003 ]
							}
, 							{
								"key" : 4482,
								"value" : [ 65.390000000000001 ]
							}
, 							{
								"key" : 4483,
								"value" : [ 65.25 ]
							}
, 							{
								"key" : 4484,
								"value" : [ 65.319999999999993 ]
							}
, 							{
								"key" : 4485,
								"value" : [ 65.480000000000004 ]
							}
, 							{
								"key" : 4486,
								"value" : [ 65.609999999999999 ]
							}
, 							{
								"key" : 4487,
								"value" : [ 65.819999999999993 ]
							}
, 							{
								"key" : 4488,
								"value" : [ 65.75 ]
							}
, 							{
								"key" : 4489,
								"value" : [ 65.390000000000001 ]
							}
, 							{
								"key" : 4490,
								"value" : [ 65.030000000000001 ]
							}
, 							{
								"key" : 4491,
								"value" : [ 64.599999999999994 ]
							}
, 							{
								"key" : 4492,
								"value" : [ 64.329999999999998 ]
							}
, 							{
								"key" : 4493,
								"value" : [ 64.239999999999995 ]
							}
, 							{
								"key" : 4494,
								"value" : [ 64.219999999999999 ]
							}
, 							{
								"key" : 4495,
								"value" : [ 64.379999999999995 ]
							}
, 							{
								"key" : 4496,
								"value" : [ 65.030000000000001 ]
							}
, 							{
								"key" : 4497,
								"value" : [ 65.730000000000004 ]
							}
, 							{
								"key" : 4498,
								"value" : [ 66.219999999999999 ]
							}
, 							{
								"key" : 4499,
								"value" : [ 66.340000000000003 ]
							}
, 							{
								"key" : 4500,
								"value" : [ 66.579999999999998 ]
							}
, 							{
								"key" : 4501,
								"value" : [ 66.989999999999995 ]
							}
, 							{
								"key" : 4502,
								"value" : [ 66.969999999999999 ]
							}
, 							{
								"key" : 4503,
								"value" : [ 66.920000000000002 ]
							}
, 							{
								"key" : 4504,
								"value" : [ 66.900000000000006 ]
							}
, 							{
								"key" : 4505,
								"value" : [ 66.739999999999995 ]
							}
, 							{
								"key" : 4506,
								"value" : [ 66.219999999999999 ]
							}
, 							{
								"key" : 4507,
								"value" : [ 66.180000000000007 ]
							}
, 							{
								"key" : 4508,
								"value" : [ 66.599999999999994 ]
							}
, 							{
								"key" : 4509,
								"value" : [ 66.670000000000002 ]
							}
, 							{
								"key" : 4510,
								"value" : [ 66.379999999999995 ]
							}
, 							{
								"key" : 4511,
								"value" : [ 65.680000000000007 ]
							}
, 							{
								"key" : 4512,
								"value" : [ 65.120000000000005 ]
							}
, 							{
								"key" : 4513,
								"value" : [ 64.560000000000002 ]
							}
, 							{
								"key" : 4514,
								"value" : [ 64.219999999999999 ]
							}
, 							{
								"key" : 4515,
								"value" : [ 63.909999999999997 ]
							}
, 							{
								"key" : 4516,
								"value" : [ 63.609999999999999 ]
							}
, 							{
								"key" : 4517,
								"value" : [ 63.270000000000003 ]
							}
, 							{
								"key" : 4518,
								"value" : [ 63.0 ]
							}
, 							{
								"key" : 4519,
								"value" : [ 63.520000000000003 ]
							}
, 							{
								"key" : 4520,
								"value" : [ 64.980000000000004 ]
							}
, 							{
								"key" : 4521,
								"value" : [ 65.75 ]
							}
, 							{
								"key" : 4522,
								"value" : [ 66.340000000000003 ]
							}
, 							{
								"key" : 4523,
								"value" : [ 66.689999999999998 ]
							}
, 							{
								"key" : 4524,
								"value" : [ 67.170000000000002 ]
							}
, 							{
								"key" : 4525,
								"value" : [ 67.189999999999998 ]
							}
, 							{
								"key" : 4526,
								"value" : [ 67.079999999999998 ]
							}
, 							{
								"key" : 4527,
								"value" : [ 67.189999999999998 ]
							}
, 							{
								"key" : 4528,
								"value" : [ 67.209999999999994 ]
							}
, 							{
								"key" : 4529,
								"value" : [ 66.780000000000001 ]
							}
, 							{
								"key" : 4530,
								"value" : [ 66.159999999999997 ]
							}
, 							{
								"key" : 4531,
								"value" : [ 66.090000000000003 ]
							}
, 							{
								"key" : 4532,
								"value" : [ 66.159999999999997 ]
							}
, 							{
								"key" : 4533,
								"value" : [ 66.239999999999995 ]
							}
, 							{
								"key" : 4534,
								"value" : [ 66.239999999999995 ]
							}
, 							{
								"key" : 4535,
								"value" : [ 66.180000000000007 ]
							}
, 							{
								"key" : 4536,
								"value" : [ 66.040000000000006 ]
							}
, 							{
								"key" : 4537,
								"value" : [ 65.709999999999994 ]
							}
, 							{
								"key" : 4538,
								"value" : [ 65.519999999999996 ]
							}
, 							{
								"key" : 4539,
								"value" : [ 65.519999999999996 ]
							}
, 							{
								"key" : 4540,
								"value" : [ 65.530000000000001 ]
							}
, 							{
								"key" : 4541,
								"value" : [ 65.569999999999993 ]
							}
, 							{
								"key" : 4542,
								"value" : [ 65.569999999999993 ]
							}
, 							{
								"key" : 4543,
								"value" : [ 65.640000000000001 ]
							}
, 							{
								"key" : 4544,
								"value" : [ 66.200000000000003 ]
							}
, 							{
								"key" : 4545,
								"value" : [ 66.879999999999995 ]
							}
, 							{
								"key" : 4546,
								"value" : [ 67.689999999999998 ]
							}
, 							{
								"key" : 4547,
								"value" : [ 68.340000000000003 ]
							}
, 							{
								"key" : 4548,
								"value" : [ 69.329999999999998 ]
							}
, 							{
								"key" : 4549,
								"value" : [ 70.269999999999996 ]
							}
, 							{
								"key" : 4550,
								"value" : [ 70.790000000000006 ]
							}
, 							{
								"key" : 4551,
								"value" : [ 70.900000000000006 ]
							}
, 							{
								"key" : 4552,
								"value" : [ 70.719999999999999 ]
							}
, 							{
								"key" : 4553,
								"value" : [ 69.890000000000001 ]
							}
, 							{
								"key" : 4554,
								"value" : [ 68.019999999999996 ]
							}
, 							{
								"key" : 4555,
								"value" : [ 67.280000000000001 ]
							}
, 							{
								"key" : 4556,
								"value" : [ 66.959999999999994 ]
							}
, 							{
								"key" : 4557,
								"value" : [ 66.629999999999995 ]
							}
, 							{
								"key" : 4558,
								"value" : [ 66.290000000000006 ]
							}
, 							{
								"key" : 4559,
								"value" : [ 66.219999999999999 ]
							}
, 							{
								"key" : 4560,
								"value" : [ 66.069999999999993 ]
							}
, 							{
								"key" : 4561,
								"value" : [ 65.709999999999994 ]
							}
, 							{
								"key" : 4562,
								"value" : [ 65.010000000000005 ]
							}
, 							{
								"key" : 4563,
								"value" : [ 64.090000000000003 ]
							}
, 							{
								"key" : 4564,
								"value" : [ 63.299999999999997 ]
							}
, 							{
								"key" : 4565,
								"value" : [ 62.759999999999998 ]
							}
, 							{
								"key" : 4566,
								"value" : [ 62.530000000000001 ]
							}
, 							{
								"key" : 4567,
								"value" : [ 62.649999999999999 ]
							}
, 							{
								"key" : 4568,
								"value" : [ 64.0 ]
							}
, 							{
								"key" : 4569,
								"value" : [ 65.640000000000001 ]
							}
, 							{
								"key" : 4570,
								"value" : [ 68.040000000000006 ]
							}
, 							{
								"key" : 4571,
								"value" : [ 69.890000000000001 ]
							}
, 							{
								"key" : 4572,
								"value" : [ 71.040000000000006 ]
							}
, 							{
								"key" : 4573,
								"value" : [ 71.760000000000005 ]
							}
, 							{
								"key" : 4574,
								"value" : [ 72.280000000000001 ]
							}
, 							{
								"key" : 4575,
								"value" : [ 72.319999999999993 ]
							}
, 							{
								"key" : 4576,
								"value" : [ 71.849999999999994 ]
							}
, 							{
								"key" : 4577,
								"value" : [ 70.920000000000002 ]
							}
, 							{
								"key" : 4578,
								"value" : [ 69.459999999999994 ]
							}
, 							{
								"key" : 4579,
								"value" : [ 68.409999999999997 ]
							}
, 							{
								"key" : 4580,
								"value" : [ 67.459999999999994 ]
							}
, 							{
								"key" : 4581,
								"value" : [ 66.719999999999999 ]
							}
, 							{
								"key" : 4582,
								"value" : [ 66.239999999999995 ]
							}
, 							{
								"key" : 4583,
								"value" : [ 65.569999999999993 ]
							}
, 							{
								"key" : 4584,
								"value" : [ 64.739999999999995 ]
							}
, 							{
								"key" : 4585,
								"value" : [ 64.079999999999998 ]
							}
, 							{
								"key" : 4586,
								"value" : [ 63.539999999999999 ]
							}
, 							{
								"key" : 4587,
								"value" : [ 63.049999999999997 ]
							}
, 							{
								"key" : 4588,
								"value" : [ 62.740000000000002 ]
							}
, 							{
								"key" : 4589,
								"value" : [ 62.619999999999997 ]
							}
, 							{
								"key" : 4590,
								"value" : [ 62.619999999999997 ]
							}
, 							{
								"key" : 4591,
								"value" : [ 62.939999999999998 ]
							}
, 							{
								"key" : 4592,
								"value" : [ 64.329999999999998 ]
							}
, 							{
								"key" : 4593,
								"value" : [ 66.159999999999997 ]
							}
, 							{
								"key" : 4594,
								"value" : [ 68.969999999999999 ]
							}
, 							{
								"key" : 4595,
								"value" : [ 71.109999999999999 ]
							}
, 							{
								"key" : 4596,
								"value" : [ 72.609999999999999 ]
							}
, 							{
								"key" : 4597,
								"value" : [ 73.739999999999995 ]
							}
, 							{
								"key" : 4598,
								"value" : [ 74.590000000000003 ]
							}
, 							{
								"key" : 4599,
								"value" : [ 74.790000000000006 ]
							}
, 							{
								"key" : 4600,
								"value" : [ 73.920000000000002 ]
							}
, 							{
								"key" : 4601,
								"value" : [ 71.980000000000004 ]
							}
, 							{
								"key" : 4602,
								"value" : [ 70.540000000000006 ]
							}
, 							{
								"key" : 4603,
								"value" : [ 70.519999999999996 ]
							}
, 							{
								"key" : 4604,
								"value" : [ 70.719999999999999 ]
							}
, 							{
								"key" : 4605,
								"value" : [ 70.480000000000004 ]
							}
, 							{
								"key" : 4606,
								"value" : [ 70.290000000000006 ]
							}
, 							{
								"key" : 4607,
								"value" : [ 69.890000000000001 ]
							}
, 							{
								"key" : 4608,
								"value" : [ 69.930000000000007 ]
							}
, 							{
								"key" : 4609,
								"value" : [ 69.459999999999994 ]
							}
, 							{
								"key" : 4610,
								"value" : [ 68.769999999999996 ]
							}
, 							{
								"key" : 4611,
								"value" : [ 68.560000000000002 ]
							}
, 							{
								"key" : 4612,
								"value" : [ 68.400000000000006 ]
							}
, 							{
								"key" : 4613,
								"value" : [ 68.049999999999997 ]
							}
, 							{
								"key" : 4614,
								"value" : [ 67.549999999999997 ]
							}
, 							{
								"key" : 4615,
								"value" : [ 67.150000000000006 ]
							}
, 							{
								"key" : 4616,
								"value" : [ 67.510000000000005 ]
							}
, 							{
								"key" : 4617,
								"value" : [ 68.560000000000002 ]
							}
, 							{
								"key" : 4618,
								"value" : [ 69.439999999999998 ]
							}
, 							{
								"key" : 4619,
								"value" : [ 71.109999999999999 ]
							}
, 							{
								"key" : 4620,
								"value" : [ 73.689999999999998 ]
							}
, 							{
								"key" : 4621,
								"value" : [ 75.469999999999999 ]
							}
, 							{
								"key" : 4622,
								"value" : [ 76.120000000000005 ]
							}
, 							{
								"key" : 4623,
								"value" : [ 76.079999999999998 ]
							}
, 							{
								"key" : 4624,
								"value" : [ 75.700000000000003 ]
							}
, 							{
								"key" : 4625,
								"value" : [ 74.640000000000001 ]
							}
, 							{
								"key" : 4626,
								"value" : [ 72.859999999999999 ]
							}
, 							{
								"key" : 4627,
								"value" : [ 72.069999999999993 ]
							}
, 							{
								"key" : 4628,
								"value" : [ 71.760000000000005 ]
							}
, 							{
								"key" : 4629,
								"value" : [ 71.109999999999999 ]
							}
, 							{
								"key" : 4630,
								"value" : [ 70.629999999999995 ]
							}
, 							{
								"key" : 4631,
								"value" : [ 70.140000000000001 ]
							}
, 							{
								"key" : 4632,
								"value" : [ 69.689999999999998 ]
							}
, 							{
								"key" : 4633,
								"value" : [ 69.370000000000005 ]
							}
, 							{
								"key" : 4634,
								"value" : [ 69.040000000000006 ]
							}
, 							{
								"key" : 4635,
								"value" : [ 68.469999999999999 ]
							}
, 							{
								"key" : 4636,
								"value" : [ 68.109999999999999 ]
							}
, 							{
								"key" : 4637,
								"value" : [ 68.049999999999997 ]
							}
, 							{
								"key" : 4638,
								"value" : [ 67.75 ]
							}
, 							{
								"key" : 4639,
								"value" : [ 67.680000000000007 ]
							}
, 							{
								"key" : 4640,
								"value" : [ 68.810000000000002 ]
							}
, 							{
								"key" : 4641,
								"value" : [ 69.689999999999998 ]
							}
, 							{
								"key" : 4642,
								"value" : [ 70.659999999999997 ]
							}
, 							{
								"key" : 4643,
								"value" : [ 71.670000000000002 ]
							}
, 							{
								"key" : 4644,
								"value" : [ 73.870000000000005 ]
							}
, 							{
								"key" : 4645,
								"value" : [ 74.730000000000004 ]
							}
, 							{
								"key" : 4646,
								"value" : [ 74.299999999999997 ]
							}
, 							{
								"key" : 4647,
								"value" : [ 72.140000000000001 ]
							}
, 							{
								"key" : 4648,
								"value" : [ 70.590000000000003 ]
							}
, 							{
								"key" : 4649,
								"value" : [ 69.709999999999994 ]
							}
, 							{
								"key" : 4650,
								"value" : [ 69.060000000000002 ]
							}
, 							{
								"key" : 4651,
								"value" : [ 68.230000000000004 ]
							}
, 							{
								"key" : 4652,
								"value" : [ 67.599999999999994 ]
							}
, 							{
								"key" : 4653,
								"value" : [ 67.689999999999998 ]
							}
, 							{
								"key" : 4654,
								"value" : [ 67.209999999999994 ]
							}
, 							{
								"key" : 4655,
								"value" : [ 64.450000000000003 ]
							}
, 							{
								"key" : 4656,
								"value" : [ 61.840000000000003 ]
							}
, 							{
								"key" : 4657,
								"value" : [ 61.07 ]
							}
, 							{
								"key" : 4658,
								"value" : [ 60.75 ]
							}
, 							{
								"key" : 4659,
								"value" : [ 60.439999999999998 ]
							}
, 							{
								"key" : 4660,
								"value" : [ 60.759999999999998 ]
							}
, 							{
								"key" : 4661,
								"value" : [ 61.210000000000001 ]
							}
, 							{
								"key" : 4662,
								"value" : [ 61.609999999999999 ]
							}
, 							{
								"key" : 4663,
								"value" : [ 61.829999999999998 ]
							}
, 							{
								"key" : 4664,
								"value" : [ 62.530000000000001 ]
							}
, 							{
								"key" : 4665,
								"value" : [ 63.969999999999999 ]
							}
, 							{
								"key" : 4666,
								"value" : [ 65.439999999999998 ]
							}
, 							{
								"key" : 4667,
								"value" : [ 66.780000000000001 ]
							}
, 							{
								"key" : 4668,
								"value" : [ 67.859999999999999 ]
							}
, 							{
								"key" : 4669,
								"value" : [ 68.290000000000006 ]
							}
, 							{
								"key" : 4670,
								"value" : [ 68.540000000000006 ]
							}
, 							{
								"key" : 4671,
								"value" : [ 68.519999999999996 ]
							}
, 							{
								"key" : 4672,
								"value" : [ 68.400000000000006 ]
							}
, 							{
								"key" : 4673,
								"value" : [ 67.799999999999997 ]
							}
, 							{
								"key" : 4674,
								"value" : [ 66.329999999999998 ]
							}
, 							{
								"key" : 4675,
								"value" : [ 65.370000000000005 ]
							}
, 							{
								"key" : 4676,
								"value" : [ 63.990000000000002 ]
							}
, 							{
								"key" : 4677,
								"value" : [ 62.600000000000001 ]
							}
, 							{
								"key" : 4678,
								"value" : [ 61.75 ]
							}
, 							{
								"key" : 4679,
								"value" : [ 61.289999999999999 ]
							}
, 							{
								"key" : 4680,
								"value" : [ 60.960000000000001 ]
							}
, 							{
								"key" : 4681,
								"value" : [ 60.579999999999998 ]
							}
, 							{
								"key" : 4682,
								"value" : [ 60.310000000000002 ]
							}
, 							{
								"key" : 4683,
								"value" : [ 60.119999999999997 ]
							}
, 							{
								"key" : 4684,
								"value" : [ 59.670000000000002 ]
							}
, 							{
								"key" : 4685,
								"value" : [ 59.219999999999999 ]
							}
, 							{
								"key" : 4686,
								"value" : [ 58.590000000000003 ]
							}
, 							{
								"key" : 4687,
								"value" : [ 58.5 ]
							}
, 							{
								"key" : 4688,
								"value" : [ 60.619999999999997 ]
							}
, 							{
								"key" : 4689,
								"value" : [ 62.310000000000002 ]
							}
, 							{
								"key" : 4690,
								"value" : [ 65.390000000000001 ]
							}
, 							{
								"key" : 4691,
								"value" : [ 68.200000000000003 ]
							}
, 							{
								"key" : 4692,
								"value" : [ 70.109999999999999 ]
							}
, 							{
								"key" : 4693,
								"value" : [ 70.790000000000006 ]
							}
, 							{
								"key" : 4694,
								"value" : [ 69.670000000000002 ]
							}
, 							{
								"key" : 4695,
								"value" : [ 69.870000000000005 ]
							}
, 							{
								"key" : 4696,
								"value" : [ 70.030000000000001 ]
							}
, 							{
								"key" : 4697,
								"value" : [ 69.530000000000001 ]
							}
, 							{
								"key" : 4698,
								"value" : [ 68.319999999999993 ]
							}
, 							{
								"key" : 4699,
								"value" : [ 67.5 ]
							}
, 							{
								"key" : 4700,
								"value" : [ 66.689999999999998 ]
							}
, 							{
								"key" : 4701,
								"value" : [ 66.180000000000007 ]
							}
, 							{
								"key" : 4702,
								"value" : [ 66.25 ]
							}
, 							{
								"key" : 4703,
								"value" : [ 66.560000000000002 ]
							}
, 							{
								"key" : 4704,
								"value" : [ 66.969999999999999 ]
							}
, 							{
								"key" : 4705,
								"value" : [ 67.239999999999995 ]
							}
, 							{
								"key" : 4706,
								"value" : [ 67.549999999999997 ]
							}
, 							{
								"key" : 4707,
								"value" : [ 67.909999999999997 ]
							}
, 							{
								"key" : 4708,
								"value" : [ 67.530000000000001 ]
							}
, 							{
								"key" : 4709,
								"value" : [ 66.670000000000002 ]
							}
, 							{
								"key" : 4710,
								"value" : [ 66.359999999999999 ]
							}
, 							{
								"key" : 4711,
								"value" : [ 66.219999999999999 ]
							}
, 							{
								"key" : 4712,
								"value" : [ 66.290000000000006 ]
							}
, 							{
								"key" : 4713,
								"value" : [ 66.090000000000003 ]
							}
, 							{
								"key" : 4714,
								"value" : [ 65.950000000000003 ]
							}
, 							{
								"key" : 4715,
								"value" : [ 65.390000000000001 ]
							}
, 							{
								"key" : 4716,
								"value" : [ 65.549999999999997 ]
							}
, 							{
								"key" : 4717,
								"value" : [ 66.560000000000002 ]
							}
, 							{
								"key" : 4718,
								"value" : [ 68.680000000000007 ]
							}
, 							{
								"key" : 4719,
								"value" : [ 69.549999999999997 ]
							}
, 							{
								"key" : 4720,
								"value" : [ 69.489999999999995 ]
							}
, 							{
								"key" : 4721,
								"value" : [ 68.0 ]
							}
, 							{
								"key" : 4722,
								"value" : [ 65.549999999999997 ]
							}
, 							{
								"key" : 4723,
								"value" : [ 64.560000000000002 ]
							}
, 							{
								"key" : 4724,
								"value" : [ 63.520000000000003 ]
							}
, 							{
								"key" : 4725,
								"value" : [ 62.530000000000001 ]
							}
, 							{
								"key" : 4726,
								"value" : [ 61.630000000000003 ]
							}
, 							{
								"key" : 4727,
								"value" : [ 61.450000000000003 ]
							}
, 							{
								"key" : 4728,
								"value" : [ 61.030000000000001 ]
							}
, 							{
								"key" : 4729,
								"value" : [ 60.390000000000001 ]
							}
, 							{
								"key" : 4730,
								"value" : [ 60.100000000000001 ]
							}
, 							{
								"key" : 4731,
								"value" : [ 59.590000000000003 ]
							}
, 							{
								"key" : 4732,
								"value" : [ 59.560000000000002 ]
							}
, 							{
								"key" : 4733,
								"value" : [ 59.789999999999999 ]
							}
, 							{
								"key" : 4734,
								"value" : [ 59.939999999999998 ]
							}
, 							{
								"key" : 4735,
								"value" : [ 60.210000000000001 ]
							}
, 							{
								"key" : 4736,
								"value" : [ 62.039999999999999 ]
							}
, 							{
								"key" : 4737,
								"value" : [ 63.369999999999997 ]
							}
, 							{
								"key" : 4738,
								"value" : [ 64.420000000000002 ]
							}
, 							{
								"key" : 4739,
								"value" : [ 65.030000000000001 ]
							}
, 							{
								"key" : 4740,
								"value" : [ 64.670000000000002 ]
							}
, 							{
								"key" : 4741,
								"value" : [ 64.200000000000003 ]
							}
, 							{
								"key" : 4742,
								"value" : [ 63.390000000000001 ]
							}
, 							{
								"key" : 4743,
								"value" : [ 62.710000000000001 ]
							}
, 							{
								"key" : 4744,
								"value" : [ 62.079999999999998 ]
							}
, 							{
								"key" : 4745,
								"value" : [ 61.270000000000003 ]
							}
, 							{
								"key" : 4746,
								"value" : [ 59.899999999999999 ]
							}
, 							{
								"key" : 4747,
								"value" : [ 58.549999999999997 ]
							}
, 							{
								"key" : 4748,
								"value" : [ 57.539999999999999 ]
							}
, 							{
								"key" : 4749,
								"value" : [ 56.909999999999997 ]
							}
, 							{
								"key" : 4750,
								"value" : [ 56.770000000000003 ]
							}
, 							{
								"key" : 4751,
								"value" : [ 56.890000000000001 ]
							}
, 							{
								"key" : 4752,
								"value" : [ 55.810000000000002 ]
							}
, 							{
								"key" : 4753,
								"value" : [ 55.289999999999999 ]
							}
, 							{
								"key" : 4754,
								"value" : [ 54.5 ]
							}
, 							{
								"key" : 4755,
								"value" : [ 53.530000000000001 ]
							}
, 							{
								"key" : 4756,
								"value" : [ 52.630000000000003 ]
							}
, 							{
								"key" : 4757,
								"value" : [ 52.07 ]
							}
, 							{
								"key" : 4758,
								"value" : [ 51.490000000000002 ]
							}
, 							{
								"key" : 4759,
								"value" : [ 50.920000000000002 ]
							}
, 							{
								"key" : 4760,
								"value" : [ 51.369999999999997 ]
							}
, 							{
								"key" : 4761,
								"value" : [ 52.380000000000003 ]
							}
, 							{
								"key" : 4762,
								"value" : [ 53.82 ]
							}
, 							{
								"key" : 4763,
								"value" : [ 55.350000000000001 ]
							}
, 							{
								"key" : 4764,
								"value" : [ 56.770000000000003 ]
							}
, 							{
								"key" : 4765,
								"value" : [ 58.240000000000002 ]
							}
, 							{
								"key" : 4766,
								"value" : [ 59.409999999999997 ]
							}
, 							{
								"key" : 4767,
								"value" : [ 60.119999999999997 ]
							}
, 							{
								"key" : 4768,
								"value" : [ 60.259999999999998 ]
							}
, 							{
								"key" : 4769,
								"value" : [ 59.700000000000003 ]
							}
, 							{
								"key" : 4770,
								"value" : [ 58.100000000000001 ]
							}
, 							{
								"key" : 4771,
								"value" : [ 57.090000000000003 ]
							}
, 							{
								"key" : 4772,
								"value" : [ 55.990000000000002 ]
							}
, 							{
								"key" : 4773,
								"value" : [ 55.170000000000002 ]
							}
, 							{
								"key" : 4774,
								"value" : [ 54.539999999999999 ]
							}
, 							{
								"key" : 4775,
								"value" : [ 54.009999999999998 ]
							}
, 							{
								"key" : 4776,
								"value" : [ 53.329999999999998 ]
							}
, 							{
								"key" : 4777,
								"value" : [ 52.030000000000001 ]
							}
, 							{
								"key" : 4778,
								"value" : [ 51.039999999999999 ]
							}
, 							{
								"key" : 4779,
								"value" : [ 50.310000000000002 ]
							}
, 							{
								"key" : 4780,
								"value" : [ 49.82 ]
							}
, 							{
								"key" : 4781,
								"value" : [ 49.590000000000003 ]
							}
, 							{
								"key" : 4782,
								"value" : [ 49.439999999999998 ]
							}
, 							{
								"key" : 4783,
								"value" : [ 49.68 ]
							}
, 							{
								"key" : 4784,
								"value" : [ 51.979999999999997 ]
							}
, 							{
								"key" : 4785,
								"value" : [ 54.049999999999997 ]
							}
, 							{
								"key" : 4786,
								"value" : [ 57.920000000000002 ]
							}
, 							{
								"key" : 4787,
								"value" : [ 61.07 ]
							}
, 							{
								"key" : 4788,
								"value" : [ 62.670000000000002 ]
							}
, 							{
								"key" : 4789,
								"value" : [ 63.899999999999999 ]
							}
, 							{
								"key" : 4790,
								"value" : [ 64.810000000000002 ]
							}
, 							{
								"key" : 4791,
								"value" : [ 65.260000000000005 ]
							}
, 							{
								"key" : 4792,
								"value" : [ 65.120000000000005 ]
							}
, 							{
								"key" : 4793,
								"value" : [ 63.539999999999999 ]
							}
, 							{
								"key" : 4794,
								"value" : [ 60.850000000000001 ]
							}
, 							{
								"key" : 4795,
								"value" : [ 59.649999999999999 ]
							}
, 							{
								"key" : 4796,
								"value" : [ 58.590000000000003 ]
							}
, 							{
								"key" : 4797,
								"value" : [ 57.609999999999999 ]
							}
, 							{
								"key" : 4798,
								"value" : [ 56.729999999999997 ]
							}
, 							{
								"key" : 4799,
								"value" : [ 55.960000000000001 ]
							}
, 							{
								"key" : 4800,
								"value" : [ 55.259999999999998 ]
							}
, 							{
								"key" : 4801,
								"value" : [ 54.590000000000003 ]
							}
, 							{
								"key" : 4802,
								"value" : [ 53.960000000000001 ]
							}
, 							{
								"key" : 4803,
								"value" : [ 53.350000000000001 ]
							}
, 							{
								"key" : 4804,
								"value" : [ 52.789999999999999 ]
							}
, 							{
								"key" : 4805,
								"value" : [ 52.340000000000003 ]
							}
, 							{
								"key" : 4806,
								"value" : [ 52.020000000000003 ]
							}
, 							{
								"key" : 4807,
								"value" : [ 51.960000000000001 ]
							}
, 							{
								"key" : 4808,
								"value" : [ 54.07 ]
							}
, 							{
								"key" : 4809,
								"value" : [ 55.810000000000002 ]
							}
, 							{
								"key" : 4810,
								"value" : [ 58.530000000000001 ]
							}
, 							{
								"key" : 4811,
								"value" : [ 64.109999999999999 ]
							}
, 							{
								"key" : 4812,
								"value" : [ 66.310000000000002 ]
							}
, 							{
								"key" : 4813,
								"value" : [ 67.260000000000005 ]
							}
, 							{
								"key" : 4814,
								"value" : [ 68.129999999999995 ]
							}
, 							{
								"key" : 4815,
								"value" : [ 68.519999999999996 ]
							}
, 							{
								"key" : 4816,
								"value" : [ 68.180000000000007 ]
							}
, 							{
								"key" : 4817,
								"value" : [ 66.629999999999995 ]
							}
, 							{
								"key" : 4818,
								"value" : [ 64.670000000000002 ]
							}
, 							{
								"key" : 4819,
								"value" : [ 63.609999999999999 ]
							}
, 							{
								"key" : 4820,
								"value" : [ 62.729999999999997 ]
							}
, 							{
								"key" : 4821,
								"value" : [ 61.93 ]
							}
, 							{
								"key" : 4822,
								"value" : [ 60.82 ]
							}
, 							{
								"key" : 4823,
								"value" : [ 59.310000000000002 ]
							}
, 							{
								"key" : 4824,
								"value" : [ 57.740000000000002 ]
							}
, 							{
								"key" : 4825,
								"value" : [ 56.390000000000001 ]
							}
, 							{
								"key" : 4826,
								"value" : [ 55.259999999999998 ]
							}
, 							{
								"key" : 4827,
								"value" : [ 54.280000000000001 ]
							}
, 							{
								"key" : 4828,
								"value" : [ 53.640000000000001 ]
							}
, 							{
								"key" : 4829,
								"value" : [ 53.280000000000001 ]
							}
, 							{
								"key" : 4830,
								"value" : [ 52.68 ]
							}
, 							{
								"key" : 4831,
								"value" : [ 52.409999999999997 ]
							}
, 							{
								"key" : 4832,
								"value" : [ 53.920000000000002 ]
							}
, 							{
								"key" : 4833,
								"value" : [ 56.390000000000001 ]
							}
, 							{
								"key" : 4834,
								"value" : [ 60.149999999999999 ]
							}
, 							{
								"key" : 4835,
								"value" : [ 64.870000000000005 ]
							}
, 							{
								"key" : 4836,
								"value" : [ 67.909999999999997 ]
							}
, 							{
								"key" : 4837,
								"value" : [ 68.670000000000002 ]
							}
, 							{
								"key" : 4838,
								"value" : [ 68.489999999999995 ]
							}
, 							{
								"key" : 4839,
								"value" : [ 67.959999999999994 ]
							}
, 							{
								"key" : 4840,
								"value" : [ 67.370000000000005 ]
							}
, 							{
								"key" : 4841,
								"value" : [ 65.590000000000003 ]
							}
, 							{
								"key" : 4842,
								"value" : [ 62.869999999999997 ]
							}
, 							{
								"key" : 4843,
								"value" : [ 61.57 ]
							}
, 							{
								"key" : 4844,
								"value" : [ 60.490000000000002 ]
							}
, 							{
								"key" : 4845,
								"value" : [ 59.590000000000003 ]
							}
, 							{
								"key" : 4846,
								"value" : [ 58.75 ]
							}
, 							{
								"key" : 4847,
								"value" : [ 57.920000000000002 ]
							}
, 							{
								"key" : 4848,
								"value" : [ 57.0 ]
							}
, 							{
								"key" : 4849,
								"value" : [ 56.409999999999997 ]
							}
, 							{
								"key" : 4850,
								"value" : [ 55.890000000000001 ]
							}
, 							{
								"key" : 4851,
								"value" : [ 55.270000000000003 ]
							}
, 							{
								"key" : 4852,
								"value" : [ 54.770000000000003 ]
							}
, 							{
								"key" : 4853,
								"value" : [ 54.210000000000001 ]
							}
, 							{
								"key" : 4854,
								"value" : [ 53.850000000000001 ]
							}
, 							{
								"key" : 4855,
								"value" : [ 53.710000000000001 ]
							}
, 							{
								"key" : 4856,
								"value" : [ 54.990000000000002 ]
							}
, 							{
								"key" : 4857,
								"value" : [ 56.969999999999999 ]
							}
, 							{
								"key" : 4858,
								"value" : [ 60.689999999999998 ]
							}
, 							{
								"key" : 4859,
								"value" : [ 64.670000000000002 ]
							}
, 							{
								"key" : 4860,
								"value" : [ 67.459999999999994 ]
							}
, 							{
								"key" : 4861,
								"value" : [ 68.879999999999995 ]
							}
, 							{
								"key" : 4862,
								"value" : [ 68.609999999999999 ]
							}
, 							{
								"key" : 4863,
								"value" : [ 67.329999999999998 ]
							}
, 							{
								"key" : 4864,
								"value" : [ 66.959999999999994 ]
							}
, 							{
								"key" : 4865,
								"value" : [ 66.090000000000003 ]
							}
, 							{
								"key" : 4866,
								"value" : [ 64.989999999999995 ]
							}
, 							{
								"key" : 4867,
								"value" : [ 64.810000000000002 ]
							}
, 							{
								"key" : 4868,
								"value" : [ 64.450000000000003 ]
							}
, 							{
								"key" : 4869,
								"value" : [ 63.719999999999999 ]
							}
, 							{
								"key" : 4870,
								"value" : [ 63.210000000000001 ]
							}
, 							{
								"key" : 4871,
								"value" : [ 62.939999999999998 ]
							}
, 							{
								"key" : 4872,
								"value" : [ 62.640000000000001 ]
							}
, 							{
								"key" : 4873,
								"value" : [ 62.280000000000001 ]
							}
, 							{
								"key" : 4874,
								"value" : [ 61.810000000000002 ]
							}
, 							{
								"key" : 4875,
								"value" : [ 60.490000000000002 ]
							}
, 							{
								"key" : 4876,
								"value" : [ 57.789999999999999 ]
							}
, 							{
								"key" : 4877,
								"value" : [ 54.719999999999999 ]
							}
, 							{
								"key" : 4878,
								"value" : [ 53.310000000000002 ]
							}
, 							{
								"key" : 4879,
								"value" : [ 52.740000000000002 ]
							}
, 							{
								"key" : 4880,
								"value" : [ 53.109999999999999 ]
							}
, 							{
								"key" : 4881,
								"value" : [ 53.560000000000002 ]
							}
, 							{
								"key" : 4882,
								"value" : [ 53.829999999999998 ]
							}
, 							{
								"key" : 4883,
								"value" : [ 54.659999999999997 ]
							}
, 							{
								"key" : 4884,
								"value" : [ 55.490000000000002 ]
							}
, 							{
								"key" : 4885,
								"value" : [ 55.939999999999998 ]
							}
, 							{
								"key" : 4886,
								"value" : [ 56.049999999999997 ]
							}
, 							{
								"key" : 4887,
								"value" : [ 55.740000000000002 ]
							}
, 							{
								"key" : 4888,
								"value" : [ 55.420000000000002 ]
							}
, 							{
								"key" : 4889,
								"value" : [ 55.170000000000002 ]
							}
, 							{
								"key" : 4890,
								"value" : [ 54.859999999999999 ]
							}
, 							{
								"key" : 4891,
								"value" : [ 54.630000000000003 ]
							}
, 							{
								"key" : 4892,
								"value" : [ 54.43 ]
							}
, 							{
								"key" : 4893,
								"value" : [ 54.270000000000003 ]
							}
, 							{
								"key" : 4894,
								"value" : [ 53.979999999999997 ]
							}
, 							{
								"key" : 4895,
								"value" : [ 53.259999999999998 ]
							}
, 							{
								"key" : 4896,
								"value" : [ 52.390000000000001 ]
							}
, 							{
								"key" : 4897,
								"value" : [ 51.939999999999998 ]
							}
, 							{
								"key" : 4898,
								"value" : [ 51.640000000000001 ]
							}
, 							{
								"key" : 4899,
								"value" : [ 51.369999999999997 ]
							}
, 							{
								"key" : 4900,
								"value" : [ 50.920000000000002 ]
							}
, 							{
								"key" : 4901,
								"value" : [ 50.469999999999999 ]
							}
, 							{
								"key" : 4902,
								"value" : [ 50.039999999999999 ]
							}
, 							{
								"key" : 4903,
								"value" : [ 49.770000000000003 ]
							}
, 							{
								"key" : 4904,
								"value" : [ 50.850000000000001 ]
							}
, 							{
								"key" : 4905,
								"value" : [ 51.619999999999997 ]
							}
, 							{
								"key" : 4906,
								"value" : [ 51.869999999999997 ]
							}
, 							{
								"key" : 4907,
								"value" : [ 52.450000000000003 ]
							}
, 							{
								"key" : 4908,
								"value" : [ 53.439999999999998 ]
							}
, 							{
								"key" : 4909,
								"value" : [ 54.049999999999997 ]
							}
, 							{
								"key" : 4910,
								"value" : [ 54.299999999999997 ]
							}
, 							{
								"key" : 4911,
								"value" : [ 54.590000000000003 ]
							}
, 							{
								"key" : 4912,
								"value" : [ 54.390000000000001 ]
							}
, 							{
								"key" : 4913,
								"value" : [ 53.490000000000002 ]
							}
, 							{
								"key" : 4914,
								"value" : [ 52.229999999999997 ]
							}
, 							{
								"key" : 4915,
								"value" : [ 52.049999999999997 ]
							}
, 							{
								"key" : 4916,
								"value" : [ 51.890000000000001 ]
							}
, 							{
								"key" : 4917,
								"value" : [ 51.530000000000001 ]
							}
, 							{
								"key" : 4918,
								"value" : [ 51.240000000000002 ]
							}
, 							{
								"key" : 4919,
								"value" : [ 50.859999999999999 ]
							}
, 							{
								"key" : 4920,
								"value" : [ 50.560000000000002 ]
							}
, 							{
								"key" : 4921,
								"value" : [ 50.130000000000003 ]
							}
, 							{
								"key" : 4922,
								"value" : [ 49.890000000000001 ]
							}
, 							{
								"key" : 4923,
								"value" : [ 49.439999999999998 ]
							}
, 							{
								"key" : 4924,
								"value" : [ 48.789999999999999 ]
							}
, 							{
								"key" : 4925,
								"value" : [ 48.270000000000003 ]
							}
, 							{
								"key" : 4926,
								"value" : [ 47.840000000000003 ]
							}
, 							{
								"key" : 4927,
								"value" : [ 47.479999999999997 ]
							}
, 							{
								"key" : 4928,
								"value" : [ 49.189999999999998 ]
							}
, 							{
								"key" : 4929,
								"value" : [ 50.289999999999999 ]
							}
, 							{
								"key" : 4930,
								"value" : [ 51.009999999999998 ]
							}
, 							{
								"key" : 4931,
								"value" : [ 51.729999999999997 ]
							}
, 							{
								"key" : 4932,
								"value" : [ 52.409999999999997 ]
							}
, 							{
								"key" : 4933,
								"value" : [ 52.880000000000003 ]
							}
, 							{
								"key" : 4934,
								"value" : [ 53.240000000000002 ]
							}
, 							{
								"key" : 4935,
								"value" : [ 53.399999999999999 ]
							}
, 							{
								"key" : 4936,
								"value" : [ 53.060000000000002 ]
							}
, 							{
								"key" : 4937,
								"value" : [ 51.909999999999997 ]
							}
, 							{
								"key" : 4938,
								"value" : [ 50.090000000000003 ]
							}
, 							{
								"key" : 4939,
								"value" : [ 50.039999999999999 ]
							}
, 							{
								"key" : 4940,
								"value" : [ 50.18 ]
							}
, 							{
								"key" : 4941,
								"value" : [ 50.340000000000003 ]
							}
, 							{
								"key" : 4942,
								"value" : [ 50.469999999999999 ]
							}
, 							{
								"key" : 4943,
								"value" : [ 50.469999999999999 ]
							}
, 							{
								"key" : 4944,
								"value" : [ 50.43 ]
							}
, 							{
								"key" : 4945,
								"value" : [ 50.409999999999997 ]
							}
, 							{
								"key" : 4946,
								"value" : [ 50.340000000000003 ]
							}
, 							{
								"key" : 4947,
								"value" : [ 50.579999999999998 ]
							}
, 							{
								"key" : 4948,
								"value" : [ 50.740000000000002 ]
							}
, 							{
								"key" : 4949,
								"value" : [ 50.880000000000003 ]
							}
, 							{
								"key" : 4950,
								"value" : [ 51.079999999999998 ]
							}
, 							{
								"key" : 4951,
								"value" : [ 51.369999999999997 ]
							}
, 							{
								"key" : 4952,
								"value" : [ 51.909999999999997 ]
							}
, 							{
								"key" : 4953,
								"value" : [ 52.390000000000001 ]
							}
, 							{
								"key" : 4954,
								"value" : [ 53.039999999999999 ]
							}
, 							{
								"key" : 4955,
								"value" : [ 54.140000000000001 ]
							}
, 							{
								"key" : 4956,
								"value" : [ 52.93 ]
							}
, 							{
								"key" : 4957,
								"value" : [ 52.119999999999997 ]
							}
, 							{
								"key" : 4958,
								"value" : [ 52.560000000000002 ]
							}
, 							{
								"key" : 4959,
								"value" : [ 52.659999999999997 ]
							}
, 							{
								"key" : 4960,
								"value" : [ 52.25 ]
							}
, 							{
								"key" : 4961,
								"value" : [ 52.109999999999999 ]
							}
, 							{
								"key" : 4962,
								"value" : [ 52.049999999999997 ]
							}
, 							{
								"key" : 4963,
								"value" : [ 52.049999999999997 ]
							}
, 							{
								"key" : 4964,
								"value" : [ 51.57 ]
							}
, 							{
								"key" : 4965,
								"value" : [ 51.219999999999999 ]
							}
, 							{
								"key" : 4966,
								"value" : [ 50.920000000000002 ]
							}
, 							{
								"key" : 4967,
								"value" : [ 50.539999999999999 ]
							}
, 							{
								"key" : 4968,
								"value" : [ 50.140000000000001 ]
							}
, 							{
								"key" : 4969,
								"value" : [ 49.299999999999997 ]
							}
, 							{
								"key" : 4970,
								"value" : [ 49.600000000000001 ]
							}
, 							{
								"key" : 4971,
								"value" : [ 49.890000000000001 ]
							}
, 							{
								"key" : 4972,
								"value" : [ 50.359999999999999 ]
							}
, 							{
								"key" : 4973,
								"value" : [ 50.68 ]
							}
, 							{
								"key" : 4974,
								"value" : [ 50.5 ]
							}
, 							{
								"key" : 4975,
								"value" : [ 50.450000000000003 ]
							}
, 							{
								"key" : 4976,
								"value" : [ 50.560000000000002 ]
							}
, 							{
								"key" : 4977,
								"value" : [ 50.700000000000003 ]
							}
, 							{
								"key" : 4978,
								"value" : [ 50.759999999999998 ]
							}
, 							{
								"key" : 4979,
								"value" : [ 51.119999999999997 ]
							}
, 							{
								"key" : 4980,
								"value" : [ 51.890000000000001 ]
							}
, 							{
								"key" : 4981,
								"value" : [ 52.740000000000002 ]
							}
, 							{
								"key" : 4982,
								"value" : [ 53.600000000000001 ]
							}
, 							{
								"key" : 4983,
								"value" : [ 54.460000000000001 ]
							}
, 							{
								"key" : 4984,
								"value" : [ 54.090000000000003 ]
							}
, 							{
								"key" : 4985,
								"value" : [ 53.350000000000001 ]
							}
, 							{
								"key" : 4986,
								"value" : [ 52.880000000000003 ]
							}
, 							{
								"key" : 4987,
								"value" : [ 52.840000000000003 ]
							}
, 							{
								"key" : 4988,
								"value" : [ 52.740000000000002 ]
							}
, 							{
								"key" : 4989,
								"value" : [ 52.609999999999999 ]
							}
, 							{
								"key" : 4990,
								"value" : [ 52.299999999999997 ]
							}
, 							{
								"key" : 4991,
								"value" : [ 51.850000000000001 ]
							}
, 							{
								"key" : 4992,
								"value" : [ 51.280000000000001 ]
							}
, 							{
								"key" : 4993,
								"value" : [ 50.770000000000003 ]
							}
, 							{
								"key" : 4994,
								"value" : [ 50.409999999999997 ]
							}
, 							{
								"key" : 4995,
								"value" : [ 50.159999999999997 ]
							}
, 							{
								"key" : 4996,
								"value" : [ 49.890000000000001 ]
							}
, 							{
								"key" : 4997,
								"value" : [ 49.68 ]
							}
, 							{
								"key" : 4998,
								"value" : [ 49.57 ]
							}
, 							{
								"key" : 4999,
								"value" : [ 49.640000000000001 ]
							}
, 							{
								"key" : 5000,
								"value" : [ 51.619999999999997 ]
							}
, 							{
								"key" : 5001,
								"value" : [ 53.380000000000003 ]
							}
, 							{
								"key" : 5002,
								"value" : [ 54.270000000000003 ]
							}
, 							{
								"key" : 5003,
								"value" : [ 54.969999999999999 ]
							}
, 							{
								"key" : 5004,
								"value" : [ 55.359999999999999 ]
							}
, 							{
								"key" : 5005,
								"value" : [ 55.509999999999998 ]
							}
, 							{
								"key" : 5006,
								"value" : [ 55.490000000000002 ]
							}
, 							{
								"key" : 5007,
								"value" : [ 55.090000000000003 ]
							}
, 							{
								"key" : 5008,
								"value" : [ 54.609999999999999 ]
							}
, 							{
								"key" : 5009,
								"value" : [ 53.350000000000001 ]
							}
, 							{
								"key" : 5010,
								"value" : [ 51.490000000000002 ]
							}
, 							{
								"key" : 5011,
								"value" : [ 51.170000000000002 ]
							}
, 							{
								"key" : 5012,
								"value" : [ 50.920000000000002 ]
							}
, 							{
								"key" : 5013,
								"value" : [ 50.670000000000002 ]
							}
, 							{
								"key" : 5014,
								"value" : [ 50.469999999999999 ]
							}
, 							{
								"key" : 5015,
								"value" : [ 50.5 ]
							}
, 							{
								"key" : 5016,
								"value" : [ 50.609999999999999 ]
							}
, 							{
								"key" : 5017,
								"value" : [ 50.590000000000003 ]
							}
, 							{
								"key" : 5018,
								"value" : [ 50.380000000000003 ]
							}
, 							{
								"key" : 5019,
								"value" : [ 50.020000000000003 ]
							}
, 							{
								"key" : 5020,
								"value" : [ 49.549999999999997 ]
							}
, 							{
								"key" : 5021,
								"value" : [ 48.969999999999999 ]
							}
, 							{
								"key" : 5022,
								"value" : [ 48.289999999999999 ]
							}
, 							{
								"key" : 5023,
								"value" : [ 47.700000000000003 ]
							}
, 							{
								"key" : 5024,
								"value" : [ 49.030000000000001 ]
							}
, 							{
								"key" : 5025,
								"value" : [ 50.539999999999999 ]
							}
, 							{
								"key" : 5026,
								"value" : [ 51.299999999999997 ]
							}
, 							{
								"key" : 5027,
								"value" : [ 52.18 ]
							}
, 							{
								"key" : 5028,
								"value" : [ 53.109999999999999 ]
							}
, 							{
								"key" : 5029,
								"value" : [ 53.850000000000001 ]
							}
, 							{
								"key" : 5030,
								"value" : [ 54.369999999999997 ]
							}
, 							{
								"key" : 5031,
								"value" : [ 54.640000000000001 ]
							}
, 							{
								"key" : 5032,
								"value" : [ 54.770000000000003 ]
							}
, 							{
								"key" : 5033,
								"value" : [ 53.920000000000002 ]
							}
, 							{
								"key" : 5034,
								"value" : [ 52.719999999999999 ]
							}
, 							{
								"key" : 5035,
								"value" : [ 53.060000000000002 ]
							}
, 							{
								"key" : 5036,
								"value" : [ 53.420000000000002 ]
							}
, 							{
								"key" : 5037,
								"value" : [ 53.329999999999998 ]
							}
, 							{
								"key" : 5038,
								"value" : [ 52.609999999999999 ]
							}
, 							{
								"key" : 5039,
								"value" : [ 51.75 ]
							}
, 							{
								"key" : 5040,
								"value" : [ 51.420000000000002 ]
							}
, 							{
								"key" : 5041,
								"value" : [ 51.259999999999998 ]
							}
, 							{
								"key" : 5042,
								"value" : [ 51.079999999999998 ]
							}
, 							{
								"key" : 5043,
								"value" : [ 50.829999999999998 ]
							}
, 							{
								"key" : 5044,
								"value" : [ 50.990000000000002 ]
							}
, 							{
								"key" : 5045,
								"value" : [ 51.93 ]
							}
, 							{
								"key" : 5046,
								"value" : [ 52.950000000000003 ]
							}
, 							{
								"key" : 5047,
								"value" : [ 53.829999999999998 ]
							}
, 							{
								"key" : 5048,
								"value" : [ 54.539999999999999 ]
							}
, 							{
								"key" : 5049,
								"value" : [ 55.350000000000001 ]
							}
, 							{
								"key" : 5050,
								"value" : [ 55.810000000000002 ]
							}
, 							{
								"key" : 5051,
								"value" : [ 56.100000000000001 ]
							}
, 							{
								"key" : 5052,
								"value" : [ 56.609999999999999 ]
							}
, 							{
								"key" : 5053,
								"value" : [ 57.509999999999998 ]
							}
, 							{
								"key" : 5054,
								"value" : [ 58.280000000000001 ]
							}
, 							{
								"key" : 5055,
								"value" : [ 58.439999999999998 ]
							}
, 							{
								"key" : 5056,
								"value" : [ 58.049999999999997 ]
							}
, 							{
								"key" : 5057,
								"value" : [ 57.759999999999998 ]
							}
, 							{
								"key" : 5058,
								"value" : [ 57.399999999999999 ]
							}
, 							{
								"key" : 5059,
								"value" : [ 57.109999999999999 ]
							}
, 							{
								"key" : 5060,
								"value" : [ 56.520000000000003 ]
							}
, 							{
								"key" : 5061,
								"value" : [ 55.890000000000001 ]
							}
, 							{
								"key" : 5062,
								"value" : [ 55.560000000000002 ]
							}
, 							{
								"key" : 5063,
								"value" : [ 55.420000000000002 ]
							}
, 							{
								"key" : 5064,
								"value" : [ 55.539999999999999 ]
							}
, 							{
								"key" : 5065,
								"value" : [ 55.780000000000001 ]
							}
, 							{
								"key" : 5066,
								"value" : [ 55.990000000000002 ]
							}
, 							{
								"key" : 5067,
								"value" : [ 56.07 ]
							}
, 							{
								"key" : 5068,
								"value" : [ 55.869999999999997 ]
							}
, 							{
								"key" : 5069,
								"value" : [ 55.329999999999998 ]
							}
, 							{
								"key" : 5070,
								"value" : [ 55.039999999999999 ]
							}
, 							{
								"key" : 5071,
								"value" : [ 55.170000000000002 ]
							}
, 							{
								"key" : 5072,
								"value" : [ 55.490000000000002 ]
							}
, 							{
								"key" : 5073,
								"value" : [ 55.850000000000001 ]
							}
, 							{
								"key" : 5074,
								"value" : [ 55.979999999999997 ]
							}
, 							{
								"key" : 5075,
								"value" : [ 56.009999999999998 ]
							}
, 							{
								"key" : 5076,
								"value" : [ 56.159999999999997 ]
							}
, 							{
								"key" : 5077,
								"value" : [ 56.189999999999998 ]
							}
, 							{
								"key" : 5078,
								"value" : [ 56.299999999999997 ]
							}
, 							{
								"key" : 5079,
								"value" : [ 56.439999999999998 ]
							}
, 							{
								"key" : 5080,
								"value" : [ 56.439999999999998 ]
							}
, 							{
								"key" : 5081,
								"value" : [ 56.479999999999997 ]
							}
, 							{
								"key" : 5082,
								"value" : [ 56.590000000000003 ]
							}
, 							{
								"key" : 5083,
								"value" : [ 56.659999999999997 ]
							}
, 							{
								"key" : 5084,
								"value" : [ 56.439999999999998 ]
							}
, 							{
								"key" : 5085,
								"value" : [ 56.189999999999998 ]
							}
, 							{
								"key" : 5086,
								"value" : [ 56.049999999999997 ]
							}
, 							{
								"key" : 5087,
								"value" : [ 55.890000000000001 ]
							}
, 							{
								"key" : 5088,
								"value" : [ 55.740000000000002 ]
							}
, 							{
								"key" : 5089,
								"value" : [ 55.619999999999997 ]
							}
, 							{
								"key" : 5090,
								"value" : [ 55.420000000000002 ]
							}
, 							{
								"key" : 5091,
								"value" : [ 55.310000000000002 ]
							}
, 							{
								"key" : 5092,
								"value" : [ 55.310000000000002 ]
							}
, 							{
								"key" : 5093,
								"value" : [ 55.289999999999999 ]
							}
, 							{
								"key" : 5094,
								"value" : [ 55.259999999999998 ]
							}
, 							{
								"key" : 5095,
								"value" : [ 55.170000000000002 ]
							}
, 							{
								"key" : 5096,
								"value" : [ 55.329999999999998 ]
							}
, 							{
								"key" : 5097,
								"value" : [ 55.740000000000002 ]
							}
, 							{
								"key" : 5098,
								"value" : [ 56.100000000000001 ]
							}
, 							{
								"key" : 5099,
								"value" : [ 56.259999999999998 ]
							}
, 							{
								"key" : 5100,
								"value" : [ 56.32 ]
							}
, 							{
								"key" : 5101,
								"value" : [ 56.369999999999997 ]
							}
, 							{
								"key" : 5102,
								"value" : [ 56.460000000000001 ]
							}
, 							{
								"key" : 5103,
								"value" : [ 56.57 ]
							}
, 							{
								"key" : 5104,
								"value" : [ 56.549999999999997 ]
							}
, 							{
								"key" : 5105,
								"value" : [ 55.670000000000002 ]
							}
, 							{
								"key" : 5106,
								"value" : [ 54.479999999999997 ]
							}
, 							{
								"key" : 5107,
								"value" : [ 54.640000000000001 ]
							}
, 							{
								"key" : 5108,
								"value" : [ 54.68 ]
							}
, 							{
								"key" : 5109,
								"value" : [ 54.409999999999997 ]
							}
, 							{
								"key" : 5110,
								"value" : [ 54.030000000000001 ]
							}
, 							{
								"key" : 5111,
								"value" : [ 53.350000000000001 ]
							}
, 							{
								"key" : 5112,
								"value" : [ 52.140000000000001 ]
							}
, 							{
								"key" : 5113,
								"value" : [ 51.219999999999999 ]
							}
, 							{
								"key" : 5114,
								"value" : [ 50.469999999999999 ]
							}
, 							{
								"key" : 5115,
								"value" : [ 49.57 ]
							}
, 							{
								"key" : 5116,
								"value" : [ 49.280000000000001 ]
							}
, 							{
								"key" : 5117,
								"value" : [ 48.869999999999997 ]
							}
, 							{
								"key" : 5118,
								"value" : [ 48.969999999999999 ]
							}
, 							{
								"key" : 5119,
								"value" : [ 49.329999999999998 ]
							}
, 							{
								"key" : 5120,
								"value" : [ 49.780000000000001 ]
							}
, 							{
								"key" : 5121,
								"value" : [ 50.450000000000003 ]
							}
, 							{
								"key" : 5122,
								"value" : [ 51.579999999999998 ]
							}
, 							{
								"key" : 5123,
								"value" : [ 52.380000000000003 ]
							}
, 							{
								"key" : 5124,
								"value" : [ 53.079999999999998 ]
							}
, 							{
								"key" : 5125,
								"value" : [ 53.740000000000002 ]
							}
, 							{
								"key" : 5126,
								"value" : [ 54.090000000000003 ]
							}
, 							{
								"key" : 5127,
								"value" : [ 54.119999999999997 ]
							}
, 							{
								"key" : 5128,
								"value" : [ 53.710000000000001 ]
							}
, 							{
								"key" : 5129,
								"value" : [ 52.450000000000003 ]
							}
, 							{
								"key" : 5130,
								"value" : [ 50.719999999999999 ]
							}
, 							{
								"key" : 5131,
								"value" : [ 49.659999999999997 ]
							}
, 							{
								"key" : 5132,
								"value" : [ 48.899999999999999 ]
							}
, 							{
								"key" : 5133,
								"value" : [ 48.18 ]
							}
, 							{
								"key" : 5134,
								"value" : [ 47.5 ]
							}
, 							{
								"key" : 5135,
								"value" : [ 46.810000000000002 ]
							}
, 							{
								"key" : 5136,
								"value" : [ 46.149999999999999 ]
							}
, 							{
								"key" : 5137,
								"value" : [ 45.460000000000001 ]
							}
, 							{
								"key" : 5138,
								"value" : [ 44.829999999999998 ]
							}
, 							{
								"key" : 5139,
								"value" : [ 44.240000000000002 ]
							}
, 							{
								"key" : 5140,
								"value" : [ 43.590000000000003 ]
							}
, 							{
								"key" : 5141,
								"value" : [ 42.960000000000001 ]
							}
, 							{
								"key" : 5142,
								"value" : [ 43.030000000000001 ]
							}
, 							{
								"key" : 5143,
								"value" : [ 43.210000000000001 ]
							}
, 							{
								"key" : 5144,
								"value" : [ 43.920000000000002 ]
							}
, 							{
								"key" : 5145,
								"value" : [ 44.490000000000002 ]
							}
, 							{
								"key" : 5146,
								"value" : [ 45.25 ]
							}
, 							{
								"key" : 5147,
								"value" : [ 46.539999999999999 ]
							}
, 							{
								"key" : 5148,
								"value" : [ 47.890000000000001 ]
							}
, 							{
								"key" : 5149,
								"value" : [ 48.789999999999999 ]
							}
, 							{
								"key" : 5150,
								"value" : [ 49.390000000000001 ]
							}
, 							{
								"key" : 5151,
								"value" : [ 49.729999999999997 ]
							}
, 							{
								"key" : 5152,
								"value" : [ 49.549999999999997 ]
							}
, 							{
								"key" : 5153,
								"value" : [ 48.25 ]
							}
, 							{
								"key" : 5154,
								"value" : [ 46.810000000000002 ]
							}
, 							{
								"key" : 5155,
								"value" : [ 46.170000000000002 ]
							}
, 							{
								"key" : 5156,
								"value" : [ 45.810000000000002 ]
							}
, 							{
								"key" : 5157,
								"value" : [ 44.759999999999998 ]
							}
, 							{
								"key" : 5158,
								"value" : [ 44.039999999999999 ]
							}
, 							{
								"key" : 5159,
								"value" : [ 43.359999999999999 ]
							}
, 							{
								"key" : 5160,
								"value" : [ 42.799999999999997 ]
							}
, 							{
								"key" : 5161,
								"value" : [ 42.259999999999998 ]
							}
, 							{
								"key" : 5162,
								"value" : [ 41.670000000000002 ]
							}
, 							{
								"key" : 5163,
								"value" : [ 41.340000000000003 ]
							}
, 							{
								"key" : 5164,
								"value" : [ 41.109999999999999 ]
							}
, 							{
								"key" : 5165,
								"value" : [ 40.439999999999998 ]
							}
, 							{
								"key" : 5166,
								"value" : [ 40.189999999999998 ]
							}
, 							{
								"key" : 5167,
								"value" : [ 40.140000000000001 ]
							}
, 							{
								"key" : 5168,
								"value" : [ 41.539999999999999 ]
							}
, 							{
								"key" : 5169,
								"value" : [ 42.600000000000001 ]
							}
, 							{
								"key" : 5170,
								"value" : [ 43.93 ]
							}
, 							{
								"key" : 5171,
								"value" : [ 45.090000000000003 ]
							}
, 							{
								"key" : 5172,
								"value" : [ 45.880000000000003 ]
							}
, 							{
								"key" : 5173,
								"value" : [ 46.490000000000002 ]
							}
, 							{
								"key" : 5174,
								"value" : [ 47.009999999999998 ]
							}
, 							{
								"key" : 5175,
								"value" : [ 47.280000000000001 ]
							}
, 							{
								"key" : 5176,
								"value" : [ 47.119999999999997 ]
							}
, 							{
								"key" : 5177,
								"value" : [ 45.969999999999999 ]
							}
, 							{
								"key" : 5178,
								"value" : [ 44.530000000000001 ]
							}
, 							{
								"key" : 5179,
								"value" : [ 44.109999999999999 ]
							}
, 							{
								"key" : 5180,
								"value" : [ 43.700000000000003 ]
							}
, 							{
								"key" : 5181,
								"value" : [ 43.109999999999999 ]
							}
, 							{
								"key" : 5182,
								"value" : [ 42.479999999999997 ]
							}
, 							{
								"key" : 5183,
								"value" : [ 41.969999999999999 ]
							}
, 							{
								"key" : 5184,
								"value" : [ 41.539999999999999 ]
							}
, 							{
								"key" : 5185,
								"value" : [ 41.140000000000001 ]
							}
, 							{
								"key" : 5186,
								"value" : [ 40.770000000000003 ]
							}
, 							{
								"key" : 5187,
								"value" : [ 40.369999999999997 ]
							}
, 							{
								"key" : 5188,
								"value" : [ 39.960000000000001 ]
							}
, 							{
								"key" : 5189,
								"value" : [ 39.539999999999999 ]
							}
, 							{
								"key" : 5190,
								"value" : [ 39.149999999999999 ]
							}
, 							{
								"key" : 5191,
								"value" : [ 38.75 ]
							}
, 							{
								"key" : 5192,
								"value" : [ 39.719999999999999 ]
							}
, 							{
								"key" : 5193,
								"value" : [ 41.829999999999998 ]
							}
, 							{
								"key" : 5194,
								"value" : [ 42.780000000000001 ]
							}
, 							{
								"key" : 5195,
								"value" : [ 43.719999999999999 ]
							}
, 							{
								"key" : 5196,
								"value" : [ 44.420000000000002 ]
							}
, 							{
								"key" : 5197,
								"value" : [ 44.890000000000001 ]
							}
, 							{
								"key" : 5198,
								"value" : [ 45.049999999999997 ]
							}
, 							{
								"key" : 5199,
								"value" : [ 44.799999999999997 ]
							}
, 							{
								"key" : 5200,
								"value" : [ 44.240000000000002 ]
							}
, 							{
								"key" : 5201,
								"value" : [ 43.520000000000003 ]
							}
, 							{
								"key" : 5202,
								"value" : [ 42.310000000000002 ]
							}
, 							{
								"key" : 5203,
								"value" : [ 41.520000000000003 ]
							}
, 							{
								"key" : 5204,
								"value" : [ 41.020000000000003 ]
							}
, 							{
								"key" : 5205,
								"value" : [ 40.68 ]
							}
, 							{
								"key" : 5206,
								"value" : [ 40.369999999999997 ]
							}
, 							{
								"key" : 5207,
								"value" : [ 40.170000000000002 ]
							}
, 							{
								"key" : 5208,
								"value" : [ 40.439999999999998 ]
							}
, 							{
								"key" : 5209,
								"value" : [ 40.420000000000002 ]
							}
, 							{
								"key" : 5210,
								"value" : [ 40.390000000000001 ]
							}
, 							{
								"key" : 5211,
								"value" : [ 40.030000000000001 ]
							}
, 							{
								"key" : 5212,
								"value" : [ 39.539999999999999 ]
							}
, 							{
								"key" : 5213,
								"value" : [ 39.670000000000002 ]
							}
, 							{
								"key" : 5214,
								"value" : [ 40.100000000000001 ]
							}
, 							{
								"key" : 5215,
								"value" : [ 40.640000000000001 ]
							}
, 							{
								"key" : 5216,
								"value" : [ 41.850000000000001 ]
							}
, 							{
								"key" : 5217,
								"value" : [ 43.590000000000003 ]
							}
, 							{
								"key" : 5218,
								"value" : [ 44.420000000000002 ]
							}
, 							{
								"key" : 5219,
								"value" : [ 45.229999999999997 ]
							}
, 							{
								"key" : 5220,
								"value" : [ 46.149999999999999 ]
							}
, 							{
								"key" : 5221,
								"value" : [ 47.030000000000001 ]
							}
, 							{
								"key" : 5222,
								"value" : [ 47.68 ]
							}
, 							{
								"key" : 5223,
								"value" : [ 48.159999999999997 ]
							}
, 							{
								"key" : 5224,
								"value" : [ 48.219999999999999 ]
							}
, 							{
								"key" : 5225,
								"value" : [ 46.710000000000001 ]
							}
, 							{
								"key" : 5226,
								"value" : [ 45.630000000000003 ]
							}
, 							{
								"key" : 5227,
								"value" : [ 45.229999999999997 ]
							}
, 							{
								"key" : 5228,
								"value" : [ 44.729999999999997 ]
							}
, 							{
								"key" : 5229,
								"value" : [ 44.219999999999999 ]
							}
, 							{
								"key" : 5230,
								"value" : [ 43.789999999999999 ]
							}
, 							{
								"key" : 5231,
								"value" : [ 43.359999999999999 ]
							}
, 							{
								"key" : 5232,
								"value" : [ 42.82 ]
							}
, 							{
								"key" : 5233,
								"value" : [ 42.130000000000003 ]
							}
, 							{
								"key" : 5234,
								"value" : [ 41.409999999999997 ]
							}
, 							{
								"key" : 5235,
								"value" : [ 40.770000000000003 ]
							}
, 							{
								"key" : 5236,
								"value" : [ 40.369999999999997 ]
							}
, 							{
								"key" : 5237,
								"value" : [ 40.119999999999997 ]
							}
, 							{
								"key" : 5238,
								"value" : [ 39.880000000000003 ]
							}
, 							{
								"key" : 5239,
								"value" : [ 39.609999999999999 ]
							}
, 							{
								"key" : 5240,
								"value" : [ 40.890000000000001 ]
							}
, 							{
								"key" : 5241,
								"value" : [ 43.32 ]
							}
, 							{
								"key" : 5242,
								"value" : [ 45.68 ]
							}
, 							{
								"key" : 5243,
								"value" : [ 48.539999999999999 ]
							}
, 							{
								"key" : 5244,
								"value" : [ 50.270000000000003 ]
							}
, 							{
								"key" : 5245,
								"value" : [ 51.299999999999997 ]
							}
, 							{
								"key" : 5246,
								"value" : [ 51.93 ]
							}
, 							{
								"key" : 5247,
								"value" : [ 52.200000000000003 ]
							}
, 							{
								"key" : 5248,
								"value" : [ 51.840000000000003 ]
							}
, 							{
								"key" : 5249,
								"value" : [ 49.770000000000003 ]
							}
, 							{
								"key" : 5250,
								"value" : [ 48.310000000000002 ]
							}
, 							{
								"key" : 5251,
								"value" : [ 47.700000000000003 ]
							}
, 							{
								"key" : 5252,
								"value" : [ 46.740000000000002 ]
							}
, 							{
								"key" : 5253,
								"value" : [ 45.729999999999997 ]
							}
, 							{
								"key" : 5254,
								"value" : [ 45.030000000000001 ]
							}
, 							{
								"key" : 5255,
								"value" : [ 44.439999999999998 ]
							}
, 							{
								"key" : 5256,
								"value" : [ 43.75 ]
							}
, 							{
								"key" : 5257,
								"value" : [ 43.159999999999997 ]
							}
, 							{
								"key" : 5258,
								"value" : [ 42.890000000000001 ]
							}
, 							{
								"key" : 5259,
								"value" : [ 42.640000000000001 ]
							}
, 							{
								"key" : 5260,
								"value" : [ 41.950000000000003 ]
							}
, 							{
								"key" : 5261,
								"value" : [ 42.130000000000003 ]
							}
, 							{
								"key" : 5262,
								"value" : [ 42.030000000000001 ]
							}
, 							{
								"key" : 5263,
								"value" : [ 41.969999999999999 ]
							}
, 							{
								"key" : 5264,
								"value" : [ 42.240000000000002 ]
							}
, 							{
								"key" : 5265,
								"value" : [ 43.450000000000003 ]
							}
, 							{
								"key" : 5266,
								"value" : [ 46.490000000000002 ]
							}
, 							{
								"key" : 5267,
								"value" : [ 50.770000000000003 ]
							}
, 							{
								"key" : 5268,
								"value" : [ 54.159999999999997 ]
							}
, 							{
								"key" : 5269,
								"value" : [ 55.990000000000002 ]
							}
, 							{
								"key" : 5270,
								"value" : [ 57.020000000000003 ]
							}
, 							{
								"key" : 5271,
								"value" : [ 57.490000000000002 ]
							}
, 							{
								"key" : 5272,
								"value" : [ 57.219999999999999 ]
							}
, 							{
								"key" : 5273,
								"value" : [ 55.240000000000002 ]
							}
, 							{
								"key" : 5274,
								"value" : [ 53.420000000000002 ]
							}
, 							{
								"key" : 5275,
								"value" : [ 52.5 ]
							}
, 							{
								"key" : 5276,
								"value" : [ 51.439999999999998 ]
							}
, 							{
								"key" : 5277,
								"value" : [ 50.270000000000003 ]
							}
, 							{
								"key" : 5278,
								"value" : [ 49.060000000000002 ]
							}
, 							{
								"key" : 5279,
								"value" : [ 47.890000000000001 ]
							}
, 							{
								"key" : 5280,
								"value" : [ 46.869999999999997 ]
							}
, 							{
								"key" : 5281,
								"value" : [ 46.0 ]
							}
, 							{
								"key" : 5282,
								"value" : [ 45.280000000000001 ]
							}
, 							{
								"key" : 5283,
								"value" : [ 44.729999999999997 ]
							}
, 							{
								"key" : 5284,
								"value" : [ 44.530000000000001 ]
							}
, 							{
								"key" : 5285,
								"value" : [ 44.350000000000001 ]
							}
, 							{
								"key" : 5286,
								"value" : [ 44.490000000000002 ]
							}
, 							{
								"key" : 5287,
								"value" : [ 44.740000000000002 ]
							}
, 							{
								"key" : 5288,
								"value" : [ 45.549999999999997 ]
							}
, 							{
								"key" : 5289,
								"value" : [ 47.119999999999997 ]
							}
, 							{
								"key" : 5290,
								"value" : [ 49.729999999999997 ]
							}
, 							{
								"key" : 5291,
								"value" : [ 53.579999999999998 ]
							}
, 							{
								"key" : 5292,
								"value" : [ 57.020000000000003 ]
							}
, 							{
								"key" : 5293,
								"value" : [ 59.539999999999999 ]
							}
, 							{
								"key" : 5294,
								"value" : [ 60.799999999999997 ]
							}
, 							{
								"key" : 5295,
								"value" : [ 61.119999999999997 ]
							}
, 							{
								"key" : 5296,
								"value" : [ 60.479999999999997 ]
							}
, 							{
								"key" : 5297,
								"value" : [ 58.590000000000003 ]
							}
, 							{
								"key" : 5298,
								"value" : [ 57.020000000000003 ]
							}
, 							{
								"key" : 5299,
								"value" : [ 56.07 ]
							}
, 							{
								"key" : 5300,
								"value" : [ 54.770000000000003 ]
							}
, 							{
								"key" : 5301,
								"value" : [ 53.579999999999998 ]
							}
, 							{
								"key" : 5302,
								"value" : [ 52.409999999999997 ]
							}
, 							{
								"key" : 5303,
								"value" : [ 51.299999999999997 ]
							}
, 							{
								"key" : 5304,
								"value" : [ 50.340000000000003 ]
							}
, 							{
								"key" : 5305,
								"value" : [ 49.640000000000001 ]
							}
, 							{
								"key" : 5306,
								"value" : [ 48.990000000000002 ]
							}
, 							{
								"key" : 5307,
								"value" : [ 48.399999999999999 ]
							}
, 							{
								"key" : 5308,
								"value" : [ 47.93 ]
							}
, 							{
								"key" : 5309,
								"value" : [ 47.609999999999999 ]
							}
, 							{
								"key" : 5310,
								"value" : [ 47.259999999999998 ]
							}
, 							{
								"key" : 5311,
								"value" : [ 46.939999999999998 ]
							}
, 							{
								"key" : 5312,
								"value" : [ 47.25 ]
							}
, 							{
								"key" : 5313,
								"value" : [ 48.939999999999998 ]
							}
, 							{
								"key" : 5314,
								"value" : [ 52.119999999999997 ]
							}
, 							{
								"key" : 5315,
								"value" : [ 55.439999999999998 ]
							}
, 							{
								"key" : 5316,
								"value" : [ 57.789999999999999 ]
							}
, 							{
								"key" : 5317,
								"value" : [ 59.32 ]
							}
, 							{
								"key" : 5318,
								"value" : [ 60.280000000000001 ]
							}
, 							{
								"key" : 5319,
								"value" : [ 60.659999999999997 ]
							}
, 							{
								"key" : 5320,
								"value" : [ 60.299999999999997 ]
							}
, 							{
								"key" : 5321,
								"value" : [ 58.420000000000002 ]
							}
, 							{
								"key" : 5322,
								"value" : [ 57.219999999999999 ]
							}
, 							{
								"key" : 5323,
								"value" : [ 56.520000000000003 ]
							}
, 							{
								"key" : 5324,
								"value" : [ 56.189999999999998 ]
							}
, 							{
								"key" : 5325,
								"value" : [ 56.119999999999997 ]
							}
, 							{
								"key" : 5326,
								"value" : [ 55.920000000000002 ]
							}
, 							{
								"key" : 5327,
								"value" : [ 55.670000000000002 ]
							}
, 							{
								"key" : 5328,
								"value" : [ 55.539999999999999 ]
							}
, 							{
								"key" : 5329,
								"value" : [ 55.090000000000003 ]
							}
, 							{
								"key" : 5330,
								"value" : [ 55.270000000000003 ]
							}
, 							{
								"key" : 5331,
								"value" : [ 55.649999999999999 ]
							}
, 							{
								"key" : 5332,
								"value" : [ 55.310000000000002 ]
							}
, 							{
								"key" : 5333,
								"value" : [ 54.859999999999999 ]
							}
, 							{
								"key" : 5334,
								"value" : [ 54.32 ]
							}
, 							{
								"key" : 5335,
								"value" : [ 54.100000000000001 ]
							}
, 							{
								"key" : 5336,
								"value" : [ 54.140000000000001 ]
							}
, 							{
								"key" : 5337,
								"value" : [ 54.700000000000003 ]
							}
, 							{
								"key" : 5338,
								"value" : [ 54.659999999999997 ]
							}
, 							{
								"key" : 5339,
								"value" : [ 54.590000000000003 ]
							}
, 							{
								"key" : 5340,
								"value" : [ 54.909999999999997 ]
							}
, 							{
								"key" : 5341,
								"value" : [ 55.240000000000002 ]
							}
, 							{
								"key" : 5342,
								"value" : [ 54.950000000000003 ]
							}
, 							{
								"key" : 5343,
								"value" : [ 54.43 ]
							}
, 							{
								"key" : 5344,
								"value" : [ 54.140000000000001 ]
							}
, 							{
								"key" : 5345,
								"value" : [ 53.109999999999999 ]
							}
, 							{
								"key" : 5346,
								"value" : [ 52.020000000000003 ]
							}
, 							{
								"key" : 5347,
								"value" : [ 51.799999999999997 ]
							}
, 							{
								"key" : 5348,
								"value" : [ 51.670000000000002 ]
							}
, 							{
								"key" : 5349,
								"value" : [ 51.439999999999998 ]
							}
, 							{
								"key" : 5350,
								"value" : [ 51.210000000000001 ]
							}
, 							{
								"key" : 5351,
								"value" : [ 50.939999999999998 ]
							}
, 							{
								"key" : 5352,
								"value" : [ 51.039999999999999 ]
							}
, 							{
								"key" : 5353,
								"value" : [ 51.039999999999999 ]
							}
, 							{
								"key" : 5354,
								"value" : [ 50.770000000000003 ]
							}
, 							{
								"key" : 5355,
								"value" : [ 50.719999999999999 ]
							}
, 							{
								"key" : 5356,
								"value" : [ 50.539999999999999 ]
							}
, 							{
								"key" : 5357,
								"value" : [ 50.399999999999999 ]
							}
, 							{
								"key" : 5358,
								"value" : [ 50.049999999999997 ]
							}
, 							{
								"key" : 5359,
								"value" : [ 49.689999999999998 ]
							}
, 							{
								"key" : 5360,
								"value" : [ 50.270000000000003 ]
							}
, 							{
								"key" : 5361,
								"value" : [ 51.840000000000003 ]
							}
, 							{
								"key" : 5362,
								"value" : [ 52.57 ]
							}
, 							{
								"key" : 5363,
								"value" : [ 53.350000000000001 ]
							}
, 							{
								"key" : 5364,
								"value" : [ 54.0 ]
							}
, 							{
								"key" : 5365,
								"value" : [ 54.390000000000001 ]
							}
, 							{
								"key" : 5366,
								"value" : [ 54.990000000000002 ]
							}
, 							{
								"key" : 5367,
								"value" : [ 55.560000000000002 ]
							}
, 							{
								"key" : 5368,
								"value" : [ 55.630000000000003 ]
							}
, 							{
								"key" : 5369,
								"value" : [ 55.109999999999999 ]
							}
, 							{
								"key" : 5370,
								"value" : [ 54.899999999999999 ]
							}
, 							{
								"key" : 5371,
								"value" : [ 54.719999999999999 ]
							}
, 							{
								"key" : 5372,
								"value" : [ 54.549999999999997 ]
							}
, 							{
								"key" : 5373,
								"value" : [ 54.270000000000003 ]
							}
, 							{
								"key" : 5374,
								"value" : [ 54.270000000000003 ]
							}
, 							{
								"key" : 5375,
								"value" : [ 54.140000000000001 ]
							}
, 							{
								"key" : 5376,
								"value" : [ 54.159999999999997 ]
							}
, 							{
								"key" : 5377,
								"value" : [ 54.140000000000001 ]
							}
, 							{
								"key" : 5378,
								"value" : [ 53.829999999999998 ]
							}
, 							{
								"key" : 5379,
								"value" : [ 53.109999999999999 ]
							}
, 							{
								"key" : 5380,
								"value" : [ 52.740000000000002 ]
							}
, 							{
								"key" : 5381,
								"value" : [ 52.409999999999997 ]
							}
, 							{
								"key" : 5382,
								"value" : [ 52.659999999999997 ]
							}
, 							{
								"key" : 5383,
								"value" : [ 53.329999999999998 ]
							}
, 							{
								"key" : 5384,
								"value" : [ 54.119999999999997 ]
							}
, 							{
								"key" : 5385,
								"value" : [ 54.450000000000003 ]
							}
, 							{
								"key" : 5386,
								"value" : [ 55.219999999999999 ]
							}
, 							{
								"key" : 5387,
								"value" : [ 54.5 ]
							}
, 							{
								"key" : 5388,
								"value" : [ 51.189999999999998 ]
							}
, 							{
								"key" : 5389,
								"value" : [ 50.859999999999999 ]
							}
, 							{
								"key" : 5390,
								"value" : [ 52.43 ]
							}
, 							{
								"key" : 5391,
								"value" : [ 52.969999999999999 ]
							}
, 							{
								"key" : 5392,
								"value" : [ 52.68 ]
							}
, 							{
								"key" : 5393,
								"value" : [ 51.240000000000002 ]
							}
, 							{
								"key" : 5394,
								"value" : [ 49.509999999999998 ]
							}
, 							{
								"key" : 5395,
								"value" : [ 48.780000000000001 ]
							}
, 							{
								"key" : 5396,
								"value" : [ 47.890000000000001 ]
							}
, 							{
								"key" : 5397,
								"value" : [ 46.979999999999997 ]
							}
, 							{
								"key" : 5398,
								"value" : [ 46.380000000000003 ]
							}
, 							{
								"key" : 5399,
								"value" : [ 45.520000000000003 ]
							}
, 							{
								"key" : 5400,
								"value" : [ 45.009999999999998 ]
							}
, 							{
								"key" : 5401,
								"value" : [ 44.600000000000001 ]
							}
, 							{
								"key" : 5402,
								"value" : [ 44.240000000000002 ]
							}
, 							{
								"key" : 5403,
								"value" : [ 44.020000000000003 ]
							}
, 							{
								"key" : 5404,
								"value" : [ 43.840000000000003 ]
							}
, 							{
								"key" : 5405,
								"value" : [ 43.140000000000001 ]
							}
, 							{
								"key" : 5406,
								"value" : [ 42.479999999999997 ]
							}
, 							{
								"key" : 5407,
								"value" : [ 41.859999999999999 ]
							}
, 							{
								"key" : 5408,
								"value" : [ 41.140000000000001 ]
							}
, 							{
								"key" : 5409,
								"value" : [ 41.140000000000001 ]
							}
, 							{
								"key" : 5410,
								"value" : [ 41.270000000000003 ]
							}
, 							{
								"key" : 5411,
								"value" : [ 41.539999999999999 ]
							}
, 							{
								"key" : 5412,
								"value" : [ 41.490000000000002 ]
							}
, 							{
								"key" : 5413,
								"value" : [ 41.07 ]
							}
, 							{
								"key" : 5414,
								"value" : [ 40.640000000000001 ]
							}
, 							{
								"key" : 5415,
								"value" : [ 40.460000000000001 ]
							}
, 							{
								"key" : 5416,
								"value" : [ 40.060000000000002 ]
							}
, 							{
								"key" : 5417,
								"value" : [ 39.469999999999999 ]
							}
, 							{
								"key" : 5418,
								"value" : [ 39.039999999999999 ]
							}
, 							{
								"key" : 5419,
								"value" : [ 38.350000000000001 ]
							}
, 							{
								"key" : 5420,
								"value" : [ 37.990000000000002 ]
							}
, 							{
								"key" : 5421,
								"value" : [ 37.979999999999997 ]
							}
, 							{
								"key" : 5422,
								"value" : [ 38.159999999999997 ]
							}
, 							{
								"key" : 5423,
								"value" : [ 38.93 ]
							}
, 							{
								"key" : 5424,
								"value" : [ 39.289999999999999 ]
							}
, 							{
								"key" : 5425,
								"value" : [ 39.450000000000003 ]
							}
, 							{
								"key" : 5426,
								"value" : [ 39.130000000000003 ]
							}
, 							{
								"key" : 5427,
								"value" : [ 38.710000000000001 ]
							}
, 							{
								"key" : 5428,
								"value" : [ 38.619999999999997 ]
							}
, 							{
								"key" : 5429,
								"value" : [ 38.520000000000003 ]
							}
, 							{
								"key" : 5430,
								"value" : [ 38.299999999999997 ]
							}
, 							{
								"key" : 5431,
								"value" : [ 38.25 ]
							}
, 							{
								"key" : 5432,
								"value" : [ 38.409999999999997 ]
							}
, 							{
								"key" : 5433,
								"value" : [ 39.25 ]
							}
, 							{
								"key" : 5434,
								"value" : [ 40.280000000000001 ]
							}
, 							{
								"key" : 5435,
								"value" : [ 41.090000000000003 ]
							}
, 							{
								"key" : 5436,
								"value" : [ 42.060000000000002 ]
							}
, 							{
								"key" : 5437,
								"value" : [ 42.840000000000003 ]
							}
, 							{
								"key" : 5438,
								"value" : [ 43.18 ]
							}
, 							{
								"key" : 5439,
								"value" : [ 42.939999999999998 ]
							}
, 							{
								"key" : 5440,
								"value" : [ 42.420000000000002 ]
							}
, 							{
								"key" : 5441,
								"value" : [ 41.039999999999999 ]
							}
, 							{
								"key" : 5442,
								"value" : [ 39.920000000000002 ]
							}
, 							{
								"key" : 5443,
								"value" : [ 39.469999999999999 ]
							}
, 							{
								"key" : 5444,
								"value" : [ 39.359999999999999 ]
							}
, 							{
								"key" : 5445,
								"value" : [ 38.969999999999999 ]
							}
, 							{
								"key" : 5446,
								"value" : [ 38.549999999999997 ]
							}
, 							{
								"key" : 5447,
								"value" : [ 38.210000000000001 ]
							}
, 							{
								"key" : 5448,
								"value" : [ 37.979999999999997 ]
							}
, 							{
								"key" : 5449,
								"value" : [ 37.829999999999998 ]
							}
, 							{
								"key" : 5450,
								"value" : [ 37.740000000000002 ]
							}
, 							{
								"key" : 5451,
								"value" : [ 37.990000000000002 ]
							}
, 							{
								"key" : 5452,
								"value" : [ 38.25 ]
							}
, 							{
								"key" : 5453,
								"value" : [ 38.75 ]
							}
, 							{
								"key" : 5454,
								"value" : [ 39.539999999999999 ]
							}
, 							{
								"key" : 5455,
								"value" : [ 40.119999999999997 ]
							}
, 							{
								"key" : 5456,
								"value" : [ 40.509999999999998 ]
							}
, 							{
								"key" : 5457,
								"value" : [ 39.880000000000003 ]
							}
, 							{
								"key" : 5458,
								"value" : [ 39.219999999999999 ]
							}
, 							{
								"key" : 5459,
								"value" : [ 39.600000000000001 ]
							}
, 							{
								"key" : 5460,
								"value" : [ 40.369999999999997 ]
							}
, 							{
								"key" : 5461,
								"value" : [ 40.68 ]
							}
, 							{
								"key" : 5462,
								"value" : [ 40.640000000000001 ]
							}
, 							{
								"key" : 5463,
								"value" : [ 40.799999999999997 ]
							}
, 							{
								"key" : 5464,
								"value" : [ 40.57 ]
							}
, 							{
								"key" : 5465,
								"value" : [ 40.189999999999998 ]
							}
, 							{
								"key" : 5466,
								"value" : [ 39.920000000000002 ]
							}
, 							{
								"key" : 5467,
								"value" : [ 39.520000000000003 ]
							}
, 							{
								"key" : 5468,
								"value" : [ 39.219999999999999 ]
							}
, 							{
								"key" : 5469,
								"value" : [ 38.890000000000001 ]
							}
, 							{
								"key" : 5470,
								"value" : [ 38.229999999999997 ]
							}
, 							{
								"key" : 5471,
								"value" : [ 37.439999999999998 ]
							}
, 							{
								"key" : 5472,
								"value" : [ 36.57 ]
							}
, 							{
								"key" : 5473,
								"value" : [ 35.689999999999998 ]
							}
, 							{
								"key" : 5474,
								"value" : [ 35.009999999999998 ]
							}
, 							{
								"key" : 5475,
								"value" : [ 34.469999999999999 ]
							}
, 							{
								"key" : 5476,
								"value" : [ 34.030000000000001 ]
							}
, 							{
								"key" : 5477,
								"value" : [ 34.049999999999997 ]
							}
, 							{
								"key" : 5478,
								"value" : [ 34.25 ]
							}
, 							{
								"key" : 5479,
								"value" : [ 34.25 ]
							}
, 							{
								"key" : 5480,
								"value" : [ 34.5 ]
							}
, 							{
								"key" : 5481,
								"value" : [ 35.420000000000002 ]
							}
, 							{
								"key" : 5482,
								"value" : [ 35.829999999999998 ]
							}
, 							{
								"key" : 5483,
								"value" : [ 36.090000000000003 ]
							}
, 							{
								"key" : 5484,
								"value" : [ 36.32 ]
							}
, 							{
								"key" : 5485,
								"value" : [ 36.590000000000003 ]
							}
, 							{
								"key" : 5486,
								"value" : [ 36.590000000000003 ]
							}
, 							{
								"key" : 5487,
								"value" : [ 36.340000000000003 ]
							}
, 							{
								"key" : 5488,
								"value" : [ 36.189999999999998 ]
							}
, 							{
								"key" : 5489,
								"value" : [ 35.740000000000002 ]
							}
, 							{
								"key" : 5490,
								"value" : [ 35.649999999999999 ]
							}
, 							{
								"key" : 5491,
								"value" : [ 35.799999999999997 ]
							}
, 							{
								"key" : 5492,
								"value" : [ 36.030000000000001 ]
							}
, 							{
								"key" : 5493,
								"value" : [ 36.159999999999997 ]
							}
, 							{
								"key" : 5494,
								"value" : [ 36.590000000000003 ]
							}
, 							{
								"key" : 5495,
								"value" : [ 37.090000000000003 ]
							}
, 							{
								"key" : 5496,
								"value" : [ 37.579999999999998 ]
							}
, 							{
								"key" : 5497,
								"value" : [ 38.119999999999997 ]
							}
, 							{
								"key" : 5498,
								"value" : [ 38.520000000000003 ]
							}
, 							{
								"key" : 5499,
								"value" : [ 39.340000000000003 ]
							}
, 							{
								"key" : 5500,
								"value" : [ 39.920000000000002 ]
							}
, 							{
								"key" : 5501,
								"value" : [ 40.229999999999997 ]
							}
, 							{
								"key" : 5502,
								"value" : [ 40.409999999999997 ]
							}
, 							{
								"key" : 5503,
								"value" : [ 40.439999999999998 ]
							}
, 							{
								"key" : 5504,
								"value" : [ 40.960000000000001 ]
							}
, 							{
								"key" : 5505,
								"value" : [ 42.420000000000002 ]
							}
, 							{
								"key" : 5506,
								"value" : [ 42.960000000000001 ]
							}
, 							{
								"key" : 5507,
								"value" : [ 43.920000000000002 ]
							}
, 							{
								"key" : 5508,
								"value" : [ 45.140000000000001 ]
							}
, 							{
								"key" : 5509,
								"value" : [ 46.439999999999998 ]
							}
, 							{
								"key" : 5510,
								"value" : [ 47.57 ]
							}
, 							{
								"key" : 5511,
								"value" : [ 48.560000000000002 ]
							}
, 							{
								"key" : 5512,
								"value" : [ 49.119999999999997 ]
							}
, 							{
								"key" : 5513,
								"value" : [ 48.719999999999999 ]
							}
, 							{
								"key" : 5514,
								"value" : [ 48.420000000000002 ]
							}
, 							{
								"key" : 5515,
								"value" : [ 48.310000000000002 ]
							}
, 							{
								"key" : 5516,
								"value" : [ 48.090000000000003 ]
							}
, 							{
								"key" : 5517,
								"value" : [ 47.950000000000003 ]
							}
, 							{
								"key" : 5518,
								"value" : [ 48.420000000000002 ]
							}
, 							{
								"key" : 5519,
								"value" : [ 48.990000000000002 ]
							}
, 							{
								"key" : 5520,
								"value" : [ 50.200000000000003 ]
							}
, 							{
								"key" : 5521,
								"value" : [ 52.659999999999997 ]
							}
, 							{
								"key" : 5522,
								"value" : [ 54.590000000000003 ]
							}
, 							{
								"key" : 5523,
								"value" : [ 55.490000000000002 ]
							}
, 							{
								"key" : 5524,
								"value" : [ 56.840000000000003 ]
							}
, 							{
								"key" : 5525,
								"value" : [ 57.340000000000003 ]
							}
, 							{
								"key" : 5526,
								"value" : [ 57.219999999999999 ]
							}
, 							{
								"key" : 5527,
								"value" : [ 57.289999999999999 ]
							}
, 							{
								"key" : 5528,
								"value" : [ 57.200000000000003 ]
							}
, 							{
								"key" : 5529,
								"value" : [ 57.020000000000003 ]
							}
, 							{
								"key" : 5530,
								"value" : [ 56.82 ]
							}
, 							{
								"key" : 5531,
								"value" : [ 56.049999999999997 ]
							}
, 							{
								"key" : 5532,
								"value" : [ 54.590000000000003 ]
							}
, 							{
								"key" : 5533,
								"value" : [ 53.740000000000002 ]
							}
, 							{
								"key" : 5534,
								"value" : [ 53.560000000000002 ]
							}
, 							{
								"key" : 5535,
								"value" : [ 53.399999999999999 ]
							}
, 							{
								"key" : 5536,
								"value" : [ 52.829999999999998 ]
							}
, 							{
								"key" : 5537,
								"value" : [ 51.82 ]
							}
, 							{
								"key" : 5538,
								"value" : [ 50.520000000000003 ]
							}
, 							{
								"key" : 5539,
								"value" : [ 48.649999999999999 ]
							}
, 							{
								"key" : 5540,
								"value" : [ 47.07 ]
							}
, 							{
								"key" : 5541,
								"value" : [ 45.909999999999997 ]
							}
, 							{
								"key" : 5542,
								"value" : [ 44.869999999999997 ]
							}
, 							{
								"key" : 5543,
								"value" : [ 43.880000000000003 ]
							}
, 							{
								"key" : 5544,
								"value" : [ 43.020000000000003 ]
							}
, 							{
								"key" : 5545,
								"value" : [ 42.119999999999997 ]
							}
, 							{
								"key" : 5546,
								"value" : [ 41.07 ]
							}
, 							{
								"key" : 5547,
								"value" : [ 39.920000000000002 ]
							}
, 							{
								"key" : 5548,
								"value" : [ 39.020000000000003 ]
							}
, 							{
								"key" : 5549,
								"value" : [ 38.229999999999997 ]
							}
, 							{
								"key" : 5550,
								"value" : [ 37.18 ]
							}
, 							{
								"key" : 5551,
								"value" : [ 36.229999999999997 ]
							}
, 							{
								"key" : 5552,
								"value" : [ 35.490000000000002 ]
							}
, 							{
								"key" : 5553,
								"value" : [ 35.759999999999998 ]
							}
, 							{
								"key" : 5554,
								"value" : [ 36.409999999999997 ]
							}
, 							{
								"key" : 5555,
								"value" : [ 37.219999999999999 ]
							}
, 							{
								"key" : 5556,
								"value" : [ 37.630000000000003 ]
							}
, 							{
								"key" : 5557,
								"value" : [ 37.560000000000002 ]
							}
, 							{
								"key" : 5558,
								"value" : [ 37.439999999999998 ]
							}
, 							{
								"key" : 5559,
								"value" : [ 37.170000000000002 ]
							}
, 							{
								"key" : 5560,
								"value" : [ 36.990000000000002 ]
							}
, 							{
								"key" : 5561,
								"value" : [ 36.590000000000003 ]
							}
, 							{
								"key" : 5562,
								"value" : [ 36.340000000000003 ]
							}
, 							{
								"key" : 5563,
								"value" : [ 36.369999999999997 ]
							}
, 							{
								"key" : 5564,
								"value" : [ 36.270000000000003 ]
							}
, 							{
								"key" : 5565,
								"value" : [ 35.890000000000001 ]
							}
, 							{
								"key" : 5566,
								"value" : [ 35.909999999999997 ]
							}
, 							{
								"key" : 5567,
								"value" : [ 35.740000000000002 ]
							}
, 							{
								"key" : 5568,
								"value" : [ 35.420000000000002 ]
							}
, 							{
								"key" : 5569,
								"value" : [ 35.200000000000003 ]
							}
, 							{
								"key" : 5570,
								"value" : [ 34.829999999999998 ]
							}
, 							{
								"key" : 5571,
								"value" : [ 34.469999999999999 ]
							}
, 							{
								"key" : 5572,
								"value" : [ 34.07 ]
							}
, 							{
								"key" : 5573,
								"value" : [ 33.640000000000001 ]
							}
, 							{
								"key" : 5574,
								"value" : [ 33.369999999999997 ]
							}
, 							{
								"key" : 5575,
								"value" : [ 33.100000000000001 ]
							}
, 							{
								"key" : 5576,
								"value" : [ 33.399999999999999 ]
							}
, 							{
								"key" : 5577,
								"value" : [ 34.969999999999999 ]
							}
, 							{
								"key" : 5578,
								"value" : [ 36.009999999999998 ]
							}
, 							{
								"key" : 5579,
								"value" : [ 37.18 ]
							}
, 							{
								"key" : 5580,
								"value" : [ 38.170000000000002 ]
							}
, 							{
								"key" : 5581,
								"value" : [ 38.909999999999997 ]
							}
, 							{
								"key" : 5582,
								"value" : [ 39.579999999999998 ]
							}
, 							{
								"key" : 5583,
								"value" : [ 40.149999999999999 ]
							}
, 							{
								"key" : 5584,
								"value" : [ 40.390000000000001 ]
							}
, 							{
								"key" : 5585,
								"value" : [ 39.020000000000003 ]
							}
, 							{
								"key" : 5586,
								"value" : [ 39.240000000000002 ]
							}
, 							{
								"key" : 5587,
								"value" : [ 39.539999999999999 ]
							}
, 							{
								"key" : 5588,
								"value" : [ 39.600000000000001 ]
							}
, 							{
								"key" : 5589,
								"value" : [ 39.670000000000002 ]
							}
, 							{
								"key" : 5590,
								"value" : [ 39.780000000000001 ]
							}
, 							{
								"key" : 5591,
								"value" : [ 39.630000000000003 ]
							}
, 							{
								"key" : 5592,
								"value" : [ 39.380000000000003 ]
							}
, 							{
								"key" : 5593,
								"value" : [ 39.289999999999999 ]
							}
, 							{
								"key" : 5594,
								"value" : [ 39.07 ]
							}
, 							{
								"key" : 5595,
								"value" : [ 38.950000000000003 ]
							}
, 							{
								"key" : 5596,
								"value" : [ 39.039999999999999 ]
							}
, 							{
								"key" : 5597,
								"value" : [ 39.020000000000003 ]
							}
, 							{
								"key" : 5598,
								"value" : [ 38.609999999999999 ]
							}
, 							{
								"key" : 5599,
								"value" : [ 38.640000000000001 ]
							}
, 							{
								"key" : 5600,
								"value" : [ 38.799999999999997 ]
							}
, 							{
								"key" : 5601,
								"value" : [ 38.969999999999999 ]
							}
, 							{
								"key" : 5602,
								"value" : [ 39.450000000000003 ]
							}
, 							{
								"key" : 5603,
								"value" : [ 40.799999999999997 ]
							}
, 							{
								"key" : 5604,
								"value" : [ 43.109999999999999 ]
							}
, 							{
								"key" : 5605,
								"value" : [ 45.810000000000002 ]
							}
, 							{
								"key" : 5606,
								"value" : [ 48.270000000000003 ]
							}
, 							{
								"key" : 5607,
								"value" : [ 49.75 ]
							}
, 							{
								"key" : 5608,
								"value" : [ 49.710000000000001 ]
							}
, 							{
								"key" : 5609,
								"value" : [ 48.219999999999999 ]
							}
, 							{
								"key" : 5610,
								"value" : [ 47.770000000000003 ]
							}
, 							{
								"key" : 5611,
								"value" : [ 47.57 ]
							}
, 							{
								"key" : 5612,
								"value" : [ 47.119999999999997 ]
							}
, 							{
								"key" : 5613,
								"value" : [ 46.740000000000002 ]
							}
, 							{
								"key" : 5614,
								"value" : [ 46.240000000000002 ]
							}
, 							{
								"key" : 5615,
								"value" : [ 45.729999999999997 ]
							}
, 							{
								"key" : 5616,
								"value" : [ 45.159999999999997 ]
							}
, 							{
								"key" : 5617,
								"value" : [ 45.140000000000001 ]
							}
, 							{
								"key" : 5618,
								"value" : [ 44.759999999999998 ]
							}
, 							{
								"key" : 5619,
								"value" : [ 44.060000000000002 ]
							}
, 							{
								"key" : 5620,
								"value" : [ 43.289999999999999 ]
							}
, 							{
								"key" : 5621,
								"value" : [ 42.259999999999998 ]
							}
, 							{
								"key" : 5622,
								"value" : [ 41.609999999999999 ]
							}
, 							{
								"key" : 5623,
								"value" : [ 41.740000000000002 ]
							}
, 							{
								"key" : 5624,
								"value" : [ 41.789999999999999 ]
							}
, 							{
								"key" : 5625,
								"value" : [ 42.399999999999999 ]
							}
, 							{
								"key" : 5626,
								"value" : [ 43.18 ]
							}
, 							{
								"key" : 5627,
								"value" : [ 45.640000000000001 ]
							}
, 							{
								"key" : 5628,
								"value" : [ 49.979999999999997 ]
							}
, 							{
								"key" : 5629,
								"value" : [ 52.340000000000003 ]
							}
, 							{
								"key" : 5630,
								"value" : [ 53.259999999999998 ]
							}
, 							{
								"key" : 5631,
								"value" : [ 53.189999999999998 ]
							}
, 							{
								"key" : 5632,
								"value" : [ 52.340000000000003 ]
							}
, 							{
								"key" : 5633,
								"value" : [ 49.259999999999998 ]
							}
, 							{
								"key" : 5634,
								"value" : [ 44.170000000000002 ]
							}
, 							{
								"key" : 5635,
								"value" : [ 40.82 ]
							}
, 							{
								"key" : 5636,
								"value" : [ 37.670000000000002 ]
							}
, 							{
								"key" : 5637,
								"value" : [ 36.18 ]
							}
, 							{
								"key" : 5638,
								"value" : [ 35.399999999999999 ]
							}
, 							{
								"key" : 5639,
								"value" : [ 34.200000000000003 ]
							}
, 							{
								"key" : 5640,
								"value" : [ 33.369999999999997 ]
							}
, 							{
								"key" : 5641,
								"value" : [ 32.810000000000002 ]
							}
, 							{
								"key" : 5642,
								"value" : [ 32.380000000000003 ]
							}
, 							{
								"key" : 5643,
								"value" : [ 32.020000000000003 ]
							}
, 							{
								"key" : 5644,
								"value" : [ 31.440000000000001 ]
							}
, 							{
								"key" : 5645,
								"value" : [ 30.920000000000002 ]
							}
, 							{
								"key" : 5646,
								"value" : [ 30.510000000000002 ]
							}
, 							{
								"key" : 5647,
								"value" : [ 30.109999999999999 ]
							}
, 							{
								"key" : 5648,
								"value" : [ 30.379999999999999 ]
							}
, 							{
								"key" : 5649,
								"value" : [ 31.620000000000001 ]
							}
, 							{
								"key" : 5650,
								"value" : [ 32.700000000000003 ]
							}
, 							{
								"key" : 5651,
								"value" : [ 33.960000000000001 ]
							}
, 							{
								"key" : 5652,
								"value" : [ 35.259999999999998 ]
							}
, 							{
								"key" : 5653,
								"value" : [ 36.390000000000001 ]
							}
, 							{
								"key" : 5654,
								"value" : [ 37.200000000000003 ]
							}
, 							{
								"key" : 5655,
								"value" : [ 37.530000000000001 ]
							}
, 							{
								"key" : 5656,
								"value" : [ 37.090000000000003 ]
							}
, 							{
								"key" : 5657,
								"value" : [ 35.329999999999998 ]
							}
, 							{
								"key" : 5658,
								"value" : [ 34.109999999999999 ]
							}
, 							{
								"key" : 5659,
								"value" : [ 33.659999999999997 ]
							}
, 							{
								"key" : 5660,
								"value" : [ 33.530000000000001 ]
							}
, 							{
								"key" : 5661,
								"value" : [ 33.579999999999998 ]
							}
, 							{
								"key" : 5662,
								"value" : [ 33.619999999999997 ]
							}
, 							{
								"key" : 5663,
								"value" : [ 33.619999999999997 ]
							}
, 							{
								"key" : 5664,
								"value" : [ 33.619999999999997 ]
							}
, 							{
								"key" : 5665,
								"value" : [ 33.640000000000001 ]
							}
, 							{
								"key" : 5666,
								"value" : [ 33.659999999999997 ]
							}
, 							{
								"key" : 5667,
								"value" : [ 33.640000000000001 ]
							}
, 							{
								"key" : 5668,
								"value" : [ 33.619999999999997 ]
							}
, 							{
								"key" : 5669,
								"value" : [ 33.850000000000001 ]
							}
, 							{
								"key" : 5670,
								"value" : [ 34.18 ]
							}
, 							{
								"key" : 5671,
								"value" : [ 34.210000000000001 ]
							}
, 							{
								"key" : 5672,
								"value" : [ 34.07 ]
							}
, 							{
								"key" : 5673,
								"value" : [ 35.600000000000001 ]
							}
, 							{
								"key" : 5674,
								"value" : [ 37.090000000000003 ]
							}
, 							{
								"key" : 5675,
								"value" : [ 38.640000000000001 ]
							}
, 							{
								"key" : 5676,
								"value" : [ 39.969999999999999 ]
							}
, 							{
								"key" : 5677,
								"value" : [ 41.200000000000003 ]
							}
, 							{
								"key" : 5678,
								"value" : [ 42.170000000000002 ]
							}
, 							{
								"key" : 5679,
								"value" : [ 42.82 ]
							}
, 							{
								"key" : 5680,
								"value" : [ 42.399999999999999 ]
							}
, 							{
								"key" : 5681,
								"value" : [ 40.460000000000001 ]
							}
, 							{
								"key" : 5682,
								"value" : [ 40.149999999999999 ]
							}
, 							{
								"key" : 5683,
								"value" : [ 39.719999999999999 ]
							}
, 							{
								"key" : 5684,
								"value" : [ 38.969999999999999 ]
							}
, 							{
								"key" : 5685,
								"value" : [ 38.189999999999998 ]
							}
, 							{
								"key" : 5686,
								"value" : [ 37.670000000000002 ]
							}
, 							{
								"key" : 5687,
								"value" : [ 37.18 ]
							}
, 							{
								"key" : 5688,
								"value" : [ 36.789999999999999 ]
							}
, 							{
								"key" : 5689,
								"value" : [ 36.640000000000001 ]
							}
, 							{
								"key" : 5690,
								"value" : [ 36.520000000000003 ]
							}
, 							{
								"key" : 5691,
								"value" : [ 36.460000000000001 ]
							}
, 							{
								"key" : 5692,
								"value" : [ 36.640000000000001 ]
							}
, 							{
								"key" : 5693,
								"value" : [ 36.880000000000003 ]
							}
, 							{
								"key" : 5694,
								"value" : [ 37.240000000000002 ]
							}
, 							{
								"key" : 5695,
								"value" : [ 37.619999999999997 ]
							}
, 							{
								"key" : 5696,
								"value" : [ 37.939999999999998 ]
							}
, 							{
								"key" : 5697,
								"value" : [ 38.859999999999999 ]
							}
, 							{
								"key" : 5698,
								"value" : [ 40.840000000000003 ]
							}
, 							{
								"key" : 5699,
								"value" : [ 42.890000000000001 ]
							}
, 							{
								"key" : 5700,
								"value" : [ 44.740000000000002 ]
							}
, 							{
								"key" : 5701,
								"value" : [ 46.670000000000002 ]
							}
, 							{
								"key" : 5702,
								"value" : [ 48.43 ]
							}
, 							{
								"key" : 5703,
								"value" : [ 49.100000000000001 ]
							}
, 							{
								"key" : 5704,
								"value" : [ 49.189999999999998 ]
							}
, 							{
								"key" : 5705,
								"value" : [ 48.920000000000002 ]
							}
, 							{
								"key" : 5706,
								"value" : [ 48.670000000000002 ]
							}
, 							{
								"key" : 5707,
								"value" : [ 48.740000000000002 ]
							}
, 							{
								"key" : 5708,
								"value" : [ 48.780000000000001 ]
							}
, 							{
								"key" : 5709,
								"value" : [ 48.719999999999999 ]
							}
, 							{
								"key" : 5710,
								"value" : [ 48.469999999999999 ]
							}
, 							{
								"key" : 5711,
								"value" : [ 48.130000000000003 ]
							}
, 							{
								"key" : 5712,
								"value" : [ 47.770000000000003 ]
							}
, 							{
								"key" : 5713,
								"value" : [ 47.210000000000001 ]
							}
, 							{
								"key" : 5714,
								"value" : [ 47.119999999999997 ]
							}
, 							{
								"key" : 5715,
								"value" : [ 46.509999999999998 ]
							}
, 							{
								"key" : 5716,
								"value" : [ 45.770000000000003 ]
							}
, 							{
								"key" : 5717,
								"value" : [ 45.390000000000001 ]
							}
, 							{
								"key" : 5718,
								"value" : [ 45.5 ]
							}
, 							{
								"key" : 5719,
								"value" : [ 45.909999999999997 ]
							}
, 							{
								"key" : 5720,
								"value" : [ 45.969999999999999 ]
							}
, 							{
								"key" : 5721,
								"value" : [ 45.520000000000003 ]
							}
, 							{
								"key" : 5722,
								"value" : [ 44.289999999999999 ]
							}
, 							{
								"key" : 5723,
								"value" : [ 43.07 ]
							}
, 							{
								"key" : 5724,
								"value" : [ 42.119999999999997 ]
							}
, 							{
								"key" : 5725,
								"value" : [ 41.18 ]
							}
, 							{
								"key" : 5726,
								"value" : [ 40.689999999999998 ]
							}
, 							{
								"key" : 5727,
								"value" : [ 40.119999999999997 ]
							}
, 							{
								"key" : 5728,
								"value" : [ 38.710000000000001 ]
							}
, 							{
								"key" : 5729,
								"value" : [ 37.079999999999998 ]
							}
, 							{
								"key" : 5730,
								"value" : [ 35.509999999999998 ]
							}
, 							{
								"key" : 5731,
								"value" : [ 34.020000000000003 ]
							}
, 							{
								"key" : 5732,
								"value" : [ 33.060000000000002 ]
							}
, 							{
								"key" : 5733,
								"value" : [ 32.469999999999999 ]
							}
, 							{
								"key" : 5734,
								"value" : [ 31.640000000000001 ]
							}
, 							{
								"key" : 5735,
								"value" : [ 30.539999999999999 ]
							}
, 							{
								"key" : 5736,
								"value" : [ 29.43 ]
							}
, 							{
								"key" : 5737,
								"value" : [ 28.539999999999999 ]
							}
, 							{
								"key" : 5738,
								"value" : [ 28.059999999999999 ]
							}
, 							{
								"key" : 5739,
								"value" : [ 27.859999999999999 ]
							}
, 							{
								"key" : 5740,
								"value" : [ 27.52 ]
							}
, 							{
								"key" : 5741,
								"value" : [ 27.190000000000001 ]
							}
, 							{
								"key" : 5742,
								"value" : [ 27.280000000000001 ]
							}
, 							{
								"key" : 5743,
								"value" : [ 27.460000000000001 ]
							}
, 							{
								"key" : 5744,
								"value" : [ 27.68 ]
							}
, 							{
								"key" : 5745,
								"value" : [ 27.969999999999999 ]
							}
, 							{
								"key" : 5746,
								"value" : [ 28.629999999999999 ]
							}
, 							{
								"key" : 5747,
								"value" : [ 29.370000000000001 ]
							}
, 							{
								"key" : 5748,
								"value" : [ 30.239999999999998 ]
							}
, 							{
								"key" : 5749,
								"value" : [ 30.879999999999999 ]
							}
, 							{
								"key" : 5750,
								"value" : [ 31.030000000000001 ]
							}
, 							{
								"key" : 5751,
								"value" : [ 31.010000000000002 ]
							}
, 							{
								"key" : 5752,
								"value" : [ 30.989999999999998 ]
							}
, 							{
								"key" : 5753,
								"value" : [ 30.539999999999999 ]
							}
, 							{
								"key" : 5754,
								"value" : [ 30.809999999999999 ]
							}
, 							{
								"key" : 5755,
								"value" : [ 31.57 ]
							}
, 							{
								"key" : 5756,
								"value" : [ 31.890000000000001 ]
							}
, 							{
								"key" : 5757,
								"value" : [ 32.270000000000003 ]
							}
, 							{
								"key" : 5758,
								"value" : [ 32.590000000000003 ]
							}
, 							{
								"key" : 5759,
								"value" : [ 32.859999999999999 ]
							}
, 							{
								"key" : 5760,
								"value" : [ 33.119999999999997 ]
							}
, 							{
								"key" : 5761,
								"value" : [ 33.149999999999999 ]
							}
, 							{
								"key" : 5762,
								"value" : [ 33.189999999999998 ]
							}
, 							{
								"key" : 5763,
								"value" : [ 33.490000000000002 ]
							}
, 							{
								"key" : 5764,
								"value" : [ 34.030000000000001 ]
							}
, 							{
								"key" : 5765,
								"value" : [ 34.590000000000003 ]
							}
, 							{
								"key" : 5766,
								"value" : [ 34.920000000000002 ]
							}
, 							{
								"key" : 5767,
								"value" : [ 35.060000000000002 ]
							}
, 							{
								"key" : 5768,
								"value" : [ 35.109999999999999 ]
							}
, 							{
								"key" : 5769,
								"value" : [ 35.399999999999999 ]
							}
, 							{
								"key" : 5770,
								"value" : [ 35.869999999999997 ]
							}
, 							{
								"key" : 5771,
								"value" : [ 36.719999999999999 ]
							}
, 							{
								"key" : 5772,
								"value" : [ 38.030000000000001 ]
							}
, 							{
								"key" : 5773,
								"value" : [ 38.210000000000001 ]
							}
, 							{
								"key" : 5774,
								"value" : [ 39.43 ]
							}
, 							{
								"key" : 5775,
								"value" : [ 41.25 ]
							}
, 							{
								"key" : 5776,
								"value" : [ 42.009999999999998 ]
							}
, 							{
								"key" : 5777,
								"value" : [ 40.509999999999998 ]
							}
, 							{
								"key" : 5778,
								"value" : [ 40.659999999999997 ]
							}
, 							{
								"key" : 5779,
								"value" : [ 41.090000000000003 ]
							}
, 							{
								"key" : 5780,
								"value" : [ 39.759999999999998 ]
							}
, 							{
								"key" : 5781,
								"value" : [ 37.990000000000002 ]
							}
, 							{
								"key" : 5782,
								"value" : [ 37.270000000000003 ]
							}
, 							{
								"key" : 5783,
								"value" : [ 36.840000000000003 ]
							}
, 							{
								"key" : 5784,
								"value" : [ 36.520000000000003 ]
							}
, 							{
								"key" : 5785,
								"value" : [ 36.07 ]
							}
, 							{
								"key" : 5786,
								"value" : [ 35.640000000000001 ]
							}
, 							{
								"key" : 5787,
								"value" : [ 35.350000000000001 ]
							}
, 							{
								"key" : 5788,
								"value" : [ 35.289999999999999 ]
							}
, 							{
								"key" : 5789,
								"value" : [ 35.240000000000002 ]
							}
, 							{
								"key" : 5790,
								"value" : [ 35.009999999999998 ]
							}
, 							{
								"key" : 5791,
								"value" : [ 34.630000000000003 ]
							}
, 							{
								"key" : 5792,
								"value" : [ 34.5 ]
							}
, 							{
								"key" : 5793,
								"value" : [ 35.289999999999999 ]
							}
, 							{
								"key" : 5794,
								"value" : [ 36.25 ]
							}
, 							{
								"key" : 5795,
								"value" : [ 37.289999999999999 ]
							}
, 							{
								"key" : 5796,
								"value" : [ 38.280000000000001 ]
							}
, 							{
								"key" : 5797,
								"value" : [ 39.090000000000003 ]
							}
, 							{
								"key" : 5798,
								"value" : [ 39.689999999999998 ]
							}
, 							{
								"key" : 5799,
								"value" : [ 39.960000000000001 ]
							}
, 							{
								"key" : 5800,
								"value" : [ 39.539999999999999 ]
							}
, 							{
								"key" : 5801,
								"value" : [ 37.780000000000001 ]
							}
, 							{
								"key" : 5802,
								"value" : [ 36.700000000000003 ]
							}
, 							{
								"key" : 5803,
								"value" : [ 36.100000000000001 ]
							}
, 							{
								"key" : 5804,
								"value" : [ 35.619999999999997 ]
							}
, 							{
								"key" : 5805,
								"value" : [ 35.310000000000002 ]
							}
, 							{
								"key" : 5806,
								"value" : [ 35.039999999999999 ]
							}
, 							{
								"key" : 5807,
								"value" : [ 34.920000000000002 ]
							}
, 							{
								"key" : 5808,
								"value" : [ 34.880000000000003 ]
							}
, 							{
								"key" : 5809,
								"value" : [ 34.93 ]
							}
, 							{
								"key" : 5810,
								"value" : [ 34.880000000000003 ]
							}
, 							{
								"key" : 5811,
								"value" : [ 34.810000000000002 ]
							}
, 							{
								"key" : 5812,
								"value" : [ 34.880000000000003 ]
							}
, 							{
								"key" : 5813,
								"value" : [ 34.659999999999997 ]
							}
, 							{
								"key" : 5814,
								"value" : [ 34.479999999999997 ]
							}
, 							{
								"key" : 5815,
								"value" : [ 34.450000000000003 ]
							}
, 							{
								"key" : 5816,
								"value" : [ 34.880000000000003 ]
							}
, 							{
								"key" : 5817,
								"value" : [ 36.359999999999999 ]
							}
, 							{
								"key" : 5818,
								"value" : [ 37.359999999999999 ]
							}
, 							{
								"key" : 5819,
								"value" : [ 38.590000000000003 ]
							}
, 							{
								"key" : 5820,
								"value" : [ 39.789999999999999 ]
							}
, 							{
								"key" : 5821,
								"value" : [ 40.960000000000001 ]
							}
, 							{
								"key" : 5822,
								"value" : [ 41.700000000000003 ]
							}
, 							{
								"key" : 5823,
								"value" : [ 41.219999999999999 ]
							}
, 							{
								"key" : 5824,
								"value" : [ 39.340000000000003 ]
							}
, 							{
								"key" : 5825,
								"value" : [ 38.439999999999998 ]
							}
, 							{
								"key" : 5826,
								"value" : [ 39.240000000000002 ]
							}
, 							{
								"key" : 5827,
								"value" : [ 39.689999999999998 ]
							}
, 							{
								"key" : 5828,
								"value" : [ 39.159999999999997 ]
							}
, 							{
								"key" : 5829,
								"value" : [ 38.770000000000003 ]
							}
, 							{
								"key" : 5830,
								"value" : [ 38.030000000000001 ]
							}
, 							{
								"key" : 5831,
								"value" : [ 37.020000000000003 ]
							}
, 							{
								"key" : 5832,
								"value" : [ 37.259999999999998 ]
							}
, 							{
								"key" : 5833,
								"value" : [ 38.789999999999999 ]
							}
, 							{
								"key" : 5834,
								"value" : [ 39.420000000000002 ]
							}
, 							{
								"key" : 5835,
								"value" : [ 39.149999999999999 ]
							}
, 							{
								"key" : 5836,
								"value" : [ 38.340000000000003 ]
							}
, 							{
								"key" : 5837,
								"value" : [ 37.869999999999997 ]
							}
, 							{
								"key" : 5838,
								"value" : [ 37.579999999999998 ]
							}
, 							{
								"key" : 5839,
								"value" : [ 36.859999999999999 ]
							}
, 							{
								"key" : 5840,
								"value" : [ 36.520000000000003 ]
							}
, 							{
								"key" : 5841,
								"value" : [ 38.25 ]
							}
, 							{
								"key" : 5842,
								"value" : [ 39.689999999999998 ]
							}
, 							{
								"key" : 5843,
								"value" : [ 42.100000000000001 ]
							}
, 							{
								"key" : 5844,
								"value" : [ 44.710000000000001 ]
							}
, 							{
								"key" : 5845,
								"value" : [ 47.299999999999997 ]
							}
, 							{
								"key" : 5846,
								"value" : [ 49.009999999999998 ]
							}
, 							{
								"key" : 5847,
								"value" : [ 49.240000000000002 ]
							}
, 							{
								"key" : 5848,
								"value" : [ 47.68 ]
							}
, 							{
								"key" : 5849,
								"value" : [ 44.079999999999998 ]
							}
, 							{
								"key" : 5850,
								"value" : [ 42.399999999999999 ]
							}
, 							{
								"key" : 5851,
								"value" : [ 41.520000000000003 ]
							}
, 							{
								"key" : 5852,
								"value" : [ 41.039999999999999 ]
							}
, 							{
								"key" : 5853,
								"value" : [ 40.82 ]
							}
, 							{
								"key" : 5854,
								"value" : [ 41.25 ]
							}
, 							{
								"key" : 5855,
								"value" : [ 41.990000000000002 ]
							}
, 							{
								"key" : 5856,
								"value" : [ 42.439999999999998 ]
							}
, 							{
								"key" : 5857,
								"value" : [ 42.600000000000001 ]
							}
, 							{
								"key" : 5858,
								"value" : [ 42.439999999999998 ]
							}
, 							{
								"key" : 5859,
								"value" : [ 42.399999999999999 ]
							}
, 							{
								"key" : 5860,
								"value" : [ 42.149999999999999 ]
							}
, 							{
								"key" : 5861,
								"value" : [ 41.270000000000003 ]
							}
, 							{
								"key" : 5862,
								"value" : [ 41.270000000000003 ]
							}
, 							{
								"key" : 5863,
								"value" : [ 41.020000000000003 ]
							}
, 							{
								"key" : 5864,
								"value" : [ 40.5 ]
							}
, 							{
								"key" : 5865,
								"value" : [ 39.880000000000003 ]
							}
, 							{
								"key" : 5866,
								"value" : [ 40.979999999999997 ]
							}
, 							{
								"key" : 5867,
								"value" : [ 43.07 ]
							}
, 							{
								"key" : 5868,
								"value" : [ 44.560000000000002 ]
							}
, 							{
								"key" : 5869,
								"value" : [ 45.359999999999999 ]
							}
, 							{
								"key" : 5870,
								"value" : [ 46.020000000000003 ]
							}
, 							{
								"key" : 5871,
								"value" : [ 46.539999999999999 ]
							}
, 							{
								"key" : 5872,
								"value" : [ 46.670000000000002 ]
							}
, 							{
								"key" : 5873,
								"value" : [ 46.380000000000003 ]
							}
, 							{
								"key" : 5874,
								"value" : [ 46.960000000000001 ]
							}
, 							{
								"key" : 5875,
								"value" : [ 46.719999999999999 ]
							}
, 							{
								"key" : 5876,
								"value" : [ 45.719999999999999 ]
							}
, 							{
								"key" : 5877,
								"value" : [ 45.18 ]
							}
, 							{
								"key" : 5878,
								"value" : [ 45.140000000000001 ]
							}
, 							{
								"key" : 5879,
								"value" : [ 44.710000000000001 ]
							}
, 							{
								"key" : 5880,
								"value" : [ 45.270000000000003 ]
							}
, 							{
								"key" : 5881,
								"value" : [ 45.460000000000001 ]
							}
, 							{
								"key" : 5882,
								"value" : [ 46.740000000000002 ]
							}
, 							{
								"key" : 5883,
								"value" : [ 46.539999999999999 ]
							}
, 							{
								"key" : 5884,
								"value" : [ 46.289999999999999 ]
							}
, 							{
								"key" : 5885,
								"value" : [ 46.670000000000002 ]
							}
, 							{
								"key" : 5886,
								"value" : [ 46.829999999999998 ]
							}
, 							{
								"key" : 5887,
								"value" : [ 47.229999999999997 ]
							}
, 							{
								"key" : 5888,
								"value" : [ 47.369999999999997 ]
							}
, 							{
								"key" : 5889,
								"value" : [ 48.329999999999998 ]
							}
, 							{
								"key" : 5890,
								"value" : [ 49.689999999999998 ]
							}
, 							{
								"key" : 5891,
								"value" : [ 50.520000000000003 ]
							}
, 							{
								"key" : 5892,
								"value" : [ 50.539999999999999 ]
							}
, 							{
								"key" : 5893,
								"value" : [ 50.590000000000003 ]
							}
, 							{
								"key" : 5894,
								"value" : [ 50.609999999999999 ]
							}
, 							{
								"key" : 5895,
								"value" : [ 50.289999999999999 ]
							}
, 							{
								"key" : 5896,
								"value" : [ 49.240000000000002 ]
							}
, 							{
								"key" : 5897,
								"value" : [ 46.920000000000002 ]
							}
, 							{
								"key" : 5898,
								"value" : [ 45.549999999999997 ]
							}
, 							{
								"key" : 5899,
								"value" : [ 44.600000000000001 ]
							}
, 							{
								"key" : 5900,
								"value" : [ 43.920000000000002 ]
							}
, 							{
								"key" : 5901,
								"value" : [ 43.590000000000003 ]
							}
, 							{
								"key" : 5902,
								"value" : [ 43.810000000000002 ]
							}
, 							{
								"key" : 5903,
								"value" : [ 44.149999999999999 ]
							}
, 							{
								"key" : 5904,
								"value" : [ 44.549999999999997 ]
							}
, 							{
								"key" : 5905,
								"value" : [ 44.780000000000001 ]
							}
, 							{
								"key" : 5906,
								"value" : [ 44.530000000000001 ]
							}
, 							{
								"key" : 5907,
								"value" : [ 41.789999999999999 ]
							}
, 							{
								"key" : 5908,
								"value" : [ 41.140000000000001 ]
							}
, 							{
								"key" : 5909,
								"value" : [ 41.090000000000003 ]
							}
, 							{
								"key" : 5910,
								"value" : [ 40.950000000000003 ]
							}
, 							{
								"key" : 5911,
								"value" : [ 40.960000000000001 ]
							}
, 							{
								"key" : 5912,
								"value" : [ 41.200000000000003 ]
							}
, 							{
								"key" : 5913,
								"value" : [ 42.210000000000001 ]
							}
, 							{
								"key" : 5914,
								"value" : [ 42.799999999999997 ]
							}
, 							{
								"key" : 5915,
								"value" : [ 43.789999999999999 ]
							}
, 							{
								"key" : 5916,
								"value" : [ 44.909999999999997 ]
							}
, 							{
								"key" : 5917,
								"value" : [ 45.719999999999999 ]
							}
, 							{
								"key" : 5918,
								"value" : [ 45.909999999999997 ]
							}
, 							{
								"key" : 5919,
								"value" : [ 45.719999999999999 ]
							}
, 							{
								"key" : 5920,
								"value" : [ 45.07 ]
							}
, 							{
								"key" : 5921,
								"value" : [ 43.740000000000002 ]
							}
, 							{
								"key" : 5922,
								"value" : [ 43.0 ]
							}
, 							{
								"key" : 5923,
								"value" : [ 42.759999999999998 ]
							}
, 							{
								"key" : 5924,
								"value" : [ 42.670000000000002 ]
							}
, 							{
								"key" : 5925,
								"value" : [ 42.100000000000001 ]
							}
, 							{
								"key" : 5926,
								"value" : [ 41.520000000000003 ]
							}
, 							{
								"key" : 5927,
								"value" : [ 41.25 ]
							}
, 							{
								"key" : 5928,
								"value" : [ 40.82 ]
							}
, 							{
								"key" : 5929,
								"value" : [ 39.869999999999997 ]
							}
, 							{
								"key" : 5930,
								"value" : [ 38.969999999999999 ]
							}
, 							{
								"key" : 5931,
								"value" : [ 38.390000000000001 ]
							}
, 							{
								"key" : 5932,
								"value" : [ 37.799999999999997 ]
							}
, 							{
								"key" : 5933,
								"value" : [ 37.359999999999999 ]
							}
, 							{
								"key" : 5934,
								"value" : [ 36.590000000000003 ]
							}
, 							{
								"key" : 5935,
								"value" : [ 36.049999999999997 ]
							}
, 							{
								"key" : 5936,
								"value" : [ 35.82 ]
							}
, 							{
								"key" : 5937,
								"value" : [ 37.539999999999999 ]
							}
, 							{
								"key" : 5938,
								"value" : [ 38.859999999999999 ]
							}
, 							{
								"key" : 5939,
								"value" : [ 40.060000000000002 ]
							}
, 							{
								"key" : 5940,
								"value" : [ 40.82 ]
							}
, 							{
								"key" : 5941,
								"value" : [ 41.340000000000003 ]
							}
, 							{
								"key" : 5942,
								"value" : [ 41.670000000000002 ]
							}
, 							{
								"key" : 5943,
								"value" : [ 41.670000000000002 ]
							}
, 							{
								"key" : 5944,
								"value" : [ 41.090000000000003 ]
							}
, 							{
								"key" : 5945,
								"value" : [ 39.630000000000003 ]
							}
, 							{
								"key" : 5946,
								"value" : [ 39.020000000000003 ]
							}
, 							{
								"key" : 5947,
								"value" : [ 38.609999999999999 ]
							}
, 							{
								"key" : 5948,
								"value" : [ 38.520000000000003 ]
							}
, 							{
								"key" : 5949,
								"value" : [ 38.439999999999998 ]
							}
, 							{
								"key" : 5950,
								"value" : [ 38.710000000000001 ]
							}
, 							{
								"key" : 5951,
								"value" : [ 38.840000000000003 ]
							}
, 							{
								"key" : 5952,
								"value" : [ 38.950000000000003 ]
							}
, 							{
								"key" : 5953,
								"value" : [ 39.270000000000003 ]
							}
, 							{
								"key" : 5954,
								"value" : [ 39.700000000000003 ]
							}
, 							{
								"key" : 5955,
								"value" : [ 40.140000000000001 ]
							}
, 							{
								"key" : 5956,
								"value" : [ 40.409999999999997 ]
							}
, 							{
								"key" : 5957,
								"value" : [ 40.68 ]
							}
, 							{
								"key" : 5958,
								"value" : [ 40.640000000000001 ]
							}
, 							{
								"key" : 5959,
								"value" : [ 40.240000000000002 ]
							}
, 							{
								"key" : 5960,
								"value" : [ 39.969999999999999 ]
							}
, 							{
								"key" : 5961,
								"value" : [ 39.759999999999998 ]
							}
, 							{
								"key" : 5962,
								"value" : [ 38.340000000000003 ]
							}
, 							{
								"key" : 5963,
								"value" : [ 36.729999999999997 ]
							}
, 							{
								"key" : 5964,
								"value" : [ 36.640000000000001 ]
							}
, 							{
								"key" : 5965,
								"value" : [ 36.719999999999999 ]
							}
, 							{
								"key" : 5966,
								"value" : [ 37.560000000000002 ]
							}
, 							{
								"key" : 5967,
								"value" : [ 39.240000000000002 ]
							}
, 							{
								"key" : 5968,
								"value" : [ 40.119999999999997 ]
							}
, 							{
								"key" : 5969,
								"value" : [ 40.600000000000001 ]
							}
, 							{
								"key" : 5970,
								"value" : [ 41.200000000000003 ]
							}
, 							{
								"key" : 5971,
								"value" : [ 41.560000000000002 ]
							}
, 							{
								"key" : 5972,
								"value" : [ 41.520000000000003 ]
							}
, 							{
								"key" : 5973,
								"value" : [ 41.159999999999997 ]
							}
, 							{
								"key" : 5974,
								"value" : [ 40.600000000000001 ]
							}
, 							{
								"key" : 5975,
								"value" : [ 39.920000000000002 ]
							}
, 							{
								"key" : 5976,
								"value" : [ 39.359999999999999 ]
							}
, 							{
								"key" : 5977,
								"value" : [ 39.18 ]
							}
, 							{
								"key" : 5978,
								"value" : [ 39.25 ]
							}
, 							{
								"key" : 5979,
								"value" : [ 38.479999999999997 ]
							}
, 							{
								"key" : 5980,
								"value" : [ 35.640000000000001 ]
							}
, 							{
								"key" : 5981,
								"value" : [ 33.869999999999997 ]
							}
, 							{
								"key" : 5982,
								"value" : [ 32.829999999999998 ]
							}
, 							{
								"key" : 5983,
								"value" : [ 32.649999999999999 ]
							}
, 							{
								"key" : 5984,
								"value" : [ 32.920000000000002 ]
							}
, 							{
								"key" : 5985,
								"value" : [ 33.259999999999998 ]
							}
, 							{
								"key" : 5986,
								"value" : [ 33.030000000000001 ]
							}
, 							{
								"key" : 5987,
								"value" : [ 32.359999999999999 ]
							}
, 							{
								"key" : 5988,
								"value" : [ 32.469999999999999 ]
							}
, 							{
								"key" : 5989,
								"value" : [ 33.310000000000002 ]
							}
, 							{
								"key" : 5990,
								"value" : [ 33.369999999999997 ]
							}
, 							{
								"key" : 5991,
								"value" : [ 32.289999999999999 ]
							}
, 							{
								"key" : 5992,
								"value" : [ 30.539999999999999 ]
							}
, 							{
								"key" : 5993,
								"value" : [ 28.440000000000001 ]
							}
, 							{
								"key" : 5994,
								"value" : [ 26.649999999999999 ]
							}
, 							{
								"key" : 5995,
								"value" : [ 25.27 ]
							}
, 							{
								"key" : 5996,
								"value" : [ 24.190000000000001 ]
							}
, 							{
								"key" : 5997,
								"value" : [ 23.469999999999999 ]
							}
, 							{
								"key" : 5998,
								"value" : [ 22.82 ]
							}
, 							{
								"key" : 5999,
								"value" : [ 22.170000000000002 ]
							}
, 							{
								"key" : 6000,
								"value" : [ 21.609999999999999 ]
							}
, 							{
								"key" : 6001,
								"value" : [ 21.219999999999999 ]
							}
, 							{
								"key" : 6002,
								"value" : [ 21.149999999999999 ]
							}
, 							{
								"key" : 6003,
								"value" : [ 21.18 ]
							}
, 							{
								"key" : 6004,
								"value" : [ 21.219999999999999 ]
							}
, 							{
								"key" : 6005,
								"value" : [ 21.329999999999998 ]
							}
, 							{
								"key" : 6006,
								"value" : [ 21.379999999999999 ]
							}
, 							{
								"key" : 6007,
								"value" : [ 21.43 ]
							}
, 							{
								"key" : 6008,
								"value" : [ 21.34 ]
							}
, 							{
								"key" : 6009,
								"value" : [ 21.489999999999998 ]
							}
, 							{
								"key" : 6010,
								"value" : [ 22.32 ]
							}
, 							{
								"key" : 6011,
								"value" : [ 23.359999999999999 ]
							}
, 							{
								"key" : 6012,
								"value" : [ 24.190000000000001 ]
							}
, 							{
								"key" : 6013,
								"value" : [ 25.02 ]
							}
, 							{
								"key" : 6014,
								"value" : [ 25.829999999999998 ]
							}
, 							{
								"key" : 6015,
								"value" : [ 26.420000000000002 ]
							}
, 							{
								"key" : 6016,
								"value" : [ 27.100000000000001 ]
							}
, 							{
								"key" : 6017,
								"value" : [ 27.91 ]
							}
, 							{
								"key" : 6018,
								"value" : [ 28.649999999999999 ]
							}
, 							{
								"key" : 6019,
								"value" : [ 28.960000000000001 ]
							}
, 							{
								"key" : 6020,
								"value" : [ 28.920000000000002 ]
							}
, 							{
								"key" : 6021,
								"value" : [ 28.670000000000002 ]
							}
, 							{
								"key" : 6022,
								"value" : [ 28.809999999999999 ]
							}
, 							{
								"key" : 6023,
								"value" : [ 29.140000000000001 ]
							}
, 							{
								"key" : 6024,
								"value" : [ 28.98 ]
							}
, 							{
								"key" : 6025,
								"value" : [ 28.559999999999999 ]
							}
, 							{
								"key" : 6026,
								"value" : [ 28.489999999999998 ]
							}
, 							{
								"key" : 6027,
								"value" : [ 28.870000000000001 ]
							}
, 							{
								"key" : 6028,
								"value" : [ 29.170000000000002 ]
							}
, 							{
								"key" : 6029,
								"value" : [ 29.260000000000002 ]
							}
, 							{
								"key" : 6030,
								"value" : [ 29.280000000000001 ]
							}
, 							{
								"key" : 6031,
								"value" : [ 29.5 ]
							}
, 							{
								"key" : 6032,
								"value" : [ 29.859999999999999 ]
							}
, 							{
								"key" : 6033,
								"value" : [ 30.379999999999999 ]
							}
, 							{
								"key" : 6034,
								"value" : [ 30.920000000000002 ]
							}
, 							{
								"key" : 6035,
								"value" : [ 31.77 ]
							}
, 							{
								"key" : 6036,
								"value" : [ 32.700000000000003 ]
							}
, 							{
								"key" : 6037,
								"value" : [ 33.369999999999997 ]
							}
, 							{
								"key" : 6038,
								"value" : [ 33.780000000000001 ]
							}
, 							{
								"key" : 6039,
								"value" : [ 33.850000000000001 ]
							}
, 							{
								"key" : 6040,
								"value" : [ 33.369999999999997 ]
							}
, 							{
								"key" : 6041,
								"value" : [ 32.539999999999999 ]
							}
, 							{
								"key" : 6042,
								"value" : [ 31.82 ]
							}
, 							{
								"key" : 6043,
								"value" : [ 31.82 ]
							}
, 							{
								"key" : 6044,
								"value" : [ 32.07 ]
							}
, 							{
								"key" : 6045,
								"value" : [ 32.380000000000003 ]
							}
, 							{
								"key" : 6046,
								"value" : [ 32.469999999999999 ]
							}
, 							{
								"key" : 6047,
								"value" : [ 32.340000000000003 ]
							}
, 							{
								"key" : 6048,
								"value" : [ 32.5 ]
							}
, 							{
								"key" : 6049,
								"value" : [ 32.950000000000003 ]
							}
, 							{
								"key" : 6050,
								"value" : [ 33.219999999999999 ]
							}
, 							{
								"key" : 6051,
								"value" : [ 33.479999999999997 ]
							}
, 							{
								"key" : 6052,
								"value" : [ 33.840000000000003 ]
							}
, 							{
								"key" : 6053,
								"value" : [ 34.140000000000001 ]
							}
, 							{
								"key" : 6054,
								"value" : [ 34.5 ]
							}
, 							{
								"key" : 6055,
								"value" : [ 35.009999999999998 ]
							}
, 							{
								"key" : 6056,
								"value" : [ 35.490000000000002 ]
							}
, 							{
								"key" : 6057,
								"value" : [ 36.25 ]
							}
, 							{
								"key" : 6058,
								"value" : [ 37.359999999999999 ]
							}
, 							{
								"key" : 6059,
								"value" : [ 38.840000000000003 ]
							}
, 							{
								"key" : 6060,
								"value" : [ 41.18 ]
							}
, 							{
								"key" : 6061,
								"value" : [ 42.130000000000003 ]
							}
, 							{
								"key" : 6062,
								"value" : [ 42.039999999999999 ]
							}
, 							{
								"key" : 6063,
								"value" : [ 42.149999999999999 ]
							}
, 							{
								"key" : 6064,
								"value" : [ 42.240000000000002 ]
							}
, 							{
								"key" : 6065,
								"value" : [ 41.609999999999999 ]
							}
, 							{
								"key" : 6066,
								"value" : [ 41.340000000000003 ]
							}
, 							{
								"key" : 6067,
								"value" : [ 41.490000000000002 ]
							}
, 							{
								"key" : 6068,
								"value" : [ 41.539999999999999 ]
							}
, 							{
								"key" : 6069,
								"value" : [ 41.43 ]
							}
, 							{
								"key" : 6070,
								"value" : [ 40.979999999999997 ]
							}
, 							{
								"key" : 6071,
								"value" : [ 40.149999999999999 ]
							}
, 							{
								"key" : 6072,
								"value" : [ 40.060000000000002 ]
							}
, 							{
								"key" : 6073,
								"value" : [ 40.100000000000001 ]
							}
, 							{
								"key" : 6074,
								"value" : [ 39.829999999999998 ]
							}
, 							{
								"key" : 6075,
								"value" : [ 39.159999999999997 ]
							}
, 							{
								"key" : 6076,
								"value" : [ 38.890000000000001 ]
							}
, 							{
								"key" : 6077,
								"value" : [ 39.0 ]
							}
, 							{
								"key" : 6078,
								"value" : [ 39.490000000000002 ]
							}
, 							{
								"key" : 6079,
								"value" : [ 39.740000000000002 ]
							}
, 							{
								"key" : 6080,
								"value" : [ 40.229999999999997 ]
							}
, 							{
								"key" : 6081,
								"value" : [ 42.079999999999998 ]
							}
, 							{
								"key" : 6082,
								"value" : [ 43.539999999999999 ]
							}
, 							{
								"key" : 6083,
								"value" : [ 44.009999999999998 ]
							}
, 							{
								"key" : 6084,
								"value" : [ 44.289999999999999 ]
							}
, 							{
								"key" : 6085,
								"value" : [ 44.460000000000001 ]
							}
, 							{
								"key" : 6086,
								"value" : [ 44.439999999999998 ]
							}
, 							{
								"key" : 6087,
								"value" : [ 44.280000000000001 ]
							}
, 							{
								"key" : 6088,
								"value" : [ 44.399999999999999 ]
							}
, 							{
								"key" : 6089,
								"value" : [ 44.130000000000003 ]
							}
, 							{
								"key" : 6090,
								"value" : [ 43.789999999999999 ]
							}
, 							{
								"key" : 6091,
								"value" : [ 43.810000000000002 ]
							}
, 							{
								"key" : 6092,
								"value" : [ 45.090000000000003 ]
							}
, 							{
								"key" : 6093,
								"value" : [ 46.920000000000002 ]
							}
, 							{
								"key" : 6094,
								"value" : [ 49.140000000000001 ]
							}
, 							{
								"key" : 6095,
								"value" : [ 50.719999999999999 ]
							}
, 							{
								"key" : 6096,
								"value" : [ 51.759999999999998 ]
							}
, 							{
								"key" : 6097,
								"value" : [ 53.509999999999998 ]
							}
, 							{
								"key" : 6098,
								"value" : [ 53.530000000000001 ]
							}
, 							{
								"key" : 6099,
								"value" : [ 53.079999999999998 ]
							}
, 							{
								"key" : 6100,
								"value" : [ 52.32 ]
							}
, 							{
								"key" : 6101,
								"value" : [ 47.93 ]
							}
, 							{
								"key" : 6102,
								"value" : [ 40.640000000000001 ]
							}
, 							{
								"key" : 6103,
								"value" : [ 36.280000000000001 ]
							}
, 							{
								"key" : 6104,
								"value" : [ 34.75 ]
							}
, 							{
								"key" : 6105,
								"value" : [ 34.409999999999997 ]
							}
, 							{
								"key" : 6106,
								"value" : [ 33.939999999999998 ]
							}
, 							{
								"key" : 6107,
								"value" : [ 34.740000000000002 ]
							}
, 							{
								"key" : 6108,
								"value" : [ 36.369999999999997 ]
							}
, 							{
								"key" : 6109,
								"value" : [ 38.170000000000002 ]
							}
, 							{
								"key" : 6110,
								"value" : [ 39.609999999999999 ]
							}
, 							{
								"key" : 6111,
								"value" : [ 40.5 ]
							}
, 							{
								"key" : 6112,
								"value" : [ 40.210000000000001 ]
							}
, 							{
								"key" : 6113,
								"value" : [ 38.640000000000001 ]
							}
, 							{
								"key" : 6114,
								"value" : [ 37.170000000000002 ]
							}
, 							{
								"key" : 6115,
								"value" : [ 36.009999999999998 ]
							}
, 							{
								"key" : 6116,
								"value" : [ 35.329999999999998 ]
							}
, 							{
								"key" : 6117,
								"value" : [ 34.719999999999999 ]
							}
, 							{
								"key" : 6118,
								"value" : [ 33.939999999999998 ]
							}
, 							{
								"key" : 6119,
								"value" : [ 33.189999999999998 ]
							}
, 							{
								"key" : 6120,
								"value" : [ 32.740000000000002 ]
							}
, 							{
								"key" : 6121,
								"value" : [ 32.609999999999999 ]
							}
, 							{
								"key" : 6122,
								"value" : [ 32.700000000000003 ]
							}
, 							{
								"key" : 6123,
								"value" : [ 33.350000000000001 ]
							}
, 							{
								"key" : 6124,
								"value" : [ 34.090000000000003 ]
							}
, 							{
								"key" : 6125,
								"value" : [ 34.090000000000003 ]
							}
, 							{
								"key" : 6126,
								"value" : [ 33.890000000000001 ]
							}
, 							{
								"key" : 6127,
								"value" : [ 33.759999999999998 ]
							}
, 							{
								"key" : 6128,
								"value" : [ 33.619999999999997 ]
							}
, 							{
								"key" : 6129,
								"value" : [ 34.770000000000003 ]
							}
, 							{
								"key" : 6130,
								"value" : [ 37.270000000000003 ]
							}
, 							{
								"key" : 6131,
								"value" : [ 40.640000000000001 ]
							}
, 							{
								"key" : 6132,
								"value" : [ 43.270000000000003 ]
							}
, 							{
								"key" : 6133,
								"value" : [ 45.340000000000003 ]
							}
, 							{
								"key" : 6134,
								"value" : [ 46.439999999999998 ]
							}
, 							{
								"key" : 6135,
								"value" : [ 46.710000000000001 ]
							}
, 							{
								"key" : 6136,
								"value" : [ 45.840000000000003 ]
							}
, 							{
								"key" : 6137,
								"value" : [ 43.880000000000003 ]
							}
, 							{
								"key" : 6138,
								"value" : [ 42.280000000000001 ]
							}
, 							{
								"key" : 6139,
								"value" : [ 41.0 ]
							}
, 							{
								"key" : 6140,
								"value" : [ 40.299999999999997 ]
							}
, 							{
								"key" : 6141,
								"value" : [ 40.079999999999998 ]
							}
, 							{
								"key" : 6142,
								"value" : [ 39.920000000000002 ]
							}
, 							{
								"key" : 6143,
								"value" : [ 39.609999999999999 ]
							}
, 							{
								"key" : 6144,
								"value" : [ 38.909999999999997 ]
							}
, 							{
								"key" : 6145,
								"value" : [ 37.890000000000001 ]
							}
, 							{
								"key" : 6146,
								"value" : [ 37.219999999999999 ]
							}
, 							{
								"key" : 6147,
								"value" : [ 36.729999999999997 ]
							}
, 							{
								"key" : 6148,
								"value" : [ 36.270000000000003 ]
							}
, 							{
								"key" : 6149,
								"value" : [ 35.82 ]
							}
, 							{
								"key" : 6150,
								"value" : [ 35.439999999999998 ]
							}
, 							{
								"key" : 6151,
								"value" : [ 35.039999999999999 ]
							}
, 							{
								"key" : 6152,
								"value" : [ 34.789999999999999 ]
							}
, 							{
								"key" : 6153,
								"value" : [ 35.82 ]
							}
, 							{
								"key" : 6154,
								"value" : [ 38.07 ]
							}
, 							{
								"key" : 6155,
								"value" : [ 41.450000000000003 ]
							}
, 							{
								"key" : 6156,
								"value" : [ 44.039999999999999 ]
							}
, 							{
								"key" : 6157,
								"value" : [ 45.57 ]
							}
, 							{
								"key" : 6158,
								"value" : [ 46.450000000000003 ]
							}
, 							{
								"key" : 6159,
								"value" : [ 46.649999999999999 ]
							}
, 							{
								"key" : 6160,
								"value" : [ 45.409999999999997 ]
							}
, 							{
								"key" : 6161,
								"value" : [ 43.539999999999999 ]
							}
, 							{
								"key" : 6162,
								"value" : [ 43.25 ]
							}
, 							{
								"key" : 6163,
								"value" : [ 43.289999999999999 ]
							}
, 							{
								"key" : 6164,
								"value" : [ 43.409999999999997 ]
							}
, 							{
								"key" : 6165,
								"value" : [ 43.5 ]
							}
, 							{
								"key" : 6166,
								"value" : [ 43.390000000000001 ]
							}
, 							{
								"key" : 6167,
								"value" : [ 42.850000000000001 ]
							}
, 							{
								"key" : 6168,
								"value" : [ 42.170000000000002 ]
							}
, 							{
								"key" : 6169,
								"value" : [ 41.899999999999999 ]
							}
, 							{
								"key" : 6170,
								"value" : [ 41.270000000000003 ]
							}
, 							{
								"key" : 6171,
								"value" : [ 40.590000000000003 ]
							}
, 							{
								"key" : 6172,
								"value" : [ 39.740000000000002 ]
							}
, 							{
								"key" : 6173,
								"value" : [ 39.020000000000003 ]
							}
, 							{
								"key" : 6174,
								"value" : [ 38.700000000000003 ]
							}
, 							{
								"key" : 6175,
								"value" : [ 38.460000000000001 ]
							}
, 							{
								"key" : 6176,
								"value" : [ 38.57 ]
							}
, 							{
								"key" : 6177,
								"value" : [ 39.990000000000002 ]
							}
, 							{
								"key" : 6178,
								"value" : [ 41.229999999999997 ]
							}
, 							{
								"key" : 6179,
								"value" : [ 43.340000000000003 ]
							}
, 							{
								"key" : 6180,
								"value" : [ 45.520000000000003 ]
							}
, 							{
								"key" : 6181,
								"value" : [ 47.159999999999997 ]
							}
, 							{
								"key" : 6182,
								"value" : [ 48.240000000000002 ]
							}
, 							{
								"key" : 6183,
								"value" : [ 48.829999999999998 ]
							}
, 							{
								"key" : 6184,
								"value" : [ 48.700000000000003 ]
							}
, 							{
								"key" : 6185,
								"value" : [ 48.109999999999999 ]
							}
, 							{
								"key" : 6186,
								"value" : [ 47.909999999999997 ]
							}
, 							{
								"key" : 6187,
								"value" : [ 47.68 ]
							}
, 							{
								"key" : 6188,
								"value" : [ 47.259999999999998 ]
							}
, 							{
								"key" : 6189,
								"value" : [ 47.119999999999997 ]
							}
, 							{
								"key" : 6190,
								"value" : [ 46.979999999999997 ]
							}
, 							{
								"key" : 6191,
								"value" : [ 46.979999999999997 ]
							}
, 							{
								"key" : 6192,
								"value" : [ 47.549999999999997 ]
							}
, 							{
								"key" : 6193,
								"value" : [ 47.840000000000003 ]
							}
, 							{
								"key" : 6194,
								"value" : [ 47.799999999999997 ]
							}
, 							{
								"key" : 6195,
								"value" : [ 47.57 ]
							}
, 							{
								"key" : 6196,
								"value" : [ 47.57 ]
							}
, 							{
								"key" : 6197,
								"value" : [ 48.090000000000003 ]
							}
, 							{
								"key" : 6198,
								"value" : [ 48.829999999999998 ]
							}
, 							{
								"key" : 6199,
								"value" : [ 49.509999999999998 ]
							}
, 							{
								"key" : 6200,
								"value" : [ 50.049999999999997 ]
							}
, 							{
								"key" : 6201,
								"value" : [ 50.990000000000002 ]
							}
, 							{
								"key" : 6202,
								"value" : [ 52.270000000000003 ]
							}
, 							{
								"key" : 6203,
								"value" : [ 53.530000000000001 ]
							}
, 							{
								"key" : 6204,
								"value" : [ 54.880000000000003 ]
							}
, 							{
								"key" : 6205,
								"value" : [ 55.979999999999997 ]
							}
, 							{
								"key" : 6206,
								"value" : [ 56.880000000000003 ]
							}
, 							{
								"key" : 6207,
								"value" : [ 57.289999999999999 ]
							}
, 							{
								"key" : 6208,
								"value" : [ 57.039999999999999 ]
							}
, 							{
								"key" : 6209,
								"value" : [ 56.340000000000003 ]
							}
, 							{
								"key" : 6210,
								"value" : [ 55.939999999999998 ]
							}
, 							{
								"key" : 6211,
								"value" : [ 55.899999999999999 ]
							}
, 							{
								"key" : 6212,
								"value" : [ 56.07 ]
							}
, 							{
								"key" : 6213,
								"value" : [ 56.159999999999997 ]
							}
, 							{
								"key" : 6214,
								"value" : [ 55.939999999999998 ]
							}
, 							{
								"key" : 6215,
								"value" : [ 55.920000000000002 ]
							}
, 							{
								"key" : 6216,
								"value" : [ 55.600000000000001 ]
							}
, 							{
								"key" : 6217,
								"value" : [ 55.939999999999998 ]
							}
, 							{
								"key" : 6218,
								"value" : [ 56.969999999999999 ]
							}
, 							{
								"key" : 6219,
								"value" : [ 57.159999999999997 ]
							}
, 							{
								"key" : 6220,
								"value" : [ 55.600000000000001 ]
							}
, 							{
								"key" : 6221,
								"value" : [ 50.229999999999997 ]
							}
, 							{
								"key" : 6222,
								"value" : [ 44.079999999999998 ]
							}
, 							{
								"key" : 6223,
								"value" : [ 41.219999999999999 ]
							}
, 							{
								"key" : 6224,
								"value" : [ 40.030000000000001 ]
							}
, 							{
								"key" : 6225,
								"value" : [ 39.829999999999998 ]
							}
, 							{
								"key" : 6226,
								"value" : [ 39.310000000000002 ]
							}
, 							{
								"key" : 6227,
								"value" : [ 39.109999999999999 ]
							}
, 							{
								"key" : 6228,
								"value" : [ 39.740000000000002 ]
							}
, 							{
								"key" : 6229,
								"value" : [ 40.460000000000001 ]
							}
, 							{
								"key" : 6230,
								"value" : [ 40.75 ]
							}
, 							{
								"key" : 6231,
								"value" : [ 40.770000000000003 ]
							}
, 							{
								"key" : 6232,
								"value" : [ 40.439999999999998 ]
							}
, 							{
								"key" : 6233,
								"value" : [ 39.469999999999999 ]
							}
, 							{
								"key" : 6234,
								"value" : [ 38.520000000000003 ]
							}
, 							{
								"key" : 6235,
								"value" : [ 37.670000000000002 ]
							}
, 							{
								"key" : 6236,
								"value" : [ 36.719999999999999 ]
							}
, 							{
								"key" : 6237,
								"value" : [ 35.869999999999997 ]
							}
, 							{
								"key" : 6238,
								"value" : [ 35.289999999999999 ]
							}
, 							{
								"key" : 6239,
								"value" : [ 34.789999999999999 ]
							}
, 							{
								"key" : 6240,
								"value" : [ 34.200000000000003 ]
							}
, 							{
								"key" : 6241,
								"value" : [ 33.460000000000001 ]
							}
, 							{
								"key" : 6242,
								"value" : [ 32.68 ]
							}
, 							{
								"key" : 6243,
								"value" : [ 32.07 ]
							}
, 							{
								"key" : 6244,
								"value" : [ 31.66 ]
							}
, 							{
								"key" : 6245,
								"value" : [ 31.41 ]
							}
, 							{
								"key" : 6246,
								"value" : [ 31.239999999999998 ]
							}
, 							{
								"key" : 6247,
								"value" : [ 31.190000000000001 ]
							}
, 							{
								"key" : 6248,
								"value" : [ 31.5 ]
							}
, 							{
								"key" : 6249,
								"value" : [ 33.57 ]
							}
, 							{
								"key" : 6250,
								"value" : [ 34.950000000000003 ]
							}
, 							{
								"key" : 6251,
								"value" : [ 36.030000000000001 ]
							}
, 							{
								"key" : 6252,
								"value" : [ 36.659999999999997 ]
							}
, 							{
								"key" : 6253,
								"value" : [ 37.18 ]
							}
, 							{
								"key" : 6254,
								"value" : [ 37.219999999999999 ]
							}
, 							{
								"key" : 6255,
								"value" : [ 36.82 ]
							}
, 							{
								"key" : 6256,
								"value" : [ 36.460000000000001 ]
							}
, 							{
								"key" : 6257,
								"value" : [ 36.270000000000003 ]
							}
, 							{
								"key" : 6258,
								"value" : [ 37.090000000000003 ]
							}
, 							{
								"key" : 6259,
								"value" : [ 38.049999999999997 ]
							}
, 							{
								"key" : 6260,
								"value" : [ 38.880000000000003 ]
							}
, 							{
								"key" : 6261,
								"value" : [ 39.43 ]
							}
, 							{
								"key" : 6262,
								"value" : [ 39.719999999999999 ]
							}
, 							{
								"key" : 6263,
								"value" : [ 40.060000000000002 ]
							}
, 							{
								"key" : 6264,
								"value" : [ 40.140000000000001 ]
							}
, 							{
								"key" : 6265,
								"value" : [ 39.990000000000002 ]
							}
, 							{
								"key" : 6266,
								"value" : [ 39.420000000000002 ]
							}
, 							{
								"key" : 6267,
								"value" : [ 37.869999999999997 ]
							}
, 							{
								"key" : 6268,
								"value" : [ 35.909999999999997 ]
							}
, 							{
								"key" : 6269,
								"value" : [ 36.479999999999997 ]
							}
, 							{
								"key" : 6270,
								"value" : [ 36.880000000000003 ]
							}
, 							{
								"key" : 6271,
								"value" : [ 37.109999999999999 ]
							}
, 							{
								"key" : 6272,
								"value" : [ 37.270000000000003 ]
							}
, 							{
								"key" : 6273,
								"value" : [ 37.450000000000003 ]
							}
, 							{
								"key" : 6274,
								"value" : [ 37.509999999999998 ]
							}
, 							{
								"key" : 6275,
								"value" : [ 37.539999999999999 ]
							}
, 							{
								"key" : 6276,
								"value" : [ 37.359999999999999 ]
							}
, 							{
								"key" : 6277,
								"value" : [ 37.259999999999998 ]
							}
, 							{
								"key" : 6278,
								"value" : [ 37.130000000000003 ]
							}
, 							{
								"key" : 6279,
								"value" : [ 37.420000000000002 ]
							}
, 							{
								"key" : 6280,
								"value" : [ 37.149999999999999 ]
							}
, 							{
								"key" : 6281,
								"value" : [ 36.25 ]
							}
, 							{
								"key" : 6282,
								"value" : [ 35.869999999999997 ]
							}
, 							{
								"key" : 6283,
								"value" : [ 35.350000000000001 ]
							}
, 							{
								"key" : 6284,
								"value" : [ 34.560000000000002 ]
							}
, 							{
								"key" : 6285,
								"value" : [ 33.640000000000001 ]
							}
, 							{
								"key" : 6286,
								"value" : [ 32.399999999999999 ]
							}
, 							{
								"key" : 6287,
								"value" : [ 31.870000000000001 ]
							}
, 							{
								"key" : 6288,
								"value" : [ 31.77 ]
							}
, 							{
								"key" : 6289,
								"value" : [ 31.690000000000001 ]
							}
, 							{
								"key" : 6290,
								"value" : [ 32.039999999999999 ]
							}
, 							{
								"key" : 6291,
								"value" : [ 32.270000000000003 ]
							}
, 							{
								"key" : 6292,
								"value" : [ 32.520000000000003 ]
							}
, 							{
								"key" : 6293,
								"value" : [ 32.399999999999999 ]
							}
, 							{
								"key" : 6294,
								"value" : [ 32.289999999999999 ]
							}
, 							{
								"key" : 6295,
								"value" : [ 32.270000000000003 ]
							}
, 							{
								"key" : 6296,
								"value" : [ 32.399999999999999 ]
							}
, 							{
								"key" : 6297,
								"value" : [ 33.210000000000001 ]
							}
, 							{
								"key" : 6298,
								"value" : [ 34.030000000000001 ]
							}
, 							{
								"key" : 6299,
								"value" : [ 35.060000000000002 ]
							}
, 							{
								"key" : 6300,
								"value" : [ 36.090000000000003 ]
							}
, 							{
								"key" : 6301,
								"value" : [ 36.93 ]
							}
, 							{
								"key" : 6302,
								"value" : [ 37.539999999999999 ]
							}
, 							{
								"key" : 6303,
								"value" : [ 37.869999999999997 ]
							}
, 							{
								"key" : 6304,
								"value" : [ 37.170000000000002 ]
							}
, 							{
								"key" : 6305,
								"value" : [ 35.200000000000003 ]
							}
, 							{
								"key" : 6306,
								"value" : [ 34.829999999999998 ]
							}
, 							{
								"key" : 6307,
								"value" : [ 34.93 ]
							}
, 							{
								"key" : 6308,
								"value" : [ 35.100000000000001 ]
							}
, 							{
								"key" : 6309,
								"value" : [ 34.829999999999998 ]
							}
, 							{
								"key" : 6310,
								"value" : [ 34.25 ]
							}
, 							{
								"key" : 6311,
								"value" : [ 33.57 ]
							}
, 							{
								"key" : 6312,
								"value" : [ 33.100000000000001 ]
							}
, 							{
								"key" : 6313,
								"value" : [ 32.789999999999999 ]
							}
, 							{
								"key" : 6314,
								"value" : [ 32.560000000000002 ]
							}
, 							{
								"key" : 6315,
								"value" : [ 32.399999999999999 ]
							}
, 							{
								"key" : 6316,
								"value" : [ 32.270000000000003 ]
							}
, 							{
								"key" : 6317,
								"value" : [ 32.200000000000003 ]
							}
, 							{
								"key" : 6318,
								"value" : [ 32.25 ]
							}
, 							{
								"key" : 6319,
								"value" : [ 32.289999999999999 ]
							}
, 							{
								"key" : 6320,
								"value" : [ 32.310000000000002 ]
							}
, 							{
								"key" : 6321,
								"value" : [ 33.170000000000002 ]
							}
, 							{
								"key" : 6322,
								"value" : [ 34.859999999999999 ]
							}
, 							{
								"key" : 6323,
								"value" : [ 37.359999999999999 ]
							}
, 							{
								"key" : 6324,
								"value" : [ 39.539999999999999 ]
							}
, 							{
								"key" : 6325,
								"value" : [ 41.07 ]
							}
, 							{
								"key" : 6326,
								"value" : [ 41.950000000000003 ]
							}
, 							{
								"key" : 6327,
								"value" : [ 41.990000000000002 ]
							}
, 							{
								"key" : 6328,
								"value" : [ 40.710000000000001 ]
							}
, 							{
								"key" : 6329,
								"value" : [ 38.32 ]
							}
, 							{
								"key" : 6330,
								"value" : [ 37.259999999999998 ]
							}
, 							{
								"key" : 6331,
								"value" : [ 36.909999999999997 ]
							}
, 							{
								"key" : 6332,
								"value" : [ 36.950000000000003 ]
							}
, 							{
								"key" : 6333,
								"value" : [ 37.219999999999999 ]
							}
, 							{
								"key" : 6334,
								"value" : [ 36.840000000000003 ]
							}
, 							{
								"key" : 6335,
								"value" : [ 35.829999999999998 ]
							}
, 							{
								"key" : 6336,
								"value" : [ 34.859999999999999 ]
							}
, 							{
								"key" : 6337,
								"value" : [ 34.119999999999997 ]
							}
, 							{
								"key" : 6338,
								"value" : [ 33.689999999999998 ]
							}
, 							{
								"key" : 6339,
								"value" : [ 34.0 ]
							}
, 							{
								"key" : 6340,
								"value" : [ 34.469999999999999 ]
							}
, 							{
								"key" : 6341,
								"value" : [ 34.859999999999999 ]
							}
, 							{
								"key" : 6342,
								"value" : [ 35.109999999999999 ]
							}
, 							{
								"key" : 6343,
								"value" : [ 35.200000000000003 ]
							}
, 							{
								"key" : 6344,
								"value" : [ 35.640000000000001 ]
							}
, 							{
								"key" : 6345,
								"value" : [ 37.270000000000003 ]
							}
, 							{
								"key" : 6346,
								"value" : [ 37.780000000000001 ]
							}
, 							{
								"key" : 6347,
								"value" : [ 38.479999999999997 ]
							}
, 							{
								"key" : 6348,
								"value" : [ 39.310000000000002 ]
							}
, 							{
								"key" : 6349,
								"value" : [ 40.32 ]
							}
, 							{
								"key" : 6350,
								"value" : [ 40.859999999999999 ]
							}
, 							{
								"key" : 6351,
								"value" : [ 40.600000000000001 ]
							}
, 							{
								"key" : 6352,
								"value" : [ 39.509999999999998 ]
							}
, 							{
								"key" : 6353,
								"value" : [ 37.829999999999998 ]
							}
, 							{
								"key" : 6354,
								"value" : [ 36.520000000000003 ]
							}
, 							{
								"key" : 6355,
								"value" : [ 35.149999999999999 ]
							}
, 							{
								"key" : 6356,
								"value" : [ 34.380000000000003 ]
							}
, 							{
								"key" : 6357,
								"value" : [ 33.490000000000002 ]
							}
, 							{
								"key" : 6358,
								"value" : [ 31.41 ]
							}
, 							{
								"key" : 6359,
								"value" : [ 29.460000000000001 ]
							}
, 							{
								"key" : 6360,
								"value" : [ 27.989999999999998 ]
							}
, 							{
								"key" : 6361,
								"value" : [ 26.940000000000001 ]
							}
, 							{
								"key" : 6362,
								"value" : [ 26.239999999999998 ]
							}
, 							{
								"key" : 6363,
								"value" : [ 25.57 ]
							}
, 							{
								"key" : 6364,
								"value" : [ 24.760000000000002 ]
							}
, 							{
								"key" : 6365,
								"value" : [ 24.120000000000001 ]
							}
, 							{
								"key" : 6366,
								"value" : [ 23.760000000000002 ]
							}
, 							{
								"key" : 6367,
								"value" : [ 23.5 ]
							}
, 							{
								"key" : 6368,
								"value" : [ 23.43 ]
							}
, 							{
								"key" : 6369,
								"value" : [ 24.010000000000002 ]
							}
, 							{
								"key" : 6370,
								"value" : [ 24.940000000000001 ]
							}
, 							{
								"key" : 6371,
								"value" : [ 26.239999999999998 ]
							}
, 							{
								"key" : 6372,
								"value" : [ 27.84 ]
							}
, 							{
								"key" : 6373,
								"value" : [ 29.5 ]
							}
, 							{
								"key" : 6374,
								"value" : [ 30.670000000000002 ]
							}
, 							{
								"key" : 6375,
								"value" : [ 31.239999999999998 ]
							}
, 							{
								"key" : 6376,
								"value" : [ 31.190000000000001 ]
							}
, 							{
								"key" : 6377,
								"value" : [ 30.329999999999998 ]
							}
, 							{
								"key" : 6378,
								"value" : [ 30.219999999999999 ]
							}
, 							{
								"key" : 6379,
								"value" : [ 30.039999999999999 ]
							}
, 							{
								"key" : 6380,
								"value" : [ 30.09 ]
							}
, 							{
								"key" : 6381,
								"value" : [ 30.780000000000001 ]
							}
, 							{
								"key" : 6382,
								"value" : [ 31.440000000000001 ]
							}
, 							{
								"key" : 6383,
								"value" : [ 31.84 ]
							}
, 							{
								"key" : 6384,
								"value" : [ 31.82 ]
							}
, 							{
								"key" : 6385,
								"value" : [ 31.98 ]
							}
, 							{
								"key" : 6386,
								"value" : [ 32.850000000000001 ]
							}
, 							{
								"key" : 6387,
								"value" : [ 33.170000000000002 ]
							}
, 							{
								"key" : 6388,
								"value" : [ 33.219999999999999 ]
							}
, 							{
								"key" : 6389,
								"value" : [ 33.399999999999999 ]
							}
, 							{
								"key" : 6390,
								"value" : [ 33.619999999999997 ]
							}
, 							{
								"key" : 6391,
								"value" : [ 33.869999999999997 ]
							}
, 							{
								"key" : 6392,
								"value" : [ 34.07 ]
							}
, 							{
								"key" : 6393,
								"value" : [ 34.409999999999997 ]
							}
, 							{
								"key" : 6394,
								"value" : [ 35.460000000000001 ]
							}
, 							{
								"key" : 6395,
								"value" : [ 37.170000000000002 ]
							}
, 							{
								"key" : 6396,
								"value" : [ 39.270000000000003 ]
							}
, 							{
								"key" : 6397,
								"value" : [ 40.32 ]
							}
, 							{
								"key" : 6398,
								"value" : [ 40.780000000000001 ]
							}
, 							{
								"key" : 6399,
								"value" : [ 41.359999999999999 ]
							}
, 							{
								"key" : 6400,
								"value" : [ 41.899999999999999 ]
							}
, 							{
								"key" : 6401,
								"value" : [ 41.109999999999999 ]
							}
, 							{
								"key" : 6402,
								"value" : [ 40.549999999999997 ]
							}
, 							{
								"key" : 6403,
								"value" : [ 40.060000000000002 ]
							}
, 							{
								"key" : 6404,
								"value" : [ 39.520000000000003 ]
							}
, 							{
								"key" : 6405,
								"value" : [ 39.020000000000003 ]
							}
, 							{
								"key" : 6406,
								"value" : [ 38.369999999999997 ]
							}
, 							{
								"key" : 6407,
								"value" : [ 37.810000000000002 ]
							}
, 							{
								"key" : 6408,
								"value" : [ 37.850000000000001 ]
							}
, 							{
								"key" : 6409,
								"value" : [ 37.399999999999999 ]
							}
, 							{
								"key" : 6410,
								"value" : [ 36.840000000000003 ]
							}
, 							{
								"key" : 6411,
								"value" : [ 36.5 ]
							}
, 							{
								"key" : 6412,
								"value" : [ 36.590000000000003 ]
							}
, 							{
								"key" : 6413,
								"value" : [ 36.969999999999999 ]
							}
, 							{
								"key" : 6414,
								"value" : [ 37.450000000000003 ]
							}
, 							{
								"key" : 6415,
								"value" : [ 37.939999999999998 ]
							}
, 							{
								"key" : 6416,
								"value" : [ 39.07 ]
							}
, 							{
								"key" : 6417,
								"value" : [ 40.689999999999998 ]
							}
, 							{
								"key" : 6418,
								"value" : [ 42.079999999999998 ]
							}
, 							{
								"key" : 6419,
								"value" : [ 43.659999999999997 ]
							}
, 							{
								"key" : 6420,
								"value" : [ 45.18 ]
							}
, 							{
								"key" : 6421,
								"value" : [ 47.07 ]
							}
, 							{
								"key" : 6422,
								"value" : [ 48.43 ]
							}
, 							{
								"key" : 6423,
								"value" : [ 48.990000000000002 ]
							}
, 							{
								"key" : 6424,
								"value" : [ 48.829999999999998 ]
							}
, 							{
								"key" : 6425,
								"value" : [ 48.380000000000003 ]
							}
, 							{
								"key" : 6426,
								"value" : [ 48.740000000000002 ]
							}
, 							{
								"key" : 6427,
								"value" : [ 48.780000000000001 ]
							}
, 							{
								"key" : 6428,
								"value" : [ 49.060000000000002 ]
							}
, 							{
								"key" : 6429,
								"value" : [ 48.990000000000002 ]
							}
, 							{
								"key" : 6430,
								"value" : [ 48.990000000000002 ]
							}
, 							{
								"key" : 6431,
								"value" : [ 48.509999999999998 ]
							}
, 							{
								"key" : 6432,
								"value" : [ 47.75 ]
							}
, 							{
								"key" : 6433,
								"value" : [ 46.960000000000001 ]
							}
, 							{
								"key" : 6434,
								"value" : [ 45.590000000000003 ]
							}
, 							{
								"key" : 6435,
								"value" : [ 44.109999999999999 ]
							}
, 							{
								"key" : 6436,
								"value" : [ 43.469999999999999 ]
							}
, 							{
								"key" : 6437,
								"value" : [ 43.57 ]
							}
, 							{
								"key" : 6438,
								"value" : [ 43.469999999999999 ]
							}
, 							{
								"key" : 6439,
								"value" : [ 43.159999999999997 ]
							}
, 							{
								"key" : 6440,
								"value" : [ 42.579999999999998 ]
							}
, 							{
								"key" : 6441,
								"value" : [ 42.799999999999997 ]
							}
, 							{
								"key" : 6442,
								"value" : [ 43.140000000000001 ]
							}
, 							{
								"key" : 6443,
								"value" : [ 43.560000000000002 ]
							}
, 							{
								"key" : 6444,
								"value" : [ 43.789999999999999 ]
							}
, 							{
								"key" : 6445,
								"value" : [ 43.840000000000003 ]
							}
, 							{
								"key" : 6446,
								"value" : [ 43.590000000000003 ]
							}
, 							{
								"key" : 6447,
								"value" : [ 43.119999999999997 ]
							}
, 							{
								"key" : 6448,
								"value" : [ 42.119999999999997 ]
							}
, 							{
								"key" : 6449,
								"value" : [ 40.009999999999998 ]
							}
, 							{
								"key" : 6450,
								"value" : [ 39.509999999999998 ]
							}
, 							{
								"key" : 6451,
								"value" : [ 39.329999999999998 ]
							}
, 							{
								"key" : 6452,
								"value" : [ 38.969999999999999 ]
							}
, 							{
								"key" : 6453,
								"value" : [ 38.520000000000003 ]
							}
, 							{
								"key" : 6454,
								"value" : [ 38.609999999999999 ]
							}
, 							{
								"key" : 6455,
								"value" : [ 38.969999999999999 ]
							}
, 							{
								"key" : 6456,
								"value" : [ 38.770000000000003 ]
							}
, 							{
								"key" : 6457,
								"value" : [ 38.659999999999997 ]
							}
, 							{
								"key" : 6458,
								"value" : [ 38.729999999999997 ]
							}
, 							{
								"key" : 6459,
								"value" : [ 38.640000000000001 ]
							}
, 							{
								"key" : 6460,
								"value" : [ 38.390000000000001 ]
							}
, 							{
								"key" : 6461,
								"value" : [ 37.899999999999999 ]
							}
, 							{
								"key" : 6462,
								"value" : [ 37.539999999999999 ]
							}
, 							{
								"key" : 6463,
								"value" : [ 37.399999999999999 ]
							}
, 							{
								"key" : 6464,
								"value" : [ 37.630000000000003 ]
							}
, 							{
								"key" : 6465,
								"value" : [ 38.799999999999997 ]
							}
, 							{
								"key" : 6466,
								"value" : [ 39.969999999999999 ]
							}
, 							{
								"key" : 6467,
								"value" : [ 40.420000000000002 ]
							}
, 							{
								"key" : 6468,
								"value" : [ 40.57 ]
							}
, 							{
								"key" : 6469,
								"value" : [ 40.240000000000002 ]
							}
, 							{
								"key" : 6470,
								"value" : [ 39.579999999999998 ]
							}
, 							{
								"key" : 6471,
								"value" : [ 38.840000000000003 ]
							}
, 							{
								"key" : 6472,
								"value" : [ 38.280000000000001 ]
							}
, 							{
								"key" : 6473,
								"value" : [ 38.049999999999997 ]
							}
, 							{
								"key" : 6474,
								"value" : [ 38.210000000000001 ]
							}
, 							{
								"key" : 6475,
								"value" : [ 38.43 ]
							}
, 							{
								"key" : 6476,
								"value" : [ 38.609999999999999 ]
							}
, 							{
								"key" : 6477,
								"value" : [ 38.710000000000001 ]
							}
, 							{
								"key" : 6478,
								"value" : [ 38.770000000000003 ]
							}
, 							{
								"key" : 6479,
								"value" : [ 37.899999999999999 ]
							}
, 							{
								"key" : 6480,
								"value" : [ 35.600000000000001 ]
							}
, 							{
								"key" : 6481,
								"value" : [ 35.869999999999997 ]
							}
, 							{
								"key" : 6482,
								"value" : [ 36.859999999999999 ]
							}
, 							{
								"key" : 6483,
								"value" : [ 38.259999999999998 ]
							}
, 							{
								"key" : 6484,
								"value" : [ 39.07 ]
							}
, 							{
								"key" : 6485,
								"value" : [ 39.469999999999999 ]
							}
, 							{
								"key" : 6486,
								"value" : [ 39.740000000000002 ]
							}
, 							{
								"key" : 6487,
								"value" : [ 40.439999999999998 ]
							}
, 							{
								"key" : 6488,
								"value" : [ 41.090000000000003 ]
							}
, 							{
								"key" : 6489,
								"value" : [ 41.219999999999999 ]
							}
, 							{
								"key" : 6490,
								"value" : [ 41.219999999999999 ]
							}
, 							{
								"key" : 6491,
								"value" : [ 41.340000000000003 ]
							}
, 							{
								"key" : 6492,
								"value" : [ 41.880000000000003 ]
							}
, 							{
								"key" : 6493,
								"value" : [ 42.689999999999998 ]
							}
, 							{
								"key" : 6494,
								"value" : [ 43.299999999999997 ]
							}
, 							{
								"key" : 6495,
								"value" : [ 43.140000000000001 ]
							}
, 							{
								"key" : 6496,
								"value" : [ 41.609999999999999 ]
							}
, 							{
								"key" : 6497,
								"value" : [ 39.289999999999999 ]
							}
, 							{
								"key" : 6498,
								"value" : [ 37.450000000000003 ]
							}
, 							{
								"key" : 6499,
								"value" : [ 36.369999999999997 ]
							}
, 							{
								"key" : 6500,
								"value" : [ 35.460000000000001 ]
							}
, 							{
								"key" : 6501,
								"value" : [ 34.649999999999999 ]
							}
, 							{
								"key" : 6502,
								"value" : [ 33.909999999999997 ]
							}
, 							{
								"key" : 6503,
								"value" : [ 33.310000000000002 ]
							}
, 							{
								"key" : 6504,
								"value" : [ 32.759999999999998 ]
							}
, 							{
								"key" : 6505,
								"value" : [ 32.140000000000001 ]
							}
, 							{
								"key" : 6506,
								"value" : [ 31.460000000000001 ]
							}
, 							{
								"key" : 6507,
								"value" : [ 31.190000000000001 ]
							}
, 							{
								"key" : 6508,
								"value" : [ 31.420000000000002 ]
							}
, 							{
								"key" : 6509,
								"value" : [ 32.270000000000003 ]
							}
, 							{
								"key" : 6510,
								"value" : [ 33.390000000000001 ]
							}
, 							{
								"key" : 6511,
								"value" : [ 34.68 ]
							}
, 							{
								"key" : 6512,
								"value" : [ 35.979999999999997 ]
							}
, 							{
								"key" : 6513,
								"value" : [ 37.560000000000002 ]
							}
, 							{
								"key" : 6514,
								"value" : [ 38.299999999999997 ]
							}
, 							{
								"key" : 6515,
								"value" : [ 38.299999999999997 ]
							}
, 							{
								"key" : 6516,
								"value" : [ 37.740000000000002 ]
							}
, 							{
								"key" : 6517,
								"value" : [ 35.509999999999998 ]
							}
, 							{
								"key" : 6518,
								"value" : [ 35.109999999999999 ]
							}
, 							{
								"key" : 6519,
								"value" : [ 35.490000000000002 ]
							}
, 							{
								"key" : 6520,
								"value" : [ 36.43 ]
							}
, 							{
								"key" : 6521,
								"value" : [ 36.770000000000003 ]
							}
, 							{
								"key" : 6522,
								"value" : [ 36.719999999999999 ]
							}
, 							{
								"key" : 6523,
								"value" : [ 36.93 ]
							}
, 							{
								"key" : 6524,
								"value" : [ 37.090000000000003 ]
							}
, 							{
								"key" : 6525,
								"value" : [ 36.909999999999997 ]
							}
, 							{
								"key" : 6526,
								"value" : [ 36.840000000000003 ]
							}
, 							{
								"key" : 6527,
								"value" : [ 36.719999999999999 ]
							}
, 							{
								"key" : 6528,
								"value" : [ 35.82 ]
							}
, 							{
								"key" : 6529,
								"value" : [ 34.789999999999999 ]
							}
, 							{
								"key" : 6530,
								"value" : [ 34.57 ]
							}
, 							{
								"key" : 6531,
								"value" : [ 34.609999999999999 ]
							}
, 							{
								"key" : 6532,
								"value" : [ 34.469999999999999 ]
							}
, 							{
								"key" : 6533,
								"value" : [ 34.340000000000003 ]
							}
, 							{
								"key" : 6534,
								"value" : [ 33.850000000000001 ]
							}
, 							{
								"key" : 6535,
								"value" : [ 33.57 ]
							}
, 							{
								"key" : 6536,
								"value" : [ 32.859999999999999 ]
							}
, 							{
								"key" : 6537,
								"value" : [ 32.359999999999999 ]
							}
, 							{
								"key" : 6538,
								"value" : [ 31.93 ]
							}
, 							{
								"key" : 6539,
								"value" : [ 32.219999999999999 ]
							}
, 							{
								"key" : 6540,
								"value" : [ 32.579999999999998 ]
							}
, 							{
								"key" : 6541,
								"value" : [ 33.119999999999997 ]
							}
, 							{
								"key" : 6542,
								"value" : [ 33.509999999999998 ]
							}
, 							{
								"key" : 6543,
								"value" : [ 33.890000000000001 ]
							}
, 							{
								"key" : 6544,
								"value" : [ 33.799999999999997 ]
							}
, 							{
								"key" : 6545,
								"value" : [ 32.859999999999999 ]
							}
, 							{
								"key" : 6546,
								"value" : [ 33.439999999999998 ]
							}
, 							{
								"key" : 6547,
								"value" : [ 34.159999999999997 ]
							}
, 							{
								"key" : 6548,
								"value" : [ 34.140000000000001 ]
							}
, 							{
								"key" : 6549,
								"value" : [ 33.479999999999997 ]
							}
, 							{
								"key" : 6550,
								"value" : [ 32.810000000000002 ]
							}
, 							{
								"key" : 6551,
								"value" : [ 32.380000000000003 ]
							}
, 							{
								"key" : 6552,
								"value" : [ 32.380000000000003 ]
							}
, 							{
								"key" : 6553,
								"value" : [ 32.409999999999997 ]
							}
, 							{
								"key" : 6554,
								"value" : [ 32.450000000000003 ]
							}
, 							{
								"key" : 6555,
								"value" : [ 32.920000000000002 ]
							}
, 							{
								"key" : 6556,
								"value" : [ 33.189999999999998 ]
							}
, 							{
								"key" : 6557,
								"value" : [ 33.170000000000002 ]
							}
, 							{
								"key" : 6558,
								"value" : [ 33.170000000000002 ]
							}
, 							{
								"key" : 6559,
								"value" : [ 33.390000000000001 ]
							}
, 							{
								"key" : 6560,
								"value" : [ 34.140000000000001 ]
							}
, 							{
								"key" : 6561,
								"value" : [ 35.82 ]
							}
, 							{
								"key" : 6562,
								"value" : [ 36.590000000000003 ]
							}
, 							{
								"key" : 6563,
								"value" : [ 36.82 ]
							}
, 							{
								"key" : 6564,
								"value" : [ 37.090000000000003 ]
							}
, 							{
								"key" : 6565,
								"value" : [ 37.350000000000001 ]
							}
, 							{
								"key" : 6566,
								"value" : [ 37.469999999999999 ]
							}
, 							{
								"key" : 6567,
								"value" : [ 37.359999999999999 ]
							}
, 							{
								"key" : 6568,
								"value" : [ 36.909999999999997 ]
							}
, 							{
								"key" : 6569,
								"value" : [ 36.189999999999998 ]
							}
, 							{
								"key" : 6570,
								"value" : [ 36.049999999999997 ]
							}
, 							{
								"key" : 6571,
								"value" : [ 36.049999999999997 ]
							}
, 							{
								"key" : 6572,
								"value" : [ 36.049999999999997 ]
							}
, 							{
								"key" : 6573,
								"value" : [ 35.960000000000001 ]
							}
, 							{
								"key" : 6574,
								"value" : [ 35.130000000000003 ]
							}
, 							{
								"key" : 6575,
								"value" : [ 35.020000000000003 ]
							}
, 							{
								"key" : 6576,
								"value" : [ 34.899999999999999 ]
							}
, 							{
								"key" : 6577,
								"value" : [ 34.359999999999999 ]
							}
, 							{
								"key" : 6578,
								"value" : [ 33.840000000000003 ]
							}
, 							{
								"key" : 6579,
								"value" : [ 33.479999999999997 ]
							}
, 							{
								"key" : 6580,
								"value" : [ 32.68 ]
							}
, 							{
								"key" : 6581,
								"value" : [ 32.359999999999999 ]
							}
, 							{
								"key" : 6582,
								"value" : [ 32.409999999999997 ]
							}
, 							{
								"key" : 6583,
								"value" : [ 32.43 ]
							}
, 							{
								"key" : 6584,
								"value" : [ 32.409999999999997 ]
							}
, 							{
								"key" : 6585,
								"value" : [ 33.939999999999998 ]
							}
, 							{
								"key" : 6586,
								"value" : [ 35.890000000000001 ]
							}
, 							{
								"key" : 6587,
								"value" : [ 37.560000000000002 ]
							}
, 							{
								"key" : 6588,
								"value" : [ 39.020000000000003 ]
							}
, 							{
								"key" : 6589,
								"value" : [ 40.060000000000002 ]
							}
, 							{
								"key" : 6590,
								"value" : [ 40.770000000000003 ]
							}
, 							{
								"key" : 6591,
								"value" : [ 41.340000000000003 ]
							}
, 							{
								"key" : 6592,
								"value" : [ 41.409999999999997 ]
							}
, 							{
								"key" : 6593,
								"value" : [ 41.359999999999999 ]
							}
, 							{
								"key" : 6594,
								"value" : [ 41.670000000000002 ]
							}
, 							{
								"key" : 6595,
								"value" : [ 42.549999999999997 ]
							}
, 							{
								"key" : 6596,
								"value" : [ 41.43 ]
							}
, 							{
								"key" : 6597,
								"value" : [ 41.219999999999999 ]
							}
, 							{
								"key" : 6598,
								"value" : [ 40.439999999999998 ]
							}
, 							{
								"key" : 6599,
								"value" : [ 39.560000000000002 ]
							}
, 							{
								"key" : 6600,
								"value" : [ 38.840000000000003 ]
							}
, 							{
								"key" : 6601,
								"value" : [ 38.590000000000003 ]
							}
, 							{
								"key" : 6602,
								"value" : [ 38.520000000000003 ]
							}
, 							{
								"key" : 6603,
								"value" : [ 38.390000000000001 ]
							}
, 							{
								"key" : 6604,
								"value" : [ 38.259999999999998 ]
							}
, 							{
								"key" : 6605,
								"value" : [ 37.979999999999997 ]
							}
, 							{
								"key" : 6606,
								"value" : [ 37.780000000000001 ]
							}
, 							{
								"key" : 6607,
								"value" : [ 37.530000000000001 ]
							}
, 							{
								"key" : 6608,
								"value" : [ 37.060000000000002 ]
							}
, 							{
								"key" : 6609,
								"value" : [ 36.659999999999997 ]
							}
, 							{
								"key" : 6610,
								"value" : [ 36.43 ]
							}
, 							{
								"key" : 6611,
								"value" : [ 36.07 ]
							}
, 							{
								"key" : 6612,
								"value" : [ 35.780000000000001 ]
							}
, 							{
								"key" : 6613,
								"value" : [ 35.310000000000002 ]
							}
, 							{
								"key" : 6614,
								"value" : [ 34.920000000000002 ]
							}
, 							{
								"key" : 6615,
								"value" : [ 34.469999999999999 ]
							}
, 							{
								"key" : 6616,
								"value" : [ 34.090000000000003 ]
							}
, 							{
								"key" : 6617,
								"value" : [ 33.530000000000001 ]
							}
, 							{
								"key" : 6618,
								"value" : [ 33.240000000000002 ]
							}
, 							{
								"key" : 6619,
								"value" : [ 32.899999999999999 ]
							}
, 							{
								"key" : 6620,
								"value" : [ 32.649999999999999 ]
							}
, 							{
								"key" : 6621,
								"value" : [ 31.870000000000001 ]
							}
, 							{
								"key" : 6622,
								"value" : [ 30.969999999999999 ]
							}
, 							{
								"key" : 6623,
								"value" : [ 30.219999999999999 ]
							}
, 							{
								"key" : 6624,
								"value" : [ 29.699999999999999 ]
							}
, 							{
								"key" : 6625,
								"value" : [ 29.32 ]
							}
, 							{
								"key" : 6626,
								"value" : [ 29.16 ]
							}
, 							{
								"key" : 6627,
								"value" : [ 29.16 ]
							}
, 							{
								"key" : 6628,
								"value" : [ 29.34 ]
							}
, 							{
								"key" : 6629,
								"value" : [ 29.640000000000001 ]
							}
, 							{
								"key" : 6630,
								"value" : [ 29.890000000000001 ]
							}
, 							{
								"key" : 6631,
								"value" : [ 29.969999999999999 ]
							}
, 							{
								"key" : 6632,
								"value" : [ 30.309999999999999 ]
							}
, 							{
								"key" : 6633,
								"value" : [ 30.699999999999999 ]
							}
, 							{
								"key" : 6634,
								"value" : [ 31.440000000000001 ]
							}
, 							{
								"key" : 6635,
								"value" : [ 31.690000000000001 ]
							}
, 							{
								"key" : 6636,
								"value" : [ 31.420000000000002 ]
							}
, 							{
								"key" : 6637,
								"value" : [ 30.989999999999998 ]
							}
, 							{
								"key" : 6638,
								"value" : [ 30.52 ]
							}
, 							{
								"key" : 6639,
								"value" : [ 29.969999999999999 ]
							}
, 							{
								"key" : 6640,
								"value" : [ 28.940000000000001 ]
							}
, 							{
								"key" : 6641,
								"value" : [ 26.920000000000002 ]
							}
, 							{
								"key" : 6642,
								"value" : [ 25.920000000000002 ]
							}
, 							{
								"key" : 6643,
								"value" : [ 25.719999999999999 ]
							}
, 							{
								"key" : 6644,
								"value" : [ 25.66 ]
							}
, 							{
								"key" : 6645,
								"value" : [ 25.539999999999999 ]
							}
, 							{
								"key" : 6646,
								"value" : [ 25.09 ]
							}
, 							{
								"key" : 6647,
								"value" : [ 24.460000000000001 ]
							}
, 							{
								"key" : 6648,
								"value" : [ 23.789999999999999 ]
							}
, 							{
								"key" : 6649,
								"value" : [ 23.07 ]
							}
, 							{
								"key" : 6650,
								"value" : [ 22.260000000000002 ]
							}
, 							{
								"key" : 6651,
								"value" : [ 21.420000000000002 ]
							}
, 							{
								"key" : 6652,
								"value" : [ 20.640000000000001 ]
							}
, 							{
								"key" : 6653,
								"value" : [ 20.100000000000001 ]
							}
, 							{
								"key" : 6654,
								"value" : [ 19.710000000000001 ]
							}
, 							{
								"key" : 6655,
								"value" : [ 19.420000000000002 ]
							}
, 							{
								"key" : 6656,
								"value" : [ 19.199999999999999 ]
							}
, 							{
								"key" : 6657,
								"value" : [ 19.809999999999999 ]
							}
, 							{
								"key" : 6658,
								"value" : [ 21.420000000000002 ]
							}
, 							{
								"key" : 6659,
								"value" : [ 22.780000000000001 ]
							}
, 							{
								"key" : 6660,
								"value" : [ 24.100000000000001 ]
							}
, 							{
								"key" : 6661,
								"value" : [ 25.32 ]
							}
, 							{
								"key" : 6662,
								"value" : [ 26.289999999999999 ]
							}
, 							{
								"key" : 6663,
								"value" : [ 27.07 ]
							}
, 							{
								"key" : 6664,
								"value" : [ 27.27 ]
							}
, 							{
								"key" : 6665,
								"value" : [ 26.469999999999999 ]
							}
, 							{
								"key" : 6666,
								"value" : [ 26.059999999999999 ]
							}
, 							{
								"key" : 6667,
								"value" : [ 26.109999999999999 ]
							}
, 							{
								"key" : 6668,
								"value" : [ 26.109999999999999 ]
							}
, 							{
								"key" : 6669,
								"value" : [ 25.920000000000002 ]
							}
, 							{
								"key" : 6670,
								"value" : [ 26.039999999999999 ]
							}
, 							{
								"key" : 6671,
								"value" : [ 26.469999999999999 ]
							}
, 							{
								"key" : 6672,
								"value" : [ 26.890000000000001 ]
							}
, 							{
								"key" : 6673,
								"value" : [ 26.98 ]
							}
, 							{
								"key" : 6674,
								"value" : [ 26.870000000000001 ]
							}
, 							{
								"key" : 6675,
								"value" : [ 26.920000000000002 ]
							}
, 							{
								"key" : 6676,
								"value" : [ 26.960000000000001 ]
							}
, 							{
								"key" : 6677,
								"value" : [ 26.98 ]
							}
, 							{
								"key" : 6678,
								"value" : [ 27.09 ]
							}
, 							{
								"key" : 6679,
								"value" : [ 27.32 ]
							}
, 							{
								"key" : 6680,
								"value" : [ 27.57 ]
							}
, 							{
								"key" : 6681,
								"value" : [ 28.440000000000001 ]
							}
, 							{
								"key" : 6682,
								"value" : [ 29.699999999999999 ]
							}
, 							{
								"key" : 6683,
								"value" : [ 31.440000000000001 ]
							}
, 							{
								"key" : 6684,
								"value" : [ 33.369999999999997 ]
							}
, 							{
								"key" : 6685,
								"value" : [ 34.789999999999999 ]
							}
, 							{
								"key" : 6686,
								"value" : [ 35.560000000000002 ]
							}
, 							{
								"key" : 6687,
								"value" : [ 35.729999999999997 ]
							}
, 							{
								"key" : 6688,
								"value" : [ 35.490000000000002 ]
							}
, 							{
								"key" : 6689,
								"value" : [ 35.100000000000001 ]
							}
, 							{
								"key" : 6690,
								"value" : [ 34.719999999999999 ]
							}
, 							{
								"key" : 6691,
								"value" : [ 34.450000000000003 ]
							}
, 							{
								"key" : 6692,
								"value" : [ 34.270000000000003 ]
							}
, 							{
								"key" : 6693,
								"value" : [ 34.090000000000003 ]
							}
, 							{
								"key" : 6694,
								"value" : [ 33.619999999999997 ]
							}
, 							{
								"key" : 6695,
								"value" : [ 33.240000000000002 ]
							}
, 							{
								"key" : 6696,
								"value" : [ 33.490000000000002 ]
							}
, 							{
								"key" : 6697,
								"value" : [ 33.939999999999998 ]
							}
, 							{
								"key" : 6698,
								"value" : [ 33.939999999999998 ]
							}
, 							{
								"key" : 6699,
								"value" : [ 33.759999999999998 ]
							}
, 							{
								"key" : 6700,
								"value" : [ 32.990000000000002 ]
							}
, 							{
								"key" : 6701,
								"value" : [ 30.539999999999999 ]
							}
, 							{
								"key" : 6702,
								"value" : [ 26.109999999999999 ]
							}
, 							{
								"key" : 6703,
								"value" : [ 22.73 ]
							}
, 							{
								"key" : 6704,
								"value" : [ 21.670000000000002 ]
							}
, 							{
								"key" : 6705,
								"value" : [ 21.0 ]
							}
, 							{
								"key" : 6706,
								"value" : [ 19.989999999999998 ]
							}
, 							{
								"key" : 6707,
								"value" : [ 19.170000000000002 ]
							}
, 							{
								"key" : 6708,
								"value" : [ 18.48 ]
							}
, 							{
								"key" : 6709,
								"value" : [ 18.0 ]
							}
, 							{
								"key" : 6710,
								"value" : [ 17.420000000000002 ]
							}
, 							{
								"key" : 6711,
								"value" : [ 17.289999999999999 ]
							}
, 							{
								"key" : 6712,
								"value" : [ 17.170000000000002 ]
							}
, 							{
								"key" : 6713,
								"value" : [ 17.219999999999999 ]
							}
, 							{
								"key" : 6714,
								"value" : [ 17.559999999999999 ]
							}
, 							{
								"key" : 6715,
								"value" : [ 18.23 ]
							}
, 							{
								"key" : 6716,
								"value" : [ 18.789999999999999 ]
							}
, 							{
								"key" : 6717,
								"value" : [ 19.219999999999999 ]
							}
, 							{
								"key" : 6718,
								"value" : [ 19.620000000000001 ]
							}
, 							{
								"key" : 6719,
								"value" : [ 19.920000000000002 ]
							}
, 							{
								"key" : 6720,
								"value" : [ 19.870000000000001 ]
							}
, 							{
								"key" : 6721,
								"value" : [ 19.469999999999999 ]
							}
, 							{
								"key" : 6722,
								"value" : [ 19.420000000000002 ]
							}
, 							{
								"key" : 6723,
								"value" : [ 19.359999999999999 ]
							}
, 							{
								"key" : 6724,
								"value" : [ 19.199999999999999 ]
							}
, 							{
								"key" : 6725,
								"value" : [ 18.969999999999999 ]
							}
, 							{
								"key" : 6726,
								"value" : [ 18.629999999999999 ]
							}
, 							{
								"key" : 6727,
								"value" : [ 18.27 ]
							}
, 							{
								"key" : 6728,
								"value" : [ 17.670000000000002 ]
							}
, 							{
								"key" : 6729,
								"value" : [ 17.82 ]
							}
, 							{
								"key" : 6730,
								"value" : [ 18.210000000000001 ]
							}
, 							{
								"key" : 6731,
								"value" : [ 18.84 ]
							}
, 							{
								"key" : 6732,
								"value" : [ 19.039999999999999 ]
							}
, 							{
								"key" : 6733,
								"value" : [ 19.359999999999999 ]
							}
, 							{
								"key" : 6734,
								"value" : [ 19.760000000000002 ]
							}
, 							{
								"key" : 6735,
								"value" : [ 19.940000000000001 ]
							}
, 							{
								"key" : 6736,
								"value" : [ 19.710000000000001 ]
							}
, 							{
								"key" : 6737,
								"value" : [ 19.18 ]
							}
, 							{
								"key" : 6738,
								"value" : [ 18.949999999999999 ]
							}
, 							{
								"key" : 6739,
								"value" : [ 18.719999999999999 ]
							}
, 							{
								"key" : 6740,
								"value" : [ 18.27 ]
							}
, 							{
								"key" : 6741,
								"value" : [ 17.670000000000002 ]
							}
, 							{
								"key" : 6742,
								"value" : [ 16.989999999999998 ]
							}
, 							{
								"key" : 6743,
								"value" : [ 16.68 ]
							}
, 							{
								"key" : 6744,
								"value" : [ 16.34 ]
							}
, 							{
								"key" : 6745,
								"value" : [ 15.91 ]
							}
, 							{
								"key" : 6746,
								"value" : [ 15.66 ]
							}
, 							{
								"key" : 6747,
								"value" : [ 15.51 ]
							}
, 							{
								"key" : 6748,
								"value" : [ 15.220000000000001 ]
							}
, 							{
								"key" : 6749,
								"value" : [ 14.77 ]
							}
, 							{
								"key" : 6750,
								"value" : [ 14.539999999999999 ]
							}
, 							{
								"key" : 6751,
								"value" : [ 14.140000000000001 ]
							}
, 							{
								"key" : 6752,
								"value" : [ 13.91 ]
							}
, 							{
								"key" : 6753,
								"value" : [ 15.039999999999999 ]
							}
, 							{
								"key" : 6754,
								"value" : [ 16.5 ]
							}
, 							{
								"key" : 6755,
								"value" : [ 17.559999999999999 ]
							}
, 							{
								"key" : 6756,
								"value" : [ 18.390000000000001 ]
							}
, 							{
								"key" : 6757,
								"value" : [ 19.219999999999999 ]
							}
, 							{
								"key" : 6758,
								"value" : [ 19.780000000000001 ]
							}
, 							{
								"key" : 6759,
								"value" : [ 19.940000000000001 ]
							}
, 							{
								"key" : 6760,
								"value" : [ 19.379999999999999 ]
							}
, 							{
								"key" : 6761,
								"value" : [ 18.41 ]
							}
, 							{
								"key" : 6762,
								"value" : [ 17.920000000000002 ]
							}
, 							{
								"key" : 6763,
								"value" : [ 17.739999999999998 ]
							}
, 							{
								"key" : 6764,
								"value" : [ 17.690000000000001 ]
							}
, 							{
								"key" : 6765,
								"value" : [ 18.09 ]
							}
, 							{
								"key" : 6766,
								"value" : [ 18.550000000000001 ]
							}
, 							{
								"key" : 6767,
								"value" : [ 18.91 ]
							}
, 							{
								"key" : 6768,
								"value" : [ 19.420000000000002 ]
							}
, 							{
								"key" : 6769,
								"value" : [ 19.850000000000001 ]
							}
, 							{
								"key" : 6770,
								"value" : [ 20.43 ]
							}
, 							{
								"key" : 6771,
								"value" : [ 21.16 ]
							}
, 							{
								"key" : 6772,
								"value" : [ 21.699999999999999 ]
							}
, 							{
								"key" : 6773,
								"value" : [ 21.870000000000001 ]
							}
, 							{
								"key" : 6774,
								"value" : [ 21.920000000000002 ]
							}
, 							{
								"key" : 6775,
								"value" : [ 21.850000000000001 ]
							}
, 							{
								"key" : 6776,
								"value" : [ 21.920000000000002 ]
							}
, 							{
								"key" : 6777,
								"value" : [ 22.75 ]
							}
, 							{
								"key" : 6778,
								"value" : [ 24.170000000000002 ]
							}
, 							{
								"key" : 6779,
								"value" : [ 25.969999999999999 ]
							}
, 							{
								"key" : 6780,
								"value" : [ 28.170000000000002 ]
							}
, 							{
								"key" : 6781,
								"value" : [ 30.399999999999999 ]
							}
, 							{
								"key" : 6782,
								"value" : [ 31.640000000000001 ]
							}
, 							{
								"key" : 6783,
								"value" : [ 30.989999999999998 ]
							}
, 							{
								"key" : 6784,
								"value" : [ 30.239999999999998 ]
							}
, 							{
								"key" : 6785,
								"value" : [ 30.199999999999999 ]
							}
, 							{
								"key" : 6786,
								"value" : [ 30.739999999999998 ]
							}
, 							{
								"key" : 6787,
								"value" : [ 31.690000000000001 ]
							}
, 							{
								"key" : 6788,
								"value" : [ 33.039999999999999 ]
							}
, 							{
								"key" : 6789,
								"value" : [ 34.090000000000003 ]
							}
, 							{
								"key" : 6790,
								"value" : [ 34.609999999999999 ]
							}
, 							{
								"key" : 6791,
								"value" : [ 34.789999999999999 ]
							}
, 							{
								"key" : 6792,
								"value" : [ 34.829999999999998 ]
							}
, 							{
								"key" : 6793,
								"value" : [ 34.649999999999999 ]
							}
, 							{
								"key" : 6794,
								"value" : [ 34.390000000000001 ]
							}
, 							{
								"key" : 6795,
								"value" : [ 33.869999999999997 ]
							}
, 							{
								"key" : 6796,
								"value" : [ 33.689999999999998 ]
							}
, 							{
								"key" : 6797,
								"value" : [ 33.689999999999998 ]
							}
, 							{
								"key" : 6798,
								"value" : [ 32.759999999999998 ]
							}
, 							{
								"key" : 6799,
								"value" : [ 30.109999999999999 ]
							}
, 							{
								"key" : 6800,
								"value" : [ 27.640000000000001 ]
							}
, 							{
								"key" : 6801,
								"value" : [ 25.789999999999999 ]
							}
, 							{
								"key" : 6802,
								"value" : [ 23.559999999999999 ]
							}
, 							{
								"key" : 6803,
								"value" : [ 21.920000000000002 ]
							}
, 							{
								"key" : 6804,
								"value" : [ 21.539999999999999 ]
							}
, 							{
								"key" : 6805,
								"value" : [ 21.789999999999999 ]
							}
, 							{
								"key" : 6806,
								"value" : [ 21.809999999999999 ]
							}
, 							{
								"key" : 6807,
								"value" : [ 21.850000000000001 ]
							}
, 							{
								"key" : 6808,
								"value" : [ 21.199999999999999 ]
							}
, 							{
								"key" : 6809,
								"value" : [ 19.829999999999998 ]
							}
, 							{
								"key" : 6810,
								"value" : [ 18.77 ]
							}
, 							{
								"key" : 6811,
								"value" : [ 18.190000000000001 ]
							}
, 							{
								"key" : 6812,
								"value" : [ 17.780000000000001 ]
							}
, 							{
								"key" : 6813,
								"value" : [ 17.379999999999999 ]
							}
, 							{
								"key" : 6814,
								"value" : [ 17.010000000000002 ]
							}
, 							{
								"key" : 6815,
								"value" : [ 16.77 ]
							}
, 							{
								"key" : 6816,
								"value" : [ 16.559999999999999 ]
							}
, 							{
								"key" : 6817,
								"value" : [ 17.129999999999999 ]
							}
, 							{
								"key" : 6818,
								"value" : [ 17.370000000000001 ]
							}
, 							{
								"key" : 6819,
								"value" : [ 17.420000000000002 ]
							}
, 							{
								"key" : 6820,
								"value" : [ 17.739999999999998 ]
							}
, 							{
								"key" : 6821,
								"value" : [ 18.210000000000001 ]
							}
, 							{
								"key" : 6822,
								"value" : [ 18.68 ]
							}
, 							{
								"key" : 6823,
								"value" : [ 19.079999999999998 ]
							}
, 							{
								"key" : 6824,
								"value" : [ 19.170000000000002 ]
							}
, 							{
								"key" : 6825,
								"value" : [ 18.91 ]
							}
, 							{
								"key" : 6826,
								"value" : [ 18.43 ]
							}
, 							{
								"key" : 6827,
								"value" : [ 17.829999999999998 ]
							}
, 							{
								"key" : 6828,
								"value" : [ 17.329999999999998 ]
							}
, 							{
								"key" : 6829,
								"value" : [ 16.809999999999999 ]
							}
, 							{
								"key" : 6830,
								"value" : [ 16.390000000000001 ]
							}
, 							{
								"key" : 6831,
								"value" : [ 16.16 ]
							}
, 							{
								"key" : 6832,
								"value" : [ 15.82 ]
							}
, 							{
								"key" : 6833,
								"value" : [ 14.99 ]
							}
, 							{
								"key" : 6834,
								"value" : [ 14.34 ]
							}
, 							{
								"key" : 6835,
								"value" : [ 14.02 ]
							}
, 							{
								"key" : 6836,
								"value" : [ 13.75 ]
							}
, 							{
								"key" : 6837,
								"value" : [ 13.41 ]
							}
, 							{
								"key" : 6838,
								"value" : [ 12.99 ]
							}
, 							{
								"key" : 6839,
								"value" : [ 12.609999999999999 ]
							}
, 							{
								"key" : 6840,
								"value" : [ 12.289999999999999 ]
							}
, 							{
								"key" : 6841,
								"value" : [ 12.02 ]
							}
, 							{
								"key" : 6842,
								"value" : [ 11.84 ]
							}
, 							{
								"key" : 6843,
								"value" : [ 11.84 ]
							}
, 							{
								"key" : 6844,
								"value" : [ 11.800000000000001 ]
							}
, 							{
								"key" : 6845,
								"value" : [ 12.609999999999999 ]
							}
, 							{
								"key" : 6846,
								"value" : [ 13.460000000000001 ]
							}
, 							{
								"key" : 6847,
								"value" : [ 14.199999999999999 ]
							}
, 							{
								"key" : 6848,
								"value" : [ 15.029999999999999 ]
							}
, 							{
								"key" : 6849,
								"value" : [ 16.75 ]
							}
, 							{
								"key" : 6850,
								"value" : [ 18.190000000000001 ]
							}
, 							{
								"key" : 6851,
								"value" : [ 19.359999999999999 ]
							}
, 							{
								"key" : 6852,
								"value" : [ 21.600000000000001 ]
							}
, 							{
								"key" : 6853,
								"value" : [ 24.57 ]
							}
, 							{
								"key" : 6854,
								"value" : [ 27.449999999999999 ]
							}
, 							{
								"key" : 6855,
								"value" : [ 29.890000000000001 ]
							}
, 							{
								"key" : 6856,
								"value" : [ 30.989999999999998 ]
							}
, 							{
								"key" : 6857,
								"value" : [ 31.239999999999998 ]
							}
, 							{
								"key" : 6858,
								"value" : [ 31.460000000000001 ]
							}
, 							{
								"key" : 6859,
								"value" : [ 31.960000000000001 ]
							}
, 							{
								"key" : 6860,
								"value" : [ 32.590000000000003 ]
							}
, 							{
								"key" : 6861,
								"value" : [ 33.149999999999999 ]
							}
, 							{
								"key" : 6862,
								"value" : [ 33.130000000000003 ]
							}
, 							{
								"key" : 6863,
								"value" : [ 32.920000000000002 ]
							}
, 							{
								"key" : 6864,
								"value" : [ 32.520000000000003 ]
							}
, 							{
								"key" : 6865,
								"value" : [ 32.159999999999997 ]
							}
, 							{
								"key" : 6866,
								"value" : [ 31.75 ]
							}
, 							{
								"key" : 6867,
								"value" : [ 31.120000000000001 ]
							}
, 							{
								"key" : 6868,
								"value" : [ 31.030000000000001 ]
							}
, 							{
								"key" : 6869,
								"value" : [ 31.170000000000002 ]
							}
, 							{
								"key" : 6870,
								"value" : [ 31.48 ]
							}
, 							{
								"key" : 6871,
								"value" : [ 31.48 ]
							}
, 							{
								"key" : 6872,
								"value" : [ 30.870000000000001 ]
							}
, 							{
								"key" : 6873,
								"value" : [ 32.020000000000003 ]
							}
, 							{
								"key" : 6874,
								"value" : [ 32.950000000000003 ]
							}
, 							{
								"key" : 6875,
								"value" : [ 33.850000000000001 ]
							}
, 							{
								"key" : 6876,
								"value" : [ 34.789999999999999 ]
							}
, 							{
								"key" : 6877,
								"value" : [ 35.560000000000002 ]
							}
, 							{
								"key" : 6878,
								"value" : [ 36.32 ]
							}
, 							{
								"key" : 6879,
								"value" : [ 36.950000000000003 ]
							}
, 							{
								"key" : 6880,
								"value" : [ 36.700000000000003 ]
							}
, 							{
								"key" : 6881,
								"value" : [ 35.939999999999998 ]
							}
, 							{
								"key" : 6882,
								"value" : [ 35.740000000000002 ]
							}
, 							{
								"key" : 6883,
								"value" : [ 36.0 ]
							}
, 							{
								"key" : 6884,
								"value" : [ 36.210000000000001 ]
							}
, 							{
								"key" : 6885,
								"value" : [ 36.299999999999997 ]
							}
, 							{
								"key" : 6886,
								"value" : [ 36.140000000000001 ]
							}
, 							{
								"key" : 6887,
								"value" : [ 36.210000000000001 ]
							}
, 							{
								"key" : 6888,
								"value" : [ 36.450000000000003 ]
							}
, 							{
								"key" : 6889,
								"value" : [ 36.520000000000003 ]
							}
, 							{
								"key" : 6890,
								"value" : [ 36.340000000000003 ]
							}
, 							{
								"key" : 6891,
								"value" : [ 36.609999999999999 ]
							}
, 							{
								"key" : 6892,
								"value" : [ 36.880000000000003 ]
							}
, 							{
								"key" : 6893,
								"value" : [ 36.840000000000003 ]
							}
, 							{
								"key" : 6894,
								"value" : [ 36.520000000000003 ]
							}
, 							{
								"key" : 6895,
								"value" : [ 36.090000000000003 ]
							}
, 							{
								"key" : 6896,
								"value" : [ 35.82 ]
							}
, 							{
								"key" : 6897,
								"value" : [ 36.25 ]
							}
, 							{
								"key" : 6898,
								"value" : [ 37.060000000000002 ]
							}
, 							{
								"key" : 6899,
								"value" : [ 37.359999999999999 ]
							}
, 							{
								"key" : 6900,
								"value" : [ 37.509999999999998 ]
							}
, 							{
								"key" : 6901,
								"value" : [ 37.710000000000001 ]
							}
, 							{
								"key" : 6902,
								"value" : [ 37.799999999999997 ]
							}
, 							{
								"key" : 6903,
								"value" : [ 37.710000000000001 ]
							}
, 							{
								"key" : 6904,
								"value" : [ 36.990000000000002 ]
							}
, 							{
								"key" : 6905,
								"value" : [ 35.619999999999997 ]
							}
, 							{
								"key" : 6906,
								"value" : [ 35.689999999999998 ]
							}
, 							{
								"key" : 6907,
								"value" : [ 35.82 ]
							}
, 							{
								"key" : 6908,
								"value" : [ 35.740000000000002 ]
							}
, 							{
								"key" : 6909,
								"value" : [ 35.619999999999997 ]
							}
, 							{
								"key" : 6910,
								"value" : [ 35.350000000000001 ]
							}
, 							{
								"key" : 6911,
								"value" : [ 35.039999999999999 ]
							}
, 							{
								"key" : 6912,
								"value" : [ 35.219999999999999 ]
							}
, 							{
								"key" : 6913,
								"value" : [ 35.649999999999999 ]
							}
, 							{
								"key" : 6914,
								"value" : [ 35.729999999999997 ]
							}
, 							{
								"key" : 6915,
								"value" : [ 35.420000000000002 ]
							}
, 							{
								"key" : 6916,
								"value" : [ 35.039999999999999 ]
							}
, 							{
								"key" : 6917,
								"value" : [ 34.270000000000003 ]
							}
, 							{
								"key" : 6918,
								"value" : [ 33.460000000000001 ]
							}
, 							{
								"key" : 6919,
								"value" : [ 32.859999999999999 ]
							}
, 							{
								"key" : 6920,
								"value" : [ 32.399999999999999 ]
							}
, 							{
								"key" : 6921,
								"value" : [ 32.25 ]
							}
, 							{
								"key" : 6922,
								"value" : [ 32.090000000000003 ]
							}
, 							{
								"key" : 6923,
								"value" : [ 31.77 ]
							}
, 							{
								"key" : 6924,
								"value" : [ 31.370000000000001 ]
							}
, 							{
								"key" : 6925,
								"value" : [ 31.079999999999998 ]
							}
, 							{
								"key" : 6926,
								"value" : [ 30.789999999999999 ]
							}
, 							{
								"key" : 6927,
								"value" : [ 30.829999999999998 ]
							}
, 							{
								"key" : 6928,
								"value" : [ 30.899999999999999 ]
							}
, 							{
								"key" : 6929,
								"value" : [ 31.030000000000001 ]
							}
, 							{
								"key" : 6930,
								"value" : [ 31.329999999999998 ]
							}
, 							{
								"key" : 6931,
								"value" : [ 31.370000000000001 ]
							}
, 							{
								"key" : 6932,
								"value" : [ 31.100000000000001 ]
							}
, 							{
								"key" : 6933,
								"value" : [ 30.539999999999999 ]
							}
, 							{
								"key" : 6934,
								"value" : [ 29.52 ]
							}
, 							{
								"key" : 6935,
								"value" : [ 28.359999999999999 ]
							}
, 							{
								"key" : 6936,
								"value" : [ 27.300000000000001 ]
							}
, 							{
								"key" : 6937,
								"value" : [ 26.399999999999999 ]
							}
, 							{
								"key" : 6938,
								"value" : [ 25.84 ]
							}
, 							{
								"key" : 6939,
								"value" : [ 25.469999999999999 ]
							}
, 							{
								"key" : 6940,
								"value" : [ 25.210000000000001 ]
							}
, 							{
								"key" : 6941,
								"value" : [ 25.0 ]
							}
, 							{
								"key" : 6942,
								"value" : [ 24.84 ]
							}
, 							{
								"key" : 6943,
								"value" : [ 24.600000000000001 ]
							}
, 							{
								"key" : 6944,
								"value" : [ 24.489999999999998 ]
							}
, 							{
								"key" : 6945,
								"value" : [ 24.75 ]
							}
, 							{
								"key" : 6946,
								"value" : [ 25.07 ]
							}
, 							{
								"key" : 6947,
								"value" : [ 25.27 ]
							}
, 							{
								"key" : 6948,
								"value" : [ 25.359999999999999 ]
							}
, 							{
								"key" : 6949,
								"value" : [ 25.390000000000001 ]
							}
, 							{
								"key" : 6950,
								"value" : [ 25.41 ]
							}
, 							{
								"key" : 6951,
								"value" : [ 25.41 ]
							}
, 							{
								"key" : 6952,
								"value" : [ 25.48 ]
							}
, 							{
								"key" : 6953,
								"value" : [ 25.07 ]
							}
, 							{
								"key" : 6954,
								"value" : [ 24.850000000000001 ]
							}
, 							{
								"key" : 6955,
								"value" : [ 24.760000000000002 ]
							}
, 							{
								"key" : 6956,
								"value" : [ 24.460000000000001 ]
							}
, 							{
								"key" : 6957,
								"value" : [ 23.969999999999999 ]
							}
, 							{
								"key" : 6958,
								"value" : [ 23.469999999999999 ]
							}
, 							{
								"key" : 6959,
								"value" : [ 23.0 ]
							}
, 							{
								"key" : 6960,
								"value" : [ 22.440000000000001 ]
							}
, 							{
								"key" : 6961,
								"value" : [ 21.780000000000001 ]
							}
, 							{
								"key" : 6962,
								"value" : [ 21.199999999999999 ]
							}
, 							{
								"key" : 6963,
								"value" : [ 21.02 ]
							}
, 							{
								"key" : 6964,
								"value" : [ 20.84 ]
							}
, 							{
								"key" : 6965,
								"value" : [ 20.57 ]
							}
, 							{
								"key" : 6966,
								"value" : [ 20.280000000000001 ]
							}
, 							{
								"key" : 6967,
								"value" : [ 20.010000000000002 ]
							}
, 							{
								"key" : 6968,
								"value" : [ 20.030000000000001 ]
							}
, 							{
								"key" : 6969,
								"value" : [ 21.670000000000002 ]
							}
, 							{
								"key" : 6970,
								"value" : [ 23.140000000000001 ]
							}
, 							{
								"key" : 6971,
								"value" : [ 24.370000000000001 ]
							}
, 							{
								"key" : 6972,
								"value" : [ 25.34 ]
							}
, 							{
								"key" : 6973,
								"value" : [ 26.039999999999999 ]
							}
, 							{
								"key" : 6974,
								"value" : [ 26.559999999999999 ]
							}
, 							{
								"key" : 6975,
								"value" : [ 27.010000000000002 ]
							}
, 							{
								"key" : 6976,
								"value" : [ 27.359999999999999 ]
							}
, 							{
								"key" : 6977,
								"value" : [ 27.34 ]
							}
, 							{
								"key" : 6978,
								"value" : [ 27.5 ]
							}
, 							{
								"key" : 6979,
								"value" : [ 27.629999999999999 ]
							}
, 							{
								"key" : 6980,
								"value" : [ 27.449999999999999 ]
							}
, 							{
								"key" : 6981,
								"value" : [ 27.030000000000001 ]
							}
, 							{
								"key" : 6982,
								"value" : [ 26.82 ]
							}
, 							{
								"key" : 6983,
								"value" : [ 26.649999999999999 ]
							}
, 							{
								"key" : 6984,
								"value" : [ 26.309999999999999 ]
							}
, 							{
								"key" : 6985,
								"value" : [ 25.75 ]
							}
, 							{
								"key" : 6986,
								"value" : [ 25.52 ]
							}
, 							{
								"key" : 6987,
								"value" : [ 25.5 ]
							}
, 							{
								"key" : 6988,
								"value" : [ 25.469999999999999 ]
							}
, 							{
								"key" : 6989,
								"value" : [ 25.469999999999999 ]
							}
, 							{
								"key" : 6990,
								"value" : [ 25.829999999999998 ]
							}
, 							{
								"key" : 6991,
								"value" : [ 26.399999999999999 ]
							}
, 							{
								"key" : 6992,
								"value" : [ 26.870000000000001 ]
							}
, 							{
								"key" : 6993,
								"value" : [ 27.84 ]
							}
, 							{
								"key" : 6994,
								"value" : [ 28.539999999999999 ]
							}
, 							{
								"key" : 6995,
								"value" : [ 29.140000000000001 ]
							}
, 							{
								"key" : 6996,
								"value" : [ 29.620000000000001 ]
							}
, 							{
								"key" : 6997,
								"value" : [ 30.149999999999999 ]
							}
, 							{
								"key" : 6998,
								"value" : [ 30.469999999999999 ]
							}
, 							{
								"key" : 6999,
								"value" : [ 30.34 ]
							}
, 							{
								"key" : 7000,
								"value" : [ 30.02 ]
							}
, 							{
								"key" : 7001,
								"value" : [ 29.280000000000001 ]
							}
, 							{
								"key" : 7002,
								"value" : [ 28.809999999999999 ]
							}
, 							{
								"key" : 7003,
								"value" : [ 27.879999999999999 ]
							}
, 							{
								"key" : 7004,
								"value" : [ 27.030000000000001 ]
							}
, 							{
								"key" : 7005,
								"value" : [ 26.469999999999999 ]
							}
, 							{
								"key" : 7006,
								"value" : [ 26.02 ]
							}
, 							{
								"key" : 7007,
								"value" : [ 25.629999999999999 ]
							}
, 							{
								"key" : 7008,
								"value" : [ 25.27 ]
							}
, 							{
								"key" : 7009,
								"value" : [ 24.93 ]
							}
, 							{
								"key" : 7010,
								"value" : [ 24.640000000000001 ]
							}
, 							{
								"key" : 7011,
								"value" : [ 24.350000000000001 ]
							}
, 							{
								"key" : 7012,
								"value" : [ 24.030000000000001 ]
							}
, 							{
								"key" : 7013,
								"value" : [ 23.920000000000002 ]
							}
, 							{
								"key" : 7014,
								"value" : [ 23.920000000000002 ]
							}
, 							{
								"key" : 7015,
								"value" : [ 23.920000000000002 ]
							}
, 							{
								"key" : 7016,
								"value" : [ 24.48 ]
							}
, 							{
								"key" : 7017,
								"value" : [ 27.07 ]
							}
, 							{
								"key" : 7018,
								"value" : [ 28.620000000000001 ]
							}
, 							{
								"key" : 7019,
								"value" : [ 30.690000000000001 ]
							}
, 							{
								"key" : 7020,
								"value" : [ 32.950000000000003 ]
							}
, 							{
								"key" : 7021,
								"value" : [ 35.289999999999999 ]
							}
, 							{
								"key" : 7022,
								"value" : [ 38.07 ]
							}
, 							{
								"key" : 7023,
								"value" : [ 39.700000000000003 ]
							}
, 							{
								"key" : 7024,
								"value" : [ 39.990000000000002 ]
							}
, 							{
								"key" : 7025,
								"value" : [ 39.329999999999998 ]
							}
, 							{
								"key" : 7026,
								"value" : [ 38.159999999999997 ]
							}
, 							{
								"key" : 7027,
								"value" : [ 37.310000000000002 ]
							}
, 							{
								"key" : 7028,
								"value" : [ 36.990000000000002 ]
							}
, 							{
								"key" : 7029,
								"value" : [ 37.039999999999999 ]
							}
, 							{
								"key" : 7030,
								"value" : [ 37.079999999999998 ]
							}
, 							{
								"key" : 7031,
								"value" : [ 37.149999999999999 ]
							}
, 							{
								"key" : 7032,
								"value" : [ 36.859999999999999 ]
							}
, 							{
								"key" : 7033,
								"value" : [ 35.979999999999997 ]
							}
, 							{
								"key" : 7034,
								"value" : [ 35.039999999999999 ]
							}
, 							{
								"key" : 7035,
								"value" : [ 33.240000000000002 ]
							}
, 							{
								"key" : 7036,
								"value" : [ 30.539999999999999 ]
							}
, 							{
								"key" : 7037,
								"value" : [ 28.329999999999998 ]
							}
, 							{
								"key" : 7038,
								"value" : [ 26.780000000000001 ]
							}
, 							{
								"key" : 7039,
								"value" : [ 25.16 ]
							}
, 							{
								"key" : 7040,
								"value" : [ 23.539999999999999 ]
							}
, 							{
								"key" : 7041,
								"value" : [ 22.77 ]
							}
, 							{
								"key" : 7042,
								"value" : [ 22.210000000000001 ]
							}
, 							{
								"key" : 7043,
								"value" : [ 21.870000000000001 ]
							}
, 							{
								"key" : 7044,
								"value" : [ 21.690000000000001 ]
							}
, 							{
								"key" : 7045,
								"value" : [ 21.879999999999999 ]
							}
, 							{
								"key" : 7046,
								"value" : [ 22.190000000000001 ]
							}
, 							{
								"key" : 7047,
								"value" : [ 22.059999999999999 ]
							}
, 							{
								"key" : 7048,
								"value" : [ 21.239999999999998 ]
							}
, 							{
								"key" : 7049,
								"value" : [ 20.210000000000001 ]
							}
, 							{
								"key" : 7050,
								"value" : [ 19.780000000000001 ]
							}
, 							{
								"key" : 7051,
								"value" : [ 19.739999999999998 ]
							}
, 							{
								"key" : 7052,
								"value" : [ 19.989999999999998 ]
							}
, 							{
								"key" : 7053,
								"value" : [ 20.120000000000001 ]
							}
, 							{
								"key" : 7054,
								"value" : [ 19.890000000000001 ]
							}
, 							{
								"key" : 7055,
								"value" : [ 19.629999999999999 ]
							}
, 							{
								"key" : 7056,
								"value" : [ 19.649999999999999 ]
							}
, 							{
								"key" : 7057,
								"value" : [ 19.359999999999999 ]
							}
, 							{
								"key" : 7058,
								"value" : [ 18.66 ]
							}
, 							{
								"key" : 7059,
								"value" : [ 17.739999999999998 ]
							}
, 							{
								"key" : 7060,
								"value" : [ 17.02 ]
							}
, 							{
								"key" : 7061,
								"value" : [ 16.469999999999999 ]
							}
, 							{
								"key" : 7062,
								"value" : [ 15.869999999999999 ]
							}
, 							{
								"key" : 7063,
								"value" : [ 15.35 ]
							}
, 							{
								"key" : 7064,
								"value" : [ 15.24 ]
							}
, 							{
								"key" : 7065,
								"value" : [ 16.300000000000001 ]
							}
, 							{
								"key" : 7066,
								"value" : [ 17.370000000000001 ]
							}
, 							{
								"key" : 7067,
								"value" : [ 18.390000000000001 ]
							}
, 							{
								"key" : 7068,
								"value" : [ 19.199999999999999 ]
							}
, 							{
								"key" : 7069,
								"value" : [ 19.760000000000002 ]
							}
, 							{
								"key" : 7070,
								"value" : [ 20.07 ]
							}
, 							{
								"key" : 7071,
								"value" : [ 20.100000000000001 ]
							}
, 							{
								"key" : 7072,
								"value" : [ 19.940000000000001 ]
							}
, 							{
								"key" : 7073,
								"value" : [ 19.600000000000001 ]
							}
, 							{
								"key" : 7074,
								"value" : [ 19.489999999999998 ]
							}
, 							{
								"key" : 7075,
								"value" : [ 19.379999999999999 ]
							}
, 							{
								"key" : 7076,
								"value" : [ 19.539999999999999 ]
							}
, 							{
								"key" : 7077,
								"value" : [ 19.489999999999998 ]
							}
, 							{
								"key" : 7078,
								"value" : [ 19.600000000000001 ]
							}
, 							{
								"key" : 7079,
								"value" : [ 19.690000000000001 ]
							}
, 							{
								"key" : 7080,
								"value" : [ 19.899999999999999 ]
							}
, 							{
								"key" : 7081,
								"value" : [ 20.120000000000001 ]
							}
, 							{
								"key" : 7082,
								"value" : [ 20.100000000000001 ]
							}
, 							{
								"key" : 7083,
								"value" : [ 20.120000000000001 ]
							}
, 							{
								"key" : 7084,
								"value" : [ 20.25 ]
							}
, 							{
								"key" : 7085,
								"value" : [ 20.41 ]
							}
, 							{
								"key" : 7086,
								"value" : [ 20.66 ]
							}
, 							{
								"key" : 7087,
								"value" : [ 20.91 ]
							}
, 							{
								"key" : 7088,
								"value" : [ 21.07 ]
							}
, 							{
								"key" : 7089,
								"value" : [ 21.920000000000002 ]
							}
, 							{
								"key" : 7090,
								"value" : [ 22.600000000000001 ]
							}
, 							{
								"key" : 7091,
								"value" : [ 23.219999999999999 ]
							}
, 							{
								"key" : 7092,
								"value" : [ 23.699999999999999 ]
							}
, 							{
								"key" : 7093,
								"value" : [ 24.210000000000001 ]
							}
, 							{
								"key" : 7094,
								"value" : [ 24.66 ]
							}
, 							{
								"key" : 7095,
								"value" : [ 24.82 ]
							}
, 							{
								"key" : 7096,
								"value" : [ 24.620000000000001 ]
							}
, 							{
								"key" : 7097,
								"value" : [ 23.379999999999999 ]
							}
, 							{
								"key" : 7098,
								"value" : [ 22.57 ]
							}
, 							{
								"key" : 7099,
								"value" : [ 22.190000000000001 ]
							}
, 							{
								"key" : 7100,
								"value" : [ 21.920000000000002 ]
							}
, 							{
								"key" : 7101,
								"value" : [ 21.809999999999999 ]
							}
, 							{
								"key" : 7102,
								"value" : [ 21.690000000000001 ]
							}
, 							{
								"key" : 7103,
								"value" : [ 21.609999999999999 ]
							}
, 							{
								"key" : 7104,
								"value" : [ 21.420000000000002 ]
							}
, 							{
								"key" : 7105,
								"value" : [ 21.489999999999998 ]
							}
, 							{
								"key" : 7106,
								"value" : [ 21.449999999999999 ]
							}
, 							{
								"key" : 7107,
								"value" : [ 21.379999999999999 ]
							}
, 							{
								"key" : 7108,
								"value" : [ 21.469999999999999 ]
							}
, 							{
								"key" : 7109,
								"value" : [ 21.699999999999999 ]
							}
, 							{
								"key" : 7110,
								"value" : [ 21.789999999999999 ]
							}
, 							{
								"key" : 7111,
								"value" : [ 21.809999999999999 ]
							}
, 							{
								"key" : 7112,
								"value" : [ 21.780000000000001 ]
							}
, 							{
								"key" : 7113,
								"value" : [ 22.57 ]
							}
, 							{
								"key" : 7114,
								"value" : [ 23.879999999999999 ]
							}
, 							{
								"key" : 7115,
								"value" : [ 25.539999999999999 ]
							}
, 							{
								"key" : 7116,
								"value" : [ 27.52 ]
							}
, 							{
								"key" : 7117,
								"value" : [ 29.390000000000001 ]
							}
, 							{
								"key" : 7118,
								"value" : [ 30.629999999999999 ]
							}
, 							{
								"key" : 7119,
								"value" : [ 30.920000000000002 ]
							}
, 							{
								"key" : 7120,
								"value" : [ 30.09 ]
							}
, 							{
								"key" : 7121,
								"value" : [ 28.670000000000002 ]
							}
, 							{
								"key" : 7122,
								"value" : [ 27.449999999999999 ]
							}
, 							{
								"key" : 7123,
								"value" : [ 26.670000000000002 ]
							}
, 							{
								"key" : 7124,
								"value" : [ 26.199999999999999 ]
							}
, 							{
								"key" : 7125,
								"value" : [ 25.920000000000002 ]
							}
, 							{
								"key" : 7126,
								"value" : [ 25.02 ]
							}
, 							{
								"key" : 7127,
								"value" : [ 24.079999999999998 ]
							}
, 							{
								"key" : 7128,
								"value" : [ 23.379999999999999 ]
							}
, 							{
								"key" : 7129,
								"value" : [ 22.57 ]
							}
, 							{
								"key" : 7130,
								"value" : [ 21.699999999999999 ]
							}
, 							{
								"key" : 7131,
								"value" : [ 21.469999999999999 ]
							}
, 							{
								"key" : 7132,
								"value" : [ 22.350000000000001 ]
							}
, 							{
								"key" : 7133,
								"value" : [ 23.850000000000001 ]
							}
, 							{
								"key" : 7134,
								"value" : [ 24.75 ]
							}
, 							{
								"key" : 7135,
								"value" : [ 25.43 ]
							}
, 							{
								"key" : 7136,
								"value" : [ 25.25 ]
							}
, 							{
								"key" : 7137,
								"value" : [ 24.760000000000002 ]
							}
, 							{
								"key" : 7138,
								"value" : [ 24.170000000000002 ]
							}
, 							{
								"key" : 7139,
								"value" : [ 24.149999999999999 ]
							}
, 							{
								"key" : 7140,
								"value" : [ 24.420000000000002 ]
							}
, 							{
								"key" : 7141,
								"value" : [ 24.399999999999999 ]
							}
, 							{
								"key" : 7142,
								"value" : [ 24.039999999999999 ]
							}
, 							{
								"key" : 7143,
								"value" : [ 23.41 ]
							}
, 							{
								"key" : 7144,
								"value" : [ 22.059999999999999 ]
							}
, 							{
								"key" : 7145,
								"value" : [ 20.260000000000002 ]
							}
, 							{
								"key" : 7146,
								"value" : [ 19.039999999999999 ]
							}
, 							{
								"key" : 7147,
								"value" : [ 18.120000000000001 ]
							}
, 							{
								"key" : 7148,
								"value" : [ 16.920000000000002 ]
							}
, 							{
								"key" : 7149,
								"value" : [ 16.120000000000001 ]
							}
, 							{
								"key" : 7150,
								"value" : [ 15.69 ]
							}
, 							{
								"key" : 7151,
								"value" : [ 15.779999999999999 ]
							}
, 							{
								"key" : 7152,
								"value" : [ 15.960000000000001 ]
							}
, 							{
								"key" : 7153,
								"value" : [ 17.010000000000002 ]
							}
, 							{
								"key" : 7154,
								"value" : [ 18.0 ]
							}
, 							{
								"key" : 7155,
								"value" : [ 18.550000000000001 ]
							}
, 							{
								"key" : 7156,
								"value" : [ 19.170000000000002 ]
							}
, 							{
								"key" : 7157,
								"value" : [ 19.890000000000001 ]
							}
, 							{
								"key" : 7158,
								"value" : [ 20.75 ]
							}
, 							{
								"key" : 7159,
								"value" : [ 21.719999999999999 ]
							}
, 							{
								"key" : 7160,
								"value" : [ 22.73 ]
							}
, 							{
								"key" : 7161,
								"value" : [ 23.719999999999999 ]
							}
, 							{
								"key" : 7162,
								"value" : [ 24.98 ]
							}
, 							{
								"key" : 7163,
								"value" : [ 25.969999999999999 ]
							}
, 							{
								"key" : 7164,
								"value" : [ 26.199999999999999 ]
							}
, 							{
								"key" : 7165,
								"value" : [ 26.370000000000001 ]
							}
, 							{
								"key" : 7166,
								"value" : [ 25.969999999999999 ]
							}
, 							{
								"key" : 7167,
								"value" : [ 25.02 ]
							}
, 							{
								"key" : 7168,
								"value" : [ 23.789999999999999 ]
							}
, 							{
								"key" : 7169,
								"value" : [ 22.690000000000001 ]
							}
, 							{
								"key" : 7170,
								"value" : [ 21.829999999999998 ]
							}
, 							{
								"key" : 7171,
								"value" : [ 21.16 ]
							}
, 							{
								"key" : 7172,
								"value" : [ 20.210000000000001 ]
							}
, 							{
								"key" : 7173,
								"value" : [ 19.940000000000001 ]
							}
, 							{
								"key" : 7174,
								"value" : [ 19.98 ]
							}
, 							{
								"key" : 7175,
								"value" : [ 19.760000000000002 ]
							}
, 							{
								"key" : 7176,
								"value" : [ 19.670000000000002 ]
							}
, 							{
								"key" : 7177,
								"value" : [ 19.170000000000002 ]
							}
, 							{
								"key" : 7178,
								"value" : [ 18.640000000000001 ]
							}
, 							{
								"key" : 7179,
								"value" : [ 17.649999999999999 ]
							}
, 							{
								"key" : 7180,
								"value" : [ 16.27 ]
							}
, 							{
								"key" : 7181,
								"value" : [ 15.029999999999999 ]
							}
, 							{
								"key" : 7182,
								"value" : [ 13.960000000000001 ]
							}
, 							{
								"key" : 7183,
								"value" : [ 12.94 ]
							}
, 							{
								"key" : 7184,
								"value" : [ 12.43 ]
							}
, 							{
								"key" : 7185,
								"value" : [ 13.550000000000001 ]
							}
, 							{
								"key" : 7186,
								"value" : [ 14.470000000000001 ]
							}
, 							{
								"key" : 7187,
								"value" : [ 15.130000000000001 ]
							}
, 							{
								"key" : 7188,
								"value" : [ 15.76 ]
							}
, 							{
								"key" : 7189,
								"value" : [ 16.210000000000001 ]
							}
, 							{
								"key" : 7190,
								"value" : [ 16.41 ]
							}
, 							{
								"key" : 7191,
								"value" : [ 16.34 ]
							}
, 							{
								"key" : 7192,
								"value" : [ 15.890000000000001 ]
							}
, 							{
								"key" : 7193,
								"value" : [ 14.58 ]
							}
, 							{
								"key" : 7194,
								"value" : [ 13.140000000000001 ]
							}
, 							{
								"key" : 7195,
								"value" : [ 12.16 ]
							}
, 							{
								"key" : 7196,
								"value" : [ 11.19 ]
							}
, 							{
								"key" : 7197,
								"value" : [ 10.33 ]
							}
, 							{
								"key" : 7198,
								"value" : [ 9.48 ]
							}
, 							{
								"key" : 7199,
								"value" : [ 8.74 ]
							}
, 							{
								"key" : 7200,
								"value" : [ 8.17 ]
							}
, 							{
								"key" : 7201,
								"value" : [ 7.75 ]
							}
, 							{
								"key" : 7202,
								"value" : [ 7.54 ]
							}
, 							{
								"key" : 7203,
								"value" : [ 7.39 ]
							}
, 							{
								"key" : 7204,
								"value" : [ 7.11 ]
							}
, 							{
								"key" : 7205,
								"value" : [ 6.87 ]
							}
, 							{
								"key" : 7206,
								"value" : [ 6.64 ]
							}
, 							{
								"key" : 7207,
								"value" : [ 6.37 ]
							}
, 							{
								"key" : 7208,
								"value" : [ 6.48 ]
							}
, 							{
								"key" : 7209,
								"value" : [ 7.47 ]
							}
, 							{
								"key" : 7210,
								"value" : [ 8.869999999999999 ]
							}
, 							{
								"key" : 7211,
								"value" : [ 10.0 ]
							}
, 							{
								"key" : 7212,
								"value" : [ 11.390000000000001 ]
							}
, 							{
								"key" : 7213,
								"value" : [ 12.789999999999999 ]
							}
, 							{
								"key" : 7214,
								"value" : [ 13.949999999999999 ]
							}
, 							{
								"key" : 7215,
								"value" : [ 14.609999999999999 ]
							}
, 							{
								"key" : 7216,
								"value" : [ 14.789999999999999 ]
							}
, 							{
								"key" : 7217,
								"value" : [ 14.220000000000001 ]
							}
, 							{
								"key" : 7218,
								"value" : [ 13.57 ]
							}
, 							{
								"key" : 7219,
								"value" : [ 13.68 ]
							}
, 							{
								"key" : 7220,
								"value" : [ 13.93 ]
							}
, 							{
								"key" : 7221,
								"value" : [ 14.41 ]
							}
, 							{
								"key" : 7222,
								"value" : [ 15.029999999999999 ]
							}
, 							{
								"key" : 7223,
								"value" : [ 15.73 ]
							}
, 							{
								"key" : 7224,
								"value" : [ 16.25 ]
							}
, 							{
								"key" : 7225,
								"value" : [ 17.02 ]
							}
, 							{
								"key" : 7226,
								"value" : [ 18.050000000000001 ]
							}
, 							{
								"key" : 7227,
								"value" : [ 19.039999999999999 ]
							}
, 							{
								"key" : 7228,
								"value" : [ 20.120000000000001 ]
							}
, 							{
								"key" : 7229,
								"value" : [ 21.289999999999999 ]
							}
, 							{
								"key" : 7230,
								"value" : [ 22.170000000000002 ]
							}
, 							{
								"key" : 7231,
								"value" : [ 22.420000000000002 ]
							}
, 							{
								"key" : 7232,
								"value" : [ 22.390000000000001 ]
							}
, 							{
								"key" : 7233,
								"value" : [ 23.34 ]
							}
, 							{
								"key" : 7234,
								"value" : [ 25.25 ]
							}
, 							{
								"key" : 7235,
								"value" : [ 27.359999999999999 ]
							}
, 							{
								"key" : 7236,
								"value" : [ 29.260000000000002 ]
							}
, 							{
								"key" : 7237,
								"value" : [ 30.670000000000002 ]
							}
, 							{
								"key" : 7238,
								"value" : [ 31.420000000000002 ]
							}
, 							{
								"key" : 7239,
								"value" : [ 31.800000000000001 ]
							}
, 							{
								"key" : 7240,
								"value" : [ 31.800000000000001 ]
							}
, 							{
								"key" : 7241,
								"value" : [ 30.870000000000001 ]
							}
, 							{
								"key" : 7242,
								"value" : [ 29.93 ]
							}
, 							{
								"key" : 7243,
								"value" : [ 29.949999999999999 ]
							}
, 							{
								"key" : 7244,
								"value" : [ 30.02 ]
							}
, 							{
								"key" : 7245,
								"value" : [ 29.75 ]
							}
, 							{
								"key" : 7246,
								"value" : [ 29.140000000000001 ]
							}
, 							{
								"key" : 7247,
								"value" : [ 28.530000000000001 ]
							}
, 							{
								"key" : 7248,
								"value" : [ 27.969999999999999 ]
							}
, 							{
								"key" : 7249,
								"value" : [ 27.539999999999999 ]
							}
, 							{
								"key" : 7250,
								"value" : [ 27.16 ]
							}
, 							{
								"key" : 7251,
								"value" : [ 26.690000000000001 ]
							}
, 							{
								"key" : 7252,
								"value" : [ 26.219999999999999 ]
							}
, 							{
								"key" : 7253,
								"value" : [ 25.66 ]
							}
, 							{
								"key" : 7254,
								"value" : [ 25.07 ]
							}
, 							{
								"key" : 7255,
								"value" : [ 24.370000000000001 ]
							}
, 							{
								"key" : 7256,
								"value" : [ 24.059999999999999 ]
							}
, 							{
								"key" : 7257,
								"value" : [ 24.350000000000001 ]
							}
, 							{
								"key" : 7258,
								"value" : [ 24.57 ]
							}
, 							{
								"key" : 7259,
								"value" : [ 24.800000000000001 ]
							}
, 							{
								"key" : 7260,
								"value" : [ 25.02 ]
							}
, 							{
								"key" : 7261,
								"value" : [ 25.25 ]
							}
, 							{
								"key" : 7262,
								"value" : [ 25.289999999999999 ]
							}
, 							{
								"key" : 7263,
								"value" : [ 25.27 ]
							}
, 							{
								"key" : 7264,
								"value" : [ 25.0 ]
							}
, 							{
								"key" : 7265,
								"value" : [ 24.210000000000001 ]
							}
, 							{
								"key" : 7266,
								"value" : [ 23.359999999999999 ]
							}
, 							{
								"key" : 7267,
								"value" : [ 22.710000000000001 ]
							}
, 							{
								"key" : 7268,
								"value" : [ 22.050000000000001 ]
							}
, 							{
								"key" : 7269,
								"value" : [ 21.16 ]
							}
, 							{
								"key" : 7270,
								"value" : [ 20.260000000000002 ]
							}
, 							{
								"key" : 7271,
								"value" : [ 19.170000000000002 ]
							}
, 							{
								"key" : 7272,
								"value" : [ 18.030000000000001 ]
							}
, 							{
								"key" : 7273,
								"value" : [ 17.260000000000002 ]
							}
, 							{
								"key" : 7274,
								"value" : [ 16.390000000000001 ]
							}
, 							{
								"key" : 7275,
								"value" : [ 15.01 ]
							}
, 							{
								"key" : 7276,
								"value" : [ 13.960000000000001 ]
							}
, 							{
								"key" : 7277,
								"value" : [ 13.42 ]
							}
, 							{
								"key" : 7278,
								"value" : [ 13.210000000000001 ]
							}
, 							{
								"key" : 7279,
								"value" : [ 12.960000000000001 ]
							}
, 							{
								"key" : 7280,
								"value" : [ 13.32 ]
							}
, 							{
								"key" : 7281,
								"value" : [ 14.699999999999999 ]
							}
, 							{
								"key" : 7282,
								"value" : [ 16.379999999999999 ]
							}
, 							{
								"key" : 7283,
								"value" : [ 17.690000000000001 ]
							}
, 							{
								"key" : 7284,
								"value" : [ 19.199999999999999 ]
							}
, 							{
								"key" : 7285,
								"value" : [ 20.620000000000001 ]
							}
, 							{
								"key" : 7286,
								"value" : [ 21.969999999999999 ]
							}
, 							{
								"key" : 7287,
								"value" : [ 22.77 ]
							}
, 							{
								"key" : 7288,
								"value" : [ 23.02 ]
							}
, 							{
								"key" : 7289,
								"value" : [ 22.77 ]
							}
, 							{
								"key" : 7290,
								"value" : [ 22.73 ]
							}
, 							{
								"key" : 7291,
								"value" : [ 23.050000000000001 ]
							}
, 							{
								"key" : 7292,
								"value" : [ 23.34 ]
							}
, 							{
								"key" : 7293,
								"value" : [ 23.559999999999999 ]
							}
, 							{
								"key" : 7294,
								"value" : [ 23.649999999999999 ]
							}
, 							{
								"key" : 7295,
								"value" : [ 23.649999999999999 ]
							}
, 							{
								"key" : 7296,
								"value" : [ 23.32 ]
							}
, 							{
								"key" : 7297,
								"value" : [ 22.710000000000001 ]
							}
, 							{
								"key" : 7298,
								"value" : [ 22.059999999999999 ]
							}
, 							{
								"key" : 7299,
								"value" : [ 21.219999999999999 ]
							}
, 							{
								"key" : 7300,
								"value" : [ 20.59 ]
							}
, 							{
								"key" : 7301,
								"value" : [ 20.100000000000001 ]
							}
, 							{
								"key" : 7302,
								"value" : [ 19.98 ]
							}
, 							{
								"key" : 7303,
								"value" : [ 21.07 ]
							}
, 							{
								"key" : 7304,
								"value" : [ 23.109999999999999 ]
							}
, 							{
								"key" : 7305,
								"value" : [ 26.379999999999999 ]
							}
, 							{
								"key" : 7306,
								"value" : [ 28.510000000000002 ]
							}
, 							{
								"key" : 7307,
								"value" : [ 29.440000000000001 ]
							}
, 							{
								"key" : 7308,
								"value" : [ 29.84 ]
							}
, 							{
								"key" : 7309,
								"value" : [ 29.859999999999999 ]
							}
, 							{
								"key" : 7310,
								"value" : [ 29.890000000000001 ]
							}
, 							{
								"key" : 7311,
								"value" : [ 29.949999999999999 ]
							}
, 							{
								"key" : 7312,
								"value" : [ 29.84 ]
							}
, 							{
								"key" : 7313,
								"value" : [ 29.32 ]
							}
, 							{
								"key" : 7314,
								"value" : [ 29.07 ]
							}
, 							{
								"key" : 7315,
								"value" : [ 29.120000000000001 ]
							}
, 							{
								"key" : 7316,
								"value" : [ 29.260000000000002 ]
							}
, 							{
								"key" : 7317,
								"value" : [ 29.43 ]
							}
, 							{
								"key" : 7318,
								"value" : [ 29.5 ]
							}
, 							{
								"key" : 7319,
								"value" : [ 29.710000000000001 ]
							}
, 							{
								"key" : 7320,
								"value" : [ 29.93 ]
							}
, 							{
								"key" : 7321,
								"value" : [ 29.84 ]
							}
, 							{
								"key" : 7322,
								"value" : [ 29.640000000000001 ]
							}
, 							{
								"key" : 7323,
								"value" : [ 29.48 ]
							}
, 							{
								"key" : 7324,
								"value" : [ 29.59 ]
							}
, 							{
								"key" : 7325,
								"value" : [ 29.710000000000001 ]
							}
, 							{
								"key" : 7326,
								"value" : [ 29.41 ]
							}
, 							{
								"key" : 7327,
								"value" : [ 28.870000000000001 ]
							}
, 							{
								"key" : 7328,
								"value" : [ 28.399999999999999 ]
							}
, 							{
								"key" : 7329,
								"value" : [ 29.82 ]
							}
, 							{
								"key" : 7330,
								"value" : [ 30.539999999999999 ]
							}
, 							{
								"key" : 7331,
								"value" : [ 31.32 ]
							}
, 							{
								"key" : 7332,
								"value" : [ 31.890000000000001 ]
							}
, 							{
								"key" : 7333,
								"value" : [ 32.289999999999999 ]
							}
, 							{
								"key" : 7334,
								"value" : [ 32.719999999999999 ]
							}
, 							{
								"key" : 7335,
								"value" : [ 33.170000000000002 ]
							}
, 							{
								"key" : 7336,
								"value" : [ 33.149999999999999 ]
							}
, 							{
								"key" : 7337,
								"value" : [ 32.109999999999999 ]
							}
, 							{
								"key" : 7338,
								"value" : [ 31.780000000000001 ]
							}
, 							{
								"key" : 7339,
								"value" : [ 31.780000000000001 ]
							}
, 							{
								"key" : 7340,
								"value" : [ 31.640000000000001 ]
							}
, 							{
								"key" : 7341,
								"value" : [ 31.73 ]
							}
, 							{
								"key" : 7342,
								"value" : [ 31.600000000000001 ]
							}
, 							{
								"key" : 7343,
								"value" : [ 31.550000000000001 ]
							}
, 							{
								"key" : 7344,
								"value" : [ 31.260000000000002 ]
							}
, 							{
								"key" : 7345,
								"value" : [ 31.100000000000001 ]
							}
, 							{
								"key" : 7346,
								"value" : [ 31.079999999999998 ]
							}
, 							{
								"key" : 7347,
								"value" : [ 31.059999999999999 ]
							}
, 							{
								"key" : 7348,
								"value" : [ 31.079999999999998 ]
							}
, 							{
								"key" : 7349,
								"value" : [ 31.23 ]
							}
, 							{
								"key" : 7350,
								"value" : [ 31.280000000000001 ]
							}
, 							{
								"key" : 7351,
								"value" : [ 31.149999999999999 ]
							}
, 							{
								"key" : 7352,
								"value" : [ 32.229999999999997 ]
							}
, 							{
								"key" : 7353,
								"value" : [ 35.009999999999998 ]
							}
, 							{
								"key" : 7354,
								"value" : [ 36.899999999999999 ]
							}
, 							{
								"key" : 7355,
								"value" : [ 38.57 ]
							}
, 							{
								"key" : 7356,
								"value" : [ 40.409999999999997 ]
							}
, 							{
								"key" : 7357,
								"value" : [ 41.579999999999998 ]
							}
, 							{
								"key" : 7358,
								"value" : [ 41.43 ]
							}
, 							{
								"key" : 7359,
								"value" : [ 40.770000000000003 ]
							}
, 							{
								"key" : 7360,
								"value" : [ 39.539999999999999 ]
							}
, 							{
								"key" : 7361,
								"value" : [ 38.170000000000002 ]
							}
, 							{
								"key" : 7362,
								"value" : [ 37.469999999999999 ]
							}
, 							{
								"key" : 7363,
								"value" : [ 36.770000000000003 ]
							}
, 							{
								"key" : 7364,
								"value" : [ 35.490000000000002 ]
							}
, 							{
								"key" : 7365,
								"value" : [ 33.689999999999998 ]
							}
, 							{
								"key" : 7366,
								"value" : [ 32.759999999999998 ]
							}
, 							{
								"key" : 7367,
								"value" : [ 32.810000000000002 ]
							}
, 							{
								"key" : 7368,
								"value" : [ 32.049999999999997 ]
							}
, 							{
								"key" : 7369,
								"value" : [ 30.510000000000002 ]
							}
, 							{
								"key" : 7370,
								"value" : [ 28.890000000000001 ]
							}
, 							{
								"key" : 7371,
								"value" : [ 28.170000000000002 ]
							}
, 							{
								"key" : 7372,
								"value" : [ 27.59 ]
							}
, 							{
								"key" : 7373,
								"value" : [ 26.649999999999999 ]
							}
, 							{
								"key" : 7374,
								"value" : [ 25.34 ]
							}
, 							{
								"key" : 7375,
								"value" : [ 24.309999999999999 ]
							}
, 							{
								"key" : 7376,
								"value" : [ 23.949999999999999 ]
							}
, 							{
								"key" : 7377,
								"value" : [ 24.030000000000001 ]
							}
, 							{
								"key" : 7378,
								"value" : [ 23.789999999999999 ]
							}
, 							{
								"key" : 7379,
								"value" : [ 23.43 ]
							}
, 							{
								"key" : 7380,
								"value" : [ 23.379999999999999 ]
							}
, 							{
								"key" : 7381,
								"value" : [ 23.379999999999999 ]
							}
, 							{
								"key" : 7382,
								"value" : [ 23.359999999999999 ]
							}
, 							{
								"key" : 7383,
								"value" : [ 23.649999999999999 ]
							}
, 							{
								"key" : 7384,
								"value" : [ 23.920000000000002 ]
							}
, 							{
								"key" : 7385,
								"value" : [ 24.129999999999999 ]
							}
, 							{
								"key" : 7386,
								"value" : [ 24.390000000000001 ]
							}
, 							{
								"key" : 7387,
								"value" : [ 24.670000000000002 ]
							}
, 							{
								"key" : 7388,
								"value" : [ 25.09 ]
							}
, 							{
								"key" : 7389,
								"value" : [ 25.59 ]
							}
, 							{
								"key" : 7390,
								"value" : [ 25.920000000000002 ]
							}
, 							{
								"key" : 7391,
								"value" : [ 26.010000000000002 ]
							}
, 							{
								"key" : 7392,
								"value" : [ 26.170000000000002 ]
							}
, 							{
								"key" : 7393,
								"value" : [ 26.239999999999998 ]
							}
, 							{
								"key" : 7394,
								"value" : [ 26.329999999999998 ]
							}
, 							{
								"key" : 7395,
								"value" : [ 26.370000000000001 ]
							}
, 							{
								"key" : 7396,
								"value" : [ 26.370000000000001 ]
							}
, 							{
								"key" : 7397,
								"value" : [ 26.260000000000002 ]
							}
, 							{
								"key" : 7398,
								"value" : [ 26.039999999999999 ]
							}
, 							{
								"key" : 7399,
								"value" : [ 25.829999999999998 ]
							}
, 							{
								"key" : 7400,
								"value" : [ 25.75 ]
							}
, 							{
								"key" : 7401,
								"value" : [ 25.739999999999998 ]
							}
, 							{
								"key" : 7402,
								"value" : [ 25.68 ]
							}
, 							{
								"key" : 7403,
								"value" : [ 25.809999999999999 ]
							}
, 							{
								"key" : 7404,
								"value" : [ 25.920000000000002 ]
							}
, 							{
								"key" : 7405,
								"value" : [ 25.879999999999999 ]
							}
, 							{
								"key" : 7406,
								"value" : [ 26.039999999999999 ]
							}
, 							{
								"key" : 7407,
								"value" : [ 26.100000000000001 ]
							}
, 							{
								"key" : 7408,
								"value" : [ 26.190000000000001 ]
							}
, 							{
								"key" : 7409,
								"value" : [ 26.170000000000002 ]
							}
, 							{
								"key" : 7410,
								"value" : [ 25.989999999999998 ]
							}
, 							{
								"key" : 7411,
								"value" : [ 25.75 ]
							}
, 							{
								"key" : 7412,
								"value" : [ 25.59 ]
							}
, 							{
								"key" : 7413,
								"value" : [ 25.27 ]
							}
, 							{
								"key" : 7414,
								"value" : [ 24.66 ]
							}
, 							{
								"key" : 7415,
								"value" : [ 23.969999999999999 ]
							}
, 							{
								"key" : 7416,
								"value" : [ 23.039999999999999 ]
							}
, 							{
								"key" : 7417,
								"value" : [ 21.969999999999999 ]
							}
, 							{
								"key" : 7418,
								"value" : [ 21.09 ]
							}
, 							{
								"key" : 7419,
								"value" : [ 20.710000000000001 ]
							}
, 							{
								"key" : 7420,
								"value" : [ 20.440000000000001 ]
							}
, 							{
								"key" : 7421,
								"value" : [ 20.530000000000001 ]
							}
, 							{
								"key" : 7422,
								"value" : [ 20.859999999999999 ]
							}
, 							{
								"key" : 7423,
								"value" : [ 20.789999999999999 ]
							}
, 							{
								"key" : 7424,
								"value" : [ 20.890000000000001 ]
							}
, 							{
								"key" : 7425,
								"value" : [ 21.670000000000002 ]
							}
, 							{
								"key" : 7426,
								"value" : [ 22.5 ]
							}
, 							{
								"key" : 7427,
								"value" : [ 22.870000000000001 ]
							}
, 							{
								"key" : 7428,
								"value" : [ 23.109999999999999 ]
							}
, 							{
								"key" : 7429,
								"value" : [ 23.489999999999998 ]
							}
, 							{
								"key" : 7430,
								"value" : [ 24.120000000000001 ]
							}
, 							{
								"key" : 7431,
								"value" : [ 24.780000000000001 ]
							}
, 							{
								"key" : 7432,
								"value" : [ 24.760000000000002 ]
							}
, 							{
								"key" : 7433,
								"value" : [ 24.120000000000001 ]
							}
, 							{
								"key" : 7434,
								"value" : [ 23.34 ]
							}
, 							{
								"key" : 7435,
								"value" : [ 22.859999999999999 ]
							}
, 							{
								"key" : 7436,
								"value" : [ 22.120000000000001 ]
							}
, 							{
								"key" : 7437,
								"value" : [ 21.02 ]
							}
, 							{
								"key" : 7438,
								"value" : [ 19.760000000000002 ]
							}
, 							{
								"key" : 7439,
								"value" : [ 18.949999999999999 ]
							}
, 							{
								"key" : 7440,
								"value" : [ 18.190000000000001 ]
							}
, 							{
								"key" : 7441,
								"value" : [ 17.379999999999999 ]
							}
, 							{
								"key" : 7442,
								"value" : [ 16.390000000000001 ]
							}
, 							{
								"key" : 7443,
								"value" : [ 15.48 ]
							}
, 							{
								"key" : 7444,
								"value" : [ 14.74 ]
							}
, 							{
								"key" : 7445,
								"value" : [ 14.130000000000001 ]
							}
, 							{
								"key" : 7446,
								"value" : [ 13.550000000000001 ]
							}
, 							{
								"key" : 7447,
								"value" : [ 13.369999999999999 ]
							}
, 							{
								"key" : 7448,
								"value" : [ 13.66 ]
							}
, 							{
								"key" : 7449,
								"value" : [ 14.609999999999999 ]
							}
, 							{
								"key" : 7450,
								"value" : [ 15.82 ]
							}
, 							{
								"key" : 7451,
								"value" : [ 17.109999999999999 ]
							}
, 							{
								"key" : 7452,
								"value" : [ 18.539999999999999 ]
							}
, 							{
								"key" : 7453,
								"value" : [ 19.670000000000002 ]
							}
, 							{
								"key" : 7454,
								"value" : [ 20.57 ]
							}
, 							{
								"key" : 7455,
								"value" : [ 21.149999999999999 ]
							}
, 							{
								"key" : 7456,
								"value" : [ 21.109999999999999 ]
							}
, 							{
								"key" : 7457,
								"value" : [ 20.170000000000002 ]
							}
, 							{
								"key" : 7458,
								"value" : [ 18.91 ]
							}
, 							{
								"key" : 7459,
								"value" : [ 17.920000000000002 ]
							}
, 							{
								"key" : 7460,
								"value" : [ 17.469999999999999 ]
							}
, 							{
								"key" : 7461,
								"value" : [ 17.170000000000002 ]
							}
, 							{
								"key" : 7462,
								"value" : [ 16.969999999999999 ]
							}
, 							{
								"key" : 7463,
								"value" : [ 17.170000000000002 ]
							}
, 							{
								"key" : 7464,
								"value" : [ 17.309999999999999 ]
							}
, 							{
								"key" : 7465,
								"value" : [ 17.800000000000001 ]
							}
, 							{
								"key" : 7466,
								"value" : [ 18.390000000000001 ]
							}
, 							{
								"key" : 7467,
								"value" : [ 18.84 ]
							}
, 							{
								"key" : 7468,
								"value" : [ 18.809999999999999 ]
							}
, 							{
								"key" : 7469,
								"value" : [ 18.25 ]
							}
, 							{
								"key" : 7470,
								"value" : [ 17.739999999999998 ]
							}
, 							{
								"key" : 7471,
								"value" : [ 17.649999999999999 ]
							}
, 							{
								"key" : 7472,
								"value" : [ 17.760000000000002 ]
							}
, 							{
								"key" : 7473,
								"value" : [ 19.039999999999999 ]
							}
, 							{
								"key" : 7474,
								"value" : [ 21.449999999999999 ]
							}
, 							{
								"key" : 7475,
								"value" : [ 24.82 ]
							}
, 							{
								"key" : 7476,
								"value" : [ 27.989999999999998 ]
							}
, 							{
								"key" : 7477,
								"value" : [ 30.289999999999999 ]
							}
, 							{
								"key" : 7478,
								"value" : [ 31.949999999999999 ]
							}
, 							{
								"key" : 7479,
								"value" : [ 32.789999999999999 ]
							}
, 							{
								"key" : 7480,
								"value" : [ 32.920000000000002 ]
							}
, 							{
								"key" : 7481,
								"value" : [ 31.890000000000001 ]
							}
, 							{
								"key" : 7482,
								"value" : [ 30.289999999999999 ]
							}
, 							{
								"key" : 7483,
								"value" : [ 29.300000000000001 ]
							}
, 							{
								"key" : 7484,
								"value" : [ 28.530000000000001 ]
							}
, 							{
								"key" : 7485,
								"value" : [ 28.129999999999999 ]
							}
, 							{
								"key" : 7486,
								"value" : [ 27.52 ]
							}
, 							{
								"key" : 7487,
								"value" : [ 27.539999999999999 ]
							}
, 							{
								"key" : 7488,
								"value" : [ 27.640000000000001 ]
							}
, 							{
								"key" : 7489,
								"value" : [ 27.280000000000001 ]
							}
, 							{
								"key" : 7490,
								"value" : [ 26.170000000000002 ]
							}
, 							{
								"key" : 7491,
								"value" : [ 24.620000000000001 ]
							}
, 							{
								"key" : 7492,
								"value" : [ 22.66 ]
							}
, 							{
								"key" : 7493,
								"value" : [ 20.77 ]
							}
, 							{
								"key" : 7494,
								"value" : [ 19.530000000000001 ]
							}
, 							{
								"key" : 7495,
								"value" : [ 18.68 ]
							}
, 							{
								"key" : 7496,
								"value" : [ 18.699999999999999 ]
							}
, 							{
								"key" : 7497,
								"value" : [ 20.460000000000001 ]
							}
, 							{
								"key" : 7498,
								"value" : [ 21.600000000000001 ]
							}
, 							{
								"key" : 7499,
								"value" : [ 22.420000000000002 ]
							}
, 							{
								"key" : 7500,
								"value" : [ 23.359999999999999 ]
							}
, 							{
								"key" : 7501,
								"value" : [ 23.969999999999999 ]
							}
, 							{
								"key" : 7502,
								"value" : [ 24.420000000000002 ]
							}
, 							{
								"key" : 7503,
								"value" : [ 24.760000000000002 ]
							}
, 							{
								"key" : 7504,
								"value" : [ 24.760000000000002 ]
							}
, 							{
								"key" : 7505,
								"value" : [ 23.809999999999999 ]
							}
, 							{
								"key" : 7506,
								"value" : [ 22.57 ]
							}
, 							{
								"key" : 7507,
								"value" : [ 21.969999999999999 ]
							}
, 							{
								"key" : 7508,
								"value" : [ 21.129999999999999 ]
							}
, 							{
								"key" : 7509,
								"value" : [ 20.260000000000002 ]
							}
, 							{
								"key" : 7510,
								"value" : [ 19.600000000000001 ]
							}
, 							{
								"key" : 7511,
								"value" : [ 19.039999999999999 ]
							}
, 							{
								"key" : 7512,
								"value" : [ 18.52 ]
							}
, 							{
								"key" : 7513,
								"value" : [ 17.829999999999998 ]
							}
, 							{
								"key" : 7514,
								"value" : [ 17.280000000000001 ]
							}
, 							{
								"key" : 7515,
								"value" : [ 16.829999999999998 ]
							}
, 							{
								"key" : 7516,
								"value" : [ 16.84 ]
							}
, 							{
								"key" : 7517,
								"value" : [ 17.109999999999999 ]
							}
, 							{
								"key" : 7518,
								"value" : [ 17.379999999999999 ]
							}
, 							{
								"key" : 7519,
								"value" : [ 17.620000000000001 ]
							}
, 							{
								"key" : 7520,
								"value" : [ 18.75 ]
							}
, 							{
								"key" : 7521,
								"value" : [ 20.73 ]
							}
, 							{
								"key" : 7522,
								"value" : [ 22.57 ]
							}
, 							{
								"key" : 7523,
								"value" : [ 24.850000000000001 ]
							}
, 							{
								"key" : 7524,
								"value" : [ 27.57 ]
							}
, 							{
								"key" : 7525,
								"value" : [ 30.489999999999998 ]
							}
, 							{
								"key" : 7526,
								"value" : [ 33.039999999999999 ]
							}
, 							{
								"key" : 7527,
								"value" : [ 34.390000000000001 ]
							}
, 							{
								"key" : 7528,
								"value" : [ 34.590000000000003 ]
							}
, 							{
								"key" : 7529,
								"value" : [ 33.869999999999997 ]
							}
, 							{
								"key" : 7530,
								"value" : [ 33.240000000000002 ]
							}
, 							{
								"key" : 7531,
								"value" : [ 33.280000000000001 ]
							}
, 							{
								"key" : 7532,
								"value" : [ 33.57 ]
							}
, 							{
								"key" : 7533,
								"value" : [ 33.799999999999997 ]
							}
, 							{
								"key" : 7534,
								"value" : [ 33.960000000000001 ]
							}
, 							{
								"key" : 7535,
								"value" : [ 33.850000000000001 ]
							}
, 							{
								"key" : 7536,
								"value" : [ 33.659999999999997 ]
							}
, 							{
								"key" : 7537,
								"value" : [ 33.439999999999998 ]
							}
, 							{
								"key" : 7538,
								"value" : [ 33.170000000000002 ]
							}
, 							{
								"key" : 7539,
								"value" : [ 32.630000000000003 ]
							}
, 							{
								"key" : 7540,
								"value" : [ 31.960000000000001 ]
							}
, 							{
								"key" : 7541,
								"value" : [ 31.440000000000001 ]
							}
, 							{
								"key" : 7542,
								"value" : [ 30.829999999999998 ]
							}
, 							{
								"key" : 7543,
								"value" : [ 30.129999999999999 ]
							}
, 							{
								"key" : 7544,
								"value" : [ 30.239999999999998 ]
							}
, 							{
								"key" : 7545,
								"value" : [ 31.440000000000001 ]
							}
, 							{
								"key" : 7546,
								"value" : [ 33.439999999999998 ]
							}
, 							{
								"key" : 7547,
								"value" : [ 35.369999999999997 ]
							}
, 							{
								"key" : 7548,
								"value" : [ 36.590000000000003 ]
							}
, 							{
								"key" : 7549,
								"value" : [ 37.399999999999999 ]
							}
, 							{
								"key" : 7550,
								"value" : [ 37.850000000000001 ]
							}
, 							{
								"key" : 7551,
								"value" : [ 37.979999999999997 ]
							}
, 							{
								"key" : 7552,
								"value" : [ 37.600000000000001 ]
							}
, 							{
								"key" : 7553,
								"value" : [ 36.880000000000003 ]
							}
, 							{
								"key" : 7554,
								"value" : [ 36.270000000000003 ]
							}
, 							{
								"key" : 7555,
								"value" : [ 35.469999999999999 ]
							}
, 							{
								"key" : 7556,
								"value" : [ 34.560000000000002 ]
							}
, 							{
								"key" : 7557,
								"value" : [ 33.799999999999997 ]
							}
, 							{
								"key" : 7558,
								"value" : [ 33.350000000000001 ]
							}
, 							{
								"key" : 7559,
								"value" : [ 33.039999999999999 ]
							}
, 							{
								"key" : 7560,
								"value" : [ 32.850000000000001 ]
							}
, 							{
								"key" : 7561,
								"value" : [ 32.409999999999997 ]
							}
, 							{
								"key" : 7562,
								"value" : [ 31.960000000000001 ]
							}
, 							{
								"key" : 7563,
								"value" : [ 31.329999999999998 ]
							}
, 							{
								"key" : 7564,
								"value" : [ 30.539999999999999 ]
							}
, 							{
								"key" : 7565,
								"value" : [ 29.84 ]
							}
, 							{
								"key" : 7566,
								"value" : [ 29.170000000000002 ]
							}
, 							{
								"key" : 7567,
								"value" : [ 28.309999999999999 ]
							}
, 							{
								"key" : 7568,
								"value" : [ 28.09 ]
							}
, 							{
								"key" : 7569,
								"value" : [ 28.579999999999998 ]
							}
, 							{
								"key" : 7570,
								"value" : [ 28.809999999999999 ]
							}
, 							{
								"key" : 7571,
								"value" : [ 29.140000000000001 ]
							}
, 							{
								"key" : 7572,
								"value" : [ 29.68 ]
							}
, 							{
								"key" : 7573,
								"value" : [ 30.199999999999999 ]
							}
, 							{
								"key" : 7574,
								"value" : [ 30.670000000000002 ]
							}
, 							{
								"key" : 7575,
								"value" : [ 31.120000000000001 ]
							}
, 							{
								"key" : 7576,
								"value" : [ 30.870000000000001 ]
							}
, 							{
								"key" : 7577,
								"value" : [ 29.789999999999999 ]
							}
, 							{
								"key" : 7578,
								"value" : [ 29.079999999999998 ]
							}
, 							{
								"key" : 7579,
								"value" : [ 28.620000000000001 ]
							}
, 							{
								"key" : 7580,
								"value" : [ 28.219999999999999 ]
							}
, 							{
								"key" : 7581,
								"value" : [ 27.91 ]
							}
, 							{
								"key" : 7582,
								"value" : [ 28.18 ]
							}
, 							{
								"key" : 7583,
								"value" : [ 29.079999999999998 ]
							}
, 							{
								"key" : 7584,
								"value" : [ 30.359999999999999 ]
							}
, 							{
								"key" : 7585,
								"value" : [ 32.270000000000003 ]
							}
, 							{
								"key" : 7586,
								"value" : [ 33.939999999999998 ]
							}
, 							{
								"key" : 7587,
								"value" : [ 35.109999999999999 ]
							}
, 							{
								"key" : 7588,
								"value" : [ 35.289999999999999 ]
							}
, 							{
								"key" : 7589,
								"value" : [ 35.399999999999999 ]
							}
, 							{
								"key" : 7590,
								"value" : [ 35.649999999999999 ]
							}
, 							{
								"key" : 7591,
								"value" : [ 35.939999999999998 ]
							}
, 							{
								"key" : 7592,
								"value" : [ 35.939999999999998 ]
							}
, 							{
								"key" : 7593,
								"value" : [ 35.979999999999997 ]
							}
, 							{
								"key" : 7594,
								"value" : [ 36.18 ]
							}
, 							{
								"key" : 7595,
								"value" : [ 36.630000000000003 ]
							}
, 							{
								"key" : 7596,
								"value" : [ 37.509999999999998 ]
							}
, 							{
								"key" : 7597,
								"value" : [ 39.090000000000003 ]
							}
, 							{
								"key" : 7598,
								"value" : [ 40.049999999999997 ]
							}
, 							{
								"key" : 7599,
								"value" : [ 39.789999999999999 ]
							}
, 							{
								"key" : 7600,
								"value" : [ 39.020000000000003 ]
							}
, 							{
								"key" : 7601,
								"value" : [ 37.439999999999998 ]
							}
, 							{
								"key" : 7602,
								"value" : [ 34.899999999999999 ]
							}
, 							{
								"key" : 7603,
								"value" : [ 33.079999999999998 ]
							}
, 							{
								"key" : 7604,
								"value" : [ 32.020000000000003 ]
							}
, 							{
								"key" : 7605,
								"value" : [ 31.140000000000001 ]
							}
, 							{
								"key" : 7606,
								"value" : [ 29.84 ]
							}
, 							{
								"key" : 7607,
								"value" : [ 28.170000000000002 ]
							}
, 							{
								"key" : 7608,
								"value" : [ 26.620000000000001 ]
							}
, 							{
								"key" : 7609,
								"value" : [ 24.620000000000001 ]
							}
, 							{
								"key" : 7610,
								"value" : [ 22.280000000000001 ]
							}
, 							{
								"key" : 7611,
								"value" : [ 20.68 ]
							}
, 							{
								"key" : 7612,
								"value" : [ 19.690000000000001 ]
							}
, 							{
								"key" : 7613,
								"value" : [ 18.84 ]
							}
, 							{
								"key" : 7614,
								"value" : [ 17.940000000000001 ]
							}
, 							{
								"key" : 7615,
								"value" : [ 17.260000000000002 ]
							}
, 							{
								"key" : 7616,
								"value" : [ 16.77 ]
							}
, 							{
								"key" : 7617,
								"value" : [ 16.48 ]
							}
, 							{
								"key" : 7618,
								"value" : [ 16.43 ]
							}
, 							{
								"key" : 7619,
								"value" : [ 16.68 ]
							}
, 							{
								"key" : 7620,
								"value" : [ 17.440000000000001 ]
							}
, 							{
								"key" : 7621,
								"value" : [ 18.16 ]
							}
, 							{
								"key" : 7622,
								"value" : [ 18.719999999999999 ]
							}
, 							{
								"key" : 7623,
								"value" : [ 18.989999999999998 ]
							}
, 							{
								"key" : 7624,
								"value" : [ 18.629999999999999 ]
							}
, 							{
								"key" : 7625,
								"value" : [ 18.190000000000001 ]
							}
, 							{
								"key" : 7626,
								"value" : [ 17.780000000000001 ]
							}
, 							{
								"key" : 7627,
								"value" : [ 17.550000000000001 ]
							}
, 							{
								"key" : 7628,
								"value" : [ 17.329999999999998 ]
							}
, 							{
								"key" : 7629,
								"value" : [ 17.109999999999999 ]
							}
, 							{
								"key" : 7630,
								"value" : [ 16.920000000000002 ]
							}
, 							{
								"key" : 7631,
								"value" : [ 16.699999999999999 ]
							}
, 							{
								"key" : 7632,
								"value" : [ 16.379999999999999 ]
							}
, 							{
								"key" : 7633,
								"value" : [ 15.460000000000001 ]
							}
, 							{
								"key" : 7634,
								"value" : [ 14.880000000000001 ]
							}
, 							{
								"key" : 7635,
								"value" : [ 14.92 ]
							}
, 							{
								"key" : 7636,
								"value" : [ 14.880000000000001 ]
							}
, 							{
								"key" : 7637,
								"value" : [ 14.720000000000001 ]
							}
, 							{
								"key" : 7638,
								"value" : [ 14.56 ]
							}
, 							{
								"key" : 7639,
								"value" : [ 14.4 ]
							}
, 							{
								"key" : 7640,
								"value" : [ 14.16 ]
							}
, 							{
								"key" : 7641,
								"value" : [ 13.82 ]
							}
, 							{
								"key" : 7642,
								"value" : [ 13.82 ]
							}
, 							{
								"key" : 7643,
								"value" : [ 14.359999999999999 ]
							}
, 							{
								"key" : 7644,
								"value" : [ 14.859999999999999 ]
							}
, 							{
								"key" : 7645,
								"value" : [ 15.710000000000001 ]
							}
, 							{
								"key" : 7646,
								"value" : [ 16.57 ]
							}
, 							{
								"key" : 7647,
								"value" : [ 17.100000000000001 ]
							}
, 							{
								"key" : 7648,
								"value" : [ 17.129999999999999 ]
							}
, 							{
								"key" : 7649,
								"value" : [ 16.649999999999999 ]
							}
, 							{
								"key" : 7650,
								"value" : [ 15.619999999999999 ]
							}
, 							{
								"key" : 7651,
								"value" : [ 14.949999999999999 ]
							}
, 							{
								"key" : 7652,
								"value" : [ 14.359999999999999 ]
							}
, 							{
								"key" : 7653,
								"value" : [ 14.02 ]
							}
, 							{
								"key" : 7654,
								"value" : [ 14.0 ]
							}
, 							{
								"key" : 7655,
								"value" : [ 14.220000000000001 ]
							}
, 							{
								"key" : 7656,
								"value" : [ 14.31 ]
							}
, 							{
								"key" : 7657,
								"value" : [ 14.4 ]
							}
, 							{
								"key" : 7658,
								"value" : [ 14.41 ]
							}
, 							{
								"key" : 7659,
								"value" : [ 14.25 ]
							}
, 							{
								"key" : 7660,
								"value" : [ 14.25 ]
							}
, 							{
								"key" : 7661,
								"value" : [ 14.4 ]
							}
, 							{
								"key" : 7662,
								"value" : [ 14.52 ]
							}
, 							{
								"key" : 7663,
								"value" : [ 14.56 ]
							}
, 							{
								"key" : 7664,
								"value" : [ 15.1 ]
							}
, 							{
								"key" : 7665,
								"value" : [ 16.199999999999999 ]
							}
, 							{
								"key" : 7666,
								"value" : [ 17.370000000000001 ]
							}
, 							{
								"key" : 7667,
								"value" : [ 18.719999999999999 ]
							}
, 							{
								"key" : 7668,
								"value" : [ 19.960000000000001 ]
							}
, 							{
								"key" : 7669,
								"value" : [ 20.969999999999999 ]
							}
, 							{
								"key" : 7670,
								"value" : [ 21.989999999999998 ]
							}
, 							{
								"key" : 7671,
								"value" : [ 23.02 ]
							}
, 							{
								"key" : 7672,
								"value" : [ 23.670000000000002 ]
							}
, 							{
								"key" : 7673,
								"value" : [ 23.59 ]
							}
, 							{
								"key" : 7674,
								"value" : [ 23.199999999999999 ]
							}
, 							{
								"key" : 7675,
								"value" : [ 23.379999999999999 ]
							}
, 							{
								"key" : 7676,
								"value" : [ 23.199999999999999 ]
							}
, 							{
								"key" : 7677,
								"value" : [ 22.66 ]
							}
, 							{
								"key" : 7678,
								"value" : [ 21.870000000000001 ]
							}
, 							{
								"key" : 7679,
								"value" : [ 21.129999999999999 ]
							}
, 							{
								"key" : 7680,
								"value" : [ 20.710000000000001 ]
							}
, 							{
								"key" : 7681,
								"value" : [ 20.77 ]
							}
, 							{
								"key" : 7682,
								"value" : [ 21.149999999999999 ]
							}
, 							{
								"key" : 7683,
								"value" : [ 21.489999999999998 ]
							}
, 							{
								"key" : 7684,
								"value" : [ 21.539999999999999 ]
							}
, 							{
								"key" : 7685,
								"value" : [ 21.329999999999998 ]
							}
, 							{
								"key" : 7686,
								"value" : [ 20.890000000000001 ]
							}
, 							{
								"key" : 7687,
								"value" : [ 20.57 ]
							}
, 							{
								"key" : 7688,
								"value" : [ 21.989999999999998 ]
							}
, 							{
								"key" : 7689,
								"value" : [ 23.719999999999999 ]
							}
, 							{
								"key" : 7690,
								"value" : [ 25.25 ]
							}
, 							{
								"key" : 7691,
								"value" : [ 26.91 ]
							}
, 							{
								"key" : 7692,
								"value" : [ 28.620000000000001 ]
							}
, 							{
								"key" : 7693,
								"value" : [ 30.609999999999999 ]
							}
, 							{
								"key" : 7694,
								"value" : [ 32.310000000000002 ]
							}
, 							{
								"key" : 7695,
								"value" : [ 33.549999999999997 ]
							}
, 							{
								"key" : 7696,
								"value" : [ 33.939999999999998 ]
							}
, 							{
								"key" : 7697,
								"value" : [ 33.670000000000002 ]
							}
, 							{
								"key" : 7698,
								"value" : [ 33.350000000000001 ]
							}
, 							{
								"key" : 7699,
								"value" : [ 33.030000000000001 ]
							}
, 							{
								"key" : 7700,
								"value" : [ 33.039999999999999 ]
							}
, 							{
								"key" : 7701,
								"value" : [ 33.170000000000002 ]
							}
, 							{
								"key" : 7702,
								"value" : [ 33.780000000000001 ]
							}
, 							{
								"key" : 7703,
								"value" : [ 35.289999999999999 ]
							}
, 							{
								"key" : 7704,
								"value" : [ 36.93 ]
							}
, 							{
								"key" : 7705,
								"value" : [ 38.189999999999998 ]
							}
, 							{
								"key" : 7706,
								"value" : [ 39.380000000000003 ]
							}
, 							{
								"key" : 7707,
								"value" : [ 40.030000000000001 ]
							}
, 							{
								"key" : 7708,
								"value" : [ 40.189999999999998 ]
							}
, 							{
								"key" : 7709,
								"value" : [ 40.119999999999997 ]
							}
, 							{
								"key" : 7710,
								"value" : [ 40.009999999999998 ]
							}
, 							{
								"key" : 7711,
								"value" : [ 40.890000000000001 ]
							}
, 							{
								"key" : 7712,
								"value" : [ 42.439999999999998 ]
							}
, 							{
								"key" : 7713,
								"value" : [ 43.560000000000002 ]
							}
, 							{
								"key" : 7714,
								"value" : [ 44.369999999999997 ]
							}
, 							{
								"key" : 7715,
								"value" : [ 44.619999999999997 ]
							}
, 							{
								"key" : 7716,
								"value" : [ 44.829999999999998 ]
							}
, 							{
								"key" : 7717,
								"value" : [ 45.18 ]
							}
, 							{
								"key" : 7718,
								"value" : [ 45.25 ]
							}
, 							{
								"key" : 7719,
								"value" : [ 44.829999999999998 ]
							}
, 							{
								"key" : 7720,
								"value" : [ 44.329999999999998 ]
							}
, 							{
								"key" : 7721,
								"value" : [ 44.009999999999998 ]
							}
, 							{
								"key" : 7722,
								"value" : [ 44.149999999999999 ]
							}
, 							{
								"key" : 7723,
								"value" : [ 43.340000000000003 ]
							}
, 							{
								"key" : 7724,
								"value" : [ 42.259999999999998 ]
							}
, 							{
								"key" : 7725,
								"value" : [ 40.590000000000003 ]
							}
, 							{
								"key" : 7726,
								"value" : [ 40.009999999999998 ]
							}
, 							{
								"key" : 7727,
								"value" : [ 38.439999999999998 ]
							}
, 							{
								"key" : 7728,
								"value" : [ 35.759999999999998 ]
							}
, 							{
								"key" : 7729,
								"value" : [ 33.799999999999997 ]
							}
, 							{
								"key" : 7730,
								"value" : [ 32.700000000000003 ]
							}
, 							{
								"key" : 7731,
								"value" : [ 32.219999999999999 ]
							}
, 							{
								"key" : 7732,
								"value" : [ 31.690000000000001 ]
							}
, 							{
								"key" : 7733,
								"value" : [ 31.239999999999998 ]
							}
, 							{
								"key" : 7734,
								"value" : [ 31.190000000000001 ]
							}
, 							{
								"key" : 7735,
								"value" : [ 31.239999999999998 ]
							}
, 							{
								"key" : 7736,
								"value" : [ 30.989999999999998 ]
							}
, 							{
								"key" : 7737,
								"value" : [ 31.059999999999999 ]
							}
, 							{
								"key" : 7738,
								"value" : [ 30.629999999999999 ]
							}
, 							{
								"key" : 7739,
								"value" : [ 30.289999999999999 ]
							}
, 							{
								"key" : 7740,
								"value" : [ 29.57 ]
							}
, 							{
								"key" : 7741,
								"value" : [ 28.359999999999999 ]
							}
, 							{
								"key" : 7742,
								"value" : [ 27.300000000000001 ]
							}
, 							{
								"key" : 7743,
								"value" : [ 25.719999999999999 ]
							}
, 							{
								"key" : 7744,
								"value" : [ 24.760000000000002 ]
							}
, 							{
								"key" : 7745,
								"value" : [ 24.510000000000002 ]
							}
, 							{
								"key" : 7746,
								"value" : [ 24.100000000000001 ]
							}
, 							{
								"key" : 7747,
								"value" : [ 23.539999999999999 ]
							}
, 							{
								"key" : 7748,
								"value" : [ 23.25 ]
							}
, 							{
								"key" : 7749,
								"value" : [ 23.32 ]
							}
, 							{
								"key" : 7750,
								"value" : [ 22.890000000000001 ]
							}
, 							{
								"key" : 7751,
								"value" : [ 21.579999999999998 ]
							}
, 							{
								"key" : 7752,
								"value" : [ 19.850000000000001 ]
							}
, 							{
								"key" : 7753,
								"value" : [ 18.370000000000001 ]
							}
, 							{
								"key" : 7754,
								"value" : [ 16.989999999999998 ]
							}
, 							{
								"key" : 7755,
								"value" : [ 15.460000000000001 ]
							}
, 							{
								"key" : 7756,
								"value" : [ 13.960000000000001 ]
							}
, 							{
								"key" : 7757,
								"value" : [ 12.92 ]
							}
, 							{
								"key" : 7758,
								"value" : [ 12.470000000000001 ]
							}
, 							{
								"key" : 7759,
								"value" : [ 12.380000000000001 ]
							}
, 							{
								"key" : 7760,
								"value" : [ 12.609999999999999 ]
							}
, 							{
								"key" : 7761,
								"value" : [ 14.74 ]
							}
, 							{
								"key" : 7762,
								"value" : [ 16.75 ]
							}
, 							{
								"key" : 7763,
								"value" : [ 18.84 ]
							}
, 							{
								"key" : 7764,
								"value" : [ 21.34 ]
							}
, 							{
								"key" : 7765,
								"value" : [ 23.789999999999999 ]
							}
, 							{
								"key" : 7766,
								"value" : [ 26.109999999999999 ]
							}
, 							{
								"key" : 7767,
								"value" : [ 27.539999999999999 ]
							}
, 							{
								"key" : 7768,
								"value" : [ 28.09 ]
							}
, 							{
								"key" : 7769,
								"value" : [ 27.969999999999999 ]
							}
, 							{
								"key" : 7770,
								"value" : [ 27.77 ]
							}
, 							{
								"key" : 7771,
								"value" : [ 28.239999999999998 ]
							}
, 							{
								"key" : 7772,
								"value" : [ 29.25 ]
							}
, 							{
								"key" : 7773,
								"value" : [ 30.149999999999999 ]
							}
, 							{
								"key" : 7774,
								"value" : [ 31.079999999999998 ]
							}
, 							{
								"key" : 7775,
								"value" : [ 29.48 ]
							}
, 							{
								"key" : 7776,
								"value" : [ 22.460000000000001 ]
							}
, 							{
								"key" : 7777,
								"value" : [ 18.809999999999999 ]
							}
, 							{
								"key" : 7778,
								"value" : [ 15.619999999999999 ]
							}
, 							{
								"key" : 7779,
								"value" : [ 13.710000000000001 ]
							}
, 							{
								"key" : 7780,
								"value" : [ 13.140000000000001 ]
							}
, 							{
								"key" : 7781,
								"value" : [ 12.34 ]
							}
, 							{
								"key" : 7782,
								"value" : [ 11.57 ]
							}
, 							{
								"key" : 7783,
								"value" : [ 10.9 ]
							}
, 							{
								"key" : 7784,
								"value" : [ 11.01 ]
							}
, 							{
								"key" : 7785,
								"value" : [ 11.710000000000001 ]
							}
, 							{
								"key" : 7786,
								"value" : [ 12.789999999999999 ]
							}
, 							{
								"key" : 7787,
								"value" : [ 14.130000000000001 ]
							}
, 							{
								"key" : 7788,
								"value" : [ 15.49 ]
							}
, 							{
								"key" : 7789,
								"value" : [ 16.789999999999999 ]
							}
, 							{
								"key" : 7790,
								"value" : [ 18.07 ]
							}
, 							{
								"key" : 7791,
								"value" : [ 19.289999999999999 ]
							}
, 							{
								"key" : 7792,
								"value" : [ 19.940000000000001 ]
							}
, 							{
								"key" : 7793,
								"value" : [ 19.359999999999999 ]
							}
, 							{
								"key" : 7794,
								"value" : [ 17.760000000000002 ]
							}
, 							{
								"key" : 7795,
								"value" : [ 17.109999999999999 ]
							}
, 							{
								"key" : 7796,
								"value" : [ 17.170000000000002 ]
							}
, 							{
								"key" : 7797,
								"value" : [ 17.420000000000002 ]
							}
, 							{
								"key" : 7798,
								"value" : [ 17.870000000000001 ]
							}
, 							{
								"key" : 7799,
								"value" : [ 18.460000000000001 ]
							}
, 							{
								"key" : 7800,
								"value" : [ 18.91 ]
							}
, 							{
								"key" : 7801,
								"value" : [ 19.359999999999999 ]
							}
, 							{
								"key" : 7802,
								"value" : [ 20.190000000000001 ]
							}
, 							{
								"key" : 7803,
								"value" : [ 20.77 ]
							}
, 							{
								"key" : 7804,
								"value" : [ 21.629999999999999 ]
							}
, 							{
								"key" : 7805,
								"value" : [ 22.530000000000001 ]
							}
, 							{
								"key" : 7806,
								"value" : [ 23.920000000000002 ]
							}
, 							{
								"key" : 7807,
								"value" : [ 24.760000000000002 ]
							}
, 							{
								"key" : 7808,
								"value" : [ 26.100000000000001 ]
							}
, 							{
								"key" : 7809,
								"value" : [ 29.07 ]
							}
, 							{
								"key" : 7810,
								"value" : [ 32.359999999999999 ]
							}
, 							{
								"key" : 7811,
								"value" : [ 35.329999999999998 ]
							}
, 							{
								"key" : 7812,
								"value" : [ 38.119999999999997 ]
							}
, 							{
								"key" : 7813,
								"value" : [ 40.68 ]
							}
, 							{
								"key" : 7814,
								"value" : [ 42.310000000000002 ]
							}
, 							{
								"key" : 7815,
								"value" : [ 43.030000000000001 ]
							}
, 							{
								"key" : 7816,
								"value" : [ 42.82 ]
							}
, 							{
								"key" : 7817,
								"value" : [ 41.539999999999999 ]
							}
, 							{
								"key" : 7818,
								"value" : [ 39.740000000000002 ]
							}
, 							{
								"key" : 7819,
								"value" : [ 38.57 ]
							}
, 							{
								"key" : 7820,
								"value" : [ 37.619999999999997 ]
							}
, 							{
								"key" : 7821,
								"value" : [ 36.640000000000001 ]
							}
, 							{
								"key" : 7822,
								"value" : [ 35.780000000000001 ]
							}
, 							{
								"key" : 7823,
								"value" : [ 35.020000000000003 ]
							}
, 							{
								"key" : 7824,
								"value" : [ 34.469999999999999 ]
							}
, 							{
								"key" : 7825,
								"value" : [ 34.119999999999997 ]
							}
, 							{
								"key" : 7826,
								"value" : [ 34.450000000000003 ]
							}
, 							{
								"key" : 7827,
								"value" : [ 35.189999999999998 ]
							}
, 							{
								"key" : 7828,
								"value" : [ 34.590000000000003 ]
							}
, 							{
								"key" : 7829,
								"value" : [ 33.369999999999997 ]
							}
, 							{
								"key" : 7830,
								"value" : [ 33.420000000000002 ]
							}
, 							{
								"key" : 7831,
								"value" : [ 33.689999999999998 ]
							}
, 							{
								"key" : 7832,
								"value" : [ 34.25 ]
							}
, 							{
								"key" : 7833,
								"value" : [ 34.740000000000002 ]
							}
, 							{
								"key" : 7834,
								"value" : [ 35.130000000000003 ]
							}
, 							{
								"key" : 7835,
								"value" : [ 35.530000000000001 ]
							}
, 							{
								"key" : 7836,
								"value" : [ 35.909999999999997 ]
							}
, 							{
								"key" : 7837,
								"value" : [ 36.390000000000001 ]
							}
, 							{
								"key" : 7838,
								"value" : [ 37.219999999999999 ]
							}
, 							{
								"key" : 7839,
								"value" : [ 38.159999999999997 ]
							}
, 							{
								"key" : 7840,
								"value" : [ 38.590000000000003 ]
							}
, 							{
								"key" : 7841,
								"value" : [ 37.829999999999998 ]
							}
, 							{
								"key" : 7842,
								"value" : [ 37.18 ]
							}
, 							{
								"key" : 7843,
								"value" : [ 39.060000000000002 ]
							}
, 							{
								"key" : 7844,
								"value" : [ 40.350000000000001 ]
							}
, 							{
								"key" : 7845,
								"value" : [ 40.859999999999999 ]
							}
, 							{
								"key" : 7846,
								"value" : [ 41.539999999999999 ]
							}
, 							{
								"key" : 7847,
								"value" : [ 42.82 ]
							}
, 							{
								"key" : 7848,
								"value" : [ 43.030000000000001 ]
							}
, 							{
								"key" : 7849,
								"value" : [ 42.57 ]
							}
, 							{
								"key" : 7850,
								"value" : [ 41.859999999999999 ]
							}
, 							{
								"key" : 7851,
								"value" : [ 41.200000000000003 ]
							}
, 							{
								"key" : 7852,
								"value" : [ 40.780000000000001 ]
							}
, 							{
								"key" : 7853,
								"value" : [ 41.939999999999998 ]
							}
, 							{
								"key" : 7854,
								"value" : [ 40.170000000000002 ]
							}
, 							{
								"key" : 7855,
								"value" : [ 37.670000000000002 ]
							}
, 							{
								"key" : 7856,
								"value" : [ 36.859999999999999 ]
							}
, 							{
								"key" : 7857,
								"value" : [ 36.359999999999999 ]
							}
, 							{
								"key" : 7858,
								"value" : [ 35.619999999999997 ]
							}
, 							{
								"key" : 7859,
								"value" : [ 35.170000000000002 ]
							}
, 							{
								"key" : 7860,
								"value" : [ 34.880000000000003 ]
							}
, 							{
								"key" : 7861,
								"value" : [ 36.25 ]
							}
, 							{
								"key" : 7862,
								"value" : [ 39.600000000000001 ]
							}
, 							{
								"key" : 7863,
								"value" : [ 40.119999999999997 ]
							}
, 							{
								"key" : 7864,
								"value" : [ 38.43 ]
							}
, 							{
								"key" : 7865,
								"value" : [ 34.270000000000003 ]
							}
, 							{
								"key" : 7866,
								"value" : [ 29.59 ]
							}
, 							{
								"key" : 7867,
								"value" : [ 26.190000000000001 ]
							}
, 							{
								"key" : 7868,
								"value" : [ 24.670000000000002 ]
							}
, 							{
								"key" : 7869,
								"value" : [ 24.120000000000001 ]
							}
, 							{
								"key" : 7870,
								"value" : [ 24.039999999999999 ]
							}
, 							{
								"key" : 7871,
								"value" : [ 24.300000000000001 ]
							}
, 							{
								"key" : 7872,
								"value" : [ 24.420000000000002 ]
							}
, 							{
								"key" : 7873,
								"value" : [ 24.129999999999999 ]
							}
, 							{
								"key" : 7874,
								"value" : [ 23.449999999999999 ]
							}
, 							{
								"key" : 7875,
								"value" : [ 22.620000000000001 ]
							}
, 							{
								"key" : 7876,
								"value" : [ 21.420000000000002 ]
							}
, 							{
								"key" : 7877,
								"value" : [ 20.07 ]
							}
, 							{
								"key" : 7878,
								"value" : [ 19.170000000000002 ]
							}
, 							{
								"key" : 7879,
								"value" : [ 18.41 ]
							}
, 							{
								"key" : 7880,
								"value" : [ 18.359999999999999 ]
							}
, 							{
								"key" : 7881,
								"value" : [ 19.039999999999999 ]
							}
, 							{
								"key" : 7882,
								"value" : [ 19.989999999999998 ]
							}
, 							{
								"key" : 7883,
								"value" : [ 21.02 ]
							}
, 							{
								"key" : 7884,
								"value" : [ 21.989999999999998 ]
							}
, 							{
								"key" : 7885,
								"value" : [ 22.780000000000001 ]
							}
, 							{
								"key" : 7886,
								"value" : [ 23.379999999999999 ]
							}
, 							{
								"key" : 7887,
								"value" : [ 23.739999999999998 ]
							}
, 							{
								"key" : 7888,
								"value" : [ 23.719999999999999 ]
							}
, 							{
								"key" : 7889,
								"value" : [ 23.559999999999999 ]
							}
, 							{
								"key" : 7890,
								"value" : [ 23.68 ]
							}
, 							{
								"key" : 7891,
								"value" : [ 24.010000000000002 ]
							}
, 							{
								"key" : 7892,
								"value" : [ 24.309999999999999 ]
							}
, 							{
								"key" : 7893,
								"value" : [ 24.620000000000001 ]
							}
, 							{
								"key" : 7894,
								"value" : [ 24.98 ]
							}
, 							{
								"key" : 7895,
								"value" : [ 25.140000000000001 ]
							}
, 							{
								"key" : 7896,
								"value" : [ 25.199999999999999 ]
							}
, 							{
								"key" : 7897,
								"value" : [ 24.93 ]
							}
, 							{
								"key" : 7898,
								"value" : [ 24.760000000000002 ]
							}
, 							{
								"key" : 7899,
								"value" : [ 24.670000000000002 ]
							}
, 							{
								"key" : 7900,
								"value" : [ 24.75 ]
							}
, 							{
								"key" : 7901,
								"value" : [ 24.780000000000001 ]
							}
, 							{
								"key" : 7902,
								"value" : [ 24.690000000000001 ]
							}
, 							{
								"key" : 7903,
								"value" : [ 24.690000000000001 ]
							}
, 							{
								"key" : 7904,
								"value" : [ 25.109999999999999 ]
							}
, 							{
								"key" : 7905,
								"value" : [ 25.789999999999999 ]
							}
, 							{
								"key" : 7906,
								"value" : [ 26.309999999999999 ]
							}
, 							{
								"key" : 7907,
								"value" : [ 26.890000000000001 ]
							}
, 							{
								"key" : 7908,
								"value" : [ 27.52 ]
							}
, 							{
								"key" : 7909,
								"value" : [ 27.91 ]
							}
, 							{
								"key" : 7910,
								"value" : [ 28.059999999999999 ]
							}
, 							{
								"key" : 7911,
								"value" : [ 28.059999999999999 ]
							}
, 							{
								"key" : 7912,
								"value" : [ 27.989999999999998 ]
							}
, 							{
								"key" : 7913,
								"value" : [ 28.129999999999999 ]
							}
, 							{
								"key" : 7914,
								"value" : [ 28.289999999999999 ]
							}
, 							{
								"key" : 7915,
								"value" : [ 28.649999999999999 ]
							}
, 							{
								"key" : 7916,
								"value" : [ 28.739999999999998 ]
							}
, 							{
								"key" : 7917,
								"value" : [ 28.489999999999998 ]
							}
, 							{
								"key" : 7918,
								"value" : [ 28.09 ]
							}
, 							{
								"key" : 7919,
								"value" : [ 27.59 ]
							}
, 							{
								"key" : 7920,
								"value" : [ 26.739999999999998 ]
							}
, 							{
								"key" : 7921,
								"value" : [ 26.460000000000001 ]
							}
, 							{
								"key" : 7922,
								"value" : [ 26.239999999999998 ]
							}
, 							{
								"key" : 7923,
								"value" : [ 26.420000000000002 ]
							}
, 							{
								"key" : 7924,
								"value" : [ 26.739999999999998 ]
							}
, 							{
								"key" : 7925,
								"value" : [ 26.620000000000001 ]
							}
, 							{
								"key" : 7926,
								"value" : [ 26.280000000000001 ]
							}
, 							{
								"key" : 7927,
								"value" : [ 25.66 ]
							}
, 							{
								"key" : 7928,
								"value" : [ 25.379999999999999 ]
							}
, 							{
								"key" : 7929,
								"value" : [ 25.390000000000001 ]
							}
, 							{
								"key" : 7930,
								"value" : [ 25.539999999999999 ]
							}
, 							{
								"key" : 7931,
								"value" : [ 26.02 ]
							}
, 							{
								"key" : 7932,
								"value" : [ 26.329999999999998 ]
							}
, 							{
								"key" : 7933,
								"value" : [ 26.690000000000001 ]
							}
, 							{
								"key" : 7934,
								"value" : [ 27.010000000000002 ]
							}
, 							{
								"key" : 7935,
								"value" : [ 26.850000000000001 ]
							}
, 							{
								"key" : 7936,
								"value" : [ 26.710000000000001 ]
							}
, 							{
								"key" : 7937,
								"value" : [ 26.329999999999998 ]
							}
, 							{
								"key" : 7938,
								"value" : [ 25.52 ]
							}
, 							{
								"key" : 7939,
								"value" : [ 25.109999999999999 ]
							}
, 							{
								"key" : 7940,
								"value" : [ 24.800000000000001 ]
							}
, 							{
								"key" : 7941,
								"value" : [ 24.690000000000001 ]
							}
, 							{
								"key" : 7942,
								"value" : [ 24.489999999999998 ]
							}
, 							{
								"key" : 7943,
								"value" : [ 23.940000000000001 ]
							}
, 							{
								"key" : 7944,
								"value" : [ 22.890000000000001 ]
							}
, 							{
								"key" : 7945,
								"value" : [ 22.030000000000001 ]
							}
, 							{
								"key" : 7946,
								"value" : [ 21.25 ]
							}
, 							{
								"key" : 7947,
								"value" : [ 20.440000000000001 ]
							}
, 							{
								"key" : 7948,
								"value" : [ 19.539999999999999 ]
							}
, 							{
								"key" : 7949,
								"value" : [ 18.75 ]
							}
, 							{
								"key" : 7950,
								"value" : [ 18.050000000000001 ]
							}
, 							{
								"key" : 7951,
								"value" : [ 17.559999999999999 ]
							}
, 							{
								"key" : 7952,
								"value" : [ 18.57 ]
							}
, 							{
								"key" : 7953,
								"value" : [ 20.07 ]
							}
, 							{
								"key" : 7954,
								"value" : [ 21.940000000000001 ]
							}
, 							{
								"key" : 7955,
								"value" : [ 24.059999999999999 ]
							}
, 							{
								"key" : 7956,
								"value" : [ 26.550000000000001 ]
							}
, 							{
								"key" : 7957,
								"value" : [ 28.960000000000001 ]
							}
, 							{
								"key" : 7958,
								"value" : [ 30.940000000000001 ]
							}
, 							{
								"key" : 7959,
								"value" : [ 32.289999999999999 ]
							}
, 							{
								"key" : 7960,
								"value" : [ 32.950000000000003 ]
							}
, 							{
								"key" : 7961,
								"value" : [ 32.560000000000002 ]
							}
, 							{
								"key" : 7962,
								"value" : [ 30.850000000000001 ]
							}
, 							{
								"key" : 7963,
								"value" : [ 29.77 ]
							}
, 							{
								"key" : 7964,
								"value" : [ 29.079999999999998 ]
							}
, 							{
								"key" : 7965,
								"value" : [ 28.620000000000001 ]
							}
, 							{
								"key" : 7966,
								"value" : [ 28.329999999999998 ]
							}
, 							{
								"key" : 7967,
								"value" : [ 28.039999999999999 ]
							}
, 							{
								"key" : 7968,
								"value" : [ 27.52 ]
							}
, 							{
								"key" : 7969,
								"value" : [ 26.170000000000002 ]
							}
, 							{
								"key" : 7970,
								"value" : [ 25.93 ]
							}
, 							{
								"key" : 7971,
								"value" : [ 26.350000000000001 ]
							}
, 							{
								"key" : 7972,
								"value" : [ 25.5 ]
							}
, 							{
								"key" : 7973,
								"value" : [ 24.489999999999998 ]
							}
, 							{
								"key" : 7974,
								"value" : [ 24.079999999999998 ]
							}
, 							{
								"key" : 7975,
								"value" : [ 23.77 ]
							}
, 							{
								"key" : 7976,
								"value" : [ 24.510000000000002 ]
							}
, 							{
								"key" : 7977,
								"value" : [ 26.440000000000001 ]
							}
, 							{
								"key" : 7978,
								"value" : [ 30.02 ]
							}
, 							{
								"key" : 7979,
								"value" : [ 32.409999999999997 ]
							}
, 							{
								"key" : 7980,
								"value" : [ 33.759999999999998 ]
							}
, 							{
								"key" : 7981,
								"value" : [ 34.829999999999998 ]
							}
, 							{
								"key" : 7982,
								"value" : [ 35.560000000000002 ]
							}
, 							{
								"key" : 7983,
								"value" : [ 35.979999999999997 ]
							}
, 							{
								"key" : 7984,
								"value" : [ 35.909999999999997 ]
							}
, 							{
								"key" : 7985,
								"value" : [ 34.770000000000003 ]
							}
, 							{
								"key" : 7986,
								"value" : [ 32.899999999999999 ]
							}
, 							{
								"key" : 7987,
								"value" : [ 32.880000000000003 ]
							}
, 							{
								"key" : 7988,
								"value" : [ 33.640000000000001 ]
							}
, 							{
								"key" : 7989,
								"value" : [ 34.560000000000002 ]
							}
, 							{
								"key" : 7990,
								"value" : [ 34.789999999999999 ]
							}
, 							{
								"key" : 7991,
								"value" : [ 34.0 ]
							}
, 							{
								"key" : 7992,
								"value" : [ 33.039999999999999 ]
							}
, 							{
								"key" : 7993,
								"value" : [ 31.93 ]
							}
, 							{
								"key" : 7994,
								"value" : [ 30.510000000000002 ]
							}
, 							{
								"key" : 7995,
								"value" : [ 28.829999999999998 ]
							}
, 							{
								"key" : 7996,
								"value" : [ 27.48 ]
							}
, 							{
								"key" : 7997,
								"value" : [ 26.469999999999999 ]
							}
, 							{
								"key" : 7998,
								"value" : [ 25.68 ]
							}
, 							{
								"key" : 7999,
								"value" : [ 25.649999999999999 ]
							}
, 							{
								"key" : 8000,
								"value" : [ 27.32 ]
							}
, 							{
								"key" : 8001,
								"value" : [ 29.190000000000001 ]
							}
, 							{
								"key" : 8002,
								"value" : [ 32.219999999999999 ]
							}
, 							{
								"key" : 8003,
								"value" : [ 35.939999999999998 ]
							}
, 							{
								"key" : 8004,
								"value" : [ 39.740000000000002 ]
							}
, 							{
								"key" : 8005,
								"value" : [ 42.759999999999998 ]
							}
, 							{
								"key" : 8006,
								"value" : [ 44.369999999999997 ]
							}
, 							{
								"key" : 8007,
								"value" : [ 44.869999999999997 ]
							}
, 							{
								"key" : 8008,
								"value" : [ 44.189999999999998 ]
							}
, 							{
								"key" : 8009,
								"value" : [ 41.539999999999999 ]
							}
, 							{
								"key" : 8010,
								"value" : [ 38.369999999999997 ]
							}
, 							{
								"key" : 8011,
								"value" : [ 37.259999999999998 ]
							}
, 							{
								"key" : 8012,
								"value" : [ 37.0 ]
							}
, 							{
								"key" : 8013,
								"value" : [ 36.990000000000002 ]
							}
, 							{
								"key" : 8014,
								"value" : [ 36.93 ]
							}
, 							{
								"key" : 8015,
								"value" : [ 37.200000000000003 ]
							}
, 							{
								"key" : 8016,
								"value" : [ 37.359999999999999 ]
							}
, 							{
								"key" : 8017,
								"value" : [ 37.219999999999999 ]
							}
, 							{
								"key" : 8018,
								"value" : [ 36.789999999999999 ]
							}
, 							{
								"key" : 8019,
								"value" : [ 36.539999999999999 ]
							}
, 							{
								"key" : 8020,
								"value" : [ 36.729999999999997 ]
							}
, 							{
								"key" : 8021,
								"value" : [ 37.090000000000003 ]
							}
, 							{
								"key" : 8022,
								"value" : [ 36.909999999999997 ]
							}
, 							{
								"key" : 8023,
								"value" : [ 36.270000000000003 ]
							}
, 							{
								"key" : 8024,
								"value" : [ 36.299999999999997 ]
							}
, 							{
								"key" : 8025,
								"value" : [ 36.859999999999999 ]
							}
, 							{
								"key" : 8026,
								"value" : [ 38.009999999999998 ]
							}
, 							{
								"key" : 8027,
								"value" : [ 39.159999999999997 ]
							}
, 							{
								"key" : 8028,
								"value" : [ 39.07 ]
							}
, 							{
								"key" : 8029,
								"value" : [ 39.020000000000003 ]
							}
, 							{
								"key" : 8030,
								"value" : [ 39.420000000000002 ]
							}
, 							{
								"key" : 8031,
								"value" : [ 39.759999999999998 ]
							}
, 							{
								"key" : 8032,
								"value" : [ 39.18 ]
							}
, 							{
								"key" : 8033,
								"value" : [ 37.060000000000002 ]
							}
, 							{
								"key" : 8034,
								"value" : [ 33.689999999999998 ]
							}
, 							{
								"key" : 8035,
								"value" : [ 32.630000000000003 ]
							}
, 							{
								"key" : 8036,
								"value" : [ 32.07 ]
							}
, 							{
								"key" : 8037,
								"value" : [ 31.59 ]
							}
, 							{
								"key" : 8038,
								"value" : [ 31.260000000000002 ]
							}
, 							{
								"key" : 8039,
								"value" : [ 31.059999999999999 ]
							}
, 							{
								"key" : 8040,
								"value" : [ 30.870000000000001 ]
							}
, 							{
								"key" : 8041,
								"value" : [ 30.699999999999999 ]
							}
, 							{
								"key" : 8042,
								"value" : [ 30.609999999999999 ]
							}
, 							{
								"key" : 8043,
								"value" : [ 30.940000000000001 ]
							}
, 							{
								"key" : 8044,
								"value" : [ 31.300000000000001 ]
							}
, 							{
								"key" : 8045,
								"value" : [ 30.850000000000001 ]
							}
, 							{
								"key" : 8046,
								"value" : [ 30.420000000000002 ]
							}
, 							{
								"key" : 8047,
								"value" : [ 30.420000000000002 ]
							}
, 							{
								"key" : 8048,
								"value" : [ 31.530000000000001 ]
							}
, 							{
								"key" : 8049,
								"value" : [ 33.399999999999999 ]
							}
, 							{
								"key" : 8050,
								"value" : [ 36.32 ]
							}
, 							{
								"key" : 8051,
								"value" : [ 38.890000000000001 ]
							}
, 							{
								"key" : 8052,
								"value" : [ 41.340000000000003 ]
							}
, 							{
								"key" : 8053,
								"value" : [ 43.450000000000003 ]
							}
, 							{
								"key" : 8054,
								"value" : [ 45.090000000000003 ]
							}
, 							{
								"key" : 8055,
								"value" : [ 45.729999999999997 ]
							}
, 							{
								"key" : 8056,
								"value" : [ 44.420000000000002 ]
							}
, 							{
								"key" : 8057,
								"value" : [ 41.630000000000003 ]
							}
, 							{
								"key" : 8058,
								"value" : [ 38.390000000000001 ]
							}
, 							{
								"key" : 8059,
								"value" : [ 37.450000000000003 ]
							}
, 							{
								"key" : 8060,
								"value" : [ 37.130000000000003 ]
							}
, 							{
								"key" : 8061,
								"value" : [ 36.950000000000003 ]
							}
, 							{
								"key" : 8062,
								"value" : [ 36.07 ]
							}
, 							{
								"key" : 8063,
								"value" : [ 34.719999999999999 ]
							}
, 							{
								"key" : 8064,
								"value" : [ 33.119999999999997 ]
							}
, 							{
								"key" : 8065,
								"value" : [ 31.710000000000001 ]
							}
, 							{
								"key" : 8066,
								"value" : [ 30.739999999999998 ]
							}
, 							{
								"key" : 8067,
								"value" : [ 29.82 ]
							}
, 							{
								"key" : 8068,
								"value" : [ 29.010000000000002 ]
							}
, 							{
								"key" : 8069,
								"value" : [ 28.719999999999999 ]
							}
, 							{
								"key" : 8070,
								"value" : [ 28.440000000000001 ]
							}
, 							{
								"key" : 8071,
								"value" : [ 28.309999999999999 ]
							}
, 							{
								"key" : 8072,
								"value" : [ 28.899999999999999 ]
							}
, 							{
								"key" : 8073,
								"value" : [ 29.43 ]
							}
, 							{
								"key" : 8074,
								"value" : [ 30.02 ]
							}
, 							{
								"key" : 8075,
								"value" : [ 30.420000000000002 ]
							}
, 							{
								"key" : 8076,
								"value" : [ 30.18 ]
							}
, 							{
								"key" : 8077,
								"value" : [ 30.199999999999999 ]
							}
, 							{
								"key" : 8078,
								"value" : [ 30.02 ]
							}
, 							{
								"key" : 8079,
								"value" : [ 29.57 ]
							}
, 							{
								"key" : 8080,
								"value" : [ 29.120000000000001 ]
							}
, 							{
								"key" : 8081,
								"value" : [ 28.649999999999999 ]
							}
, 							{
								"key" : 8082,
								"value" : [ 27.91 ]
							}
, 							{
								"key" : 8083,
								"value" : [ 27.59 ]
							}
, 							{
								"key" : 8084,
								"value" : [ 26.940000000000001 ]
							}
, 							{
								"key" : 8085,
								"value" : [ 26.870000000000001 ]
							}
, 							{
								"key" : 8086,
								"value" : [ 27.390000000000001 ]
							}
, 							{
								"key" : 8087,
								"value" : [ 28.109999999999999 ]
							}
, 							{
								"key" : 8088,
								"value" : [ 28.530000000000001 ]
							}
, 							{
								"key" : 8089,
								"value" : [ 28.760000000000002 ]
							}
, 							{
								"key" : 8090,
								"value" : [ 28.620000000000001 ]
							}
, 							{
								"key" : 8091,
								"value" : [ 28.600000000000001 ]
							}
, 							{
								"key" : 8092,
								"value" : [ 28.899999999999999 ]
							}
, 							{
								"key" : 8093,
								"value" : [ 29.210000000000001 ]
							}
, 							{
								"key" : 8094,
								"value" : [ 29.16 ]
							}
, 							{
								"key" : 8095,
								"value" : [ 28.940000000000001 ]
							}
, 							{
								"key" : 8096,
								"value" : [ 30.09 ]
							}
, 							{
								"key" : 8097,
								"value" : [ 30.989999999999998 ]
							}
, 							{
								"key" : 8098,
								"value" : [ 32.090000000000003 ]
							}
, 							{
								"key" : 8099,
								"value" : [ 33.369999999999997 ]
							}
, 							{
								"key" : 8100,
								"value" : [ 34.450000000000003 ]
							}
, 							{
								"key" : 8101,
								"value" : [ 35.460000000000001 ]
							}
, 							{
								"key" : 8102,
								"value" : [ 36.159999999999997 ]
							}
, 							{
								"key" : 8103,
								"value" : [ 36.43 ]
							}
, 							{
								"key" : 8104,
								"value" : [ 36.189999999999998 ]
							}
, 							{
								"key" : 8105,
								"value" : [ 35.869999999999997 ]
							}
, 							{
								"key" : 8106,
								"value" : [ 35.420000000000002 ]
							}
, 							{
								"key" : 8107,
								"value" : [ 35.710000000000001 ]
							}
, 							{
								"key" : 8108,
								"value" : [ 35.439999999999998 ]
							}
, 							{
								"key" : 8109,
								"value" : [ 35.100000000000001 ]
							}
, 							{
								"key" : 8110,
								"value" : [ 34.719999999999999 ]
							}
, 							{
								"key" : 8111,
								"value" : [ 34.520000000000003 ]
							}
, 							{
								"key" : 8112,
								"value" : [ 34.5 ]
							}
, 							{
								"key" : 8113,
								"value" : [ 34.469999999999999 ]
							}
, 							{
								"key" : 8114,
								"value" : [ 34.390000000000001 ]
							}
, 							{
								"key" : 8115,
								"value" : [ 34.380000000000003 ]
							}
, 							{
								"key" : 8116,
								"value" : [ 35.109999999999999 ]
							}
, 							{
								"key" : 8117,
								"value" : [ 35.289999999999999 ]
							}
, 							{
								"key" : 8118,
								"value" : [ 34.899999999999999 ]
							}
, 							{
								"key" : 8119,
								"value" : [ 34.659999999999997 ]
							}
, 							{
								"key" : 8120,
								"value" : [ 35.729999999999997 ]
							}
, 							{
								"key" : 8121,
								"value" : [ 38.549999999999997 ]
							}
, 							{
								"key" : 8122,
								"value" : [ 43.049999999999997 ]
							}
, 							{
								"key" : 8123,
								"value" : [ 47.32 ]
							}
, 							{
								"key" : 8124,
								"value" : [ 50.590000000000003 ]
							}
, 							{
								"key" : 8125,
								"value" : [ 52.75 ]
							}
, 							{
								"key" : 8126,
								"value" : [ 53.82 ]
							}
, 							{
								"key" : 8127,
								"value" : [ 54.5 ]
							}
, 							{
								"key" : 8128,
								"value" : [ 54.590000000000003 ]
							}
, 							{
								"key" : 8129,
								"value" : [ 53.799999999999997 ]
							}
, 							{
								"key" : 8130,
								"value" : [ 53.259999999999998 ]
							}
, 							{
								"key" : 8131,
								"value" : [ 53.200000000000003 ]
							}
, 							{
								"key" : 8132,
								"value" : [ 52.990000000000002 ]
							}
, 							{
								"key" : 8133,
								"value" : [ 52.25 ]
							}
, 							{
								"key" : 8134,
								"value" : [ 51.979999999999997 ]
							}
, 							{
								"key" : 8135,
								"value" : [ 51.780000000000001 ]
							}
, 							{
								"key" : 8136,
								"value" : [ 51.759999999999998 ]
							}
, 							{
								"key" : 8137,
								"value" : [ 51.549999999999997 ]
							}
, 							{
								"key" : 8138,
								"value" : [ 51.350000000000001 ]
							}
, 							{
								"key" : 8139,
								"value" : [ 50.450000000000003 ]
							}
, 							{
								"key" : 8140,
								"value" : [ 43.880000000000003 ]
							}
, 							{
								"key" : 8141,
								"value" : [ 37.420000000000002 ]
							}
, 							{
								"key" : 8142,
								"value" : [ 36.100000000000001 ]
							}
, 							{
								"key" : 8143,
								"value" : [ 35.060000000000002 ]
							}
, 							{
								"key" : 8144,
								"value" : [ 34.450000000000003 ]
							}
, 							{
								"key" : 8145,
								"value" : [ 34.840000000000003 ]
							}
, 							{
								"key" : 8146,
								"value" : [ 35.780000000000001 ]
							}
, 							{
								"key" : 8147,
								"value" : [ 36.969999999999999 ]
							}
, 							{
								"key" : 8148,
								"value" : [ 38.259999999999998 ]
							}
, 							{
								"key" : 8149,
								"value" : [ 39.159999999999997 ]
							}
, 							{
								"key" : 8150,
								"value" : [ 39.649999999999999 ]
							}
, 							{
								"key" : 8151,
								"value" : [ 39.340000000000003 ]
							}
, 							{
								"key" : 8152,
								"value" : [ 38.890000000000001 ]
							}
, 							{
								"key" : 8153,
								"value" : [ 38.189999999999998 ]
							}
, 							{
								"key" : 8154,
								"value" : [ 36.5 ]
							}
, 							{
								"key" : 8155,
								"value" : [ 35.689999999999998 ]
							}
, 							{
								"key" : 8156,
								"value" : [ 34.719999999999999 ]
							}
, 							{
								"key" : 8157,
								"value" : [ 35.240000000000002 ]
							}
, 							{
								"key" : 8158,
								"value" : [ 33.939999999999998 ]
							}
, 							{
								"key" : 8159,
								"value" : [ 33.57 ]
							}
, 							{
								"key" : 8160,
								"value" : [ 33.009999999999998 ]
							}
, 							{
								"key" : 8161,
								"value" : [ 32.270000000000003 ]
							}
, 							{
								"key" : 8162,
								"value" : [ 32.25 ]
							}
, 							{
								"key" : 8163,
								"value" : [ 32.159999999999997 ]
							}
, 							{
								"key" : 8164,
								"value" : [ 31.960000000000001 ]
							}
, 							{
								"key" : 8165,
								"value" : [ 31.890000000000001 ]
							}
, 							{
								"key" : 8166,
								"value" : [ 31.640000000000001 ]
							}
, 							{
								"key" : 8167,
								"value" : [ 31.510000000000002 ]
							}
, 							{
								"key" : 8168,
								"value" : [ 31.82 ]
							}
, 							{
								"key" : 8169,
								"value" : [ 32.409999999999997 ]
							}
, 							{
								"key" : 8170,
								"value" : [ 32.920000000000002 ]
							}
, 							{
								"key" : 8171,
								"value" : [ 33.240000000000002 ]
							}
, 							{
								"key" : 8172,
								"value" : [ 33.939999999999998 ]
							}
, 							{
								"key" : 8173,
								"value" : [ 34.520000000000003 ]
							}
, 							{
								"key" : 8174,
								"value" : [ 34.920000000000002 ]
							}
, 							{
								"key" : 8175,
								"value" : [ 34.969999999999999 ]
							}
, 							{
								"key" : 8176,
								"value" : [ 34.789999999999999 ]
							}
, 							{
								"key" : 8177,
								"value" : [ 34.140000000000001 ]
							}
, 							{
								"key" : 8178,
								"value" : [ 32.380000000000003 ]
							}
, 							{
								"key" : 8179,
								"value" : [ 30.829999999999998 ]
							}
, 							{
								"key" : 8180,
								"value" : [ 29.77 ]
							}
, 							{
								"key" : 8181,
								"value" : [ 28.27 ]
							}
, 							{
								"key" : 8182,
								"value" : [ 26.850000000000001 ]
							}
, 							{
								"key" : 8183,
								"value" : [ 25.829999999999998 ]
							}
, 							{
								"key" : 8184,
								"value" : [ 25.030000000000001 ]
							}
, 							{
								"key" : 8185,
								"value" : [ 24.309999999999999 ]
							}
, 							{
								"key" : 8186,
								"value" : [ 23.719999999999999 ]
							}
, 							{
								"key" : 8187,
								"value" : [ 23.27 ]
							}
, 							{
								"key" : 8188,
								"value" : [ 22.960000000000001 ]
							}
, 							{
								"key" : 8189,
								"value" : [ 22.640000000000001 ]
							}
, 							{
								"key" : 8190,
								"value" : [ 22.23 ]
							}
, 							{
								"key" : 8191,
								"value" : [ 22.210000000000001 ]
							}
, 							{
								"key" : 8192,
								"value" : [ 23.940000000000001 ]
							}
, 							{
								"key" : 8193,
								"value" : [ 26.940000000000001 ]
							}
, 							{
								"key" : 8194,
								"value" : [ 28.649999999999999 ]
							}
, 							{
								"key" : 8195,
								"value" : [ 30.199999999999999 ]
							}
, 							{
								"key" : 8196,
								"value" : [ 31.91 ]
							}
, 							{
								"key" : 8197,
								"value" : [ 33.57 ]
							}
, 							{
								"key" : 8198,
								"value" : [ 34.920000000000002 ]
							}
, 							{
								"key" : 8199,
								"value" : [ 35.640000000000001 ]
							}
, 							{
								"key" : 8200,
								"value" : [ 35.689999999999998 ]
							}
, 							{
								"key" : 8201,
								"value" : [ 34.829999999999998 ]
							}
, 							{
								"key" : 8202,
								"value" : [ 32.090000000000003 ]
							}
, 							{
								"key" : 8203,
								"value" : [ 30.940000000000001 ]
							}
, 							{
								"key" : 8204,
								"value" : [ 30.239999999999998 ]
							}
, 							{
								"key" : 8205,
								"value" : [ 29.460000000000001 ]
							}
, 							{
								"key" : 8206,
								"value" : [ 28.670000000000002 ]
							}
, 							{
								"key" : 8207,
								"value" : [ 28.309999999999999 ]
							}
, 							{
								"key" : 8208,
								"value" : [ 27.52 ]
							}
, 							{
								"key" : 8209,
								"value" : [ 27.09 ]
							}
, 							{
								"key" : 8210,
								"value" : [ 27.210000000000001 ]
							}
, 							{
								"key" : 8211,
								"value" : [ 27.390000000000001 ]
							}
, 							{
								"key" : 8212,
								"value" : [ 27.5 ]
							}
, 							{
								"key" : 8213,
								"value" : [ 27.719999999999999 ]
							}
, 							{
								"key" : 8214,
								"value" : [ 27.969999999999999 ]
							}
, 							{
								"key" : 8215,
								"value" : [ 28.18 ]
							}
, 							{
								"key" : 8216,
								"value" : [ 29.010000000000002 ]
							}
, 							{
								"key" : 8217,
								"value" : [ 30.920000000000002 ]
							}
, 							{
								"key" : 8218,
								"value" : [ 32.939999999999998 ]
							}
, 							{
								"key" : 8219,
								"value" : [ 34.659999999999997 ]
							}
, 							{
								"key" : 8220,
								"value" : [ 36.009999999999998 ]
							}
, 							{
								"key" : 8221,
								"value" : [ 37.060000000000002 ]
							}
, 							{
								"key" : 8222,
								"value" : [ 37.740000000000002 ]
							}
, 							{
								"key" : 8223,
								"value" : [ 37.719999999999999 ]
							}
, 							{
								"key" : 8224,
								"value" : [ 37.170000000000002 ]
							}
, 							{
								"key" : 8225,
								"value" : [ 35.780000000000001 ]
							}
, 							{
								"key" : 8226,
								"value" : [ 32.579999999999998 ]
							}
, 							{
								"key" : 8227,
								"value" : [ 30.870000000000001 ]
							}
, 							{
								"key" : 8228,
								"value" : [ 29.640000000000001 ]
							}
, 							{
								"key" : 8229,
								"value" : [ 28.539999999999999 ]
							}
, 							{
								"key" : 8230,
								"value" : [ 28.420000000000002 ]
							}
, 							{
								"key" : 8231,
								"value" : [ 28.09 ]
							}
, 							{
								"key" : 8232,
								"value" : [ 27.550000000000001 ]
							}
, 							{
								"key" : 8233,
								"value" : [ 27.09 ]
							}
, 							{
								"key" : 8234,
								"value" : [ 26.850000000000001 ]
							}
, 							{
								"key" : 8235,
								"value" : [ 26.280000000000001 ]
							}
, 							{
								"key" : 8236,
								"value" : [ 25.390000000000001 ]
							}
, 							{
								"key" : 8237,
								"value" : [ 24.690000000000001 ]
							}
, 							{
								"key" : 8238,
								"value" : [ 24.120000000000001 ]
							}
, 							{
								"key" : 8239,
								"value" : [ 23.719999999999999 ]
							}
, 							{
								"key" : 8240,
								"value" : [ 24.039999999999999 ]
							}
, 							{
								"key" : 8241,
								"value" : [ 24.600000000000001 ]
							}
, 							{
								"key" : 8242,
								"value" : [ 25.34 ]
							}
, 							{
								"key" : 8243,
								"value" : [ 25.949999999999999 ]
							}
, 							{
								"key" : 8244,
								"value" : [ 25.879999999999999 ]
							}
, 							{
								"key" : 8245,
								"value" : [ 25.66 ]
							}
, 							{
								"key" : 8246,
								"value" : [ 25.59 ]
							}
, 							{
								"key" : 8247,
								"value" : [ 25.649999999999999 ]
							}
, 							{
								"key" : 8248,
								"value" : [ 25.57 ]
							}
, 							{
								"key" : 8249,
								"value" : [ 25.289999999999999 ]
							}
, 							{
								"key" : 8250,
								"value" : [ 24.91 ]
							}
, 							{
								"key" : 8251,
								"value" : [ 24.710000000000001 ]
							}
, 							{
								"key" : 8252,
								"value" : [ 24.66 ]
							}
, 							{
								"key" : 8253,
								"value" : [ 24.690000000000001 ]
							}
, 							{
								"key" : 8254,
								"value" : [ 24.690000000000001 ]
							}
, 							{
								"key" : 8255,
								"value" : [ 24.620000000000001 ]
							}
, 							{
								"key" : 8256,
								"value" : [ 24.489999999999998 ]
							}
, 							{
								"key" : 8257,
								"value" : [ 24.399999999999999 ]
							}
, 							{
								"key" : 8258,
								"value" : [ 24.260000000000002 ]
							}
, 							{
								"key" : 8259,
								"value" : [ 24.120000000000001 ]
							}
, 							{
								"key" : 8260,
								"value" : [ 23.899999999999999 ]
							}
, 							{
								"key" : 8261,
								"value" : [ 23.670000000000002 ]
							}
, 							{
								"key" : 8262,
								"value" : [ 23.469999999999999 ]
							}
, 							{
								"key" : 8263,
								"value" : [ 23.359999999999999 ]
							}
, 							{
								"key" : 8264,
								"value" : [ 23.670000000000002 ]
							}
, 							{
								"key" : 8265,
								"value" : [ 24.329999999999998 ]
							}
, 							{
								"key" : 8266,
								"value" : [ 25.559999999999999 ]
							}
, 							{
								"key" : 8267,
								"value" : [ 27.449999999999999 ]
							}
, 							{
								"key" : 8268,
								"value" : [ 29.609999999999999 ]
							}
, 							{
								"key" : 8269,
								"value" : [ 31.530000000000001 ]
							}
, 							{
								"key" : 8270,
								"value" : [ 32.560000000000002 ]
							}
, 							{
								"key" : 8271,
								"value" : [ 32.310000000000002 ]
							}
, 							{
								"key" : 8272,
								"value" : [ 30.469999999999999 ]
							}
, 							{
								"key" : 8273,
								"value" : [ 28.260000000000002 ]
							}
, 							{
								"key" : 8274,
								"value" : [ 26.739999999999998 ]
							}
, 							{
								"key" : 8275,
								"value" : [ 25.390000000000001 ]
							}
, 							{
								"key" : 8276,
								"value" : [ 23.68 ]
							}
, 							{
								"key" : 8277,
								"value" : [ 22.300000000000001 ]
							}
, 							{
								"key" : 8278,
								"value" : [ 20.77 ]
							}
, 							{
								"key" : 8279,
								"value" : [ 18.969999999999999 ]
							}
, 							{
								"key" : 8280,
								"value" : [ 17.82 ]
							}
, 							{
								"key" : 8281,
								"value" : [ 16.969999999999999 ]
							}
, 							{
								"key" : 8282,
								"value" : [ 16.120000000000001 ]
							}
, 							{
								"key" : 8283,
								"value" : [ 15.24 ]
							}
, 							{
								"key" : 8284,
								"value" : [ 14.470000000000001 ]
							}
, 							{
								"key" : 8285,
								"value" : [ 13.800000000000001 ]
							}
, 							{
								"key" : 8286,
								"value" : [ 13.1 ]
							}
, 							{
								"key" : 8287,
								"value" : [ 12.67 ]
							}
, 							{
								"key" : 8288,
								"value" : [ 12.99 ]
							}
, 							{
								"key" : 8289,
								"value" : [ 13.68 ]
							}
, 							{
								"key" : 8290,
								"value" : [ 14.85 ]
							}
, 							{
								"key" : 8291,
								"value" : [ 16.300000000000001 ]
							}
, 							{
								"key" : 8292,
								"value" : [ 17.91 ]
							}
, 							{
								"key" : 8293,
								"value" : [ 19.559999999999999 ]
							}
, 							{
								"key" : 8294,
								"value" : [ 21.09 ]
							}
, 							{
								"key" : 8295,
								"value" : [ 22.170000000000002 ]
							}
, 							{
								"key" : 8296,
								"value" : [ 22.66 ]
							}
, 							{
								"key" : 8297,
								"value" : [ 22.510000000000002 ]
							}
, 							{
								"key" : 8298,
								"value" : [ 21.609999999999999 ]
							}
, 							{
								"key" : 8299,
								"value" : [ 21.25 ]
							}
, 							{
								"key" : 8300,
								"value" : [ 21.18 ]
							}
, 							{
								"key" : 8301,
								"value" : [ 20.5 ]
							}
, 							{
								"key" : 8302,
								"value" : [ 20.120000000000001 ]
							}
, 							{
								"key" : 8303,
								"value" : [ 19.989999999999998 ]
							}
, 							{
								"key" : 8304,
								"value" : [ 20.75 ]
							}
, 							{
								"key" : 8305,
								"value" : [ 21.539999999999999 ]
							}
, 							{
								"key" : 8306,
								"value" : [ 22.079999999999998 ]
							}
, 							{
								"key" : 8307,
								"value" : [ 22.550000000000001 ]
							}
, 							{
								"key" : 8308,
								"value" : [ 23.219999999999999 ]
							}
, 							{
								"key" : 8309,
								"value" : [ 24.510000000000002 ]
							}
, 							{
								"key" : 8310,
								"value" : [ 25.52 ]
							}
, 							{
								"key" : 8311,
								"value" : [ 26.550000000000001 ]
							}
, 							{
								"key" : 8312,
								"value" : [ 28.899999999999999 ]
							}
, 							{
								"key" : 8313,
								"value" : [ 31.84 ]
							}
, 							{
								"key" : 8314,
								"value" : [ 34.520000000000003 ]
							}
, 							{
								"key" : 8315,
								"value" : [ 37.079999999999998 ]
							}
, 							{
								"key" : 8316,
								"value" : [ 39.539999999999999 ]
							}
, 							{
								"key" : 8317,
								"value" : [ 41.5 ]
							}
, 							{
								"key" : 8318,
								"value" : [ 42.840000000000003 ]
							}
, 							{
								"key" : 8319,
								"value" : [ 43.649999999999999 ]
							}
, 							{
								"key" : 8320,
								"value" : [ 43.810000000000002 ]
							}
, 							{
								"key" : 8321,
								"value" : [ 42.299999999999997 ]
							}
, 							{
								"key" : 8322,
								"value" : [ 39.270000000000003 ]
							}
, 							{
								"key" : 8323,
								"value" : [ 37.869999999999997 ]
							}
, 							{
								"key" : 8324,
								"value" : [ 37.240000000000002 ]
							}
, 							{
								"key" : 8325,
								"value" : [ 36.82 ]
							}
, 							{
								"key" : 8326,
								"value" : [ 36.75 ]
							}
, 							{
								"key" : 8327,
								"value" : [ 36.729999999999997 ]
							}
, 							{
								"key" : 8328,
								"value" : [ 36.770000000000003 ]
							}
, 							{
								"key" : 8329,
								"value" : [ 37.020000000000003 ]
							}
, 							{
								"key" : 8330,
								"value" : [ 37.450000000000003 ]
							}
, 							{
								"key" : 8331,
								"value" : [ 36.18 ]
							}
, 							{
								"key" : 8332,
								"value" : [ 35.079999999999998 ]
							}
, 							{
								"key" : 8333,
								"value" : [ 34.340000000000003 ]
							}
, 							{
								"key" : 8334,
								"value" : [ 33.479999999999997 ]
							}
, 							{
								"key" : 8335,
								"value" : [ 33.640000000000001 ]
							}
, 							{
								"key" : 8336,
								"value" : [ 34.840000000000003 ]
							}
, 							{
								"key" : 8337,
								"value" : [ 37.399999999999999 ]
							}
, 							{
								"key" : 8338,
								"value" : [ 40.890000000000001 ]
							}
, 							{
								"key" : 8339,
								"value" : [ 43.990000000000002 ]
							}
, 							{
								"key" : 8340,
								"value" : [ 46.439999999999998 ]
							}
, 							{
								"key" : 8341,
								"value" : [ 48.090000000000003 ]
							}
, 							{
								"key" : 8342,
								"value" : [ 48.960000000000001 ]
							}
, 							{
								"key" : 8343,
								"value" : [ 49.329999999999998 ]
							}
, 							{
								"key" : 8344,
								"value" : [ 49.149999999999999 ]
							}
, 							{
								"key" : 8345,
								"value" : [ 47.520000000000003 ]
							}
, 							{
								"key" : 8346,
								"value" : [ 45.479999999999997 ]
							}
, 							{
								"key" : 8347,
								"value" : [ 45.539999999999999 ]
							}
, 							{
								"key" : 8348,
								"value" : [ 44.399999999999999 ]
							}
, 							{
								"key" : 8349,
								"value" : [ 40.659999999999997 ]
							}
, 							{
								"key" : 8350,
								"value" : [ 36.82 ]
							}
, 							{
								"key" : 8351,
								"value" : [ 35.100000000000001 ]
							}
, 							{
								"key" : 8352,
								"value" : [ 35.039999999999999 ]
							}
, 							{
								"key" : 8353,
								"value" : [ 34.969999999999999 ]
							}
, 							{
								"key" : 8354,
								"value" : [ 34.719999999999999 ]
							}
, 							{
								"key" : 8355,
								"value" : [ 34.390000000000001 ]
							}
, 							{
								"key" : 8356,
								"value" : [ 34.32 ]
							}
, 							{
								"key" : 8357,
								"value" : [ 34.210000000000001 ]
							}
, 							{
								"key" : 8358,
								"value" : [ 34.140000000000001 ]
							}
, 							{
								"key" : 8359,
								"value" : [ 34.299999999999997 ]
							}
, 							{
								"key" : 8360,
								"value" : [ 34.539999999999999 ]
							}
, 							{
								"key" : 8361,
								"value" : [ 35.060000000000002 ]
							}
, 							{
								"key" : 8362,
								"value" : [ 36.049999999999997 ]
							}
, 							{
								"key" : 8363,
								"value" : [ 36.520000000000003 ]
							}
, 							{
								"key" : 8364,
								"value" : [ 36.68 ]
							}
, 							{
								"key" : 8365,
								"value" : [ 37.020000000000003 ]
							}
, 							{
								"key" : 8366,
								"value" : [ 37.850000000000001 ]
							}
, 							{
								"key" : 8367,
								"value" : [ 39.520000000000003 ]
							}
, 							{
								"key" : 8368,
								"value" : [ 40.060000000000002 ]
							}
, 							{
								"key" : 8369,
								"value" : [ 39.219999999999999 ]
							}
, 							{
								"key" : 8370,
								"value" : [ 35.799999999999997 ]
							}
, 							{
								"key" : 8371,
								"value" : [ 34.030000000000001 ]
							}
, 							{
								"key" : 8372,
								"value" : [ 33.75 ]
							}
, 							{
								"key" : 8373,
								"value" : [ 33.640000000000001 ]
							}
, 							{
								"key" : 8374,
								"value" : [ 33.670000000000002 ]
							}
, 							{
								"key" : 8375,
								"value" : [ 33.729999999999997 ]
							}
, 							{
								"key" : 8376,
								"value" : [ 33.619999999999997 ]
							}
, 							{
								"key" : 8377,
								"value" : [ 33.439999999999998 ]
							}
, 							{
								"key" : 8378,
								"value" : [ 33.390000000000001 ]
							}
, 							{
								"key" : 8379,
								"value" : [ 33.350000000000001 ]
							}
, 							{
								"key" : 8380,
								"value" : [ 33.420000000000002 ]
							}
, 							{
								"key" : 8381,
								"value" : [ 33.689999999999998 ]
							}
, 							{
								"key" : 8382,
								"value" : [ 34.299999999999997 ]
							}
, 							{
								"key" : 8383,
								"value" : [ 36.539999999999999 ]
							}
, 							{
								"key" : 8384,
								"value" : [ 39.960000000000001 ]
							}
, 							{
								"key" : 8385,
								"value" : [ 42.93 ]
							}
, 							{
								"key" : 8386,
								"value" : [ 45.840000000000003 ]
							}
, 							{
								"key" : 8387,
								"value" : [ 49.460000000000001 ]
							}
, 							{
								"key" : 8388,
								"value" : [ 52.229999999999997 ]
							}
, 							{
								"key" : 8389,
								"value" : [ 53.600000000000001 ]
							}
, 							{
								"key" : 8390,
								"value" : [ 54.159999999999997 ]
							}
, 							{
								"key" : 8391,
								"value" : [ 54.0 ]
							}
, 							{
								"key" : 8392,
								"value" : [ 53.759999999999998 ]
							}
, 							{
								"key" : 8393,
								"value" : [ 52.740000000000002 ]
							}
, 							{
								"key" : 8394,
								"value" : [ 50.340000000000003 ]
							}
, 							{
								"key" : 8395,
								"value" : [ 48.780000000000001 ]
							}
, 							{
								"key" : 8396,
								"value" : [ 47.880000000000003 ]
							}
, 							{
								"key" : 8397,
								"value" : [ 46.890000000000001 ]
							}
, 							{
								"key" : 8398,
								"value" : [ 45.969999999999999 ]
							}
, 							{
								"key" : 8399,
								"value" : [ 45.229999999999997 ]
							}
, 							{
								"key" : 8400,
								"value" : [ 44.310000000000002 ]
							}
, 							{
								"key" : 8401,
								"value" : [ 43.469999999999999 ]
							}
, 							{
								"key" : 8402,
								"value" : [ 42.759999999999998 ]
							}
, 							{
								"key" : 8403,
								"value" : [ 42.060000000000002 ]
							}
, 							{
								"key" : 8404,
								"value" : [ 41.469999999999999 ]
							}
, 							{
								"key" : 8405,
								"value" : [ 40.890000000000001 ]
							}
, 							{
								"key" : 8406,
								"value" : [ 40.479999999999997 ]
							}
, 							{
								"key" : 8407,
								"value" : [ 40.770000000000003 ]
							}
, 							{
								"key" : 8408,
								"value" : [ 42.659999999999997 ]
							}
, 							{
								"key" : 8409,
								"value" : [ 45.140000000000001 ]
							}
, 							{
								"key" : 8410,
								"value" : [ 47.479999999999997 ]
							}
, 							{
								"key" : 8411,
								"value" : [ 50.039999999999999 ]
							}
, 							{
								"key" : 8412,
								"value" : [ 53.600000000000001 ]
							}
, 							{
								"key" : 8413,
								"value" : [ 57.740000000000002 ]
							}
, 							{
								"key" : 8414,
								"value" : [ 58.259999999999998 ]
							}
, 							{
								"key" : 8415,
								"value" : [ 53.909999999999997 ]
							}
, 							{
								"key" : 8416,
								"value" : [ 46.810000000000002 ]
							}
, 							{
								"key" : 8417,
								"value" : [ 42.840000000000003 ]
							}
, 							{
								"key" : 8418,
								"value" : [ 41.719999999999999 ]
							}
, 							{
								"key" : 8419,
								"value" : [ 41.770000000000003 ]
							}
, 							{
								"key" : 8420,
								"value" : [ 41.789999999999999 ]
							}
, 							{
								"key" : 8421,
								"value" : [ 41.130000000000003 ]
							}
, 							{
								"key" : 8422,
								"value" : [ 39.990000000000002 ]
							}
, 							{
								"key" : 8423,
								"value" : [ 39.789999999999999 ]
							}
, 							{
								"key" : 8424,
								"value" : [ 39.740000000000002 ]
							}
, 							{
								"key" : 8425,
								"value" : [ 39.869999999999997 ]
							}
, 							{
								"key" : 8426,
								"value" : [ 39.740000000000002 ]
							}
, 							{
								"key" : 8427,
								"value" : [ 38.890000000000001 ]
							}
, 							{
								"key" : 8428,
								"value" : [ 38.189999999999998 ]
							}
, 							{
								"key" : 8429,
								"value" : [ 37.850000000000001 ]
							}
, 							{
								"key" : 8430,
								"value" : [ 37.619999999999997 ]
							}
, 							{
								"key" : 8431,
								"value" : [ 37.509999999999998 ]
							}
, 							{
								"key" : 8432,
								"value" : [ 37.600000000000001 ]
							}
, 							{
								"key" : 8433,
								"value" : [ 37.670000000000002 ]
							}
, 							{
								"key" : 8434,
								"value" : [ 38.030000000000001 ]
							}
, 							{
								"key" : 8435,
								"value" : [ 38.140000000000001 ]
							}
, 							{
								"key" : 8436,
								"value" : [ 38.159999999999997 ]
							}
, 							{
								"key" : 8437,
								"value" : [ 38.520000000000003 ]
							}
, 							{
								"key" : 8438,
								"value" : [ 38.640000000000001 ]
							}
, 							{
								"key" : 8439,
								"value" : [ 39.07 ]
							}
, 							{
								"key" : 8440,
								"value" : [ 39.539999999999999 ]
							}
, 							{
								"key" : 8441,
								"value" : [ 39.469999999999999 ]
							}
, 							{
								"key" : 8442,
								"value" : [ 39.130000000000003 ]
							}
, 							{
								"key" : 8443,
								"value" : [ 38.68 ]
							}
, 							{
								"key" : 8444,
								"value" : [ 38.43 ]
							}
, 							{
								"key" : 8445,
								"value" : [ 38.140000000000001 ]
							}
, 							{
								"key" : 8446,
								"value" : [ 38.590000000000003 ]
							}
, 							{
								"key" : 8447,
								"value" : [ 39.020000000000003 ]
							}
, 							{
								"key" : 8448,
								"value" : [ 39.219999999999999 ]
							}
, 							{
								"key" : 8449,
								"value" : [ 38.640000000000001 ]
							}
, 							{
								"key" : 8450,
								"value" : [ 37.579999999999998 ]
							}
, 							{
								"key" : 8451,
								"value" : [ 36.640000000000001 ]
							}
, 							{
								"key" : 8452,
								"value" : [ 36.030000000000001 ]
							}
, 							{
								"key" : 8453,
								"value" : [ 35.560000000000002 ]
							}
, 							{
								"key" : 8454,
								"value" : [ 35.079999999999998 ]
							}
, 							{
								"key" : 8455,
								"value" : [ 34.969999999999999 ]
							}
, 							{
								"key" : 8456,
								"value" : [ 35.380000000000003 ]
							}
, 							{
								"key" : 8457,
								"value" : [ 35.909999999999997 ]
							}
, 							{
								"key" : 8458,
								"value" : [ 36.07 ]
							}
, 							{
								"key" : 8459,
								"value" : [ 36.5 ]
							}
, 							{
								"key" : 8460,
								"value" : [ 37.310000000000002 ]
							}
, 							{
								"key" : 8461,
								"value" : [ 38.259999999999998 ]
							}
, 							{
								"key" : 8462,
								"value" : [ 39.039999999999999 ]
							}
, 							{
								"key" : 8463,
								"value" : [ 39.420000000000002 ]
							}
, 							{
								"key" : 8464,
								"value" : [ 39.539999999999999 ]
							}
, 							{
								"key" : 8465,
								"value" : [ 39.509999999999998 ]
							}
, 							{
								"key" : 8466,
								"value" : [ 38.710000000000001 ]
							}
, 							{
								"key" : 8467,
								"value" : [ 37.890000000000001 ]
							}
, 							{
								"key" : 8468,
								"value" : [ 37.539999999999999 ]
							}
, 							{
								"key" : 8469,
								"value" : [ 36.840000000000003 ]
							}
, 							{
								"key" : 8470,
								"value" : [ 36.520000000000003 ]
							}
, 							{
								"key" : 8471,
								"value" : [ 36.479999999999997 ]
							}
, 							{
								"key" : 8472,
								"value" : [ 35.939999999999998 ]
							}
, 							{
								"key" : 8473,
								"value" : [ 34.539999999999999 ]
							}
, 							{
								"key" : 8474,
								"value" : [ 33.670000000000002 ]
							}
, 							{
								"key" : 8475,
								"value" : [ 33.130000000000003 ]
							}
, 							{
								"key" : 8476,
								"value" : [ 32.68 ]
							}
, 							{
								"key" : 8477,
								"value" : [ 32.340000000000003 ]
							}
, 							{
								"key" : 8478,
								"value" : [ 32.340000000000003 ]
							}
, 							{
								"key" : 8479,
								"value" : [ 33.93 ]
							}
, 							{
								"key" : 8480,
								"value" : [ 36.140000000000001 ]
							}
, 							{
								"key" : 8481,
								"value" : [ 38.07 ]
							}
, 							{
								"key" : 8482,
								"value" : [ 41.229999999999997 ]
							}
, 							{
								"key" : 8483,
								"value" : [ 46.0 ]
							}
, 							{
								"key" : 8484,
								"value" : [ 49.060000000000002 ]
							}
, 							{
								"key" : 8485,
								"value" : [ 51.039999999999999 ]
							}
, 							{
								"key" : 8486,
								"value" : [ 52.560000000000002 ]
							}
, 							{
								"key" : 8487,
								"value" : [ 53.799999999999997 ]
							}
, 							{
								"key" : 8488,
								"value" : [ 54.549999999999997 ]
							}
, 							{
								"key" : 8489,
								"value" : [ 54.630000000000003 ]
							}
, 							{
								"key" : 8490,
								"value" : [ 53.619999999999997 ]
							}
, 							{
								"key" : 8491,
								"value" : [ 52.68 ]
							}
, 							{
								"key" : 8492,
								"value" : [ 52.210000000000001 ]
							}
, 							{
								"key" : 8493,
								"value" : [ 51.82 ]
							}
, 							{
								"key" : 8494,
								"value" : [ 51.039999999999999 ]
							}
, 							{
								"key" : 8495,
								"value" : [ 48.740000000000002 ]
							}
, 							{
								"key" : 8496,
								"value" : [ 46.329999999999998 ]
							}
, 							{
								"key" : 8497,
								"value" : [ 43.719999999999999 ]
							}
, 							{
								"key" : 8498,
								"value" : [ 41.789999999999999 ]
							}
, 							{
								"key" : 8499,
								"value" : [ 40.82 ]
							}
, 							{
								"key" : 8500,
								"value" : [ 40.420000000000002 ]
							}
, 							{
								"key" : 8501,
								"value" : [ 39.960000000000001 ]
							}
, 							{
								"key" : 8502,
								"value" : [ 39.43 ]
							}
, 							{
								"key" : 8503,
								"value" : [ 40.030000000000001 ]
							}
, 							{
								"key" : 8504,
								"value" : [ 42.039999999999999 ]
							}
, 							{
								"key" : 8505,
								"value" : [ 44.939999999999998 ]
							}
, 							{
								"key" : 8506,
								"value" : [ 48.850000000000001 ]
							}
, 							{
								"key" : 8507,
								"value" : [ 52.520000000000003 ]
							}
, 							{
								"key" : 8508,
								"value" : [ 54.82 ]
							}
, 							{
								"key" : 8509,
								"value" : [ 56.280000000000001 ]
							}
, 							{
								"key" : 8510,
								"value" : [ 57.200000000000003 ]
							}
, 							{
								"key" : 8511,
								"value" : [ 58.060000000000002 ]
							}
, 							{
								"key" : 8512,
								"value" : [ 58.210000000000001 ]
							}
, 							{
								"key" : 8513,
								"value" : [ 57.780000000000001 ]
							}
, 							{
								"key" : 8514,
								"value" : [ 54.659999999999997 ]
							}
, 							{
								"key" : 8515,
								"value" : [ 52.18 ]
							}
, 							{
								"key" : 8516,
								"value" : [ 50.219999999999999 ]
							}
, 							{
								"key" : 8517,
								"value" : [ 48.219999999999999 ]
							}
, 							{
								"key" : 8518,
								"value" : [ 47.189999999999998 ]
							}
, 							{
								"key" : 8519,
								"value" : [ 46.359999999999999 ]
							}
, 							{
								"key" : 8520,
								"value" : [ 45.840000000000003 ]
							}
, 							{
								"key" : 8521,
								"value" : [ 45.299999999999997 ]
							}
, 							{
								"key" : 8522,
								"value" : [ 44.439999999999998 ]
							}
, 							{
								"key" : 8523,
								"value" : [ 43.859999999999999 ]
							}
, 							{
								"key" : 8524,
								"value" : [ 43.210000000000001 ]
							}
, 							{
								"key" : 8525,
								"value" : [ 42.759999999999998 ]
							}
, 							{
								"key" : 8526,
								"value" : [ 43.07 ]
							}
, 							{
								"key" : 8527,
								"value" : [ 43.68 ]
							}
, 							{
								"key" : 8528,
								"value" : [ 44.369999999999997 ]
							}
, 							{
								"key" : 8529,
								"value" : [ 44.289999999999999 ]
							}
, 							{
								"key" : 8530,
								"value" : [ 44.619999999999997 ]
							}
, 							{
								"key" : 8531,
								"value" : [ 45.990000000000002 ]
							}
, 							{
								"key" : 8532,
								"value" : [ 46.469999999999999 ]
							}
, 							{
								"key" : 8533,
								"value" : [ 46.109999999999999 ]
							}
, 							{
								"key" : 8534,
								"value" : [ 46.170000000000002 ]
							}
, 							{
								"key" : 8535,
								"value" : [ 45.950000000000003 ]
							}
, 							{
								"key" : 8536,
								"value" : [ 45.43 ]
							}
, 							{
								"key" : 8537,
								"value" : [ 44.890000000000001 ]
							}
, 							{
								"key" : 8538,
								"value" : [ 44.759999999999998 ]
							}
, 							{
								"key" : 8539,
								"value" : [ 44.490000000000002 ]
							}
, 							{
								"key" : 8540,
								"value" : [ 43.43 ]
							}
, 							{
								"key" : 8541,
								"value" : [ 42.240000000000002 ]
							}
, 							{
								"key" : 8542,
								"value" : [ 41.07 ]
							}
, 							{
								"key" : 8543,
								"value" : [ 40.770000000000003 ]
							}
, 							{
								"key" : 8544,
								"value" : [ 41.32 ]
							}
, 							{
								"key" : 8545,
								"value" : [ 41.450000000000003 ]
							}
, 							{
								"key" : 8546,
								"value" : [ 41.700000000000003 ]
							}
, 							{
								"key" : 8547,
								"value" : [ 45.460000000000001 ]
							}
, 							{
								"key" : 8548,
								"value" : [ 49.57 ]
							}
, 							{
								"key" : 8549,
								"value" : [ 47.75 ]
							}
, 							{
								"key" : 8550,
								"value" : [ 44.170000000000002 ]
							}
, 							{
								"key" : 8551,
								"value" : [ 43.43 ]
							}
, 							{
								"key" : 8552,
								"value" : [ 44.289999999999999 ]
							}
, 							{
								"key" : 8553,
								"value" : [ 46.200000000000003 ]
							}
, 							{
								"key" : 8554,
								"value" : [ 47.969999999999999 ]
							}
, 							{
								"key" : 8555,
								"value" : [ 49.619999999999997 ]
							}
, 							{
								"key" : 8556,
								"value" : [ 51.420000000000002 ]
							}
, 							{
								"key" : 8557,
								"value" : [ 53.289999999999999 ]
							}
, 							{
								"key" : 8558,
								"value" : [ 54.810000000000002 ]
							}
, 							{
								"key" : 8559,
								"value" : [ 55.060000000000002 ]
							}
, 							{
								"key" : 8560,
								"value" : [ 53.240000000000002 ]
							}
, 							{
								"key" : 8561,
								"value" : [ 49.869999999999997 ]
							}
, 							{
								"key" : 8562,
								"value" : [ 47.210000000000001 ]
							}
, 							{
								"key" : 8563,
								"value" : [ 45.840000000000003 ]
							}
, 							{
								"key" : 8564,
								"value" : [ 45.18 ]
							}
, 							{
								"key" : 8565,
								"value" : [ 44.649999999999999 ]
							}
, 							{
								"key" : 8566,
								"value" : [ 44.149999999999999 ]
							}
, 							{
								"key" : 8567,
								"value" : [ 43.390000000000001 ]
							}
, 							{
								"key" : 8568,
								"value" : [ 42.350000000000001 ]
							}
, 							{
								"key" : 8569,
								"value" : [ 40.890000000000001 ]
							}
, 							{
								"key" : 8570,
								"value" : [ 40.079999999999998 ]
							}
, 							{
								"key" : 8571,
								"value" : [ 39.969999999999999 ]
							}
, 							{
								"key" : 8572,
								"value" : [ 40.119999999999997 ]
							}
, 							{
								"key" : 8573,
								"value" : [ 40.049999999999997 ]
							}
, 							{
								"key" : 8574,
								"value" : [ 39.759999999999998 ]
							}
, 							{
								"key" : 8575,
								"value" : [ 39.520000000000003 ]
							}
, 							{
								"key" : 8576,
								"value" : [ 39.450000000000003 ]
							}
, 							{
								"key" : 8577,
								"value" : [ 39.700000000000003 ]
							}
, 							{
								"key" : 8578,
								"value" : [ 40.119999999999997 ]
							}
, 							{
								"key" : 8579,
								"value" : [ 40.57 ]
							}
, 							{
								"key" : 8580,
								"value" : [ 40.82 ]
							}
, 							{
								"key" : 8581,
								"value" : [ 40.93 ]
							}
, 							{
								"key" : 8582,
								"value" : [ 40.93 ]
							}
, 							{
								"key" : 8583,
								"value" : [ 40.869999999999997 ]
							}
, 							{
								"key" : 8584,
								"value" : [ 40.299999999999997 ]
							}
, 							{
								"key" : 8585,
								"value" : [ 39.539999999999999 ]
							}
, 							{
								"key" : 8586,
								"value" : [ 38.890000000000001 ]
							}
, 							{
								"key" : 8587,
								"value" : [ 38.299999999999997 ]
							}
, 							{
								"key" : 8588,
								"value" : [ 37.869999999999997 ]
							}
, 							{
								"key" : 8589,
								"value" : [ 37.619999999999997 ]
							}
, 							{
								"key" : 8590,
								"value" : [ 36.950000000000003 ]
							}
, 							{
								"key" : 8591,
								"value" : [ 36.090000000000003 ]
							}
, 							{
								"key" : 8592,
								"value" : [ 35.579999999999998 ]
							}
, 							{
								"key" : 8593,
								"value" : [ 35.689999999999998 ]
							}
, 							{
								"key" : 8594,
								"value" : [ 35.740000000000002 ]
							}
, 							{
								"key" : 8595,
								"value" : [ 35.560000000000002 ]
							}
, 							{
								"key" : 8596,
								"value" : [ 35.289999999999999 ]
							}
, 							{
								"key" : 8597,
								"value" : [ 34.840000000000003 ]
							}
, 							{
								"key" : 8598,
								"value" : [ 34.57 ]
							}
, 							{
								"key" : 8599,
								"value" : [ 35.240000000000002 ]
							}
, 							{
								"key" : 8600,
								"value" : [ 36.950000000000003 ]
							}
, 							{
								"key" : 8601,
								"value" : [ 39.149999999999999 ]
							}
, 							{
								"key" : 8602,
								"value" : [ 40.369999999999997 ]
							}
, 							{
								"key" : 8603,
								"value" : [ 41.219999999999999 ]
							}
, 							{
								"key" : 8604,
								"value" : [ 42.130000000000003 ]
							}
, 							{
								"key" : 8605,
								"value" : [ 42.420000000000002 ]
							}
, 							{
								"key" : 8606,
								"value" : [ 43.0 ]
							}
, 							{
								"key" : 8607,
								"value" : [ 43.789999999999999 ]
							}
, 							{
								"key" : 8608,
								"value" : [ 44.189999999999998 ]
							}
, 							{
								"key" : 8609,
								"value" : [ 43.140000000000001 ]
							}
, 							{
								"key" : 8610,
								"value" : [ 41.020000000000003 ]
							}
, 							{
								"key" : 8611,
								"value" : [ 38.770000000000003 ]
							}
, 							{
								"key" : 8612,
								"value" : [ 37.219999999999999 ]
							}
, 							{
								"key" : 8613,
								"value" : [ 36.100000000000001 ]
							}
, 							{
								"key" : 8614,
								"value" : [ 35.170000000000002 ]
							}
, 							{
								"key" : 8615,
								"value" : [ 34.479999999999997 ]
							}
, 							{
								"key" : 8616,
								"value" : [ 34.07 ]
							}
, 							{
								"key" : 8617,
								"value" : [ 33.840000000000003 ]
							}
, 							{
								"key" : 8618,
								"value" : [ 33.259999999999998 ]
							}
, 							{
								"key" : 8619,
								"value" : [ 32.490000000000002 ]
							}
, 							{
								"key" : 8620,
								"value" : [ 31.82 ]
							}
, 							{
								"key" : 8621,
								"value" : [ 31.370000000000001 ]
							}
, 							{
								"key" : 8622,
								"value" : [ 30.899999999999999 ]
							}
, 							{
								"key" : 8623,
								"value" : [ 30.629999999999999 ]
							}
, 							{
								"key" : 8624,
								"value" : [ 30.719999999999999 ]
							}
, 							{
								"key" : 8625,
								"value" : [ 30.960000000000001 ]
							}
, 							{
								"key" : 8626,
								"value" : [ 30.969999999999999 ]
							}
, 							{
								"key" : 8627,
								"value" : [ 30.940000000000001 ]
							}
, 							{
								"key" : 8628,
								"value" : [ 31.149999999999999 ]
							}
, 							{
								"key" : 8629,
								"value" : [ 31.280000000000001 ]
							}
, 							{
								"key" : 8630,
								"value" : [ 31.329999999999998 ]
							}
, 							{
								"key" : 8631,
								"value" : [ 31.329999999999998 ]
							}
, 							{
								"key" : 8632,
								"value" : [ 31.41 ]
							}
, 							{
								"key" : 8633,
								"value" : [ 31.260000000000002 ]
							}
, 							{
								"key" : 8634,
								"value" : [ 30.899999999999999 ]
							}
, 							{
								"key" : 8635,
								"value" : [ 30.449999999999999 ]
							}
, 							{
								"key" : 8636,
								"value" : [ 30.34 ]
							}
, 							{
								"key" : 8637,
								"value" : [ 30.199999999999999 ]
							}
, 							{
								"key" : 8638,
								"value" : [ 30.02 ]
							}
, 							{
								"key" : 8639,
								"value" : [ 29.59 ]
							}
, 							{
								"key" : 8640,
								"value" : [ 28.940000000000001 ]
							}
, 							{
								"key" : 8641,
								"value" : [ 28.289999999999999 ]
							}
, 							{
								"key" : 8642,
								"value" : [ 27.84 ]
							}
, 							{
								"key" : 8643,
								"value" : [ 27.52 ]
							}
, 							{
								"key" : 8644,
								"value" : [ 27.18 ]
							}
, 							{
								"key" : 8645,
								"value" : [ 26.890000000000001 ]
							}
, 							{
								"key" : 8646,
								"value" : [ 26.649999999999999 ]
							}
, 							{
								"key" : 8647,
								"value" : [ 26.920000000000002 ]
							}
, 							{
								"key" : 8648,
								"value" : [ 27.07 ]
							}
, 							{
								"key" : 8649,
								"value" : [ 27.140000000000001 ]
							}
, 							{
								"key" : 8650,
								"value" : [ 27.52 ]
							}
, 							{
								"key" : 8651,
								"value" : [ 28.219999999999999 ]
							}
, 							{
								"key" : 8652,
								"value" : [ 29.140000000000001 ]
							}
, 							{
								"key" : 8653,
								"value" : [ 30.09 ]
							}
, 							{
								"key" : 8654,
								"value" : [ 30.940000000000001 ]
							}
, 							{
								"key" : 8655,
								"value" : [ 31.620000000000001 ]
							}
, 							{
								"key" : 8656,
								"value" : [ 31.93 ]
							}
, 							{
								"key" : 8657,
								"value" : [ 31.800000000000001 ]
							}
, 							{
								"key" : 8658,
								"value" : [ 30.670000000000002 ]
							}
, 							{
								"key" : 8659,
								"value" : [ 29.390000000000001 ]
							}
, 							{
								"key" : 8660,
								"value" : [ 29.48 ]
							}
, 							{
								"key" : 8661,
								"value" : [ 29.48 ]
							}
, 							{
								"key" : 8662,
								"value" : [ 29.390000000000001 ]
							}
, 							{
								"key" : 8663,
								"value" : [ 29.260000000000002 ]
							}
, 							{
								"key" : 8664,
								"value" : [ 29.050000000000001 ]
							}
, 							{
								"key" : 8665,
								"value" : [ 28.780000000000001 ]
							}
, 							{
								"key" : 8666,
								"value" : [ 28.469999999999999 ]
							}
, 							{
								"key" : 8667,
								"value" : [ 28.129999999999999 ]
							}
, 							{
								"key" : 8668,
								"value" : [ 27.859999999999999 ]
							}
, 							{
								"key" : 8669,
								"value" : [ 27.52 ]
							}
, 							{
								"key" : 8670,
								"value" : [ 27.07 ]
							}
, 							{
								"key" : 8671,
								"value" : [ 27.140000000000001 ]
							}
, 							{
								"key" : 8672,
								"value" : [ 27.539999999999999 ]
							}
, 							{
								"key" : 8673,
								"value" : [ 28.18 ]
							}
, 							{
								"key" : 8674,
								"value" : [ 28.870000000000001 ]
							}
, 							{
								"key" : 8675,
								"value" : [ 29.370000000000001 ]
							}
, 							{
								"key" : 8676,
								"value" : [ 29.66 ]
							}
, 							{
								"key" : 8677,
								"value" : [ 29.710000000000001 ]
							}
, 							{
								"key" : 8678,
								"value" : [ 29.460000000000001 ]
							}
, 							{
								"key" : 8679,
								"value" : [ 29.050000000000001 ]
							}
, 							{
								"key" : 8680,
								"value" : [ 28.809999999999999 ]
							}
, 							{
								"key" : 8681,
								"value" : [ 28.530000000000001 ]
							}
, 							{
								"key" : 8682,
								"value" : [ 28.219999999999999 ]
							}
, 							{
								"key" : 8683,
								"value" : [ 27.59 ]
							}
, 							{
								"key" : 8684,
								"value" : [ 27.75 ]
							}
, 							{
								"key" : 8685,
								"value" : [ 28.149999999999999 ]
							}
, 							{
								"key" : 8686,
								"value" : [ 28.629999999999999 ]
							}
, 							{
								"key" : 8687,
								"value" : [ 29.34 ]
							}
, 							{
								"key" : 8688,
								"value" : [ 29.879999999999999 ]
							}
, 							{
								"key" : 8689,
								"value" : [ 30.239999999999998 ]
							}
, 							{
								"key" : 8690,
								"value" : [ 30.469999999999999 ]
							}
, 							{
								"key" : 8691,
								"value" : [ 30.739999999999998 ]
							}
, 							{
								"key" : 8692,
								"value" : [ 31.010000000000002 ]
							}
, 							{
								"key" : 8693,
								"value" : [ 31.050000000000001 ]
							}
, 							{
								"key" : 8694,
								"value" : [ 30.969999999999999 ]
							}
, 							{
								"key" : 8695,
								"value" : [ 31.050000000000001 ]
							}
, 							{
								"key" : 8696,
								"value" : [ 31.440000000000001 ]
							}
, 							{
								"key" : 8697,
								"value" : [ 32.32 ]
							}
, 							{
								"key" : 8698,
								"value" : [ 33.549999999999997 ]
							}
, 							{
								"key" : 8699,
								"value" : [ 35.060000000000002 ]
							}
, 							{
								"key" : 8700,
								"value" : [ 36.57 ]
							}
, 							{
								"key" : 8701,
								"value" : [ 38.119999999999997 ]
							}
, 							{
								"key" : 8702,
								"value" : [ 39.219999999999999 ]
							}
, 							{
								"key" : 8703,
								"value" : [ 39.700000000000003 ]
							}
, 							{
								"key" : 8704,
								"value" : [ 39.630000000000003 ]
							}
, 							{
								"key" : 8705,
								"value" : [ 39.109999999999999 ]
							}
, 							{
								"key" : 8706,
								"value" : [ 38.299999999999997 ]
							}
, 							{
								"key" : 8707,
								"value" : [ 37.600000000000001 ]
							}
, 							{
								"key" : 8708,
								"value" : [ 37.090000000000003 ]
							}
, 							{
								"key" : 8709,
								"value" : [ 36.520000000000003 ]
							}
, 							{
								"key" : 8710,
								"value" : [ 36.770000000000003 ]
							}
, 							{
								"key" : 8711,
								"value" : [ 37.170000000000002 ]
							}
, 							{
								"key" : 8712,
								"value" : [ 37.289999999999999 ]
							}
, 							{
								"key" : 8713,
								"value" : [ 37.270000000000003 ]
							}
, 							{
								"key" : 8714,
								"value" : [ 38.049999999999997 ]
							}
, 							{
								"key" : 8715,
								"value" : [ 38.299999999999997 ]
							}
, 							{
								"key" : 8716,
								"value" : [ 38.710000000000001 ]
							}
, 							{
								"key" : 8717,
								"value" : [ 38.890000000000001 ]
							}
, 							{
								"key" : 8718,
								"value" : [ 39.520000000000003 ]
							}
, 							{
								"key" : 8719,
								"value" : [ 40.57 ]
							}
, 							{
								"key" : 8720,
								"value" : [ 40.890000000000001 ]
							}
, 							{
								"key" : 8721,
								"value" : [ 43.049999999999997 ]
							}
, 							{
								"key" : 8722,
								"value" : [ 46.539999999999999 ]
							}
, 							{
								"key" : 8723,
								"value" : [ 48.990000000000002 ]
							}
, 							{
								"key" : 8724,
								"value" : [ 50.090000000000003 ]
							}
, 							{
								"key" : 8725,
								"value" : [ 51.060000000000002 ]
							}
, 							{
								"key" : 8726,
								"value" : [ 51.460000000000001 ]
							}
, 							{
								"key" : 8727,
								"value" : [ 51.890000000000001 ]
							}
, 							{
								"key" : 8728,
								"value" : [ 51.659999999999997 ]
							}
, 							{
								"key" : 8729,
								"value" : [ 51.369999999999997 ]
							}
, 							{
								"key" : 8730,
								"value" : [ 50.560000000000002 ]
							}
, 							{
								"key" : 8731,
								"value" : [ 50.020000000000003 ]
							}
, 							{
								"key" : 8732,
								"value" : [ 49.619999999999997 ]
							}
, 							{
								"key" : 8733,
								"value" : [ 50.450000000000003 ]
							}
, 							{
								"key" : 8734,
								"value" : [ 50.990000000000002 ]
							}
, 							{
								"key" : 8735,
								"value" : [ 48.490000000000002 ]
							}
, 							{
								"key" : 8736,
								"value" : [ 46.939999999999998 ]
							}
, 							{
								"key" : 8737,
								"value" : [ 45.659999999999997 ]
							}
, 							{
								"key" : 8738,
								"value" : [ 42.759999999999998 ]
							}
, 							{
								"key" : 8739,
								"value" : [ 37.619999999999997 ]
							}
, 							{
								"key" : 8740,
								"value" : [ 35.740000000000002 ]
							}
, 							{
								"key" : 8741,
								"value" : [ 35.619999999999997 ]
							}
, 							{
								"key" : 8742,
								"value" : [ 35.509999999999998 ]
							}
, 							{
								"key" : 8743,
								"value" : [ 35.490000000000002 ]
							}
, 							{
								"key" : 8744,
								"value" : [ 35.490000000000002 ]
							}
, 							{
								"key" : 8745,
								"value" : [ 35.869999999999997 ]
							}
, 							{
								"key" : 8746,
								"value" : [ 36.369999999999997 ]
							}
, 							{
								"key" : 8747,
								"value" : [ 36.719999999999999 ]
							}
, 							{
								"key" : 8748,
								"value" : [ 37.090000000000003 ]
							}
, 							{
								"key" : 8749,
								"value" : [ 37.469999999999999 ]
							}
, 							{
								"key" : 8750,
								"value" : [ 37.869999999999997 ]
							}
, 							{
								"key" : 8751,
								"value" : [ 37.920000000000002 ]
							}
, 							{
								"key" : 8752,
								"value" : [ 37.539999999999999 ]
							}
, 							{
								"key" : 8753,
								"value" : [ 37.079999999999998 ]
							}
, 							{
								"key" : 8754,
								"value" : [ 36.270000000000003 ]
							}
, 							{
								"key" : 8755,
								"value" : [ 34.969999999999999 ]
							}
, 							{
								"key" : 8756,
								"value" : [ 34.57 ]
							}
, 							{
								"key" : 8757,
								"value" : [ 34.140000000000001 ]
							}
, 							{
								"key" : 8758,
								"value" : [ 33.689999999999998 ]
							}
, 							{
								"key" : 8759,
								"value" : [ 33.369999999999997 ]
							}
, 							{
								"key" : 8760,
								"value" : [ 33.030000000000001 ]
							}
, 							{
								"key" : 8761,
								"value" : [ 32.68 ]
							}
, 							{
								"key" : 8762,
								"value" : [ 32.289999999999999 ]
							}
, 							{
								"key" : 8763,
								"value" : [ 31.84 ]
							}
, 							{
								"key" : 8764,
								"value" : [ 31.120000000000001 ]
							}
, 							{
								"key" : 8765,
								"value" : [ 30.699999999999999 ]
							}
, 							{
								"key" : 8766,
								"value" : [ 30.420000000000002 ]
							}
, 							{
								"key" : 8767,
								"value" : [ 31.440000000000001 ]
							}
, 							{
								"key" : 8768,
								"value" : [ 32.450000000000003 ]
							}
, 							{
								"key" : 8769,
								"value" : [ 33.259999999999998 ]
							}
, 							{
								"key" : 8770,
								"value" : [ 33.850000000000001 ]
							}
, 							{
								"key" : 8771,
								"value" : [ 34.57 ]
							}
, 							{
								"key" : 8772,
								"value" : [ 35.82 ]
							}
, 							{
								"key" : 8773,
								"value" : [ 37.270000000000003 ]
							}
, 							{
								"key" : 8774,
								"value" : [ 38.340000000000003 ]
							}
, 							{
								"key" : 8775,
								"value" : [ 38.979999999999997 ]
							}
, 							{
								"key" : 8776,
								"value" : [ 39.25 ]
							}
, 							{
								"key" : 8777,
								"value" : [ 38.840000000000003 ]
							}
, 							{
								"key" : 8778,
								"value" : [ 37.270000000000003 ]
							}
, 							{
								"key" : 8779,
								"value" : [ 34.770000000000003 ]
							}
, 							{
								"key" : 8780,
								"value" : [ 33.579999999999998 ]
							}
, 							{
								"key" : 8781,
								"value" : [ 33.119999999999997 ]
							}
, 							{
								"key" : 8782,
								"value" : [ 32.990000000000002 ]
							}
, 							{
								"key" : 8783,
								"value" : [ 32.859999999999999 ]
							}
, 							{
								"key" : 8784,
								"value" : [ 32.700000000000003 ]
							}
, 							{
								"key" : 8785,
								"value" : [ 32.609999999999999 ]
							}
, 							{
								"key" : 8786,
								"value" : [ 32.630000000000003 ]
							}
, 							{
								"key" : 8787,
								"value" : [ 32.859999999999999 ]
							}
, 							{
								"key" : 8788,
								"value" : [ 32.939999999999998 ]
							}
, 							{
								"key" : 8789,
								"value" : [ 33.060000000000002 ]
							}
, 							{
								"key" : 8790,
								"value" : [ 33.170000000000002 ]
							}
, 							{
								"key" : 8791,
								"value" : [ 33.82 ]
							}
, 							{
								"key" : 8792,
								"value" : [ 34.659999999999997 ]
							}
, 							{
								"key" : 8793,
								"value" : [ 35.850000000000001 ]
							}
, 							{
								"key" : 8794,
								"value" : [ 37.289999999999999 ]
							}
, 							{
								"key" : 8795,
								"value" : [ 38.520000000000003 ]
							}
, 							{
								"key" : 8796,
								"value" : [ 38.969999999999999 ]
							}
, 							{
								"key" : 8797,
								"value" : [ 38.799999999999997 ]
							}
, 							{
								"key" : 8798,
								"value" : [ 38.159999999999997 ]
							}
, 							{
								"key" : 8799,
								"value" : [ 37.149999999999999 ]
							}
, 							{
								"key" : 8800,
								"value" : [ 34.950000000000003 ]
							}
, 							{
								"key" : 8801,
								"value" : [ 34.719999999999999 ]
							}
, 							{
								"key" : 8802,
								"value" : [ 35.039999999999999 ]
							}
, 							{
								"key" : 8803,
								"value" : [ 34.840000000000003 ]
							}
, 							{
								"key" : 8804,
								"value" : [ 34.520000000000003 ]
							}
, 							{
								"key" : 8805,
								"value" : [ 34.109999999999999 ]
							}
, 							{
								"key" : 8806,
								"value" : [ 33.640000000000001 ]
							}
, 							{
								"key" : 8807,
								"value" : [ 33.509999999999998 ]
							}
, 							{
								"key" : 8808,
								"value" : [ 33.460000000000001 ]
							}
, 							{
								"key" : 8809,
								"value" : [ 33.329999999999998 ]
							}
, 							{
								"key" : 8810,
								"value" : [ 33.329999999999998 ]
							}
, 							{
								"key" : 8811,
								"value" : [ 33.439999999999998 ]
							}
, 							{
								"key" : 8812,
								"value" : [ 33.369999999999997 ]
							}
, 							{
								"key" : 8813,
								"value" : [ 33.060000000000002 ]
							}
, 							{
								"key" : 8814,
								"value" : [ 32.649999999999999 ]
							}
, 							{
								"key" : 8815,
								"value" : [ 33.009999999999998 ]
							}
, 							{
								"key" : 8816,
								"value" : [ 34.18 ]
							}
, 							{
								"key" : 8817,
								"value" : [ 36.520000000000003 ]
							}
, 							{
								"key" : 8818,
								"value" : [ 38.859999999999999 ]
							}
, 							{
								"key" : 8819,
								"value" : [ 40.280000000000001 ]
							}
, 							{
								"key" : 8820,
								"value" : [ 41.18 ]
							}
, 							{
								"key" : 8821,
								"value" : [ 41.770000000000003 ]
							}
, 							{
								"key" : 8822,
								"value" : [ 41.899999999999999 ]
							}
, 							{
								"key" : 8823,
								"value" : [ 40.93 ]
							}
, 							{
								"key" : 8824,
								"value" : [ 39.670000000000002 ]
							}
, 							{
								"key" : 8825,
								"value" : [ 38.07 ]
							}
, 							{
								"key" : 8826,
								"value" : [ 36.460000000000001 ]
							}
, 							{
								"key" : 8827,
								"value" : [ 35.82 ]
							}
, 							{
								"key" : 8828,
								"value" : [ 35.979999999999997 ]
							}
, 							{
								"key" : 8829,
								"value" : [ 36.030000000000001 ]
							}
, 							{
								"key" : 8830,
								"value" : [ 36.32 ]
							}
, 							{
								"key" : 8831,
								"value" : [ 36.700000000000003 ]
							}
, 							{
								"key" : 8832,
								"value" : [ 37.439999999999998 ]
							}
, 							{
								"key" : 8833,
								"value" : [ 37.890000000000001 ]
							}
, 							{
								"key" : 8834,
								"value" : [ 38.119999999999997 ]
							}
, 							{
								"key" : 8835,
								"value" : [ 38.350000000000001 ]
							}
, 							{
								"key" : 8836,
								"value" : [ 38.729999999999997 ]
							}
, 							{
								"key" : 8837,
								"value" : [ 39.020000000000003 ]
							}
, 							{
								"key" : 8838,
								"value" : [ 39.149999999999999 ]
							}
, 							{
								"key" : 8839,
								"value" : [ 40.030000000000001 ]
							}
, 							{
								"key" : 8840,
								"value" : [ 41.670000000000002 ]
							}
, 							{
								"key" : 8841,
								"value" : [ 44.039999999999999 ]
							}
, 							{
								"key" : 8842,
								"value" : [ 45.32 ]
							}
, 							{
								"key" : 8843,
								"value" : [ 44.979999999999997 ]
							}
, 							{
								"key" : 8844,
								"value" : [ 43.899999999999999 ]
							}
, 							{
								"key" : 8845,
								"value" : [ 43.119999999999997 ]
							}
, 							{
								"key" : 8846,
								"value" : [ 43.719999999999999 ]
							}
, 							{
								"key" : 8847,
								"value" : [ 44.420000000000002 ]
							}
, 							{
								"key" : 8848,
								"value" : [ 44.939999999999998 ]
							}
, 							{
								"key" : 8849,
								"value" : [ 44.920000000000002 ]
							}
, 							{
								"key" : 8850,
								"value" : [ 44.380000000000003 ]
							}
, 							{
								"key" : 8851,
								"value" : [ 43.719999999999999 ]
							}
, 							{
								"key" : 8852,
								"value" : [ 43.229999999999997 ]
							}
, 							{
								"key" : 8853,
								"value" : [ 42.350000000000001 ]
							}
, 							{
								"key" : 8854,
								"value" : [ 41.469999999999999 ]
							}
, 							{
								"key" : 8855,
								"value" : [ 41.090000000000003 ]
							}
, 							{
								"key" : 8856,
								"value" : [ 40.890000000000001 ]
							}
, 							{
								"key" : 8857,
								"value" : [ 40.460000000000001 ]
							}
, 							{
								"key" : 8858,
								"value" : [ 40.189999999999998 ]
							}
, 							{
								"key" : 8859,
								"value" : [ 39.560000000000002 ]
							}
, 							{
								"key" : 8860,
								"value" : [ 37.759999999999998 ]
							}
, 							{
								"key" : 8861,
								"value" : [ 36.369999999999997 ]
							}
, 							{
								"key" : 8862,
								"value" : [ 35.759999999999998 ]
							}
, 							{
								"key" : 8863,
								"value" : [ 37.579999999999998 ]
							}
, 							{
								"key" : 8864,
								"value" : [ 38.530000000000001 ]
							}
, 							{
								"key" : 8865,
								"value" : [ 39.420000000000002 ]
							}
, 							{
								"key" : 8866,
								"value" : [ 40.079999999999998 ]
							}
, 							{
								"key" : 8867,
								"value" : [ 40.68 ]
							}
, 							{
								"key" : 8868,
								"value" : [ 41.670000000000002 ]
							}
, 							{
								"key" : 8869,
								"value" : [ 42.93 ]
							}
, 							{
								"key" : 8870,
								"value" : [ 43.990000000000002 ]
							}
, 							{
								"key" : 8871,
								"value" : [ 44.439999999999998 ]
							}
, 							{
								"key" : 8872,
								"value" : [ 45.590000000000003 ]
							}
, 							{
								"key" : 8873,
								"value" : [ 45.859999999999999 ]
							}
, 							{
								"key" : 8874,
								"value" : [ 44.280000000000001 ]
							}
, 							{
								"key" : 8875,
								"value" : [ 43.469999999999999 ]
							}
, 							{
								"key" : 8876,
								"value" : [ 44.170000000000002 ]
							}
, 							{
								"key" : 8877,
								"value" : [ 44.600000000000001 ]
							}
, 							{
								"key" : 8878,
								"value" : [ 44.670000000000002 ]
							}
, 							{
								"key" : 8879,
								"value" : [ 44.600000000000001 ]
							}
, 							{
								"key" : 8880,
								"value" : [ 44.490000000000002 ]
							}
, 							{
								"key" : 8881,
								"value" : [ 44.310000000000002 ]
							}
, 							{
								"key" : 8882,
								"value" : [ 44.509999999999998 ]
							}
, 							{
								"key" : 8883,
								"value" : [ 45.18 ]
							}
, 							{
								"key" : 8884,
								"value" : [ 45.460000000000001 ]
							}
, 							{
								"key" : 8885,
								"value" : [ 45.390000000000001 ]
							}
, 							{
								"key" : 8886,
								"value" : [ 43.159999999999997 ]
							}
, 							{
								"key" : 8887,
								"value" : [ 39.880000000000003 ]
							}
, 							{
								"key" : 8888,
								"value" : [ 39.719999999999999 ]
							}
, 							{
								"key" : 8889,
								"value" : [ 41.670000000000002 ]
							}
, 							{
								"key" : 8890,
								"value" : [ 43.700000000000003 ]
							}
, 							{
								"key" : 8891,
								"value" : [ 45.810000000000002 ]
							}
, 							{
								"key" : 8892,
								"value" : [ 47.189999999999998 ]
							}
, 							{
								"key" : 8893,
								"value" : [ 48.020000000000003 ]
							}
, 							{
								"key" : 8894,
								"value" : [ 48.740000000000002 ]
							}
, 							{
								"key" : 8895,
								"value" : [ 49.060000000000002 ]
							}
, 							{
								"key" : 8896,
								"value" : [ 48.880000000000003 ]
							}
, 							{
								"key" : 8897,
								"value" : [ 48.289999999999999 ]
							}
, 							{
								"key" : 8898,
								"value" : [ 46.810000000000002 ]
							}
, 							{
								"key" : 8899,
								"value" : [ 44.420000000000002 ]
							}
, 							{
								"key" : 8900,
								"value" : [ 42.310000000000002 ]
							}
, 							{
								"key" : 8901,
								"value" : [ 41.109999999999999 ]
							}
, 							{
								"key" : 8902,
								"value" : [ 40.369999999999997 ]
							}
, 							{
								"key" : 8903,
								"value" : [ 39.789999999999999 ]
							}
, 							{
								"key" : 8904,
								"value" : [ 39.090000000000003 ]
							}
, 							{
								"key" : 8905,
								"value" : [ 38.520000000000003 ]
							}
, 							{
								"key" : 8906,
								"value" : [ 38.710000000000001 ]
							}
, 							{
								"key" : 8907,
								"value" : [ 38.859999999999999 ]
							}
, 							{
								"key" : 8908,
								"value" : [ 38.710000000000001 ]
							}
, 							{
								"key" : 8909,
								"value" : [ 38.520000000000003 ]
							}
, 							{
								"key" : 8910,
								"value" : [ 38.030000000000001 ]
							}
, 							{
								"key" : 8911,
								"value" : [ 37.990000000000002 ]
							}
, 							{
								"key" : 8912,
								"value" : [ 39.219999999999999 ]
							}
, 							{
								"key" : 8913,
								"value" : [ 40.350000000000001 ]
							}
, 							{
								"key" : 8914,
								"value" : [ 40.869999999999997 ]
							}
, 							{
								"key" : 8915,
								"value" : [ 41.25 ]
							}
, 							{
								"key" : 8916,
								"value" : [ 41.520000000000003 ]
							}
, 							{
								"key" : 8917,
								"value" : [ 41.490000000000002 ]
							}
, 							{
								"key" : 8918,
								"value" : [ 41.270000000000003 ]
							}
, 							{
								"key" : 8919,
								"value" : [ 41.159999999999997 ]
							}
, 							{
								"key" : 8920,
								"value" : [ 40.93 ]
							}
, 							{
								"key" : 8921,
								"value" : [ 40.509999999999998 ]
							}
, 							{
								"key" : 8922,
								"value" : [ 39.829999999999998 ]
							}
, 							{
								"key" : 8923,
								"value" : [ 38.979999999999997 ]
							}
, 							{
								"key" : 8924,
								"value" : [ 38.520000000000003 ]
							}
, 							{
								"key" : 8925,
								"value" : [ 38.520000000000003 ]
							}
, 							{
								"key" : 8926,
								"value" : [ 38.259999999999998 ]
							}
, 							{
								"key" : 8927,
								"value" : [ 37.399999999999999 ]
							}
, 							{
								"key" : 8928,
								"value" : [ 36.32 ]
							}
, 							{
								"key" : 8929,
								"value" : [ 35.200000000000003 ]
							}
, 							{
								"key" : 8930,
								"value" : [ 34.119999999999997 ]
							}
, 							{
								"key" : 8931,
								"value" : [ 33.149999999999999 ]
							}
, 							{
								"key" : 8932,
								"value" : [ 32.68 ]
							}
, 							{
								"key" : 8933,
								"value" : [ 32.719999999999999 ]
							}
, 							{
								"key" : 8934,
								"value" : [ 33.240000000000002 ]
							}
, 							{
								"key" : 8935,
								"value" : [ 34.859999999999999 ]
							}
, 							{
								"key" : 8936,
								"value" : [ 36.299999999999997 ]
							}
, 							{
								"key" : 8937,
								"value" : [ 37.539999999999999 ]
							}
, 							{
								"key" : 8938,
								"value" : [ 37.990000000000002 ]
							}
, 							{
								"key" : 8939,
								"value" : [ 38.25 ]
							}
, 							{
								"key" : 8940,
								"value" : [ 38.68 ]
							}
, 							{
								"key" : 8941,
								"value" : [ 39.25 ]
							}
, 							{
								"key" : 8942,
								"value" : [ 39.700000000000003 ]
							}
, 							{
								"key" : 8943,
								"value" : [ 39.780000000000001 ]
							}
, 							{
								"key" : 8944,
								"value" : [ 39.399999999999999 ]
							}
, 							{
								"key" : 8945,
								"value" : [ 38.590000000000003 ]
							}
, 							{
								"key" : 8946,
								"value" : [ 37.579999999999998 ]
							}
, 							{
								"key" : 8947,
								"value" : [ 36.520000000000003 ]
							}
, 							{
								"key" : 8948,
								"value" : [ 35.890000000000001 ]
							}
, 							{
								"key" : 8949,
								"value" : [ 35.439999999999998 ]
							}
, 							{
								"key" : 8950,
								"value" : [ 35.039999999999999 ]
							}
, 							{
								"key" : 8951,
								"value" : [ 34.469999999999999 ]
							}
, 							{
								"key" : 8952,
								"value" : [ 33.890000000000001 ]
							}
, 							{
								"key" : 8953,
								"value" : [ 33.399999999999999 ]
							}
, 							{
								"key" : 8954,
								"value" : [ 33.039999999999999 ]
							}
, 							{
								"key" : 8955,
								"value" : [ 32.719999999999999 ]
							}
, 							{
								"key" : 8956,
								"value" : [ 32.539999999999999 ]
							}
, 							{
								"key" : 8957,
								"value" : [ 32.469999999999999 ]
							}
, 							{
								"key" : 8958,
								"value" : [ 32.469999999999999 ]
							}
, 							{
								"key" : 8959,
								"value" : [ 33.619999999999997 ]
							}
, 							{
								"key" : 8960,
								"value" : [ 35.560000000000002 ]
							}
, 							{
								"key" : 8961,
								"value" : [ 37.219999999999999 ]
							}
, 							{
								"key" : 8962,
								"value" : [ 38.369999999999997 ]
							}
, 							{
								"key" : 8963,
								"value" : [ 39.18 ]
							}
, 							{
								"key" : 8964,
								"value" : [ 39.960000000000001 ]
							}
, 							{
								"key" : 8965,
								"value" : [ 41.020000000000003 ]
							}
, 							{
								"key" : 8966,
								"value" : [ 41.700000000000003 ]
							}
, 							{
								"key" : 8967,
								"value" : [ 42.219999999999999 ]
							}
, 							{
								"key" : 8968,
								"value" : [ 42.420000000000002 ]
							}
, 							{
								"key" : 8969,
								"value" : [ 42.390000000000001 ]
							}
, 							{
								"key" : 8970,
								"value" : [ 41.539999999999999 ]
							}
, 							{
								"key" : 8971,
								"value" : [ 39.399999999999999 ]
							}
, 							{
								"key" : 8972,
								"value" : [ 37.979999999999997 ]
							}
, 							{
								"key" : 8973,
								"value" : [ 37.090000000000003 ]
							}
, 							{
								"key" : 8974,
								"value" : [ 36.770000000000003 ]
							}
, 							{
								"key" : 8975,
								"value" : [ 36.75 ]
							}
, 							{
								"key" : 8976,
								"value" : [ 36.390000000000001 ]
							}
, 							{
								"key" : 8977,
								"value" : [ 36.009999999999998 ]
							}
, 							{
								"key" : 8978,
								"value" : [ 35.829999999999998 ]
							}
, 							{
								"key" : 8979,
								"value" : [ 35.689999999999998 ]
							}
, 							{
								"key" : 8980,
								"value" : [ 35.619999999999997 ]
							}
, 							{
								"key" : 8981,
								"value" : [ 35.869999999999997 ]
							}
, 							{
								"key" : 8982,
								"value" : [ 36.140000000000001 ]
							}
, 							{
								"key" : 8983,
								"value" : [ 38.170000000000002 ]
							}
, 							{
								"key" : 8984,
								"value" : [ 39.780000000000001 ]
							}
, 							{
								"key" : 8985,
								"value" : [ 41.719999999999999 ]
							}
, 							{
								"key" : 8986,
								"value" : [ 45.140000000000001 ]
							}
, 							{
								"key" : 8987,
								"value" : [ 46.869999999999997 ]
							}
, 							{
								"key" : 8988,
								"value" : [ 48.130000000000003 ]
							}
, 							{
								"key" : 8989,
								"value" : [ 49.229999999999997 ]
							}
, 							{
								"key" : 8990,
								"value" : [ 50.020000000000003 ]
							}
, 							{
								"key" : 8991,
								"value" : [ 50.5 ]
							}
, 							{
								"key" : 8992,
								"value" : [ 50.670000000000002 ]
							}
, 							{
								"key" : 8993,
								"value" : [ 50.450000000000003 ]
							}
, 							{
								"key" : 8994,
								"value" : [ 49.859999999999999 ]
							}
, 							{
								"key" : 8995,
								"value" : [ 49.049999999999997 ]
							}
, 							{
								"key" : 8996,
								"value" : [ 48.380000000000003 ]
							}
, 							{
								"key" : 8997,
								"value" : [ 48.18 ]
							}
, 							{
								"key" : 8998,
								"value" : [ 48.200000000000003 ]
							}
, 							{
								"key" : 8999,
								"value" : [ 49.189999999999998 ]
							}
, 							{
								"key" : 9000,
								"value" : [ 50.159999999999997 ]
							}
, 							{
								"key" : 9001,
								"value" : [ 51.350000000000001 ]
							}
, 							{
								"key" : 9002,
								"value" : [ 50.939999999999998 ]
							}
, 							{
								"key" : 9003,
								"value" : [ 50.130000000000003 ]
							}
, 							{
								"key" : 9004,
								"value" : [ 49.299999999999997 ]
							}
, 							{
								"key" : 9005,
								"value" : [ 46.920000000000002 ]
							}
, 							{
								"key" : 9006,
								"value" : [ 44.869999999999997 ]
							}
, 							{
								"key" : 9007,
								"value" : [ 45.07 ]
							}
, 							{
								"key" : 9008,
								"value" : [ 45.189999999999998 ]
							}
, 							{
								"key" : 9009,
								"value" : [ 45.630000000000003 ]
							}
, 							{
								"key" : 9010,
								"value" : [ 45.729999999999997 ]
							}
, 							{
								"key" : 9011,
								"value" : [ 45.880000000000003 ]
							}
, 							{
								"key" : 9012,
								"value" : [ 47.07 ]
							}
, 							{
								"key" : 9013,
								"value" : [ 48.700000000000003 ]
							}
, 							{
								"key" : 9014,
								"value" : [ 49.950000000000003 ]
							}
, 							{
								"key" : 9015,
								"value" : [ 50.310000000000002 ]
							}
, 							{
								"key" : 9016,
								"value" : [ 50.200000000000003 ]
							}
, 							{
								"key" : 9017,
								"value" : [ 49.369999999999997 ]
							}
, 							{
								"key" : 9018,
								"value" : [ 49.640000000000001 ]
							}
, 							{
								"key" : 9019,
								"value" : [ 47.659999999999997 ]
							}
, 							{
								"key" : 9020,
								"value" : [ 47.25 ]
							}
, 							{
								"key" : 9021,
								"value" : [ 48.25 ]
							}
, 							{
								"key" : 9022,
								"value" : [ 48.789999999999999 ]
							}
, 							{
								"key" : 9023,
								"value" : [ 48.630000000000003 ]
							}
, 							{
								"key" : 9024,
								"value" : [ 48.469999999999999 ]
							}
, 							{
								"key" : 9025,
								"value" : [ 48.329999999999998 ]
							}
, 							{
								"key" : 9026,
								"value" : [ 47.159999999999997 ]
							}
, 							{
								"key" : 9027,
								"value" : [ 44.829999999999998 ]
							}
, 							{
								"key" : 9028,
								"value" : [ 43.950000000000003 ]
							}
, 							{
								"key" : 9029,
								"value" : [ 41.859999999999999 ]
							}
, 							{
								"key" : 9030,
								"value" : [ 40.840000000000003 ]
							}
, 							{
								"key" : 9031,
								"value" : [ 42.780000000000001 ]
							}
, 							{
								"key" : 9032,
								"value" : [ 44.310000000000002 ]
							}
, 							{
								"key" : 9033,
								"value" : [ 46.039999999999999 ]
							}
, 							{
								"key" : 9034,
								"value" : [ 48.630000000000003 ]
							}
, 							{
								"key" : 9035,
								"value" : [ 50.450000000000003 ]
							}
, 							{
								"key" : 9036,
								"value" : [ 51.460000000000001 ]
							}
, 							{
								"key" : 9037,
								"value" : [ 52.840000000000003 ]
							}
, 							{
								"key" : 9038,
								"value" : [ 54.229999999999997 ]
							}
, 							{
								"key" : 9039,
								"value" : [ 55.18 ]
							}
, 							{
								"key" : 9040,
								"value" : [ 55.490000000000002 ]
							}
, 							{
								"key" : 9041,
								"value" : [ 55.109999999999999 ]
							}
, 							{
								"key" : 9042,
								"value" : [ 54.549999999999997 ]
							}
, 							{
								"key" : 9043,
								"value" : [ 53.920000000000002 ]
							}
, 							{
								"key" : 9044,
								"value" : [ 53.729999999999997 ]
							}
, 							{
								"key" : 9045,
								"value" : [ 53.740000000000002 ]
							}
, 							{
								"key" : 9046,
								"value" : [ 54.479999999999997 ]
							}
, 							{
								"key" : 9047,
								"value" : [ 55.039999999999999 ]
							}
, 							{
								"key" : 9048,
								"value" : [ 55.060000000000002 ]
							}
, 							{
								"key" : 9049,
								"value" : [ 55.329999999999998 ]
							}
, 							{
								"key" : 9050,
								"value" : [ 55.289999999999999 ]
							}
, 							{
								"key" : 9051,
								"value" : [ 55.020000000000003 ]
							}
, 							{
								"key" : 9052,
								"value" : [ 54.700000000000003 ]
							}
, 							{
								"key" : 9053,
								"value" : [ 54.340000000000003 ]
							}
, 							{
								"key" : 9054,
								"value" : [ 53.740000000000002 ]
							}
, 							{
								"key" : 9055,
								"value" : [ 53.740000000000002 ]
							}
, 							{
								"key" : 9056,
								"value" : [ 54.009999999999998 ]
							}
, 							{
								"key" : 9057,
								"value" : [ 54.18 ]
							}
, 							{
								"key" : 9058,
								"value" : [ 54.390000000000001 ]
							}
, 							{
								"key" : 9059,
								"value" : [ 55.079999999999998 ]
							}
, 							{
								"key" : 9060,
								"value" : [ 56.189999999999998 ]
							}
, 							{
								"key" : 9061,
								"value" : [ 57.07 ]
							}
, 							{
								"key" : 9062,
								"value" : [ 57.07 ]
							}
, 							{
								"key" : 9063,
								"value" : [ 56.770000000000003 ]
							}
, 							{
								"key" : 9064,
								"value" : [ 56.409999999999997 ]
							}
, 							{
								"key" : 9065,
								"value" : [ 56.07 ]
							}
, 							{
								"key" : 9066,
								"value" : [ 55.359999999999999 ]
							}
, 							{
								"key" : 9067,
								"value" : [ 53.420000000000002 ]
							}
, 							{
								"key" : 9068,
								"value" : [ 44.170000000000002 ]
							}
, 							{
								"key" : 9069,
								"value" : [ 39.780000000000001 ]
							}
, 							{
								"key" : 9070,
								"value" : [ 39.810000000000002 ]
							}
, 							{
								"key" : 9071,
								"value" : [ 39.539999999999999 ]
							}
, 							{
								"key" : 9072,
								"value" : [ 38.969999999999999 ]
							}
, 							{
								"key" : 9073,
								"value" : [ 38.840000000000003 ]
							}
, 							{
								"key" : 9074,
								"value" : [ 38.460000000000001 ]
							}
, 							{
								"key" : 9075,
								"value" : [ 37.560000000000002 ]
							}
, 							{
								"key" : 9076,
								"value" : [ 36.009999999999998 ]
							}
, 							{
								"key" : 9077,
								"value" : [ 34.899999999999999 ]
							}
, 							{
								"key" : 9078,
								"value" : [ 34.340000000000003 ]
							}
, 							{
								"key" : 9079,
								"value" : [ 35.280000000000001 ]
							}
, 							{
								"key" : 9080,
								"value" : [ 37.799999999999997 ]
							}
, 							{
								"key" : 9081,
								"value" : [ 40.780000000000001 ]
							}
, 							{
								"key" : 9082,
								"value" : [ 42.780000000000001 ]
							}
, 							{
								"key" : 9083,
								"value" : [ 43.840000000000003 ]
							}
, 							{
								"key" : 9084,
								"value" : [ 44.689999999999998 ]
							}
, 							{
								"key" : 9085,
								"value" : [ 45.340000000000003 ]
							}
, 							{
								"key" : 9086,
								"value" : [ 45.729999999999997 ]
							}
, 							{
								"key" : 9087,
								"value" : [ 45.950000000000003 ]
							}
, 							{
								"key" : 9088,
								"value" : [ 46.060000000000002 ]
							}
, 							{
								"key" : 9089,
								"value" : [ 45.909999999999997 ]
							}
, 							{
								"key" : 9090,
								"value" : [ 45.07 ]
							}
, 							{
								"key" : 9091,
								"value" : [ 43.469999999999999 ]
							}
, 							{
								"key" : 9092,
								"value" : [ 42.119999999999997 ]
							}
, 							{
								"key" : 9093,
								"value" : [ 41.090000000000003 ]
							}
, 							{
								"key" : 9094,
								"value" : [ 40.119999999999997 ]
							}
, 							{
								"key" : 9095,
								"value" : [ 39.359999999999999 ]
							}
, 							{
								"key" : 9096,
								"value" : [ 39.039999999999999 ]
							}
, 							{
								"key" : 9097,
								"value" : [ 38.390000000000001 ]
							}
, 							{
								"key" : 9098,
								"value" : [ 37.990000000000002 ]
							}
, 							{
								"key" : 9099,
								"value" : [ 37.719999999999999 ]
							}
, 							{
								"key" : 9100,
								"value" : [ 37.439999999999998 ]
							}
, 							{
								"key" : 9101,
								"value" : [ 37.810000000000002 ]
							}
, 							{
								"key" : 9102,
								"value" : [ 37.780000000000001 ]
							}
, 							{
								"key" : 9103,
								"value" : [ 38.259999999999998 ]
							}
, 							{
								"key" : 9104,
								"value" : [ 39.899999999999999 ]
							}
, 							{
								"key" : 9105,
								"value" : [ 41.270000000000003 ]
							}
, 							{
								"key" : 9106,
								"value" : [ 41.740000000000002 ]
							}
, 							{
								"key" : 9107,
								"value" : [ 42.329999999999998 ]
							}
, 							{
								"key" : 9108,
								"value" : [ 43.409999999999997 ]
							}
, 							{
								"key" : 9109,
								"value" : [ 44.460000000000001 ]
							}
, 							{
								"key" : 9110,
								"value" : [ 45.57 ]
							}
, 							{
								"key" : 9111,
								"value" : [ 46.359999999999999 ]
							}
, 							{
								"key" : 9112,
								"value" : [ 46.200000000000003 ]
							}
, 							{
								"key" : 9113,
								"value" : [ 45.520000000000003 ]
							}
, 							{
								"key" : 9114,
								"value" : [ 44.130000000000003 ]
							}
, 							{
								"key" : 9115,
								"value" : [ 42.259999999999998 ]
							}
, 							{
								"key" : 9116,
								"value" : [ 41.380000000000003 ]
							}
, 							{
								"key" : 9117,
								"value" : [ 39.939999999999998 ]
							}
, 							{
								"key" : 9118,
								"value" : [ 39.18 ]
							}
, 							{
								"key" : 9119,
								"value" : [ 38.710000000000001 ]
							}
, 							{
								"key" : 9120,
								"value" : [ 37.829999999999998 ]
							}
, 							{
								"key" : 9121,
								"value" : [ 36.93 ]
							}
, 							{
								"key" : 9122,
								"value" : [ 36.090000000000003 ]
							}
, 							{
								"key" : 9123,
								"value" : [ 35.149999999999999 ]
							}
, 							{
								"key" : 9124,
								"value" : [ 34.049999999999997 ]
							}
, 							{
								"key" : 9125,
								"value" : [ 33.299999999999997 ]
							}
, 							{
								"key" : 9126,
								"value" : [ 32.789999999999999 ]
							}
, 							{
								"key" : 9127,
								"value" : [ 34.030000000000001 ]
							}
, 							{
								"key" : 9128,
								"value" : [ 34.840000000000003 ]
							}
, 							{
								"key" : 9129,
								"value" : [ 36.07 ]
							}
, 							{
								"key" : 9130,
								"value" : [ 37.439999999999998 ]
							}
, 							{
								"key" : 9131,
								"value" : [ 39.020000000000003 ]
							}
, 							{
								"key" : 9132,
								"value" : [ 40.68 ]
							}
, 							{
								"key" : 9133,
								"value" : [ 42.030000000000001 ]
							}
, 							{
								"key" : 9134,
								"value" : [ 42.939999999999998 ]
							}
, 							{
								"key" : 9135,
								"value" : [ 43.409999999999997 ]
							}
, 							{
								"key" : 9136,
								"value" : [ 43.229999999999997 ]
							}
, 							{
								"key" : 9137,
								"value" : [ 42.530000000000001 ]
							}
, 							{
								"key" : 9138,
								"value" : [ 41.359999999999999 ]
							}
, 							{
								"key" : 9139,
								"value" : [ 39.060000000000002 ]
							}
, 							{
								"key" : 9140,
								"value" : [ 37.420000000000002 ]
							}
, 							{
								"key" : 9141,
								"value" : [ 36.539999999999999 ]
							}
, 							{
								"key" : 9142,
								"value" : [ 35.960000000000001 ]
							}
, 							{
								"key" : 9143,
								"value" : [ 35.490000000000002 ]
							}
, 							{
								"key" : 9144,
								"value" : [ 35.060000000000002 ]
							}
, 							{
								"key" : 9145,
								"value" : [ 34.68 ]
							}
, 							{
								"key" : 9146,
								"value" : [ 34.340000000000003 ]
							}
, 							{
								"key" : 9147,
								"value" : [ 34.020000000000003 ]
							}
, 							{
								"key" : 9148,
								"value" : [ 33.960000000000001 ]
							}
, 							{
								"key" : 9149,
								"value" : [ 34.020000000000003 ]
							}
, 							{
								"key" : 9150,
								"value" : [ 34.270000000000003 ]
							}
, 							{
								"key" : 9151,
								"value" : [ 35.780000000000001 ]
							}
, 							{
								"key" : 9152,
								"value" : [ 35.890000000000001 ]
							}
, 							{
								"key" : 9153,
								"value" : [ 36.100000000000001 ]
							}
, 							{
								"key" : 9154,
								"value" : [ 36.57 ]
							}
, 							{
								"key" : 9155,
								"value" : [ 36.909999999999997 ]
							}
, 							{
								"key" : 9156,
								"value" : [ 37.170000000000002 ]
							}
, 							{
								"key" : 9157,
								"value" : [ 37.310000000000002 ]
							}
, 							{
								"key" : 9158,
								"value" : [ 37.039999999999999 ]
							}
, 							{
								"key" : 9159,
								"value" : [ 36.270000000000003 ]
							}
, 							{
								"key" : 9160,
								"value" : [ 35.780000000000001 ]
							}
, 							{
								"key" : 9161,
								"value" : [ 35.640000000000001 ]
							}
, 							{
								"key" : 9162,
								"value" : [ 35.549999999999997 ]
							}
, 							{
								"key" : 9163,
								"value" : [ 36.049999999999997 ]
							}
, 							{
								"key" : 9164,
								"value" : [ 36.460000000000001 ]
							}
, 							{
								"key" : 9165,
								"value" : [ 37.149999999999999 ]
							}
, 							{
								"key" : 9166,
								"value" : [ 37.619999999999997 ]
							}
, 							{
								"key" : 9167,
								"value" : [ 37.060000000000002 ]
							}
, 							{
								"key" : 9168,
								"value" : [ 35.780000000000001 ]
							}
, 							{
								"key" : 9169,
								"value" : [ 34.770000000000003 ]
							}
, 							{
								"key" : 9170,
								"value" : [ 34.090000000000003 ]
							}
, 							{
								"key" : 9171,
								"value" : [ 33.780000000000001 ]
							}
, 							{
								"key" : 9172,
								"value" : [ 33.490000000000002 ]
							}
, 							{
								"key" : 9173,
								"value" : [ 33.57 ]
							}
, 							{
								"key" : 9174,
								"value" : [ 33.799999999999997 ]
							}
, 							{
								"key" : 9175,
								"value" : [ 34.719999999999999 ]
							}
, 							{
								"key" : 9176,
								"value" : [ 35.619999999999997 ]
							}
, 							{
								"key" : 9177,
								"value" : [ 36.880000000000003 ]
							}
, 							{
								"key" : 9178,
								"value" : [ 37.850000000000001 ]
							}
, 							{
								"key" : 9179,
								"value" : [ 38.640000000000001 ]
							}
, 							{
								"key" : 9180,
								"value" : [ 39.810000000000002 ]
							}
, 							{
								"key" : 9181,
								"value" : [ 40.640000000000001 ]
							}
, 							{
								"key" : 9182,
								"value" : [ 40.93 ]
							}
, 							{
								"key" : 9183,
								"value" : [ 41.049999999999997 ]
							}
, 							{
								"key" : 9184,
								"value" : [ 40.299999999999997 ]
							}
, 							{
								"key" : 9185,
								"value" : [ 39.359999999999999 ]
							}
, 							{
								"key" : 9186,
								"value" : [ 38.390000000000001 ]
							}
, 							{
								"key" : 9187,
								"value" : [ 37.289999999999999 ]
							}
, 							{
								"key" : 9188,
								"value" : [ 36.450000000000003 ]
							}
, 							{
								"key" : 9189,
								"value" : [ 35.979999999999997 ]
							}
, 							{
								"key" : 9190,
								"value" : [ 35.869999999999997 ]
							}
, 							{
								"key" : 9191,
								"value" : [ 35.740000000000002 ]
							}
, 							{
								"key" : 9192,
								"value" : [ 35.850000000000001 ]
							}
, 							{
								"key" : 9193,
								"value" : [ 35.960000000000001 ]
							}
, 							{
								"key" : 9194,
								"value" : [ 35.799999999999997 ]
							}
, 							{
								"key" : 9195,
								"value" : [ 35.380000000000003 ]
							}
, 							{
								"key" : 9196,
								"value" : [ 34.920000000000002 ]
							}
, 							{
								"key" : 9197,
								"value" : [ 34.5 ]
							}
, 							{
								"key" : 9198,
								"value" : [ 34.25 ]
							}
, 							{
								"key" : 9199,
								"value" : [ 35.149999999999999 ]
							}
, 							{
								"key" : 9200,
								"value" : [ 36.840000000000003 ]
							}
, 							{
								"key" : 9201,
								"value" : [ 38.5 ]
							}
, 							{
								"key" : 9202,
								"value" : [ 39.869999999999997 ]
							}
, 							{
								"key" : 9203,
								"value" : [ 41.020000000000003 ]
							}
, 							{
								"key" : 9204,
								"value" : [ 42.170000000000002 ]
							}
, 							{
								"key" : 9205,
								"value" : [ 43.119999999999997 ]
							}
, 							{
								"key" : 9206,
								"value" : [ 43.859999999999999 ]
							}
, 							{
								"key" : 9207,
								"value" : [ 44.329999999999998 ]
							}
, 							{
								"key" : 9208,
								"value" : [ 44.530000000000001 ]
							}
, 							{
								"key" : 9209,
								"value" : [ 44.560000000000002 ]
							}
, 							{
								"key" : 9210,
								"value" : [ 44.009999999999998 ]
							}
, 							{
								"key" : 9211,
								"value" : [ 41.340000000000003 ]
							}
, 							{
								"key" : 9212,
								"value" : [ 39.420000000000002 ]
							}
, 							{
								"key" : 9213,
								"value" : [ 38.840000000000003 ]
							}
, 							{
								"key" : 9214,
								"value" : [ 38.210000000000001 ]
							}
, 							{
								"key" : 9215,
								"value" : [ 37.939999999999998 ]
							}
, 							{
								"key" : 9216,
								"value" : [ 37.670000000000002 ]
							}
, 							{
								"key" : 9217,
								"value" : [ 37.490000000000002 ]
							}
, 							{
								"key" : 9218,
								"value" : [ 36.950000000000003 ]
							}
, 							{
								"key" : 9219,
								"value" : [ 36.390000000000001 ]
							}
, 							{
								"key" : 9220,
								"value" : [ 36.270000000000003 ]
							}
, 							{
								"key" : 9221,
								"value" : [ 36.460000000000001 ]
							}
, 							{
								"key" : 9222,
								"value" : [ 36.859999999999999 ]
							}
, 							{
								"key" : 9223,
								"value" : [ 37.899999999999999 ]
							}
, 							{
								"key" : 9224,
								"value" : [ 39.520000000000003 ]
							}
, 							{
								"key" : 9225,
								"value" : [ 41.770000000000003 ]
							}
, 							{
								"key" : 9226,
								"value" : [ 44.240000000000002 ]
							}
, 							{
								"key" : 9227,
								"value" : [ 46.020000000000003 ]
							}
, 							{
								"key" : 9228,
								"value" : [ 46.670000000000002 ]
							}
, 							{
								"key" : 9229,
								"value" : [ 46.829999999999998 ]
							}
, 							{
								"key" : 9230,
								"value" : [ 47.119999999999997 ]
							}
, 							{
								"key" : 9231,
								"value" : [ 48.240000000000002 ]
							}
, 							{
								"key" : 9232,
								"value" : [ 48.880000000000003 ]
							}
, 							{
								"key" : 9233,
								"value" : [ 48.829999999999998 ]
							}
, 							{
								"key" : 9234,
								"value" : [ 48.469999999999999 ]
							}
, 							{
								"key" : 9235,
								"value" : [ 47.259999999999998 ]
							}
, 							{
								"key" : 9236,
								"value" : [ 47.259999999999998 ]
							}
, 							{
								"key" : 9237,
								"value" : [ 47.57 ]
							}
, 							{
								"key" : 9238,
								"value" : [ 47.770000000000003 ]
							}
, 							{
								"key" : 9239,
								"value" : [ 47.189999999999998 ]
							}
, 							{
								"key" : 9240,
								"value" : [ 46.619999999999997 ]
							}
, 							{
								"key" : 9241,
								"value" : [ 46.240000000000002 ]
							}
, 							{
								"key" : 9242,
								"value" : [ 46.350000000000001 ]
							}
, 							{
								"key" : 9243,
								"value" : [ 46.0 ]
							}
, 							{
								"key" : 9244,
								"value" : [ 46.0 ]
							}
, 							{
								"key" : 9245,
								"value" : [ 45.719999999999999 ]
							}
, 							{
								"key" : 9246,
								"value" : [ 45.43 ]
							}
, 							{
								"key" : 9247,
								"value" : [ 45.659999999999997 ]
							}
, 							{
								"key" : 9248,
								"value" : [ 46.630000000000003 ]
							}
, 							{
								"key" : 9249,
								"value" : [ 48.090000000000003 ]
							}
, 							{
								"key" : 9250,
								"value" : [ 49.659999999999997 ]
							}
, 							{
								"key" : 9251,
								"value" : [ 51.479999999999997 ]
							}
, 							{
								"key" : 9252,
								"value" : [ 53.039999999999999 ]
							}
, 							{
								"key" : 9253,
								"value" : [ 54.119999999999997 ]
							}
, 							{
								"key" : 9254,
								"value" : [ 54.859999999999999 ]
							}
, 							{
								"key" : 9255,
								"value" : [ 55.270000000000003 ]
							}
, 							{
								"key" : 9256,
								"value" : [ 55.490000000000002 ]
							}
, 							{
								"key" : 9257,
								"value" : [ 55.539999999999999 ]
							}
, 							{
								"key" : 9258,
								"value" : [ 54.770000000000003 ]
							}
, 							{
								"key" : 9259,
								"value" : [ 52.920000000000002 ]
							}
, 							{
								"key" : 9260,
								"value" : [ 52.359999999999999 ]
							}
, 							{
								"key" : 9261,
								"value" : [ 51.979999999999997 ]
							}
, 							{
								"key" : 9262,
								"value" : [ 51.420000000000002 ]
							}
, 							{
								"key" : 9263,
								"value" : [ 49.689999999999998 ]
							}
, 							{
								"key" : 9264,
								"value" : [ 46.979999999999997 ]
							}
, 							{
								"key" : 9265,
								"value" : [ 45.460000000000001 ]
							}
, 							{
								"key" : 9266,
								"value" : [ 44.579999999999998 ]
							}
, 							{
								"key" : 9267,
								"value" : [ 44.219999999999999 ]
							}
, 							{
								"key" : 9268,
								"value" : [ 43.409999999999997 ]
							}
, 							{
								"key" : 9269,
								"value" : [ 42.840000000000003 ]
							}
, 							{
								"key" : 9270,
								"value" : [ 43.109999999999999 ]
							}
, 							{
								"key" : 9271,
								"value" : [ 43.020000000000003 ]
							}
, 							{
								"key" : 9272,
								"value" : [ 43.200000000000003 ]
							}
, 							{
								"key" : 9273,
								"value" : [ 43.75 ]
							}
, 							{
								"key" : 9274,
								"value" : [ 44.399999999999999 ]
							}
, 							{
								"key" : 9275,
								"value" : [ 45.460000000000001 ]
							}
, 							{
								"key" : 9276,
								"value" : [ 46.939999999999998 ]
							}
, 							{
								"key" : 9277,
								"value" : [ 47.969999999999999 ]
							}
, 							{
								"key" : 9278,
								"value" : [ 48.700000000000003 ]
							}
, 							{
								"key" : 9279,
								"value" : [ 48.960000000000001 ]
							}
, 							{
								"key" : 9280,
								"value" : [ 48.560000000000002 ]
							}
, 							{
								"key" : 9281,
								"value" : [ 48.789999999999999 ]
							}
, 							{
								"key" : 9282,
								"value" : [ 49.229999999999997 ]
							}
, 							{
								"key" : 9283,
								"value" : [ 49.57 ]
							}
, 							{
								"key" : 9284,
								"value" : [ 49.890000000000001 ]
							}
, 							{
								"key" : 9285,
								"value" : [ 50.219999999999999 ]
							}
, 							{
								"key" : 9286,
								"value" : [ 51.119999999999997 ]
							}
, 							{
								"key" : 9287,
								"value" : [ 52.109999999999999 ]
							}
, 							{
								"key" : 9288,
								"value" : [ 52.740000000000002 ]
							}
, 							{
								"key" : 9289,
								"value" : [ 52.969999999999999 ]
							}
, 							{
								"key" : 9290,
								"value" : [ 52.43 ]
							}
, 							{
								"key" : 9291,
								"value" : [ 52.0 ]
							}
, 							{
								"key" : 9292,
								"value" : [ 51.729999999999997 ]
							}
, 							{
								"key" : 9293,
								"value" : [ 51.479999999999997 ]
							}
, 							{
								"key" : 9294,
								"value" : [ 51.460000000000001 ]
							}
, 							{
								"key" : 9295,
								"value" : [ 52.07 ]
							}
, 							{
								"key" : 9296,
								"value" : [ 53.240000000000002 ]
							}
, 							{
								"key" : 9297,
								"value" : [ 55.219999999999999 ]
							}
, 							{
								"key" : 9298,
								"value" : [ 58.229999999999997 ]
							}
, 							{
								"key" : 9299,
								"value" : [ 60.759999999999998 ]
							}
, 							{
								"key" : 9300,
								"value" : [ 62.530000000000001 ]
							}
, 							{
								"key" : 9301,
								"value" : [ 63.43 ]
							}
, 							{
								"key" : 9302,
								"value" : [ 63.630000000000003 ]
							}
, 							{
								"key" : 9303,
								"value" : [ 63.520000000000003 ]
							}
, 							{
								"key" : 9304,
								"value" : [ 63.340000000000003 ]
							}
, 							{
								"key" : 9305,
								"value" : [ 62.759999999999998 ]
							}
, 							{
								"key" : 9306,
								"value" : [ 61.659999999999997 ]
							}
, 							{
								"key" : 9307,
								"value" : [ 60.170000000000002 ]
							}
, 							{
								"key" : 9308,
								"value" : [ 58.640000000000001 ]
							}
, 							{
								"key" : 9309,
								"value" : [ 57.670000000000002 ]
							}
, 							{
								"key" : 9310,
								"value" : [ 57.149999999999999 ]
							}
, 							{
								"key" : 9311,
								"value" : [ 56.880000000000003 ]
							}
, 							{
								"key" : 9312,
								"value" : [ 56.770000000000003 ]
							}
, 							{
								"key" : 9313,
								"value" : [ 56.520000000000003 ]
							}
, 							{
								"key" : 9314,
								"value" : [ 56.159999999999997 ]
							}
, 							{
								"key" : 9315,
								"value" : [ 55.810000000000002 ]
							}
, 							{
								"key" : 9316,
								"value" : [ 56.079999999999998 ]
							}
, 							{
								"key" : 9317,
								"value" : [ 55.869999999999997 ]
							}
, 							{
								"key" : 9318,
								"value" : [ 55.990000000000002 ]
							}
, 							{
								"key" : 9319,
								"value" : [ 56.210000000000001 ]
							}
, 							{
								"key" : 9320,
								"value" : [ 56.549999999999997 ]
							}
, 							{
								"key" : 9321,
								"value" : [ 58.060000000000002 ]
							}
, 							{
								"key" : 9322,
								"value" : [ 59.579999999999998 ]
							}
, 							{
								"key" : 9323,
								"value" : [ 59.630000000000003 ]
							}
, 							{
								"key" : 9324,
								"value" : [ 58.600000000000001 ]
							}
, 							{
								"key" : 9325,
								"value" : [ 58.009999999999998 ]
							}
, 							{
								"key" : 9326,
								"value" : [ 58.240000000000002 ]
							}
, 							{
								"key" : 9327,
								"value" : [ 58.009999999999998 ]
							}
, 							{
								"key" : 9328,
								"value" : [ 57.159999999999997 ]
							}
, 							{
								"key" : 9329,
								"value" : [ 56.659999999999997 ]
							}
, 							{
								"key" : 9330,
								"value" : [ 56.159999999999997 ]
							}
, 							{
								"key" : 9331,
								"value" : [ 54.159999999999997 ]
							}
, 							{
								"key" : 9332,
								"value" : [ 52.299999999999997 ]
							}
, 							{
								"key" : 9333,
								"value" : [ 50.880000000000003 ]
							}
, 							{
								"key" : 9334,
								"value" : [ 49.68 ]
							}
, 							{
								"key" : 9335,
								"value" : [ 48.490000000000002 ]
							}
, 							{
								"key" : 9336,
								"value" : [ 47.369999999999997 ]
							}
, 							{
								"key" : 9337,
								"value" : [ 46.490000000000002 ]
							}
, 							{
								"key" : 9338,
								"value" : [ 45.909999999999997 ]
							}
, 							{
								"key" : 9339,
								"value" : [ 45.82 ]
							}
, 							{
								"key" : 9340,
								"value" : [ 45.75 ]
							}
, 							{
								"key" : 9341,
								"value" : [ 45.210000000000001 ]
							}
, 							{
								"key" : 9342,
								"value" : [ 45.009999999999998 ]
							}
, 							{
								"key" : 9343,
								"value" : [ 45.460000000000001 ]
							}
, 							{
								"key" : 9344,
								"value" : [ 45.640000000000001 ]
							}
, 							{
								"key" : 9345,
								"value" : [ 46.289999999999999 ]
							}
, 							{
								"key" : 9346,
								"value" : [ 46.939999999999998 ]
							}
, 							{
								"key" : 9347,
								"value" : [ 46.869999999999997 ]
							}
, 							{
								"key" : 9348,
								"value" : [ 46.670000000000002 ]
							}
, 							{
								"key" : 9349,
								"value" : [ 46.619999999999997 ]
							}
, 							{
								"key" : 9350,
								"value" : [ 46.719999999999999 ]
							}
, 							{
								"key" : 9351,
								"value" : [ 46.810000000000002 ]
							}
, 							{
								"key" : 9352,
								"value" : [ 46.630000000000003 ]
							}
, 							{
								"key" : 9353,
								"value" : [ 45.729999999999997 ]
							}
, 							{
								"key" : 9354,
								"value" : [ 44.439999999999998 ]
							}
, 							{
								"key" : 9355,
								"value" : [ 42.869999999999997 ]
							}
, 							{
								"key" : 9356,
								"value" : [ 41.5 ]
							}
, 							{
								"key" : 9357,
								"value" : [ 40.509999999999998 ]
							}
, 							{
								"key" : 9358,
								"value" : [ 39.920000000000002 ]
							}
, 							{
								"key" : 9359,
								"value" : [ 39.039999999999999 ]
							}
, 							{
								"key" : 9360,
								"value" : [ 38.439999999999998 ]
							}
, 							{
								"key" : 9361,
								"value" : [ 37.990000000000002 ]
							}
, 							{
								"key" : 9362,
								"value" : [ 37.560000000000002 ]
							}
, 							{
								"key" : 9363,
								"value" : [ 37.090000000000003 ]
							}
, 							{
								"key" : 9364,
								"value" : [ 36.719999999999999 ]
							}
, 							{
								"key" : 9365,
								"value" : [ 36.659999999999997 ]
							}
, 							{
								"key" : 9366,
								"value" : [ 36.719999999999999 ]
							}
, 							{
								"key" : 9367,
								"value" : [ 37.600000000000001 ]
							}
, 							{
								"key" : 9368,
								"value" : [ 38.93 ]
							}
, 							{
								"key" : 9369,
								"value" : [ 40.259999999999998 ]
							}
, 							{
								"key" : 9370,
								"value" : [ 41.18 ]
							}
, 							{
								"key" : 9371,
								"value" : [ 42.039999999999999 ]
							}
, 							{
								"key" : 9372,
								"value" : [ 43.140000000000001 ]
							}
, 							{
								"key" : 9373,
								"value" : [ 44.170000000000002 ]
							}
, 							{
								"key" : 9374,
								"value" : [ 44.909999999999997 ]
							}
, 							{
								"key" : 9375,
								"value" : [ 45.369999999999997 ]
							}
, 							{
								"key" : 9376,
								"value" : [ 45.57 ]
							}
, 							{
								"key" : 9377,
								"value" : [ 45.450000000000003 ]
							}
, 							{
								"key" : 9378,
								"value" : [ 44.640000000000001 ]
							}
, 							{
								"key" : 9379,
								"value" : [ 42.579999999999998 ]
							}
, 							{
								"key" : 9380,
								"value" : [ 40.890000000000001 ]
							}
, 							{
								"key" : 9381,
								"value" : [ 39.579999999999998 ]
							}
, 							{
								"key" : 9382,
								"value" : [ 38.340000000000003 ]
							}
, 							{
								"key" : 9383,
								"value" : [ 37.270000000000003 ]
							}
, 							{
								"key" : 9384,
								"value" : [ 36.43 ]
							}
, 							{
								"key" : 9385,
								"value" : [ 35.759999999999998 ]
							}
, 							{
								"key" : 9386,
								"value" : [ 35.350000000000001 ]
							}
, 							{
								"key" : 9387,
								"value" : [ 35.149999999999999 ]
							}
, 							{
								"key" : 9388,
								"value" : [ 35.170000000000002 ]
							}
, 							{
								"key" : 9389,
								"value" : [ 35.289999999999999 ]
							}
, 							{
								"key" : 9390,
								"value" : [ 36.07 ]
							}
, 							{
								"key" : 9391,
								"value" : [ 37.530000000000001 ]
							}
, 							{
								"key" : 9392,
								"value" : [ 37.920000000000002 ]
							}
, 							{
								"key" : 9393,
								"value" : [ 38.119999999999997 ]
							}
, 							{
								"key" : 9394,
								"value" : [ 37.759999999999998 ]
							}
, 							{
								"key" : 9395,
								"value" : [ 36.659999999999997 ]
							}
, 							{
								"key" : 9396,
								"value" : [ 35.740000000000002 ]
							}
, 							{
								"key" : 9397,
								"value" : [ 35.020000000000003 ]
							}
, 							{
								"key" : 9398,
								"value" : [ 34.299999999999997 ]
							}
, 							{
								"key" : 9399,
								"value" : [ 33.460000000000001 ]
							}
, 							{
								"key" : 9400,
								"value" : [ 33.189999999999998 ]
							}
, 							{
								"key" : 9401,
								"value" : [ 33.439999999999998 ]
							}
, 							{
								"key" : 9402,
								"value" : [ 33.759999999999998 ]
							}
, 							{
								"key" : 9403,
								"value" : [ 34.159999999999997 ]
							}
, 							{
								"key" : 9404,
								"value" : [ 34.609999999999999 ]
							}
, 							{
								"key" : 9405,
								"value" : [ 35.200000000000003 ]
							}
, 							{
								"key" : 9406,
								"value" : [ 35.740000000000002 ]
							}
, 							{
								"key" : 9407,
								"value" : [ 36.32 ]
							}
, 							{
								"key" : 9408,
								"value" : [ 37.170000000000002 ]
							}
, 							{
								"key" : 9409,
								"value" : [ 37.899999999999999 ]
							}
, 							{
								"key" : 9410,
								"value" : [ 38.640000000000001 ]
							}
, 							{
								"key" : 9411,
								"value" : [ 39.219999999999999 ]
							}
, 							{
								"key" : 9412,
								"value" : [ 39.609999999999999 ]
							}
, 							{
								"key" : 9413,
								"value" : [ 39.869999999999997 ]
							}
, 							{
								"key" : 9414,
								"value" : [ 40.390000000000001 ]
							}
, 							{
								"key" : 9415,
								"value" : [ 41.32 ]
							}
, 							{
								"key" : 9416,
								"value" : [ 41.469999999999999 ]
							}
, 							{
								"key" : 9417,
								"value" : [ 41.520000000000003 ]
							}
, 							{
								"key" : 9418,
								"value" : [ 41.770000000000003 ]
							}
, 							{
								"key" : 9419,
								"value" : [ 42.030000000000001 ]
							}
, 							{
								"key" : 9420,
								"value" : [ 42.549999999999997 ]
							}
, 							{
								"key" : 9421,
								"value" : [ 43.299999999999997 ]
							}
, 							{
								"key" : 9422,
								"value" : [ 43.969999999999999 ]
							}
, 							{
								"key" : 9423,
								"value" : [ 44.469999999999999 ]
							}
, 							{
								"key" : 9424,
								"value" : [ 44.829999999999998 ]
							}
, 							{
								"key" : 9425,
								"value" : [ 44.920000000000002 ]
							}
, 							{
								"key" : 9426,
								"value" : [ 44.579999999999998 ]
							}
, 							{
								"key" : 9427,
								"value" : [ 44.039999999999999 ]
							}
, 							{
								"key" : 9428,
								"value" : [ 43.920000000000002 ]
							}
, 							{
								"key" : 9429,
								"value" : [ 43.700000000000003 ]
							}
, 							{
								"key" : 9430,
								"value" : [ 43.469999999999999 ]
							}
, 							{
								"key" : 9431,
								"value" : [ 43.5 ]
							}
, 							{
								"key" : 9432,
								"value" : [ 43.630000000000003 ]
							}
, 							{
								"key" : 9433,
								"value" : [ 43.380000000000003 ]
							}
, 							{
								"key" : 9434,
								"value" : [ 42.890000000000001 ]
							}
, 							{
								"key" : 9435,
								"value" : [ 42.549999999999997 ]
							}
, 							{
								"key" : 9436,
								"value" : [ 42.689999999999998 ]
							}
, 							{
								"key" : 9437,
								"value" : [ 42.869999999999997 ]
							}
, 							{
								"key" : 9438,
								"value" : [ 42.57 ]
							}
, 							{
								"key" : 9439,
								"value" : [ 42.869999999999997 ]
							}
, 							{
								"key" : 9440,
								"value" : [ 43.810000000000002 ]
							}
, 							{
								"key" : 9441,
								"value" : [ 45.009999999999998 ]
							}
, 							{
								"key" : 9442,
								"value" : [ 46.490000000000002 ]
							}
, 							{
								"key" : 9443,
								"value" : [ 48.670000000000002 ]
							}
, 							{
								"key" : 9444,
								"value" : [ 50.450000000000003 ]
							}
, 							{
								"key" : 9445,
								"value" : [ 51.82 ]
							}
, 							{
								"key" : 9446,
								"value" : [ 52.359999999999999 ]
							}
, 							{
								"key" : 9447,
								"value" : [ 52.390000000000001 ]
							}
, 							{
								"key" : 9448,
								"value" : [ 52.25 ]
							}
, 							{
								"key" : 9449,
								"value" : [ 52.0 ]
							}
, 							{
								"key" : 9450,
								"value" : [ 51.460000000000001 ]
							}
, 							{
								"key" : 9451,
								"value" : [ 50.789999999999999 ]
							}
, 							{
								"key" : 9452,
								"value" : [ 50.25 ]
							}
, 							{
								"key" : 9453,
								"value" : [ 49.82 ]
							}
, 							{
								"key" : 9454,
								"value" : [ 49.030000000000001 ]
							}
, 							{
								"key" : 9455,
								"value" : [ 48.329999999999998 ]
							}
, 							{
								"key" : 9456,
								"value" : [ 47.439999999999998 ]
							}
, 							{
								"key" : 9457,
								"value" : [ 46.420000000000002 ]
							}
, 							{
								"key" : 9458,
								"value" : [ 45.590000000000003 ]
							}
, 							{
								"key" : 9459,
								"value" : [ 46.109999999999999 ]
							}
, 							{
								"key" : 9460,
								"value" : [ 46.649999999999999 ]
							}
, 							{
								"key" : 9461,
								"value" : [ 46.18 ]
							}
, 							{
								"key" : 9462,
								"value" : [ 46.420000000000002 ]
							}
, 							{
								"key" : 9463,
								"value" : [ 47.030000000000001 ]
							}
, 							{
								"key" : 9464,
								"value" : [ 47.799999999999997 ]
							}
, 							{
								"key" : 9465,
								"value" : [ 49.5 ]
							}
, 							{
								"key" : 9466,
								"value" : [ 50.670000000000002 ]
							}
, 							{
								"key" : 9467,
								"value" : [ 52.270000000000003 ]
							}
, 							{
								"key" : 9468,
								"value" : [ 53.920000000000002 ]
							}
, 							{
								"key" : 9469,
								"value" : [ 55.740000000000002 ]
							}
, 							{
								"key" : 9470,
								"value" : [ 56.770000000000003 ]
							}
, 							{
								"key" : 9471,
								"value" : [ 57.670000000000002 ]
							}
, 							{
								"key" : 9472,
								"value" : [ 58.979999999999997 ]
							}
, 							{
								"key" : 9473,
								"value" : [ 59.07 ]
							}
, 							{
								"key" : 9474,
								"value" : [ 58.409999999999997 ]
							}
, 							{
								"key" : 9475,
								"value" : [ 57.149999999999999 ]
							}
, 							{
								"key" : 9476,
								"value" : [ 56.259999999999998 ]
							}
, 							{
								"key" : 9477,
								"value" : [ 55.829999999999998 ]
							}
, 							{
								"key" : 9478,
								"value" : [ 54.07 ]
							}
, 							{
								"key" : 9479,
								"value" : [ 51.759999999999998 ]
							}
, 							{
								"key" : 9480,
								"value" : [ 49.689999999999998 ]
							}
, 							{
								"key" : 9481,
								"value" : [ 48.200000000000003 ]
							}
, 							{
								"key" : 9482,
								"value" : [ 47.259999999999998 ]
							}
, 							{
								"key" : 9483,
								"value" : [ 46.359999999999999 ]
							}
, 							{
								"key" : 9484,
								"value" : [ 45.68 ]
							}
, 							{
								"key" : 9485,
								"value" : [ 45.82 ]
							}
, 							{
								"key" : 9486,
								"value" : [ 46.219999999999999 ]
							}
, 							{
								"key" : 9487,
								"value" : [ 46.810000000000002 ]
							}
, 							{
								"key" : 9488,
								"value" : [ 47.82 ]
							}
, 							{
								"key" : 9489,
								"value" : [ 48.740000000000002 ]
							}
, 							{
								"key" : 9490,
								"value" : [ 49.189999999999998 ]
							}
, 							{
								"key" : 9491,
								"value" : [ 49.240000000000002 ]
							}
, 							{
								"key" : 9492,
								"value" : [ 49.100000000000001 ]
							}
, 							{
								"key" : 9493,
								"value" : [ 48.789999999999999 ]
							}
, 							{
								"key" : 9494,
								"value" : [ 48.520000000000003 ]
							}
, 							{
								"key" : 9495,
								"value" : [ 48.240000000000002 ]
							}
, 							{
								"key" : 9496,
								"value" : [ 48.090000000000003 ]
							}
, 							{
								"key" : 9497,
								"value" : [ 47.890000000000001 ]
							}
, 							{
								"key" : 9498,
								"value" : [ 47.439999999999998 ]
							}
, 							{
								"key" : 9499,
								"value" : [ 46.670000000000002 ]
							}
, 							{
								"key" : 9500,
								"value" : [ 46.149999999999999 ]
							}
, 							{
								"key" : 9501,
								"value" : [ 45.859999999999999 ]
							}
, 							{
								"key" : 9502,
								"value" : [ 45.390000000000001 ]
							}
, 							{
								"key" : 9503,
								"value" : [ 45.270000000000003 ]
							}
, 							{
								"key" : 9504,
								"value" : [ 45.140000000000001 ]
							}
, 							{
								"key" : 9505,
								"value" : [ 44.649999999999999 ]
							}
, 							{
								"key" : 9506,
								"value" : [ 43.990000000000002 ]
							}
, 							{
								"key" : 9507,
								"value" : [ 42.939999999999998 ]
							}
, 							{
								"key" : 9508,
								"value" : [ 42.039999999999999 ]
							}
, 							{
								"key" : 9509,
								"value" : [ 41.5 ]
							}
, 							{
								"key" : 9510,
								"value" : [ 41.68 ]
							}
, 							{
								"key" : 9511,
								"value" : [ 42.869999999999997 ]
							}
, 							{
								"key" : 9512,
								"value" : [ 45.119999999999997 ]
							}
, 							{
								"key" : 9513,
								"value" : [ 46.579999999999998 ]
							}
, 							{
								"key" : 9514,
								"value" : [ 46.829999999999998 ]
							}
, 							{
								"key" : 9515,
								"value" : [ 46.799999999999997 ]
							}
, 							{
								"key" : 9516,
								"value" : [ 47.619999999999997 ]
							}
, 							{
								"key" : 9517,
								"value" : [ 48.850000000000001 ]
							}
, 							{
								"key" : 9518,
								"value" : [ 49.890000000000001 ]
							}
, 							{
								"key" : 9519,
								"value" : [ 50.770000000000003 ]
							}
, 							{
								"key" : 9520,
								"value" : [ 51.030000000000001 ]
							}
, 							{
								"key" : 9521,
								"value" : [ 49.710000000000001 ]
							}
, 							{
								"key" : 9522,
								"value" : [ 46.810000000000002 ]
							}
, 							{
								"key" : 9523,
								"value" : [ 44.560000000000002 ]
							}
, 							{
								"key" : 9524,
								"value" : [ 43.270000000000003 ]
							}
, 							{
								"key" : 9525,
								"value" : [ 42.82 ]
							}
, 							{
								"key" : 9526,
								"value" : [ 43.0 ]
							}
, 							{
								"key" : 9527,
								"value" : [ 43.229999999999997 ]
							}
, 							{
								"key" : 9528,
								"value" : [ 43.469999999999999 ]
							}
, 							{
								"key" : 9529,
								"value" : [ 43.880000000000003 ]
							}
, 							{
								"key" : 9530,
								"value" : [ 44.240000000000002 ]
							}
, 							{
								"key" : 9531,
								"value" : [ 44.460000000000001 ]
							}
, 							{
								"key" : 9532,
								"value" : [ 44.490000000000002 ]
							}
, 							{
								"key" : 9533,
								"value" : [ 44.399999999999999 ]
							}
, 							{
								"key" : 9534,
								"value" : [ 44.060000000000002 ]
							}
, 							{
								"key" : 9535,
								"value" : [ 43.450000000000003 ]
							}
, 							{
								"key" : 9536,
								"value" : [ 43.340000000000003 ]
							}
, 							{
								"key" : 9537,
								"value" : [ 43.030000000000001 ]
							}
, 							{
								"key" : 9538,
								"value" : [ 42.869999999999997 ]
							}
, 							{
								"key" : 9539,
								"value" : [ 44.039999999999999 ]
							}
, 							{
								"key" : 9540,
								"value" : [ 44.399999999999999 ]
							}
, 							{
								"key" : 9541,
								"value" : [ 44.460000000000001 ]
							}
, 							{
								"key" : 9542,
								"value" : [ 44.130000000000003 ]
							}
, 							{
								"key" : 9543,
								"value" : [ 43.590000000000003 ]
							}
, 							{
								"key" : 9544,
								"value" : [ 43.32 ]
							}
, 							{
								"key" : 9545,
								"value" : [ 43.030000000000001 ]
							}
, 							{
								"key" : 9546,
								"value" : [ 42.759999999999998 ]
							}
, 							{
								"key" : 9547,
								"value" : [ 42.479999999999997 ]
							}
, 							{
								"key" : 9548,
								"value" : [ 42.600000000000001 ]
							}
, 							{
								"key" : 9549,
								"value" : [ 43.020000000000003 ]
							}
, 							{
								"key" : 9550,
								"value" : [ 42.939999999999998 ]
							}
, 							{
								"key" : 9551,
								"value" : [ 42.549999999999997 ]
							}
, 							{
								"key" : 9552,
								"value" : [ 42.170000000000002 ]
							}
, 							{
								"key" : 9553,
								"value" : [ 41.719999999999999 ]
							}
, 							{
								"key" : 9554,
								"value" : [ 41.109999999999999 ]
							}
, 							{
								"key" : 9555,
								"value" : [ 40.600000000000001 ]
							}
, 							{
								"key" : 9556,
								"value" : [ 40.329999999999998 ]
							}
, 							{
								"key" : 9557,
								"value" : [ 40.32 ]
							}
, 							{
								"key" : 9558,
								"value" : [ 40.590000000000003 ]
							}
, 							{
								"key" : 9559,
								"value" : [ 41.159999999999997 ]
							}
, 							{
								"key" : 9560,
								"value" : [ 41.789999999999999 ]
							}
, 							{
								"key" : 9561,
								"value" : [ 42.369999999999997 ]
							}
, 							{
								"key" : 9562,
								"value" : [ 42.82 ]
							}
, 							{
								"key" : 9563,
								"value" : [ 43.090000000000003 ]
							}
, 							{
								"key" : 9564,
								"value" : [ 43.210000000000001 ]
							}
, 							{
								"key" : 9565,
								"value" : [ 43.229999999999997 ]
							}
, 							{
								"key" : 9566,
								"value" : [ 43.289999999999999 ]
							}
, 							{
								"key" : 9567,
								"value" : [ 43.5 ]
							}
, 							{
								"key" : 9568,
								"value" : [ 44.200000000000003 ]
							}
, 							{
								"key" : 9569,
								"value" : [ 44.259999999999998 ]
							}
, 							{
								"key" : 9570,
								"value" : [ 44.039999999999999 ]
							}
, 							{
								"key" : 9571,
								"value" : [ 43.090000000000003 ]
							}
, 							{
								"key" : 9572,
								"value" : [ 42.079999999999998 ]
							}
, 							{
								"key" : 9573,
								"value" : [ 41.649999999999999 ]
							}
, 							{
								"key" : 9574,
								"value" : [ 41.409999999999997 ]
							}
, 							{
								"key" : 9575,
								"value" : [ 40.890000000000001 ]
							}
, 							{
								"key" : 9576,
								"value" : [ 40.060000000000002 ]
							}
, 							{
								"key" : 9577,
								"value" : [ 39.869999999999997 ]
							}
, 							{
								"key" : 9578,
								"value" : [ 39.899999999999999 ]
							}
, 							{
								"key" : 9579,
								"value" : [ 40.240000000000002 ]
							}
, 							{
								"key" : 9580,
								"value" : [ 40.659999999999997 ]
							}
, 							{
								"key" : 9581,
								"value" : [ 41.090000000000003 ]
							}
, 							{
								"key" : 9582,
								"value" : [ 42.119999999999997 ]
							}
, 							{
								"key" : 9583,
								"value" : [ 43.43 ]
							}
, 							{
								"key" : 9584,
								"value" : [ 44.490000000000002 ]
							}
, 							{
								"key" : 9585,
								"value" : [ 45.340000000000003 ]
							}
, 							{
								"key" : 9586,
								"value" : [ 45.609999999999999 ]
							}
, 							{
								"key" : 9587,
								"value" : [ 46.329999999999998 ]
							}
, 							{
								"key" : 9588,
								"value" : [ 47.229999999999997 ]
							}
, 							{
								"key" : 9589,
								"value" : [ 47.710000000000001 ]
							}
, 							{
								"key" : 9590,
								"value" : [ 47.520000000000003 ]
							}
, 							{
								"key" : 9591,
								"value" : [ 47.840000000000003 ]
							}
, 							{
								"key" : 9592,
								"value" : [ 48.25 ]
							}
, 							{
								"key" : 9593,
								"value" : [ 47.460000000000001 ]
							}
, 							{
								"key" : 9594,
								"value" : [ 46.490000000000002 ]
							}
, 							{
								"key" : 9595,
								"value" : [ 45.840000000000003 ]
							}
, 							{
								"key" : 9596,
								"value" : [ 45.369999999999997 ]
							}
, 							{
								"key" : 9597,
								"value" : [ 45.189999999999998 ]
							}
, 							{
								"key" : 9598,
								"value" : [ 45.189999999999998 ]
							}
, 							{
								"key" : 9599,
								"value" : [ 45.57 ]
							}
, 							{
								"key" : 9600,
								"value" : [ 45.880000000000003 ]
							}
, 							{
								"key" : 9601,
								"value" : [ 46.149999999999999 ]
							}
, 							{
								"key" : 9602,
								"value" : [ 46.420000000000002 ]
							}
, 							{
								"key" : 9603,
								"value" : [ 46.490000000000002 ]
							}
, 							{
								"key" : 9604,
								"value" : [ 46.310000000000002 ]
							}
, 							{
								"key" : 9605,
								"value" : [ 46.060000000000002 ]
							}
, 							{
								"key" : 9606,
								"value" : [ 45.899999999999999 ]
							}
, 							{
								"key" : 9607,
								"value" : [ 45.75 ]
							}
, 							{
								"key" : 9608,
								"value" : [ 45.590000000000003 ]
							}
, 							{
								"key" : 9609,
								"value" : [ 45.359999999999999 ]
							}
, 							{
								"key" : 9610,
								"value" : [ 45.280000000000001 ]
							}
, 							{
								"key" : 9611,
								"value" : [ 45.590000000000003 ]
							}
, 							{
								"key" : 9612,
								"value" : [ 45.82 ]
							}
, 							{
								"key" : 9613,
								"value" : [ 45.770000000000003 ]
							}
, 							{
								"key" : 9614,
								"value" : [ 45.950000000000003 ]
							}
, 							{
								"key" : 9615,
								"value" : [ 46.130000000000003 ]
							}
, 							{
								"key" : 9616,
								"value" : [ 46.560000000000002 ]
							}
, 							{
								"key" : 9617,
								"value" : [ 47.189999999999998 ]
							}
, 							{
								"key" : 9618,
								"value" : [ 47.439999999999998 ]
							}
, 							{
								"key" : 9619,
								"value" : [ 47.520000000000003 ]
							}
, 							{
								"key" : 9620,
								"value" : [ 47.520000000000003 ]
							}
, 							{
								"key" : 9621,
								"value" : [ 47.259999999999998 ]
							}
, 							{
								"key" : 9622,
								"value" : [ 47.119999999999997 ]
							}
, 							{
								"key" : 9623,
								"value" : [ 46.350000000000001 ]
							}
, 							{
								"key" : 9624,
								"value" : [ 45.899999999999999 ]
							}
, 							{
								"key" : 9625,
								"value" : [ 45.539999999999999 ]
							}
, 							{
								"key" : 9626,
								"value" : [ 45.07 ]
							}
, 							{
								"key" : 9627,
								"value" : [ 44.439999999999998 ]
							}
, 							{
								"key" : 9628,
								"value" : [ 43.840000000000003 ]
							}
, 							{
								"key" : 9629,
								"value" : [ 43.289999999999999 ]
							}
, 							{
								"key" : 9630,
								"value" : [ 43.840000000000003 ]
							}
, 							{
								"key" : 9631,
								"value" : [ 44.829999999999998 ]
							}
, 							{
								"key" : 9632,
								"value" : [ 45.479999999999997 ]
							}
, 							{
								"key" : 9633,
								"value" : [ 46.289999999999999 ]
							}
, 							{
								"key" : 9634,
								"value" : [ 47.119999999999997 ]
							}
, 							{
								"key" : 9635,
								"value" : [ 47.880000000000003 ]
							}
, 							{
								"key" : 9636,
								"value" : [ 49.32 ]
							}
, 							{
								"key" : 9637,
								"value" : [ 50.450000000000003 ]
							}
, 							{
								"key" : 9638,
								"value" : [ 50.789999999999999 ]
							}
, 							{
								"key" : 9639,
								"value" : [ 50.740000000000002 ]
							}
, 							{
								"key" : 9640,
								"value" : [ 50.359999999999999 ]
							}
, 							{
								"key" : 9641,
								"value" : [ 49.229999999999997 ]
							}
, 							{
								"key" : 9642,
								"value" : [ 47.32 ]
							}
, 							{
								"key" : 9643,
								"value" : [ 45.539999999999999 ]
							}
, 							{
								"key" : 9644,
								"value" : [ 44.740000000000002 ]
							}
, 							{
								"key" : 9645,
								"value" : [ 45.280000000000001 ]
							}
, 							{
								"key" : 9646,
								"value" : [ 46.060000000000002 ]
							}
, 							{
								"key" : 9647,
								"value" : [ 46.200000000000003 ]
							}
, 							{
								"key" : 9648,
								"value" : [ 45.810000000000002 ]
							}
, 							{
								"key" : 9649,
								"value" : [ 45.189999999999998 ]
							}
, 							{
								"key" : 9650,
								"value" : [ 44.289999999999999 ]
							}
, 							{
								"key" : 9651,
								"value" : [ 43.340000000000003 ]
							}
, 							{
								"key" : 9652,
								"value" : [ 42.619999999999997 ]
							}
, 							{
								"key" : 9653,
								"value" : [ 42.009999999999998 ]
							}
, 							{
								"key" : 9654,
								"value" : [ 42.670000000000002 ]
							}
, 							{
								"key" : 9655,
								"value" : [ 44.039999999999999 ]
							}
, 							{
								"key" : 9656,
								"value" : [ 45.5 ]
							}
, 							{
								"key" : 9657,
								"value" : [ 48.090000000000003 ]
							}
, 							{
								"key" : 9658,
								"value" : [ 51.57 ]
							}
, 							{
								"key" : 9659,
								"value" : [ 54.280000000000001 ]
							}
, 							{
								"key" : 9660,
								"value" : [ 54.840000000000003 ]
							}
, 							{
								"key" : 9661,
								"value" : [ 54.880000000000003 ]
							}
, 							{
								"key" : 9662,
								"value" : [ 56.439999999999998 ]
							}
, 							{
								"key" : 9663,
								"value" : [ 57.329999999999998 ]
							}
, 							{
								"key" : 9664,
								"value" : [ 56.700000000000003 ]
							}
, 							{
								"key" : 9665,
								"value" : [ 55.850000000000001 ]
							}
, 							{
								"key" : 9666,
								"value" : [ 54.719999999999999 ]
							}
, 							{
								"key" : 9667,
								"value" : [ 53.009999999999998 ]
							}
, 							{
								"key" : 9668,
								"value" : [ 51.600000000000001 ]
							}
, 							{
								"key" : 9669,
								"value" : [ 50.670000000000002 ]
							}
, 							{
								"key" : 9670,
								"value" : [ 49.82 ]
							}
, 							{
								"key" : 9671,
								"value" : [ 49.259999999999998 ]
							}
, 							{
								"key" : 9672,
								"value" : [ 48.869999999999997 ]
							}
, 							{
								"key" : 9673,
								"value" : [ 48.43 ]
							}
, 							{
								"key" : 9674,
								"value" : [ 48.090000000000003 ]
							}
, 							{
								"key" : 9675,
								"value" : [ 48.0 ]
							}
, 							{
								"key" : 9676,
								"value" : [ 47.950000000000003 ]
							}
, 							{
								"key" : 9677,
								"value" : [ 47.950000000000003 ]
							}
, 							{
								"key" : 9678,
								"value" : [ 48.329999999999998 ]
							}
, 							{
								"key" : 9679,
								"value" : [ 49.420000000000002 ]
							}
, 							{
								"key" : 9680,
								"value" : [ 51.259999999999998 ]
							}
, 							{
								"key" : 9681,
								"value" : [ 54.140000000000001 ]
							}
, 							{
								"key" : 9682,
								"value" : [ 57.0 ]
							}
, 							{
								"key" : 9683,
								"value" : [ 59.200000000000003 ]
							}
, 							{
								"key" : 9684,
								"value" : [ 61.07 ]
							}
, 							{
								"key" : 9685,
								"value" : [ 62.689999999999998 ]
							}
, 							{
								"key" : 9686,
								"value" : [ 63.719999999999999 ]
							}
, 							{
								"key" : 9687,
								"value" : [ 64.170000000000002 ]
							}
, 							{
								"key" : 9688,
								"value" : [ 64.469999999999999 ]
							}
, 							{
								"key" : 9689,
								"value" : [ 64.170000000000002 ]
							}
, 							{
								"key" : 9690,
								"value" : [ 63.07 ]
							}
, 							{
								"key" : 9691,
								"value" : [ 61.700000000000003 ]
							}
, 							{
								"key" : 9692,
								"value" : [ 60.490000000000002 ]
							}
, 							{
								"key" : 9693,
								"value" : [ 59.200000000000003 ]
							}
, 							{
								"key" : 9694,
								"value" : [ 58.229999999999997 ]
							}
, 							{
								"key" : 9695,
								"value" : [ 57.789999999999999 ]
							}
, 							{
								"key" : 9696,
								"value" : [ 57.609999999999999 ]
							}
, 							{
								"key" : 9697,
								"value" : [ 57.289999999999999 ]
							}
, 							{
								"key" : 9698,
								"value" : [ 56.969999999999999 ]
							}
, 							{
								"key" : 9699,
								"value" : [ 56.729999999999997 ]
							}
, 							{
								"key" : 9700,
								"value" : [ 56.549999999999997 ]
							}
, 							{
								"key" : 9701,
								"value" : [ 56.280000000000001 ]
							}
, 							{
								"key" : 9702,
								"value" : [ 56.369999999999997 ]
							}
, 							{
								"key" : 9703,
								"value" : [ 57.18 ]
							}
, 							{
								"key" : 9704,
								"value" : [ 58.780000000000001 ]
							}
, 							{
								"key" : 9705,
								"value" : [ 60.710000000000001 ]
							}
, 							{
								"key" : 9706,
								"value" : [ 62.560000000000002 ]
							}
, 							{
								"key" : 9707,
								"value" : [ 64.489999999999995 ]
							}
, 							{
								"key" : 9708,
								"value" : [ 66.400000000000006 ]
							}
, 							{
								"key" : 9709,
								"value" : [ 68.069999999999993 ]
							}
, 							{
								"key" : 9710,
								"value" : [ 68.859999999999999 ]
							}
, 							{
								"key" : 9711,
								"value" : [ 68.989999999999995 ]
							}
, 							{
								"key" : 9712,
								"value" : [ 68.769999999999996 ]
							}
, 							{
								"key" : 9713,
								"value" : [ 67.980000000000004 ]
							}
, 							{
								"key" : 9714,
								"value" : [ 66.959999999999994 ]
							}
, 							{
								"key" : 9715,
								"value" : [ 66.060000000000002 ]
							}
, 							{
								"key" : 9716,
								"value" : [ 65.519999999999996 ]
							}
, 							{
								"key" : 9717,
								"value" : [ 65.170000000000002 ]
							}
, 							{
								"key" : 9718,
								"value" : [ 64.579999999999998 ]
							}
, 							{
								"key" : 9719,
								"value" : [ 63.859999999999999 ]
							}
, 							{
								"key" : 9720,
								"value" : [ 63.189999999999998 ]
							}
, 							{
								"key" : 9721,
								"value" : [ 62.670000000000002 ]
							}
, 							{
								"key" : 9722,
								"value" : [ 62.289999999999999 ]
							}
, 							{
								"key" : 9723,
								"value" : [ 62.109999999999999 ]
							}
, 							{
								"key" : 9724,
								"value" : [ 62.240000000000002 ]
							}
, 							{
								"key" : 9725,
								"value" : [ 62.530000000000001 ]
							}
, 							{
								"key" : 9726,
								"value" : [ 63.590000000000003 ]
							}
, 							{
								"key" : 9727,
								"value" : [ 65.280000000000001 ]
							}
, 							{
								"key" : 9728,
								"value" : [ 67.120000000000005 ]
							}
, 							{
								"key" : 9729,
								"value" : [ 69.129999999999995 ]
							}
, 							{
								"key" : 9730,
								"value" : [ 70.700000000000003 ]
							}
, 							{
								"key" : 9731,
								"value" : [ 70.840000000000003 ]
							}
, 							{
								"key" : 9732,
								"value" : [ 70.790000000000006 ]
							}
, 							{
								"key" : 9733,
								"value" : [ 71.189999999999998 ]
							}
, 							{
								"key" : 9734,
								"value" : [ 71.739999999999995 ]
							}
, 							{
								"key" : 9735,
								"value" : [ 72.030000000000001 ]
							}
, 							{
								"key" : 9736,
								"value" : [ 71.239999999999995 ]
							}
, 							{
								"key" : 9737,
								"value" : [ 70.109999999999999 ]
							}
, 							{
								"key" : 9738,
								"value" : [ 68.590000000000003 ]
							}
, 							{
								"key" : 9739,
								"value" : [ 66.510000000000005 ]
							}
, 							{
								"key" : 9740,
								"value" : [ 65.069999999999993 ]
							}
, 							{
								"key" : 9741,
								"value" : [ 64.329999999999998 ]
							}
, 							{
								"key" : 9742,
								"value" : [ 63.880000000000003 ]
							}
, 							{
								"key" : 9743,
								"value" : [ 63.609999999999999 ]
							}
, 							{
								"key" : 9744,
								"value" : [ 63.270000000000003 ]
							}
, 							{
								"key" : 9745,
								"value" : [ 62.869999999999997 ]
							}
, 							{
								"key" : 9746,
								"value" : [ 62.560000000000002 ]
							}
, 							{
								"key" : 9747,
								"value" : [ 62.170000000000002 ]
							}
, 							{
								"key" : 9748,
								"value" : [ 61.829999999999998 ]
							}
, 							{
								"key" : 9749,
								"value" : [ 61.520000000000003 ]
							}
, 							{
								"key" : 9750,
								"value" : [ 61.210000000000001 ]
							}
, 							{
								"key" : 9751,
								"value" : [ 60.960000000000001 ]
							}
, 							{
								"key" : 9752,
								"value" : [ 61.479999999999997 ]
							}
, 							{
								"key" : 9753,
								"value" : [ 63.030000000000001 ]
							}
, 							{
								"key" : 9754,
								"value" : [ 65.370000000000005 ]
							}
, 							{
								"key" : 9755,
								"value" : [ 67.980000000000004 ]
							}
, 							{
								"key" : 9756,
								"value" : [ 70.0 ]
							}
, 							{
								"key" : 9757,
								"value" : [ 71.670000000000002 ]
							}
, 							{
								"key" : 9758,
								"value" : [ 72.719999999999999 ]
							}
, 							{
								"key" : 9759,
								"value" : [ 73.090000000000003 ]
							}
, 							{
								"key" : 9760,
								"value" : [ 72.700000000000003 ]
							}
, 							{
								"key" : 9761,
								"value" : [ 71.170000000000002 ]
							}
, 							{
								"key" : 9762,
								"value" : [ 68.769999999999996 ]
							}
, 							{
								"key" : 9763,
								"value" : [ 65.859999999999999 ]
							}
, 							{
								"key" : 9764,
								"value" : [ 63.969999999999999 ]
							}
, 							{
								"key" : 9765,
								"value" : [ 63.0 ]
							}
, 							{
								"key" : 9766,
								"value" : [ 61.950000000000003 ]
							}
, 							{
								"key" : 9767,
								"value" : [ 60.82 ]
							}
, 							{
								"key" : 9768,
								"value" : [ 59.950000000000003 ]
							}
, 							{
								"key" : 9769,
								"value" : [ 59.219999999999999 ]
							}
, 							{
								"key" : 9770,
								"value" : [ 58.509999999999998 ]
							}
, 							{
								"key" : 9771,
								"value" : [ 57.899999999999999 ]
							}
, 							{
								"key" : 9772,
								"value" : [ 57.469999999999999 ]
							}
, 							{
								"key" : 9773,
								"value" : [ 57.090000000000003 ]
							}
, 							{
								"key" : 9774,
								"value" : [ 57.509999999999998 ]
							}
, 							{
								"key" : 9775,
								"value" : [ 59.020000000000003 ]
							}
, 							{
								"key" : 9776,
								"value" : [ 61.590000000000003 ]
							}
, 							{
								"key" : 9777,
								"value" : [ 64.989999999999995 ]
							}
, 							{
								"key" : 9778,
								"value" : [ 68.700000000000003 ]
							}
, 							{
								"key" : 9779,
								"value" : [ 70.969999999999999 ]
							}
, 							{
								"key" : 9780,
								"value" : [ 72.049999999999997 ]
							}
, 							{
								"key" : 9781,
								"value" : [ 72.319999999999993 ]
							}
, 							{
								"key" : 9782,
								"value" : [ 72.719999999999999 ]
							}
, 							{
								"key" : 9783,
								"value" : [ 73.219999999999999 ]
							}
, 							{
								"key" : 9784,
								"value" : [ 73.489999999999995 ]
							}
, 							{
								"key" : 9785,
								"value" : [ 72.969999999999999 ]
							}
, 							{
								"key" : 9786,
								"value" : [ 71.040000000000006 ]
							}
, 							{
								"key" : 9787,
								"value" : [ 67.819999999999993 ]
							}
, 							{
								"key" : 9788,
								"value" : [ 65.609999999999999 ]
							}
, 							{
								"key" : 9789,
								"value" : [ 64.400000000000006 ]
							}
, 							{
								"key" : 9790,
								"value" : [ 63.549999999999997 ]
							}
, 							{
								"key" : 9791,
								"value" : [ 62.740000000000002 ]
							}
, 							{
								"key" : 9792,
								"value" : [ 62.189999999999998 ]
							}
, 							{
								"key" : 9793,
								"value" : [ 61.840000000000003 ]
							}
, 							{
								"key" : 9794,
								"value" : [ 61.740000000000002 ]
							}
, 							{
								"key" : 9795,
								"value" : [ 61.469999999999999 ]
							}
, 							{
								"key" : 9796,
								"value" : [ 60.670000000000002 ]
							}
, 							{
								"key" : 9797,
								"value" : [ 59.380000000000003 ]
							}
, 							{
								"key" : 9798,
								"value" : [ 59.020000000000003 ]
							}
, 							{
								"key" : 9799,
								"value" : [ 59.25 ]
							}
, 							{
								"key" : 9800,
								"value" : [ 59.5 ]
							}
, 							{
								"key" : 9801,
								"value" : [ 59.670000000000002 ]
							}
, 							{
								"key" : 9802,
								"value" : [ 60.119999999999997 ]
							}
, 							{
								"key" : 9803,
								"value" : [ 61.359999999999999 ]
							}
, 							{
								"key" : 9804,
								"value" : [ 64.170000000000002 ]
							}
, 							{
								"key" : 9805,
								"value" : [ 67.349999999999994 ]
							}
, 							{
								"key" : 9806,
								"value" : [ 68.900000000000006 ]
							}
, 							{
								"key" : 9807,
								"value" : [ 69.689999999999998 ]
							}
, 							{
								"key" : 9808,
								"value" : [ 69.420000000000002 ]
							}
, 							{
								"key" : 9809,
								"value" : [ 67.569999999999993 ]
							}
, 							{
								"key" : 9810,
								"value" : [ 64.709999999999994 ]
							}
, 							{
								"key" : 9811,
								"value" : [ 61.43 ]
							}
, 							{
								"key" : 9812,
								"value" : [ 59.159999999999997 ]
							}
, 							{
								"key" : 9813,
								"value" : [ 58.729999999999997 ]
							}
, 							{
								"key" : 9814,
								"value" : [ 58.869999999999997 ]
							}
, 							{
								"key" : 9815,
								"value" : [ 59.090000000000003 ]
							}
, 							{
								"key" : 9816,
								"value" : [ 59.200000000000003 ]
							}
, 							{
								"key" : 9817,
								"value" : [ 59.130000000000003 ]
							}
, 							{
								"key" : 9818,
								"value" : [ 59.090000000000003 ]
							}
, 							{
								"key" : 9819,
								"value" : [ 58.619999999999997 ]
							}
, 							{
								"key" : 9820,
								"value" : [ 58.149999999999999 ]
							}
, 							{
								"key" : 9821,
								"value" : [ 58.119999999999997 ]
							}
, 							{
								"key" : 9822,
								"value" : [ 59.829999999999998 ]
							}
, 							{
								"key" : 9823,
								"value" : [ 62.469999999999999 ]
							}
, 							{
								"key" : 9824,
								"value" : [ 63.640000000000001 ]
							}
, 							{
								"key" : 9825,
								"value" : [ 63.009999999999998 ]
							}
, 							{
								"key" : 9826,
								"value" : [ 61.950000000000003 ]
							}
, 							{
								"key" : 9827,
								"value" : [ 60.439999999999998 ]
							}
, 							{
								"key" : 9828,
								"value" : [ 59.990000000000002 ]
							}
, 							{
								"key" : 9829,
								"value" : [ 59.850000000000001 ]
							}
, 							{
								"key" : 9830,
								"value" : [ 59.670000000000002 ]
							}
, 							{
								"key" : 9831,
								"value" : [ 59.810000000000002 ]
							}
, 							{
								"key" : 9832,
								"value" : [ 59.859999999999999 ]
							}
, 							{
								"key" : 9833,
								"value" : [ 59.770000000000003 ]
							}
, 							{
								"key" : 9834,
								"value" : [ 59.340000000000003 ]
							}
, 							{
								"key" : 9835,
								"value" : [ 58.640000000000001 ]
							}
, 							{
								"key" : 9836,
								"value" : [ 57.880000000000003 ]
							}
, 							{
								"key" : 9837,
								"value" : [ 57.159999999999997 ]
							}
, 							{
								"key" : 9838,
								"value" : [ 56.189999999999998 ]
							}
, 							{
								"key" : 9839,
								"value" : [ 54.969999999999999 ]
							}
, 							{
								"key" : 9840,
								"value" : [ 54.119999999999997 ]
							}
, 							{
								"key" : 9841,
								"value" : [ 53.689999999999998 ]
							}
, 							{
								"key" : 9842,
								"value" : [ 53.979999999999997 ]
							}
, 							{
								"key" : 9843,
								"value" : [ 54.030000000000001 ]
							}
, 							{
								"key" : 9844,
								"value" : [ 53.710000000000001 ]
							}
, 							{
								"key" : 9845,
								"value" : [ 53.130000000000003 ]
							}
, 							{
								"key" : 9846,
								"value" : [ 53.460000000000001 ]
							}
, 							{
								"key" : 9847,
								"value" : [ 54.479999999999997 ]
							}
, 							{
								"key" : 9848,
								"value" : [ 56.640000000000001 ]
							}
, 							{
								"key" : 9849,
								"value" : [ 59.899999999999999 ]
							}
, 							{
								"key" : 9850,
								"value" : [ 62.109999999999999 ]
							}
, 							{
								"key" : 9851,
								"value" : [ 63.210000000000001 ]
							}
, 							{
								"key" : 9852,
								"value" : [ 64.0 ]
							}
, 							{
								"key" : 9853,
								"value" : [ 64.400000000000006 ]
							}
, 							{
								"key" : 9854,
								"value" : [ 64.620000000000005 ]
							}
, 							{
								"key" : 9855,
								"value" : [ 64.799999999999997 ]
							}
, 							{
								"key" : 9856,
								"value" : [ 64.810000000000002 ]
							}
, 							{
								"key" : 9857,
								"value" : [ 64.420000000000002 ]
							}
, 							{
								"key" : 9858,
								"value" : [ 63.390000000000001 ]
							}
, 							{
								"key" : 9859,
								"value" : [ 61.659999999999997 ]
							}
, 							{
								"key" : 9860,
								"value" : [ 59.810000000000002 ]
							}
, 							{
								"key" : 9861,
								"value" : [ 58.409999999999997 ]
							}
, 							{
								"key" : 9862,
								"value" : [ 57.039999999999999 ]
							}
, 							{
								"key" : 9863,
								"value" : [ 55.530000000000001 ]
							}
, 							{
								"key" : 9864,
								"value" : [ 53.619999999999997 ]
							}
, 							{
								"key" : 9865,
								"value" : [ 51.659999999999997 ]
							}
, 							{
								"key" : 9866,
								"value" : [ 50.670000000000002 ]
							}
, 							{
								"key" : 9867,
								"value" : [ 50.520000000000003 ]
							}
, 							{
								"key" : 9868,
								"value" : [ 50.289999999999999 ]
							}
, 							{
								"key" : 9869,
								"value" : [ 49.68 ]
							}
, 							{
								"key" : 9870,
								"value" : [ 50.469999999999999 ]
							}
, 							{
								"key" : 9871,
								"value" : [ 51.600000000000001 ]
							}
, 							{
								"key" : 9872,
								"value" : [ 53.289999999999999 ]
							}
, 							{
								"key" : 9873,
								"value" : [ 54.409999999999997 ]
							}
, 							{
								"key" : 9874,
								"value" : [ 55.18 ]
							}
, 							{
								"key" : 9875,
								"value" : [ 55.780000000000001 ]
							}
, 							{
								"key" : 9876,
								"value" : [ 56.07 ]
							}
, 							{
								"key" : 9877,
								"value" : [ 55.289999999999999 ]
							}
, 							{
								"key" : 9878,
								"value" : [ 54.640000000000001 ]
							}
, 							{
								"key" : 9879,
								"value" : [ 54.450000000000003 ]
							}
, 							{
								"key" : 9880,
								"value" : [ 53.960000000000001 ]
							}
, 							{
								"key" : 9881,
								"value" : [ 52.75 ]
							}
, 							{
								"key" : 9882,
								"value" : [ 50.670000000000002 ]
							}
, 							{
								"key" : 9883,
								"value" : [ 49.009999999999998 ]
							}
, 							{
								"key" : 9884,
								"value" : [ 48.43 ]
							}
, 							{
								"key" : 9885,
								"value" : [ 48.740000000000002 ]
							}
, 							{
								"key" : 9886,
								"value" : [ 49.329999999999998 ]
							}
, 							{
								"key" : 9887,
								"value" : [ 49.960000000000001 ]
							}
, 							{
								"key" : 9888,
								"value" : [ 50.289999999999999 ]
							}
, 							{
								"key" : 9889,
								"value" : [ 50.539999999999999 ]
							}
, 							{
								"key" : 9890,
								"value" : [ 50.810000000000002 ]
							}
, 							{
								"key" : 9891,
								"value" : [ 51.170000000000002 ]
							}
, 							{
								"key" : 9892,
								"value" : [ 51.420000000000002 ]
							}
, 							{
								"key" : 9893,
								"value" : [ 51.640000000000001 ]
							}
, 							{
								"key" : 9894,
								"value" : [ 51.890000000000001 ]
							}
, 							{
								"key" : 9895,
								"value" : [ 52.020000000000003 ]
							}
, 							{
								"key" : 9896,
								"value" : [ 52.020000000000003 ]
							}
, 							{
								"key" : 9897,
								"value" : [ 52.840000000000003 ]
							}
, 							{
								"key" : 9898,
								"value" : [ 53.869999999999997 ]
							}
, 							{
								"key" : 9899,
								"value" : [ 54.18 ]
							}
, 							{
								"key" : 9900,
								"value" : [ 53.829999999999998 ]
							}
, 							{
								"key" : 9901,
								"value" : [ 53.469999999999999 ]
							}
, 							{
								"key" : 9902,
								"value" : [ 53.469999999999999 ]
							}
, 							{
								"key" : 9903,
								"value" : [ 53.490000000000002 ]
							}
, 							{
								"key" : 9904,
								"value" : [ 53.82 ]
							}
, 							{
								"key" : 9905,
								"value" : [ 54.049999999999997 ]
							}
, 							{
								"key" : 9906,
								"value" : [ 53.869999999999997 ]
							}
, 							{
								"key" : 9907,
								"value" : [ 53.369999999999997 ]
							}
, 							{
								"key" : 9908,
								"value" : [ 52.520000000000003 ]
							}
, 							{
								"key" : 9909,
								"value" : [ 52.0 ]
							}
, 							{
								"key" : 9910,
								"value" : [ 51.640000000000001 ]
							}
, 							{
								"key" : 9911,
								"value" : [ 51.960000000000001 ]
							}
, 							{
								"key" : 9912,
								"value" : [ 51.780000000000001 ]
							}
, 							{
								"key" : 9913,
								"value" : [ 51.490000000000002 ]
							}
, 							{
								"key" : 9914,
								"value" : [ 51.219999999999999 ]
							}
, 							{
								"key" : 9915,
								"value" : [ 51.280000000000001 ]
							}
, 							{
								"key" : 9916,
								"value" : [ 51.670000000000002 ]
							}
, 							{
								"key" : 9917,
								"value" : [ 52.469999999999999 ]
							}
, 							{
								"key" : 9918,
								"value" : [ 53.670000000000002 ]
							}
, 							{
								"key" : 9919,
								"value" : [ 54.789999999999999 ]
							}
, 							{
								"key" : 9920,
								"value" : [ 57.219999999999999 ]
							}
, 							{
								"key" : 9921,
								"value" : [ 60.439999999999998 ]
							}
, 							{
								"key" : 9922,
								"value" : [ 63.299999999999997 ]
							}
, 							{
								"key" : 9923,
								"value" : [ 65.519999999999996 ]
							}
, 							{
								"key" : 9924,
								"value" : [ 66.849999999999994 ]
							}
, 							{
								"key" : 9925,
								"value" : [ 68.5 ]
							}
, 							{
								"key" : 9926,
								"value" : [ 67.890000000000001 ]
							}
, 							{
								"key" : 9927,
								"value" : [ 68.090000000000003 ]
							}
, 							{
								"key" : 9928,
								"value" : [ 66.560000000000002 ]
							}
, 							{
								"key" : 9929,
								"value" : [ 65.709999999999994 ]
							}
, 							{
								"key" : 9930,
								"value" : [ 66.180000000000007 ]
							}
, 							{
								"key" : 9931,
								"value" : [ 65.049999999999997 ]
							}
, 							{
								"key" : 9932,
								"value" : [ 64.329999999999998 ]
							}
, 							{
								"key" : 9933,
								"value" : [ 63.880000000000003 ]
							}
, 							{
								"key" : 9934,
								"value" : [ 63.18 ]
							}
, 							{
								"key" : 9935,
								"value" : [ 62.369999999999997 ]
							}
, 							{
								"key" : 9936,
								"value" : [ 62.020000000000003 ]
							}
, 							{
								"key" : 9937,
								"value" : [ 61.840000000000003 ]
							}
, 							{
								"key" : 9938,
								"value" : [ 61.590000000000003 ]
							}
, 							{
								"key" : 9939,
								"value" : [ 61.340000000000003 ]
							}
, 							{
								"key" : 9940,
								"value" : [ 60.890000000000001 ]
							}
, 							{
								"key" : 9941,
								"value" : [ 60.640000000000001 ]
							}
, 							{
								"key" : 9942,
								"value" : [ 60.890000000000001 ]
							}
, 							{
								"key" : 9943,
								"value" : [ 61.719999999999999 ]
							}
, 							{
								"key" : 9944,
								"value" : [ 63.210000000000001 ]
							}
, 							{
								"key" : 9945,
								"value" : [ 65.030000000000001 ]
							}
, 							{
								"key" : 9946,
								"value" : [ 66.510000000000005 ]
							}
, 							{
								"key" : 9947,
								"value" : [ 67.640000000000001 ]
							}
, 							{
								"key" : 9948,
								"value" : [ 68.319999999999993 ]
							}
, 							{
								"key" : 9949,
								"value" : [ 68.609999999999999 ]
							}
, 							{
								"key" : 9950,
								"value" : [ 68.670000000000002 ]
							}
, 							{
								"key" : 9951,
								"value" : [ 68.469999999999999 ]
							}
, 							{
								"key" : 9952,
								"value" : [ 68.200000000000003 ]
							}
, 							{
								"key" : 9953,
								"value" : [ 67.730000000000004 ]
							}
, 							{
								"key" : 9954,
								"value" : [ 66.469999999999999 ]
							}
, 							{
								"key" : 9955,
								"value" : [ 62.549999999999997 ]
							}
, 							{
								"key" : 9956,
								"value" : [ 58.640000000000001 ]
							}
, 							{
								"key" : 9957,
								"value" : [ 57.219999999999999 ]
							}
, 							{
								"key" : 9958,
								"value" : [ 56.710000000000001 ]
							}
, 							{
								"key" : 9959,
								"value" : [ 56.119999999999997 ]
							}
, 							{
								"key" : 9960,
								"value" : [ 55.270000000000003 ]
							}
, 							{
								"key" : 9961,
								"value" : [ 54.5 ]
							}
, 							{
								"key" : 9962,
								"value" : [ 54.460000000000001 ]
							}
, 							{
								"key" : 9963,
								"value" : [ 54.640000000000001 ]
							}
, 							{
								"key" : 9964,
								"value" : [ 54.270000000000003 ]
							}
, 							{
								"key" : 9965,
								"value" : [ 54.520000000000003 ]
							}
, 							{
								"key" : 9966,
								"value" : [ 55.219999999999999 ]
							}
, 							{
								"key" : 9967,
								"value" : [ 55.890000000000001 ]
							}
, 							{
								"key" : 9968,
								"value" : [ 57.649999999999999 ]
							}
, 							{
								"key" : 9969,
								"value" : [ 59.109999999999999 ]
							}
, 							{
								"key" : 9970,
								"value" : [ 59.520000000000003 ]
							}
, 							{
								"key" : 9971,
								"value" : [ 59.039999999999999 ]
							}
, 							{
								"key" : 9972,
								"value" : [ 58.060000000000002 ]
							}
, 							{
								"key" : 9973,
								"value" : [ 56.840000000000003 ]
							}
, 							{
								"key" : 9974,
								"value" : [ 56.390000000000001 ]
							}
, 							{
								"key" : 9975,
								"value" : [ 55.289999999999999 ]
							}
, 							{
								"key" : 9976,
								"value" : [ 54.009999999999998 ]
							}
, 							{
								"key" : 9977,
								"value" : [ 52.829999999999998 ]
							}
, 							{
								"key" : 9978,
								"value" : [ 51.840000000000003 ]
							}
, 							{
								"key" : 9979,
								"value" : [ 51.189999999999998 ]
							}
, 							{
								"key" : 9980,
								"value" : [ 50.740000000000002 ]
							}
, 							{
								"key" : 9981,
								"value" : [ 50.649999999999999 ]
							}
, 							{
								"key" : 9982,
								"value" : [ 51.039999999999999 ]
							}
, 							{
								"key" : 9983,
								"value" : [ 51.310000000000002 ]
							}
, 							{
								"key" : 9984,
								"value" : [ 51.479999999999997 ]
							}
, 							{
								"key" : 9985,
								"value" : [ 51.369999999999997 ]
							}
, 							{
								"key" : 9986,
								"value" : [ 51.170000000000002 ]
							}
, 							{
								"key" : 9987,
								"value" : [ 51.729999999999997 ]
							}
, 							{
								"key" : 9988,
								"value" : [ 51.75 ]
							}
, 							{
								"key" : 9989,
								"value" : [ 51.280000000000001 ]
							}
, 							{
								"key" : 9990,
								"value" : [ 51.170000000000002 ]
							}
, 							{
								"key" : 9991,
								"value" : [ 51.600000000000001 ]
							}
, 							{
								"key" : 9992,
								"value" : [ 52.380000000000003 ]
							}
, 							{
								"key" : 9993,
								"value" : [ 53.240000000000002 ]
							}
, 							{
								"key" : 9994,
								"value" : [ 54.030000000000001 ]
							}
, 							{
								"key" : 9995,
								"value" : [ 54.770000000000003 ]
							}
, 							{
								"key" : 9996,
								"value" : [ 55.579999999999998 ]
							}
, 							{
								"key" : 9997,
								"value" : [ 56.350000000000001 ]
							}
, 							{
								"key" : 9998,
								"value" : [ 56.890000000000001 ]
							}
, 							{
								"key" : 9999,
								"value" : [ 57.07 ]
							}
, 							{
								"key" : 10000,
								"value" : [ 56.969999999999999 ]
							}
, 							{
								"key" : 10001,
								"value" : [ 56.57 ]
							}
, 							{
								"key" : 10002,
								"value" : [ 55.490000000000002 ]
							}
, 							{
								"key" : 10003,
								"value" : [ 53.219999999999999 ]
							}
, 							{
								"key" : 10004,
								"value" : [ 51.030000000000001 ]
							}
, 							{
								"key" : 10005,
								"value" : [ 50.07 ]
							}
, 							{
								"key" : 10006,
								"value" : [ 49.75 ]
							}
, 							{
								"key" : 10007,
								"value" : [ 49.619999999999997 ]
							}
, 							{
								"key" : 10008,
								"value" : [ 49.530000000000001 ]
							}
, 							{
								"key" : 10009,
								"value" : [ 49.770000000000003 ]
							}
, 							{
								"key" : 10010,
								"value" : [ 49.890000000000001 ]
							}
, 							{
								"key" : 10011,
								"value" : [ 49.329999999999998 ]
							}
, 							{
								"key" : 10012,
								"value" : [ 48.670000000000002 ]
							}
, 							{
								"key" : 10013,
								"value" : [ 48.490000000000002 ]
							}
, 							{
								"key" : 10014,
								"value" : [ 49.479999999999997 ]
							}
, 							{
								"key" : 10015,
								"value" : [ 50.450000000000003 ]
							}
, 							{
								"key" : 10016,
								"value" : [ 51.619999999999997 ]
							}
, 							{
								"key" : 10017,
								"value" : [ 52.560000000000002 ]
							}
, 							{
								"key" : 10018,
								"value" : [ 53.170000000000002 ]
							}
, 							{
								"key" : 10019,
								"value" : [ 53.560000000000002 ]
							}
, 							{
								"key" : 10020,
								"value" : [ 53.729999999999997 ]
							}
, 							{
								"key" : 10021,
								"value" : [ 53.729999999999997 ]
							}
, 							{
								"key" : 10022,
								"value" : [ 53.640000000000001 ]
							}
, 							{
								"key" : 10023,
								"value" : [ 53.439999999999998 ]
							}
, 							{
								"key" : 10024,
								"value" : [ 53.100000000000001 ]
							}
, 							{
								"key" : 10025,
								"value" : [ 52.659999999999997 ]
							}
, 							{
								"key" : 10026,
								"value" : [ 51.840000000000003 ]
							}
, 							{
								"key" : 10027,
								"value" : [ 50.25 ]
							}
, 							{
								"key" : 10028,
								"value" : [ 48.560000000000002 ]
							}
, 							{
								"key" : 10029,
								"value" : [ 48.07 ]
							}
, 							{
								"key" : 10030,
								"value" : [ 48.090000000000003 ]
							}
, 							{
								"key" : 10031,
								"value" : [ 48.159999999999997 ]
							}
, 							{
								"key" : 10032,
								"value" : [ 48.25 ]
							}
, 							{
								"key" : 10033,
								"value" : [ 48.43 ]
							}
, 							{
								"key" : 10034,
								"value" : [ 48.469999999999999 ]
							}
, 							{
								"key" : 10035,
								"value" : [ 48.829999999999998 ]
							}
, 							{
								"key" : 10036,
								"value" : [ 49.049999999999997 ]
							}
, 							{
								"key" : 10037,
								"value" : [ 49.030000000000001 ]
							}
, 							{
								"key" : 10038,
								"value" : [ 49.950000000000003 ]
							}
, 							{
								"key" : 10039,
								"value" : [ 50.990000000000002 ]
							}
, 							{
								"key" : 10040,
								"value" : [ 52.390000000000001 ]
							}
, 							{
								"key" : 10041,
								"value" : [ 53.850000000000001 ]
							}
, 							{
								"key" : 10042,
								"value" : [ 54.859999999999999 ]
							}
, 							{
								"key" : 10043,
								"value" : [ 55.469999999999999 ]
							}
, 							{
								"key" : 10044,
								"value" : [ 55.450000000000003 ]
							}
, 							{
								"key" : 10045,
								"value" : [ 55.399999999999999 ]
							}
, 							{
								"key" : 10046,
								"value" : [ 54.909999999999997 ]
							}
, 							{
								"key" : 10047,
								"value" : [ 54.270000000000003 ]
							}
, 							{
								"key" : 10048,
								"value" : [ 53.530000000000001 ]
							}
, 							{
								"key" : 10049,
								"value" : [ 52.840000000000003 ]
							}
, 							{
								"key" : 10050,
								"value" : [ 52.200000000000003 ]
							}
, 							{
								"key" : 10051,
								"value" : [ 51.960000000000001 ]
							}
, 							{
								"key" : 10052,
								"value" : [ 51.939999999999998 ]
							}
, 							{
								"key" : 10053,
								"value" : [ 52.5 ]
							}
, 							{
								"key" : 10054,
								"value" : [ 53.009999999999998 ]
							}
, 							{
								"key" : 10055,
								"value" : [ 53.289999999999999 ]
							}
, 							{
								"key" : 10056,
								"value" : [ 53.439999999999998 ]
							}
, 							{
								"key" : 10057,
								"value" : [ 53.109999999999999 ]
							}
, 							{
								"key" : 10058,
								"value" : [ 52.659999999999997 ]
							}
, 							{
								"key" : 10059,
								"value" : [ 52.75 ]
							}
, 							{
								"key" : 10060,
								"value" : [ 52.719999999999999 ]
							}
, 							{
								"key" : 10061,
								"value" : [ 52.390000000000001 ]
							}
, 							{
								"key" : 10062,
								"value" : [ 51.939999999999998 ]
							}
, 							{
								"key" : 10063,
								"value" : [ 52.770000000000003 ]
							}
, 							{
								"key" : 10064,
								"value" : [ 53.469999999999999 ]
							}
, 							{
								"key" : 10065,
								"value" : [ 54.640000000000001 ]
							}
, 							{
								"key" : 10066,
								"value" : [ 56.979999999999997 ]
							}
, 							{
								"key" : 10067,
								"value" : [ 59.950000000000003 ]
							}
, 							{
								"key" : 10068,
								"value" : [ 62.920000000000002 ]
							}
, 							{
								"key" : 10069,
								"value" : [ 64.870000000000005 ]
							}
, 							{
								"key" : 10070,
								"value" : [ 65.5 ]
							}
, 							{
								"key" : 10071,
								"value" : [ 64.469999999999999 ]
							}
, 							{
								"key" : 10072,
								"value" : [ 63.460000000000001 ]
							}
, 							{
								"key" : 10073,
								"value" : [ 62.619999999999997 ]
							}
, 							{
								"key" : 10074,
								"value" : [ 62.079999999999998 ]
							}
, 							{
								"key" : 10075,
								"value" : [ 62.350000000000001 ]
							}
, 							{
								"key" : 10076,
								"value" : [ 62.920000000000002 ]
							}
, 							{
								"key" : 10077,
								"value" : [ 62.909999999999997 ]
							}
, 							{
								"key" : 10078,
								"value" : [ 62.329999999999998 ]
							}
, 							{
								"key" : 10079,
								"value" : [ 61.75 ]
							}
, 							{
								"key" : 10080,
								"value" : [ 61.359999999999999 ]
							}
, 							{
								"key" : 10081,
								"value" : [ 61.5 ]
							}
, 							{
								"key" : 10082,
								"value" : [ 61.409999999999997 ]
							}
, 							{
								"key" : 10083,
								"value" : [ 60.979999999999997 ]
							}
, 							{
								"key" : 10084,
								"value" : [ 60.759999999999998 ]
							}
, 							{
								"key" : 10085,
								"value" : [ 60.689999999999998 ]
							}
, 							{
								"key" : 10086,
								"value" : [ 61.07 ]
							}
, 							{
								"key" : 10087,
								"value" : [ 62.039999999999999 ]
							}
, 							{
								"key" : 10088,
								"value" : [ 62.740000000000002 ]
							}
, 							{
								"key" : 10089,
								"value" : [ 62.640000000000001 ]
							}
, 							{
								"key" : 10090,
								"value" : [ 63.030000000000001 ]
							}
, 							{
								"key" : 10091,
								"value" : [ 63.140000000000001 ]
							}
, 							{
								"key" : 10092,
								"value" : [ 63.189999999999998 ]
							}
, 							{
								"key" : 10093,
								"value" : [ 63.460000000000001 ]
							}
, 							{
								"key" : 10094,
								"value" : [ 62.729999999999997 ]
							}
, 							{
								"key" : 10095,
								"value" : [ 61.43 ]
							}
, 							{
								"key" : 10096,
								"value" : [ 60.689999999999998 ]
							}
, 							{
								"key" : 10097,
								"value" : [ 60.939999999999998 ]
							}
, 							{
								"key" : 10098,
								"value" : [ 62.640000000000001 ]
							}
, 							{
								"key" : 10099,
								"value" : [ 63.479999999999997 ]
							}
, 							{
								"key" : 10100,
								"value" : [ 63.969999999999999 ]
							}
, 							{
								"key" : 10101,
								"value" : [ 63.369999999999997 ]
							}
, 							{
								"key" : 10102,
								"value" : [ 61.700000000000003 ]
							}
, 							{
								"key" : 10103,
								"value" : [ 60.240000000000002 ]
							}
, 							{
								"key" : 10104,
								"value" : [ 58.57 ]
							}
, 							{
								"key" : 10105,
								"value" : [ 56.189999999999998 ]
							}
, 							{
								"key" : 10106,
								"value" : [ 54.969999999999999 ]
							}
, 							{
								"key" : 10107,
								"value" : [ 53.939999999999998 ]
							}
, 							{
								"key" : 10108,
								"value" : [ 51.530000000000001 ]
							}
, 							{
								"key" : 10109,
								"value" : [ 48.939999999999998 ]
							}
, 							{
								"key" : 10110,
								"value" : [ 48.340000000000003 ]
							}
, 							{
								"key" : 10111,
								"value" : [ 48.990000000000002 ]
							}
, 							{
								"key" : 10112,
								"value" : [ 50.0 ]
							}
, 							{
								"key" : 10113,
								"value" : [ 51.219999999999999 ]
							}
, 							{
								"key" : 10114,
								"value" : [ 51.82 ]
							}
, 							{
								"key" : 10115,
								"value" : [ 52.740000000000002 ]
							}
, 							{
								"key" : 10116,
								"value" : [ 53.729999999999997 ]
							}
, 							{
								"key" : 10117,
								"value" : [ 54.07 ]
							}
, 							{
								"key" : 10118,
								"value" : [ 54.32 ]
							}
, 							{
								"key" : 10119,
								"value" : [ 54.630000000000003 ]
							}
, 							{
								"key" : 10120,
								"value" : [ 54.969999999999999 ]
							}
, 							{
								"key" : 10121,
								"value" : [ 55.149999999999999 ]
							}
, 							{
								"key" : 10122,
								"value" : [ 55.079999999999998 ]
							}
, 							{
								"key" : 10123,
								"value" : [ 54.299999999999997 ]
							}
, 							{
								"key" : 10124,
								"value" : [ 52.590000000000003 ]
							}
, 							{
								"key" : 10125,
								"value" : [ 52.469999999999999 ]
							}
, 							{
								"key" : 10126,
								"value" : [ 52.659999999999997 ]
							}
, 							{
								"key" : 10127,
								"value" : [ 52.450000000000003 ]
							}
, 							{
								"key" : 10128,
								"value" : [ 52.030000000000001 ]
							}
, 							{
								"key" : 10129,
								"value" : [ 51.329999999999998 ]
							}
, 							{
								"key" : 10130,
								"value" : [ 50.719999999999999 ]
							}
, 							{
								"key" : 10131,
								"value" : [ 50.270000000000003 ]
							}
, 							{
								"key" : 10132,
								"value" : [ 50.130000000000003 ]
							}
, 							{
								"key" : 10133,
								"value" : [ 50.07 ]
							}
, 							{
								"key" : 10134,
								"value" : [ 51.93 ]
							}
, 							{
								"key" : 10135,
								"value" : [ 53.869999999999997 ]
							}
, 							{
								"key" : 10136,
								"value" : [ 56.07 ]
							}
, 							{
								"key" : 10137,
								"value" : [ 59.229999999999997 ]
							}
, 							{
								"key" : 10138,
								"value" : [ 60.729999999999997 ]
							}
, 							{
								"key" : 10139,
								"value" : [ 61.859999999999999 ]
							}
, 							{
								"key" : 10140,
								"value" : [ 63.100000000000001 ]
							}
, 							{
								"key" : 10141,
								"value" : [ 63.82 ]
							}
, 							{
								"key" : 10142,
								"value" : [ 64.060000000000002 ]
							}
, 							{
								"key" : 10143,
								"value" : [ 64.290000000000006 ]
							}
, 							{
								"key" : 10144,
								"value" : [ 64.439999999999998 ]
							}
, 							{
								"key" : 10145,
								"value" : [ 63.969999999999999 ]
							}
, 							{
								"key" : 10146,
								"value" : [ 63.189999999999998 ]
							}
, 							{
								"key" : 10147,
								"value" : [ 61.43 ]
							}
, 							{
								"key" : 10148,
								"value" : [ 59.560000000000002 ]
							}
, 							{
								"key" : 10149,
								"value" : [ 58.869999999999997 ]
							}
, 							{
								"key" : 10150,
								"value" : [ 58.210000000000001 ]
							}
, 							{
								"key" : 10151,
								"value" : [ 57.380000000000003 ]
							}
, 							{
								"key" : 10152,
								"value" : [ 56.789999999999999 ]
							}
, 							{
								"key" : 10153,
								"value" : [ 56.43 ]
							}
, 							{
								"key" : 10154,
								"value" : [ 56.100000000000001 ]
							}
, 							{
								"key" : 10155,
								"value" : [ 55.810000000000002 ]
							}
, 							{
								"key" : 10156,
								"value" : [ 55.810000000000002 ]
							}
, 							{
								"key" : 10157,
								"value" : [ 55.869999999999997 ]
							}
, 							{
								"key" : 10158,
								"value" : [ 56.520000000000003 ]
							}
, 							{
								"key" : 10159,
								"value" : [ 57.829999999999998 ]
							}
, 							{
								"key" : 10160,
								"value" : [ 60.130000000000003 ]
							}
, 							{
								"key" : 10161,
								"value" : [ 62.439999999999998 ]
							}
, 							{
								"key" : 10162,
								"value" : [ 64.260000000000005 ]
							}
, 							{
								"key" : 10163,
								"value" : [ 65.590000000000003 ]
							}
, 							{
								"key" : 10164,
								"value" : [ 66.689999999999998 ]
							}
, 							{
								"key" : 10165,
								"value" : [ 67.870000000000005 ]
							}
, 							{
								"key" : 10166,
								"value" : [ 68.829999999999998 ]
							}
, 							{
								"key" : 10167,
								"value" : [ 69.099999999999994 ]
							}
, 							{
								"key" : 10168,
								"value" : [ 68.939999999999998 ]
							}
, 							{
								"key" : 10169,
								"value" : [ 68.310000000000002 ]
							}
, 							{
								"key" : 10170,
								"value" : [ 67.079999999999998 ]
							}
, 							{
								"key" : 10171,
								"value" : [ 65.640000000000001 ]
							}
, 							{
								"key" : 10172,
								"value" : [ 64.170000000000002 ]
							}
, 							{
								"key" : 10173,
								"value" : [ 63.270000000000003 ]
							}
, 							{
								"key" : 10174,
								"value" : [ 62.560000000000002 ]
							}
, 							{
								"key" : 10175,
								"value" : [ 61.990000000000002 ]
							}
, 							{
								"key" : 10176,
								"value" : [ 61.380000000000003 ]
							}
, 							{
								"key" : 10177,
								"value" : [ 60.759999999999998 ]
							}
, 							{
								"key" : 10178,
								"value" : [ 60.130000000000003 ]
							}
, 							{
								"key" : 10179,
								"value" : [ 59.759999999999998 ]
							}
, 							{
								"key" : 10180,
								"value" : [ 59.770000000000003 ]
							}
, 							{
								"key" : 10181,
								"value" : [ 60.219999999999999 ]
							}
, 							{
								"key" : 10182,
								"value" : [ 60.979999999999997 ]
							}
, 							{
								"key" : 10183,
								"value" : [ 61.990000000000002 ]
							}
, 							{
								"key" : 10184,
								"value" : [ 63.390000000000001 ]
							}
, 							{
								"key" : 10185,
								"value" : [ 65.299999999999997 ]
							}
, 							{
								"key" : 10186,
								"value" : [ 67.329999999999998 ]
							}
, 							{
								"key" : 10187,
								"value" : [ 68.810000000000002 ]
							}
, 							{
								"key" : 10188,
								"value" : [ 69.890000000000001 ]
							}
, 							{
								"key" : 10189,
								"value" : [ 70.739999999999995 ]
							}
, 							{
								"key" : 10190,
								"value" : [ 71.239999999999995 ]
							}
, 							{
								"key" : 10191,
								"value" : [ 71.239999999999995 ]
							}
, 							{
								"key" : 10192,
								"value" : [ 70.920000000000002 ]
							}
, 							{
								"key" : 10193,
								"value" : [ 70.409999999999997 ]
							}
, 							{
								"key" : 10194,
								"value" : [ 69.659999999999997 ]
							}
, 							{
								"key" : 10195,
								"value" : [ 68.670000000000002 ]
							}
, 							{
								"key" : 10196,
								"value" : [ 67.75 ]
							}
, 							{
								"key" : 10197,
								"value" : [ 67.150000000000006 ]
							}
, 							{
								"key" : 10198,
								"value" : [ 66.609999999999999 ]
							}
, 							{
								"key" : 10199,
								"value" : [ 66.019999999999996 ]
							}
, 							{
								"key" : 10200,
								"value" : [ 65.430000000000007 ]
							}
, 							{
								"key" : 10201,
								"value" : [ 64.980000000000004 ]
							}
, 							{
								"key" : 10202,
								"value" : [ 64.150000000000006 ]
							}
, 							{
								"key" : 10203,
								"value" : [ 63.640000000000001 ]
							}
, 							{
								"key" : 10204,
								"value" : [ 63.18 ]
							}
, 							{
								"key" : 10205,
								"value" : [ 62.909999999999997 ]
							}
, 							{
								"key" : 10206,
								"value" : [ 63.630000000000003 ]
							}
, 							{
								"key" : 10207,
								"value" : [ 64.829999999999998 ]
							}
, 							{
								"key" : 10208,
								"value" : [ 66.019999999999996 ]
							}
, 							{
								"key" : 10209,
								"value" : [ 67.530000000000001 ]
							}
, 							{
								"key" : 10210,
								"value" : [ 69.120000000000005 ]
							}
, 							{
								"key" : 10211,
								"value" : [ 70.629999999999995 ]
							}
, 							{
								"key" : 10212,
								"value" : [ 71.689999999999998 ]
							}
, 							{
								"key" : 10213,
								"value" : [ 72.120000000000005 ]
							}
, 							{
								"key" : 10214,
								"value" : [ 72.280000000000001 ]
							}
, 							{
								"key" : 10215,
								"value" : [ 72.25 ]
							}
, 							{
								"key" : 10216,
								"value" : [ 71.780000000000001 ]
							}
, 							{
								"key" : 10217,
								"value" : [ 71.040000000000006 ]
							}
, 							{
								"key" : 10218,
								"value" : [ 70.030000000000001 ]
							}
, 							{
								"key" : 10219,
								"value" : [ 68.859999999999999 ]
							}
, 							{
								"key" : 10220,
								"value" : [ 68.019999999999996 ]
							}
, 							{
								"key" : 10221,
								"value" : [ 67.420000000000002 ]
							}
, 							{
								"key" : 10222,
								"value" : [ 67.060000000000002 ]
							}
, 							{
								"key" : 10223,
								"value" : [ 66.0 ]
							}
, 							{
								"key" : 10224,
								"value" : [ 66.219999999999999 ]
							}
, 							{
								"key" : 10225,
								"value" : [ 66.25 ]
							}
, 							{
								"key" : 10226,
								"value" : [ 65.569999999999993 ]
							}
, 							{
								"key" : 10227,
								"value" : [ 63.640000000000001 ]
							}
, 							{
								"key" : 10228,
								"value" : [ 61.659999999999997 ]
							}
, 							{
								"key" : 10229,
								"value" : [ 60.310000000000002 ]
							}
, 							{
								"key" : 10230,
								"value" : [ 59.32 ]
							}
, 							{
								"key" : 10231,
								"value" : [ 58.869999999999997 ]
							}
, 							{
								"key" : 10232,
								"value" : [ 59.130000000000003 ]
							}
, 							{
								"key" : 10233,
								"value" : [ 59.630000000000003 ]
							}
, 							{
								"key" : 10234,
								"value" : [ 59.899999999999999 ]
							}
, 							{
								"key" : 10235,
								"value" : [ 60.640000000000001 ]
							}
, 							{
								"key" : 10236,
								"value" : [ 61.43 ]
							}
, 							{
								"key" : 10237,
								"value" : [ 62.380000000000003 ]
							}
, 							{
								"key" : 10238,
								"value" : [ 62.979999999999997 ]
							}
, 							{
								"key" : 10239,
								"value" : [ 62.729999999999997 ]
							}
, 							{
								"key" : 10240,
								"value" : [ 62.289999999999999 ]
							}
, 							{
								"key" : 10241,
								"value" : [ 61.880000000000003 ]
							}
, 							{
								"key" : 10242,
								"value" : [ 60.210000000000001 ]
							}
, 							{
								"key" : 10243,
								"value" : [ 57.270000000000003 ]
							}
, 							{
								"key" : 10244,
								"value" : [ 54.770000000000003 ]
							}
, 							{
								"key" : 10245,
								"value" : [ 53.689999999999998 ]
							}
, 							{
								"key" : 10246,
								"value" : [ 53.549999999999997 ]
							}
, 							{
								"key" : 10247,
								"value" : [ 53.710000000000001 ]
							}
, 							{
								"key" : 10248,
								"value" : [ 54.009999999999998 ]
							}
, 							{
								"key" : 10249,
								"value" : [ 54.229999999999997 ]
							}
, 							{
								"key" : 10250,
								"value" : [ 54.57 ]
							}
, 							{
								"key" : 10251,
								"value" : [ 54.32 ]
							}
, 							{
								"key" : 10252,
								"value" : [ 54.009999999999998 ]
							}
, 							{
								"key" : 10253,
								"value" : [ 54.049999999999997 ]
							}
, 							{
								"key" : 10254,
								"value" : [ 55.359999999999999 ]
							}
, 							{
								"key" : 10255,
								"value" : [ 56.640000000000001 ]
							}
, 							{
								"key" : 10256,
								"value" : [ 59.159999999999997 ]
							}
, 							{
								"key" : 10257,
								"value" : [ 61.609999999999999 ]
							}
, 							{
								"key" : 10258,
								"value" : [ 63.189999999999998 ]
							}
, 							{
								"key" : 10259,
								"value" : [ 64.090000000000003 ]
							}
, 							{
								"key" : 10260,
								"value" : [ 64.739999999999995 ]
							}
, 							{
								"key" : 10261,
								"value" : [ 65.299999999999997 ]
							}
, 							{
								"key" : 10262,
								"value" : [ 65.75 ]
							}
, 							{
								"key" : 10263,
								"value" : [ 66.090000000000003 ]
							}
, 							{
								"key" : 10264,
								"value" : [ 66.359999999999999 ]
							}
, 							{
								"key" : 10265,
								"value" : [ 66.510000000000005 ]
							}
, 							{
								"key" : 10266,
								"value" : [ 67.060000000000002 ]
							}
, 							{
								"key" : 10267,
								"value" : [ 66.780000000000001 ]
							}
, 							{
								"key" : 10268,
								"value" : [ 66.579999999999998 ]
							}
, 							{
								"key" : 10269,
								"value" : [ 65.189999999999998 ]
							}
, 							{
								"key" : 10270,
								"value" : [ 62.600000000000001 ]
							}
, 							{
								"key" : 10271,
								"value" : [ 60.479999999999997 ]
							}
, 							{
								"key" : 10272,
								"value" : [ 59.579999999999998 ]
							}
, 							{
								"key" : 10273,
								"value" : [ 59.18 ]
							}
, 							{
								"key" : 10274,
								"value" : [ 58.659999999999997 ]
							}
, 							{
								"key" : 10275,
								"value" : [ 58.590000000000003 ]
							}
, 							{
								"key" : 10276,
								"value" : [ 57.939999999999998 ]
							}
, 							{
								"key" : 10277,
								"value" : [ 57.090000000000003 ]
							}
, 							{
								"key" : 10278,
								"value" : [ 57.289999999999999 ]
							}
, 							{
								"key" : 10279,
								"value" : [ 58.57 ]
							}
, 							{
								"key" : 10280,
								"value" : [ 60.979999999999997 ]
							}
, 							{
								"key" : 10281,
								"value" : [ 64.359999999999999 ]
							}
, 							{
								"key" : 10282,
								"value" : [ 66.560000000000002 ]
							}
, 							{
								"key" : 10283,
								"value" : [ 67.709999999999994 ]
							}
, 							{
								"key" : 10284,
								"value" : [ 68.430000000000007 ]
							}
, 							{
								"key" : 10285,
								"value" : [ 68.859999999999999 ]
							}
, 							{
								"key" : 10286,
								"value" : [ 69.010000000000005 ]
							}
, 							{
								"key" : 10287,
								"value" : [ 68.920000000000002 ]
							}
, 							{
								"key" : 10288,
								"value" : [ 68.590000000000003 ]
							}
, 							{
								"key" : 10289,
								"value" : [ 67.959999999999994 ]
							}
, 							{
								"key" : 10290,
								"value" : [ 66.870000000000005 ]
							}
, 							{
								"key" : 10291,
								"value" : [ 64.810000000000002 ]
							}
, 							{
								"key" : 10292,
								"value" : [ 62.560000000000002 ]
							}
, 							{
								"key" : 10293,
								"value" : [ 61.520000000000003 ]
							}
, 							{
								"key" : 10294,
								"value" : [ 60.530000000000001 ]
							}
, 							{
								"key" : 10295,
								"value" : [ 59.490000000000002 ]
							}
, 							{
								"key" : 10296,
								"value" : [ 58.57 ]
							}
, 							{
								"key" : 10297,
								"value" : [ 57.740000000000002 ]
							}
, 							{
								"key" : 10298,
								"value" : [ 57.090000000000003 ]
							}
, 							{
								"key" : 10299,
								"value" : [ 56.619999999999997 ]
							}
, 							{
								"key" : 10300,
								"value" : [ 56.479999999999997 ]
							}
, 							{
								"key" : 10301,
								"value" : [ 56.840000000000003 ]
							}
, 							{
								"key" : 10302,
								"value" : [ 58.210000000000001 ]
							}
, 							{
								"key" : 10303,
								"value" : [ 59.090000000000003 ]
							}
, 							{
								"key" : 10304,
								"value" : [ 60.840000000000003 ]
							}
, 							{
								"key" : 10305,
								"value" : [ 63.590000000000003 ]
							}
, 							{
								"key" : 10306,
								"value" : [ 63.840000000000003 ]
							}
, 							{
								"key" : 10307,
								"value" : [ 63.390000000000001 ]
							}
, 							{
								"key" : 10308,
								"value" : [ 62.780000000000001 ]
							}
, 							{
								"key" : 10309,
								"value" : [ 62.060000000000002 ]
							}
, 							{
								"key" : 10310,
								"value" : [ 61.32 ]
							}
, 							{
								"key" : 10311,
								"value" : [ 60.850000000000001 ]
							}
, 							{
								"key" : 10312,
								"value" : [ 60.57 ]
							}
, 							{
								"key" : 10313,
								"value" : [ 59.740000000000002 ]
							}
, 							{
								"key" : 10314,
								"value" : [ 57.969999999999999 ]
							}
, 							{
								"key" : 10315,
								"value" : [ 57.020000000000003 ]
							}
, 							{
								"key" : 10316,
								"value" : [ 57.219999999999999 ]
							}
, 							{
								"key" : 10317,
								"value" : [ 57.539999999999999 ]
							}
, 							{
								"key" : 10318,
								"value" : [ 57.700000000000003 ]
							}
, 							{
								"key" : 10319,
								"value" : [ 57.850000000000001 ]
							}
, 							{
								"key" : 10320,
								"value" : [ 58.060000000000002 ]
							}
, 							{
								"key" : 10321,
								"value" : [ 58.240000000000002 ]
							}
, 							{
								"key" : 10322,
								"value" : [ 58.240000000000002 ]
							}
, 							{
								"key" : 10323,
								"value" : [ 57.920000000000002 ]
							}
, 							{
								"key" : 10324,
								"value" : [ 57.630000000000003 ]
							}
, 							{
								"key" : 10325,
								"value" : [ 57.780000000000001 ]
							}
, 							{
								"key" : 10326,
								"value" : [ 59.090000000000003 ]
							}
, 							{
								"key" : 10327,
								"value" : [ 60.009999999999998 ]
							}
, 							{
								"key" : 10328,
								"value" : [ 61.18 ]
							}
, 							{
								"key" : 10329,
								"value" : [ 63.140000000000001 ]
							}
, 							{
								"key" : 10330,
								"value" : [ 64.650000000000006 ]
							}
, 							{
								"key" : 10331,
								"value" : [ 65.769999999999996 ]
							}
, 							{
								"key" : 10332,
								"value" : [ 67.459999999999994 ]
							}
, 							{
								"key" : 10333,
								"value" : [ 69.370000000000005 ]
							}
, 							{
								"key" : 10334,
								"value" : [ 69.819999999999993 ]
							}
, 							{
								"key" : 10335,
								"value" : [ 67.640000000000001 ]
							}
, 							{
								"key" : 10336,
								"value" : [ 65.140000000000001 ]
							}
, 							{
								"key" : 10337,
								"value" : [ 63.07 ]
							}
, 							{
								"key" : 10338,
								"value" : [ 61.469999999999999 ]
							}
, 							{
								"key" : 10339,
								"value" : [ 59.810000000000002 ]
							}
, 							{
								"key" : 10340,
								"value" : [ 59.200000000000003 ]
							}
, 							{
								"key" : 10341,
								"value" : [ 59.700000000000003 ]
							}
, 							{
								"key" : 10342,
								"value" : [ 60.710000000000001 ]
							}
, 							{
								"key" : 10343,
								"value" : [ 62.130000000000003 ]
							}
, 							{
								"key" : 10344,
								"value" : [ 62.219999999999999 ]
							}
, 							{
								"key" : 10345,
								"value" : [ 62.310000000000002 ]
							}
, 							{
								"key" : 10346,
								"value" : [ 62.549999999999997 ]
							}
, 							{
								"key" : 10347,
								"value" : [ 62.710000000000001 ]
							}
, 							{
								"key" : 10348,
								"value" : [ 62.289999999999999 ]
							}
, 							{
								"key" : 10349,
								"value" : [ 61.630000000000003 ]
							}
, 							{
								"key" : 10350,
								"value" : [ 61.469999999999999 ]
							}
, 							{
								"key" : 10351,
								"value" : [ 61.590000000000003 ]
							}
, 							{
								"key" : 10352,
								"value" : [ 62.149999999999999 ]
							}
, 							{
								"key" : 10353,
								"value" : [ 63.07 ]
							}
, 							{
								"key" : 10354,
								"value" : [ 63.140000000000001 ]
							}
, 							{
								"key" : 10355,
								"value" : [ 63.280000000000001 ]
							}
, 							{
								"key" : 10356,
								"value" : [ 64.599999999999994 ]
							}
, 							{
								"key" : 10357,
								"value" : [ 66.849999999999994 ]
							}
, 							{
								"key" : 10358,
								"value" : [ 68.5 ]
							}
, 							{
								"key" : 10359,
								"value" : [ 69.579999999999998 ]
							}
, 							{
								"key" : 10360,
								"value" : [ 69.819999999999993 ]
							}
, 							{
								"key" : 10361,
								"value" : [ 69.709999999999994 ]
							}
, 							{
								"key" : 10362,
								"value" : [ 67.569999999999993 ]
							}
, 							{
								"key" : 10363,
								"value" : [ 63.270000000000003 ]
							}
, 							{
								"key" : 10364,
								"value" : [ 58.869999999999997 ]
							}
, 							{
								"key" : 10365,
								"value" : [ 55.420000000000002 ]
							}
, 							{
								"key" : 10366,
								"value" : [ 54.609999999999999 ]
							}
, 							{
								"key" : 10367,
								"value" : [ 54.539999999999999 ]
							}
, 							{
								"key" : 10368,
								"value" : [ 54.630000000000003 ]
							}
, 							{
								"key" : 10369,
								"value" : [ 54.640000000000001 ]
							}
, 							{
								"key" : 10370,
								"value" : [ 54.479999999999997 ]
							}
, 							{
								"key" : 10371,
								"value" : [ 54.460000000000001 ]
							}
, 							{
								"key" : 10372,
								"value" : [ 54.549999999999997 ]
							}
, 							{
								"key" : 10373,
								"value" : [ 54.539999999999999 ]
							}
, 							{
								"key" : 10374,
								"value" : [ 54.520000000000003 ]
							}
, 							{
								"key" : 10375,
								"value" : [ 55.130000000000003 ]
							}
, 							{
								"key" : 10376,
								"value" : [ 55.979999999999997 ]
							}
, 							{
								"key" : 10377,
								"value" : [ 56.32 ]
							}
, 							{
								"key" : 10378,
								"value" : [ 56.530000000000001 ]
							}
, 							{
								"key" : 10379,
								"value" : [ 57.159999999999997 ]
							}
, 							{
								"key" : 10380,
								"value" : [ 57.990000000000002 ]
							}
, 							{
								"key" : 10381,
								"value" : [ 58.75 ]
							}
, 							{
								"key" : 10382,
								"value" : [ 59.579999999999998 ]
							}
, 							{
								"key" : 10383,
								"value" : [ 60.890000000000001 ]
							}
, 							{
								"key" : 10384,
								"value" : [ 62.420000000000002 ]
							}
, 							{
								"key" : 10385,
								"value" : [ 63.229999999999997 ]
							}
, 							{
								"key" : 10386,
								"value" : [ 63.140000000000001 ]
							}
, 							{
								"key" : 10387,
								"value" : [ 61.270000000000003 ]
							}
, 							{
								"key" : 10388,
								"value" : [ 58.640000000000001 ]
							}
, 							{
								"key" : 10389,
								"value" : [ 57.740000000000002 ]
							}
, 							{
								"key" : 10390,
								"value" : [ 57.43 ]
							}
, 							{
								"key" : 10391,
								"value" : [ 57.399999999999999 ]
							}
, 							{
								"key" : 10392,
								"value" : [ 57.219999999999999 ]
							}
, 							{
								"key" : 10393,
								"value" : [ 56.93 ]
							}
, 							{
								"key" : 10394,
								"value" : [ 56.969999999999999 ]
							}
, 							{
								"key" : 10395,
								"value" : [ 56.770000000000003 ]
							}
, 							{
								"key" : 10396,
								"value" : [ 56.840000000000003 ]
							}
, 							{
								"key" : 10397,
								"value" : [ 57.060000000000002 ]
							}
, 							{
								"key" : 10398,
								"value" : [ 57.359999999999999 ]
							}
, 							{
								"key" : 10399,
								"value" : [ 57.829999999999998 ]
							}
, 							{
								"key" : 10400,
								"value" : [ 58.259999999999998 ]
							}
, 							{
								"key" : 10401,
								"value" : [ 58.840000000000003 ]
							}
, 							{
								"key" : 10402,
								"value" : [ 60.170000000000002 ]
							}
, 							{
								"key" : 10403,
								"value" : [ 59.990000000000002 ]
							}
, 							{
								"key" : 10404,
								"value" : [ 59.32 ]
							}
, 							{
								"key" : 10405,
								"value" : [ 59.18 ]
							}
, 							{
								"key" : 10406,
								"value" : [ 58.869999999999997 ]
							}
, 							{
								"key" : 10407,
								"value" : [ 58.420000000000002 ]
							}
, 							{
								"key" : 10408,
								"value" : [ 58.420000000000002 ]
							}
, 							{
								"key" : 10409,
								"value" : [ 58.509999999999998 ]
							}
, 							{
								"key" : 10410,
								"value" : [ 58.240000000000002 ]
							}
, 							{
								"key" : 10411,
								"value" : [ 57.520000000000003 ]
							}
, 							{
								"key" : 10412,
								"value" : [ 56.100000000000001 ]
							}
, 							{
								"key" : 10413,
								"value" : [ 55.289999999999999 ]
							}
, 							{
								"key" : 10414,
								"value" : [ 55.039999999999999 ]
							}
, 							{
								"key" : 10415,
								"value" : [ 54.659999999999997 ]
							}
, 							{
								"key" : 10416,
								"value" : [ 54.32 ]
							}
, 							{
								"key" : 10417,
								"value" : [ 53.869999999999997 ]
							}
, 							{
								"key" : 10418,
								"value" : [ 53.369999999999997 ]
							}
, 							{
								"key" : 10419,
								"value" : [ 53.079999999999998 ]
							}
, 							{
								"key" : 10420,
								"value" : [ 53.009999999999998 ]
							}
, 							{
								"key" : 10421,
								"value" : [ 52.770000000000003 ]
							}
, 							{
								"key" : 10422,
								"value" : [ 54.640000000000001 ]
							}
, 							{
								"key" : 10423,
								"value" : [ 56.520000000000003 ]
							}
, 							{
								"key" : 10424,
								"value" : [ 58.780000000000001 ]
							}
, 							{
								"key" : 10425,
								"value" : [ 61.030000000000001 ]
							}
, 							{
								"key" : 10426,
								"value" : [ 63.590000000000003 ]
							}
, 							{
								"key" : 10427,
								"value" : [ 65.609999999999999 ]
							}
, 							{
								"key" : 10428,
								"value" : [ 66.760000000000005 ]
							}
, 							{
								"key" : 10429,
								"value" : [ 66.829999999999998 ]
							}
, 							{
								"key" : 10430,
								"value" : [ 66.700000000000003 ]
							}
, 							{
								"key" : 10431,
								"value" : [ 67.349999999999994 ]
							}
, 							{
								"key" : 10432,
								"value" : [ 67.659999999999997 ]
							}
, 							{
								"key" : 10433,
								"value" : [ 67.510000000000005 ]
							}
, 							{
								"key" : 10434,
								"value" : [ 67.239999999999995 ]
							}
, 							{
								"key" : 10435,
								"value" : [ 66.790000000000006 ]
							}
, 							{
								"key" : 10436,
								"value" : [ 66.739999999999995 ]
							}
, 							{
								"key" : 10437,
								"value" : [ 67.239999999999995 ]
							}
, 							{
								"key" : 10438,
								"value" : [ 66.069999999999993 ]
							}
, 							{
								"key" : 10439,
								"value" : [ 64.799999999999997 ]
							}
, 							{
								"key" : 10440,
								"value" : [ 63.409999999999997 ]
							}
, 							{
								"key" : 10441,
								"value" : [ 62.369999999999997 ]
							}
, 							{
								"key" : 10442,
								"value" : [ 61.920000000000002 ]
							}
, 							{
								"key" : 10443,
								"value" : [ 60.329999999999998 ]
							}
, 							{
								"key" : 10444,
								"value" : [ 59.020000000000003 ]
							}
, 							{
								"key" : 10445,
								"value" : [ 58.75 ]
							}
, 							{
								"key" : 10446,
								"value" : [ 59.810000000000002 ]
							}
, 							{
								"key" : 10447,
								"value" : [ 61.030000000000001 ]
							}
, 							{
								"key" : 10448,
								"value" : [ 61.920000000000002 ]
							}
, 							{
								"key" : 10449,
								"value" : [ 63.840000000000003 ]
							}
, 							{
								"key" : 10450,
								"value" : [ 66.310000000000002 ]
							}
, 							{
								"key" : 10451,
								"value" : [ 67.890000000000001 ]
							}
, 							{
								"key" : 10452,
								"value" : [ 69.040000000000006 ]
							}
, 							{
								"key" : 10453,
								"value" : [ 69.549999999999997 ]
							}
, 							{
								"key" : 10454,
								"value" : [ 69.040000000000006 ]
							}
, 							{
								"key" : 10455,
								"value" : [ 67.930000000000007 ]
							}
, 							{
								"key" : 10456,
								"value" : [ 66.560000000000002 ]
							}
, 							{
								"key" : 10457,
								"value" : [ 65.459999999999994 ]
							}
, 							{
								"key" : 10458,
								"value" : [ 64.629999999999995 ]
							}
, 							{
								"key" : 10459,
								"value" : [ 63.32 ]
							}
, 							{
								"key" : 10460,
								"value" : [ 61.590000000000003 ]
							}
, 							{
								"key" : 10461,
								"value" : [ 60.490000000000002 ]
							}
, 							{
								"key" : 10462,
								"value" : [ 59.609999999999999 ]
							}
, 							{
								"key" : 10463,
								"value" : [ 58.82 ]
							}
, 							{
								"key" : 10464,
								"value" : [ 58.170000000000002 ]
							}
, 							{
								"key" : 10465,
								"value" : [ 57.740000000000002 ]
							}
, 							{
								"key" : 10466,
								"value" : [ 57.310000000000002 ]
							}
, 							{
								"key" : 10467,
								"value" : [ 56.710000000000001 ]
							}
, 							{
								"key" : 10468,
								"value" : [ 56.030000000000001 ]
							}
, 							{
								"key" : 10469,
								"value" : [ 55.759999999999998 ]
							}
, 							{
								"key" : 10470,
								"value" : [ 57.090000000000003 ]
							}
, 							{
								"key" : 10471,
								"value" : [ 58.299999999999997 ]
							}
, 							{
								"key" : 10472,
								"value" : [ 60.75 ]
							}
, 							{
								"key" : 10473,
								"value" : [ 62.82 ]
							}
, 							{
								"key" : 10474,
								"value" : [ 63.630000000000003 ]
							}
, 							{
								"key" : 10475,
								"value" : [ 64.420000000000002 ]
							}
, 							{
								"key" : 10476,
								"value" : [ 65.620000000000005 ]
							}
, 							{
								"key" : 10477,
								"value" : [ 66.989999999999995 ]
							}
, 							{
								"key" : 10478,
								"value" : [ 68.200000000000003 ]
							}
, 							{
								"key" : 10479,
								"value" : [ 69.040000000000006 ]
							}
, 							{
								"key" : 10480,
								"value" : [ 69.75 ]
							}
, 							{
								"key" : 10481,
								"value" : [ 69.890000000000001 ]
							}
, 							{
								"key" : 10482,
								"value" : [ 69.280000000000001 ]
							}
, 							{
								"key" : 10483,
								"value" : [ 68.069999999999993 ]
							}
, 							{
								"key" : 10484,
								"value" : [ 67.049999999999997 ]
							}
, 							{
								"key" : 10485,
								"value" : [ 66.560000000000002 ]
							}
, 							{
								"key" : 10486,
								"value" : [ 66.180000000000007 ]
							}
, 							{
								"key" : 10487,
								"value" : [ 65.840000000000003 ]
							}
, 							{
								"key" : 10488,
								"value" : [ 65.370000000000005 ]
							}
, 							{
								"key" : 10489,
								"value" : [ 64.900000000000006 ]
							}
, 							{
								"key" : 10490,
								"value" : [ 63.729999999999997 ]
							}
, 							{
								"key" : 10491,
								"value" : [ 62.82 ]
							}
, 							{
								"key" : 10492,
								"value" : [ 62.560000000000002 ]
							}
, 							{
								"key" : 10493,
								"value" : [ 61.450000000000003 ]
							}
, 							{
								"key" : 10494,
								"value" : [ 61.829999999999998 ]
							}
, 							{
								"key" : 10495,
								"value" : [ 61.659999999999997 ]
							}
, 							{
								"key" : 10496,
								"value" : [ 61.789999999999999 ]
							}
, 							{
								"key" : 10497,
								"value" : [ 61.609999999999999 ]
							}
, 							{
								"key" : 10498,
								"value" : [ 61.140000000000001 ]
							}
, 							{
								"key" : 10499,
								"value" : [ 60.439999999999998 ]
							}
, 							{
								"key" : 10500,
								"value" : [ 59.700000000000003 ]
							}
, 							{
								"key" : 10501,
								"value" : [ 59.0 ]
							}
, 							{
								"key" : 10502,
								"value" : [ 58.5 ]
							}
, 							{
								"key" : 10503,
								"value" : [ 58.049999999999997 ]
							}
, 							{
								"key" : 10504,
								"value" : [ 57.689999999999998 ]
							}
, 							{
								"key" : 10505,
								"value" : [ 57.420000000000002 ]
							}
, 							{
								"key" : 10506,
								"value" : [ 57.020000000000003 ]
							}
, 							{
								"key" : 10507,
								"value" : [ 56.159999999999997 ]
							}
, 							{
								"key" : 10508,
								"value" : [ 55.200000000000003 ]
							}
, 							{
								"key" : 10509,
								"value" : [ 54.909999999999997 ]
							}
, 							{
								"key" : 10510,
								"value" : [ 55.170000000000002 ]
							}
, 							{
								"key" : 10511,
								"value" : [ 55.539999999999999 ]
							}
, 							{
								"key" : 10512,
								"value" : [ 55.869999999999997 ]
							}
, 							{
								"key" : 10513,
								"value" : [ 56.159999999999997 ]
							}
, 							{
								"key" : 10514,
								"value" : [ 56.57 ]
							}
, 							{
								"key" : 10515,
								"value" : [ 57.159999999999997 ]
							}
, 							{
								"key" : 10516,
								"value" : [ 57.789999999999999 ]
							}
, 							{
								"key" : 10517,
								"value" : [ 58.57 ]
							}
, 							{
								"key" : 10518,
								"value" : [ 60.57 ]
							}
, 							{
								"key" : 10519,
								"value" : [ 62.009999999999998 ]
							}
, 							{
								"key" : 10520,
								"value" : [ 63.719999999999999 ]
							}
, 							{
								"key" : 10521,
								"value" : [ 65.819999999999993 ]
							}
, 							{
								"key" : 10522,
								"value" : [ 68.879999999999995 ]
							}
, 							{
								"key" : 10523,
								"value" : [ 72.730000000000004 ]
							}
, 							{
								"key" : 10524,
								"value" : [ 75.379999999999995 ]
							}
, 							{
								"key" : 10525,
								"value" : [ 77.430000000000007 ]
							}
, 							{
								"key" : 10526,
								"value" : [ 77.469999999999999 ]
							}
, 							{
								"key" : 10527,
								"value" : [ 77.219999999999999 ]
							}
, 							{
								"key" : 10528,
								"value" : [ 75.109999999999999 ]
							}
, 							{
								"key" : 10529,
								"value" : [ 73.359999999999999 ]
							}
, 							{
								"key" : 10530,
								"value" : [ 72.590000000000003 ]
							}
, 							{
								"key" : 10531,
								"value" : [ 71.980000000000004 ]
							}
, 							{
								"key" : 10532,
								"value" : [ 71.780000000000001 ]
							}
, 							{
								"key" : 10533,
								"value" : [ 71.560000000000002 ]
							}
, 							{
								"key" : 10534,
								"value" : [ 70.209999999999994 ]
							}
, 							{
								"key" : 10535,
								"value" : [ 68.989999999999995 ]
							}
, 							{
								"key" : 10536,
								"value" : [ 68.049999999999997 ]
							}
, 							{
								"key" : 10537,
								"value" : [ 67.930000000000007 ]
							}
, 							{
								"key" : 10538,
								"value" : [ 68.629999999999995 ]
							}
, 							{
								"key" : 10539,
								"value" : [ 70.090000000000003 ]
							}
, 							{
								"key" : 10540,
								"value" : [ 69.819999999999993 ]
							}
, 							{
								"key" : 10541,
								"value" : [ 68.939999999999998 ]
							}
, 							{
								"key" : 10542,
								"value" : [ 69.760000000000005 ]
							}
, 							{
								"key" : 10543,
								"value" : [ 71.489999999999995 ]
							}
, 							{
								"key" : 10544,
								"value" : [ 73.019999999999996 ]
							}
, 							{
								"key" : 10545,
								"value" : [ 74.709999999999994 ]
							}
, 							{
								"key" : 10546,
								"value" : [ 76.640000000000001 ]
							}
, 							{
								"key" : 10547,
								"value" : [ 77.950000000000003 ]
							}
, 							{
								"key" : 10548,
								"value" : [ 79.090000000000003 ]
							}
, 							{
								"key" : 10549,
								"value" : [ 80.150000000000006 ]
							}
, 							{
								"key" : 10550,
								"value" : [ 80.620000000000005 ]
							}
, 							{
								"key" : 10551,
								"value" : [ 80.549999999999997 ]
							}
, 							{
								"key" : 10552,
								"value" : [ 80.329999999999998 ]
							}
, 							{
								"key" : 10553,
								"value" : [ 79.569999999999993 ]
							}
, 							{
								"key" : 10554,
								"value" : [ 78.420000000000002 ]
							}
, 							{
								"key" : 10555,
								"value" : [ 77.090000000000003 ]
							}
, 							{
								"key" : 10556,
								"value" : [ 75.849999999999994 ]
							}
, 							{
								"key" : 10557,
								"value" : [ 74.969999999999999 ]
							}
, 							{
								"key" : 10558,
								"value" : [ 74.260000000000005 ]
							}
, 							{
								"key" : 10559,
								"value" : [ 73.959999999999994 ]
							}
, 							{
								"key" : 10560,
								"value" : [ 73.540000000000006 ]
							}
, 							{
								"key" : 10561,
								"value" : [ 73.170000000000002 ]
							}
, 							{
								"key" : 10562,
								"value" : [ 72.609999999999999 ]
							}
, 							{
								"key" : 10563,
								"value" : [ 72.120000000000005 ]
							}
, 							{
								"key" : 10564,
								"value" : [ 71.510000000000005 ]
							}
, 							{
								"key" : 10565,
								"value" : [ 70.790000000000006 ]
							}
, 							{
								"key" : 10566,
								"value" : [ 71.329999999999998 ]
							}
, 							{
								"key" : 10567,
								"value" : [ 72.140000000000001 ]
							}
, 							{
								"key" : 10568,
								"value" : [ 73.310000000000002 ]
							}
, 							{
								"key" : 10569,
								"value" : [ 74.409999999999997 ]
							}
, 							{
								"key" : 10570,
								"value" : [ 75.290000000000006 ]
							}
, 							{
								"key" : 10571,
								"value" : [ 76.640000000000001 ]
							}
, 							{
								"key" : 10572,
								"value" : [ 77.920000000000002 ]
							}
, 							{
								"key" : 10573,
								"value" : [ 78.760000000000005 ]
							}
, 							{
								"key" : 10574,
								"value" : [ 79.269999999999996 ]
							}
, 							{
								"key" : 10575,
								"value" : [ 79.469999999999999 ]
							}
, 							{
								"key" : 10576,
								"value" : [ 79.359999999999999 ]
							}
, 							{
								"key" : 10577,
								"value" : [ 78.939999999999998 ]
							}
, 							{
								"key" : 10578,
								"value" : [ 78.260000000000005 ]
							}
, 							{
								"key" : 10579,
								"value" : [ 77.109999999999999 ]
							}
, 							{
								"key" : 10580,
								"value" : [ 76.030000000000001 ]
							}
, 							{
								"key" : 10581,
								"value" : [ 75.290000000000006 ]
							}
, 							{
								"key" : 10582,
								"value" : [ 74.709999999999994 ]
							}
, 							{
								"key" : 10583,
								"value" : [ 74.049999999999997 ]
							}
, 							{
								"key" : 10584,
								"value" : [ 73.129999999999995 ]
							}
, 							{
								"key" : 10585,
								"value" : [ 72.430000000000007 ]
							}
, 							{
								"key" : 10586,
								"value" : [ 71.689999999999998 ]
							}
, 							{
								"key" : 10587,
								"value" : [ 70.829999999999998 ]
							}
, 							{
								"key" : 10588,
								"value" : [ 69.030000000000001 ]
							}
, 							{
								"key" : 10589,
								"value" : [ 66.900000000000006 ]
							}
, 							{
								"key" : 10590,
								"value" : [ 65.480000000000004 ]
							}
, 							{
								"key" : 10591,
								"value" : [ 66.060000000000002 ]
							}
, 							{
								"key" : 10592,
								"value" : [ 68.310000000000002 ]
							}
, 							{
								"key" : 10593,
								"value" : [ 71.280000000000001 ]
							}
, 							{
								"key" : 10594,
								"value" : [ 74.709999999999994 ]
							}
, 							{
								"key" : 10595,
								"value" : [ 76.599999999999994 ]
							}
, 							{
								"key" : 10596,
								"value" : [ 77.540000000000006 ]
							}
, 							{
								"key" : 10597,
								"value" : [ 78.030000000000001 ]
							}
, 							{
								"key" : 10598,
								"value" : [ 78.260000000000005 ]
							}
, 							{
								"key" : 10599,
								"value" : [ 78.239999999999995 ]
							}
, 							{
								"key" : 10600,
								"value" : [ 78.120000000000005 ]
							}
, 							{
								"key" : 10601,
								"value" : [ 77.719999999999999 ]
							}
, 							{
								"key" : 10602,
								"value" : [ 76.569999999999993 ]
							}
, 							{
								"key" : 10603,
								"value" : [ 74.769999999999996 ]
							}
, 							{
								"key" : 10604,
								"value" : [ 72.819999999999993 ]
							}
, 							{
								"key" : 10605,
								"value" : [ 71.379999999999995 ]
							}
, 							{
								"key" : 10606,
								"value" : [ 70.140000000000001 ]
							}
, 							{
								"key" : 10607,
								"value" : [ 69.040000000000006 ]
							}
, 							{
								"key" : 10608,
								"value" : [ 68.019999999999996 ]
							}
, 							{
								"key" : 10609,
								"value" : [ 67.150000000000006 ]
							}
, 							{
								"key" : 10610,
								"value" : [ 66.519999999999996 ]
							}
, 							{
								"key" : 10611,
								"value" : [ 65.890000000000001 ]
							}
, 							{
								"key" : 10612,
								"value" : [ 65.260000000000005 ]
							}
, 							{
								"key" : 10613,
								"value" : [ 64.980000000000004 ]
							}
, 							{
								"key" : 10614,
								"value" : [ 65.879999999999995 ]
							}
, 							{
								"key" : 10615,
								"value" : [ 66.810000000000002 ]
							}
, 							{
								"key" : 10616,
								"value" : [ 68.829999999999998 ]
							}
, 							{
								"key" : 10617,
								"value" : [ 70.359999999999999 ]
							}
, 							{
								"key" : 10618,
								"value" : [ 71.170000000000002 ]
							}
, 							{
								"key" : 10619,
								"value" : [ 71.819999999999993 ]
							}
, 							{
								"key" : 10620,
								"value" : [ 72.390000000000001 ]
							}
, 							{
								"key" : 10621,
								"value" : [ 72.840000000000003 ]
							}
, 							{
								"key" : 10622,
								"value" : [ 73.170000000000002 ]
							}
, 							{
								"key" : 10623,
								"value" : [ 73.269999999999996 ]
							}
, 							{
								"key" : 10624,
								"value" : [ 73.109999999999999 ]
							}
, 							{
								"key" : 10625,
								"value" : [ 72.659999999999997 ]
							}
, 							{
								"key" : 10626,
								"value" : [ 71.670000000000002 ]
							}
, 							{
								"key" : 10627,
								"value" : [ 69.75 ]
							}
, 							{
								"key" : 10628,
								"value" : [ 67.120000000000005 ]
							}
, 							{
								"key" : 10629,
								"value" : [ 65.069999999999993 ]
							}
, 							{
								"key" : 10630,
								"value" : [ 64.290000000000006 ]
							}
, 							{
								"key" : 10631,
								"value" : [ 65.010000000000005 ]
							}
, 							{
								"key" : 10632,
								"value" : [ 64.260000000000005 ]
							}
, 							{
								"key" : 10633,
								"value" : [ 61.990000000000002 ]
							}
, 							{
								"key" : 10634,
								"value" : [ 60.670000000000002 ]
							}
, 							{
								"key" : 10635,
								"value" : [ 59.950000000000003 ]
							}
, 							{
								"key" : 10636,
								"value" : [ 59.32 ]
							}
, 							{
								"key" : 10637,
								"value" : [ 58.979999999999997 ]
							}
, 							{
								"key" : 10638,
								"value" : [ 60.490000000000002 ]
							}
, 							{
								"key" : 10639,
								"value" : [ 61.520000000000003 ]
							}
, 							{
								"key" : 10640,
								"value" : [ 62.460000000000001 ]
							}
, 							{
								"key" : 10641,
								"value" : [ 63.450000000000003 ]
							}
, 							{
								"key" : 10642,
								"value" : [ 63.990000000000002 ]
							}
, 							{
								"key" : 10643,
								"value" : [ 63.990000000000002 ]
							}
, 							{
								"key" : 10644,
								"value" : [ 63.909999999999997 ]
							}
, 							{
								"key" : 10645,
								"value" : [ 63.659999999999997 ]
							}
, 							{
								"key" : 10646,
								"value" : [ 63.340000000000003 ]
							}
, 							{
								"key" : 10647,
								"value" : [ 62.939999999999998 ]
							}
, 							{
								"key" : 10648,
								"value" : [ 62.399999999999999 ]
							}
, 							{
								"key" : 10649,
								"value" : [ 61.899999999999999 ]
							}
, 							{
								"key" : 10650,
								"value" : [ 61.229999999999997 ]
							}
, 							{
								"key" : 10651,
								"value" : [ 60.240000000000002 ]
							}
, 							{
								"key" : 10652,
								"value" : [ 58.93 ]
							}
, 							{
								"key" : 10653,
								"value" : [ 58.57 ]
							}
, 							{
								"key" : 10654,
								"value" : [ 59.090000000000003 ]
							}
, 							{
								"key" : 10655,
								"value" : [ 59.270000000000003 ]
							}
, 							{
								"key" : 10656,
								"value" : [ 58.82 ]
							}
, 							{
								"key" : 10657,
								"value" : [ 59.340000000000003 ]
							}
, 							{
								"key" : 10658,
								"value" : [ 59.920000000000002 ]
							}
, 							{
								"key" : 10659,
								"value" : [ 60.460000000000001 ]
							}
, 							{
								"key" : 10660,
								"value" : [ 60.240000000000002 ]
							}
, 							{
								"key" : 10661,
								"value" : [ 59.920000000000002 ]
							}
, 							{
								"key" : 10662,
								"value" : [ 60.640000000000001 ]
							}
, 							{
								"key" : 10663,
								"value" : [ 61.590000000000003 ]
							}
, 							{
								"key" : 10664,
								"value" : [ 64.019999999999996 ]
							}
, 							{
								"key" : 10665,
								"value" : [ 66.670000000000002 ]
							}
, 							{
								"key" : 10666,
								"value" : [ 68.760000000000005 ]
							}
, 							{
								"key" : 10667,
								"value" : [ 70.519999999999996 ]
							}
, 							{
								"key" : 10668,
								"value" : [ 71.939999999999998 ]
							}
, 							{
								"key" : 10669,
								"value" : [ 73.090000000000003 ]
							}
, 							{
								"key" : 10670,
								"value" : [ 73.810000000000002 ]
							}
, 							{
								"key" : 10671,
								"value" : [ 74.340000000000003 ]
							}
, 							{
								"key" : 10672,
								"value" : [ 74.680000000000007 ]
							}
, 							{
								"key" : 10673,
								"value" : [ 74.569999999999993 ]
							}
, 							{
								"key" : 10674,
								"value" : [ 73.959999999999994 ]
							}
, 							{
								"key" : 10675,
								"value" : [ 71.980000000000004 ]
							}
, 							{
								"key" : 10676,
								"value" : [ 69.819999999999993 ]
							}
, 							{
								"key" : 10677,
								"value" : [ 68.790000000000006 ]
							}
, 							{
								"key" : 10678,
								"value" : [ 68.049999999999997 ]
							}
, 							{
								"key" : 10679,
								"value" : [ 67.280000000000001 ]
							}
, 							{
								"key" : 10680,
								"value" : [ 66.290000000000006 ]
							}
, 							{
								"key" : 10681,
								"value" : [ 65.049999999999997 ]
							}
, 							{
								"key" : 10682,
								"value" : [ 63.640000000000001 ]
							}
, 							{
								"key" : 10683,
								"value" : [ 62.530000000000001 ]
							}
, 							{
								"key" : 10684,
								"value" : [ 61.719999999999999 ]
							}
, 							{
								"key" : 10685,
								"value" : [ 61.270000000000003 ]
							}
, 							{
								"key" : 10686,
								"value" : [ 61.789999999999999 ]
							}
, 							{
								"key" : 10687,
								"value" : [ 63.359999999999999 ]
							}
, 							{
								"key" : 10688,
								"value" : [ 66.150000000000006 ]
							}
, 							{
								"key" : 10689,
								"value" : [ 70.200000000000003 ]
							}
, 							{
								"key" : 10690,
								"value" : [ 73.620000000000005 ]
							}
, 							{
								"key" : 10691,
								"value" : [ 75.790000000000006 ]
							}
, 							{
								"key" : 10692,
								"value" : [ 77.579999999999998 ]
							}
, 							{
								"key" : 10693,
								"value" : [ 78.75 ]
							}
, 							{
								"key" : 10694,
								"value" : [ 79.25 ]
							}
, 							{
								"key" : 10695,
								"value" : [ 79.269999999999996 ]
							}
, 							{
								"key" : 10696,
								"value" : [ 79.109999999999999 ]
							}
, 							{
								"key" : 10697,
								"value" : [ 78.620000000000005 ]
							}
, 							{
								"key" : 10698,
								"value" : [ 77.540000000000006 ]
							}
, 							{
								"key" : 10699,
								"value" : [ 75.560000000000002 ]
							}
, 							{
								"key" : 10700,
								"value" : [ 73.359999999999999 ]
							}
, 							{
								"key" : 10701,
								"value" : [ 72.269999999999996 ]
							}
, 							{
								"key" : 10702,
								"value" : [ 71.290000000000006 ]
							}
, 							{
								"key" : 10703,
								"value" : [ 70.340000000000003 ]
							}
, 							{
								"key" : 10704,
								"value" : [ 69.459999999999994 ]
							}
, 							{
								"key" : 10705,
								"value" : [ 68.700000000000003 ]
							}
, 							{
								"key" : 10706,
								"value" : [ 68.0 ]
							}
, 							{
								"key" : 10707,
								"value" : [ 67.409999999999997 ]
							}
, 							{
								"key" : 10708,
								"value" : [ 66.989999999999995 ]
							}
, 							{
								"key" : 10709,
								"value" : [ 67.030000000000001 ]
							}
, 							{
								"key" : 10710,
								"value" : [ 68.019999999999996 ]
							}
, 							{
								"key" : 10711,
								"value" : [ 69.760000000000005 ]
							}
, 							{
								"key" : 10712,
								"value" : [ 72.640000000000001 ]
							}
, 							{
								"key" : 10713,
								"value" : [ 76.099999999999994 ]
							}
, 							{
								"key" : 10714,
								"value" : [ 78.659999999999997 ]
							}
, 							{
								"key" : 10715,
								"value" : [ 80.400000000000006 ]
							}
, 							{
								"key" : 10716,
								"value" : [ 81.569999999999993 ]
							}
, 							{
								"key" : 10717,
								"value" : [ 82.239999999999995 ]
							}
, 							{
								"key" : 10718,
								"value" : [ 82.530000000000001 ]
							}
, 							{
								"key" : 10719,
								"value" : [ 82.489999999999995 ]
							}
, 							{
								"key" : 10720,
								"value" : [ 82.359999999999999 ]
							}
, 							{
								"key" : 10721,
								"value" : [ 81.909999999999997 ]
							}
, 							{
								"key" : 10722,
								"value" : [ 81.069999999999993 ]
							}
, 							{
								"key" : 10723,
								"value" : [ 79.469999999999999 ]
							}
, 							{
								"key" : 10724,
								"value" : [ 78.099999999999994 ]
							}
, 							{
								"key" : 10725,
								"value" : [ 77.219999999999999 ]
							}
, 							{
								"key" : 10726,
								"value" : [ 76.420000000000002 ]
							}
, 							{
								"key" : 10727,
								"value" : [ 75.780000000000001 ]
							}
, 							{
								"key" : 10728,
								"value" : [ 75.310000000000002 ]
							}
, 							{
								"key" : 10729,
								"value" : [ 74.890000000000001 ]
							}
, 							{
								"key" : 10730,
								"value" : [ 74.319999999999993 ]
							}
, 							{
								"key" : 10731,
								"value" : [ 73.469999999999999 ]
							}
, 							{
								"key" : 10732,
								"value" : [ 72.719999999999999 ]
							}
, 							{
								"key" : 10733,
								"value" : [ 71.780000000000001 ]
							}
, 							{
								"key" : 10734,
								"value" : [ 71.549999999999997 ]
							}
, 							{
								"key" : 10735,
								"value" : [ 72.459999999999994 ]
							}
, 							{
								"key" : 10736,
								"value" : [ 73.989999999999995 ]
							}
, 							{
								"key" : 10737,
								"value" : [ 75.0 ]
							}
, 							{
								"key" : 10738,
								"value" : [ 75.629999999999995 ]
							}
, 							{
								"key" : 10739,
								"value" : [ 76.319999999999993 ]
							}
, 							{
								"key" : 10740,
								"value" : [ 76.769999999999996 ]
							}
, 							{
								"key" : 10741,
								"value" : [ 77.290000000000006 ]
							}
, 							{
								"key" : 10742,
								"value" : [ 78.150000000000006 ]
							}
, 							{
								"key" : 10743,
								"value" : [ 78.489999999999995 ]
							}
, 							{
								"key" : 10744,
								"value" : [ 78.370000000000005 ]
							}
, 							{
								"key" : 10745,
								"value" : [ 77.680000000000007 ]
							}
, 							{
								"key" : 10746,
								"value" : [ 76.299999999999997 ]
							}
, 							{
								"key" : 10747,
								"value" : [ 74.099999999999994 ]
							}
, 							{
								"key" : 10748,
								"value" : [ 71.739999999999995 ]
							}
, 							{
								"key" : 10749,
								"value" : [ 70.519999999999996 ]
							}
, 							{
								"key" : 10750,
								"value" : [ 69.689999999999998 ]
							}
, 							{
								"key" : 10751,
								"value" : [ 69.030000000000001 ]
							}
, 							{
								"key" : 10752,
								"value" : [ 68.400000000000006 ]
							}
, 							{
								"key" : 10753,
								"value" : [ 67.890000000000001 ]
							}
, 							{
								"key" : 10754,
								"value" : [ 67.510000000000005 ]
							}
, 							{
								"key" : 10755,
								"value" : [ 67.189999999999998 ]
							}
, 							{
								"key" : 10756,
								"value" : [ 66.670000000000002 ]
							}
, 							{
								"key" : 10757,
								"value" : [ 66.340000000000003 ]
							}
, 							{
								"key" : 10758,
								"value" : [ 67.75 ]
							}
, 							{
								"key" : 10759,
								"value" : [ 68.769999999999996 ]
							}
, 							{
								"key" : 10760,
								"value" : [ 70.069999999999993 ]
							}
, 							{
								"key" : 10761,
								"value" : [ 71.280000000000001 ]
							}
, 							{
								"key" : 10762,
								"value" : [ 72.409999999999997 ]
							}
, 							{
								"key" : 10763,
								"value" : [ 73.260000000000005 ]
							}
, 							{
								"key" : 10764,
								"value" : [ 73.599999999999994 ]
							}
, 							{
								"key" : 10765,
								"value" : [ 73.620000000000005 ]
							}
, 							{
								"key" : 10766,
								"value" : [ 73.560000000000002 ]
							}
, 							{
								"key" : 10767,
								"value" : [ 73.469999999999999 ]
							}
, 							{
								"key" : 10768,
								"value" : [ 73.090000000000003 ]
							}
, 							{
								"key" : 10769,
								"value" : [ 72.540000000000006 ]
							}
, 							{
								"key" : 10770,
								"value" : [ 71.819999999999993 ]
							}
, 							{
								"key" : 10771,
								"value" : [ 70.379999999999995 ]
							}
, 							{
								"key" : 10772,
								"value" : [ 68.400000000000006 ]
							}
, 							{
								"key" : 10773,
								"value" : [ 68.040000000000006 ]
							}
, 							{
								"key" : 10774,
								"value" : [ 68.040000000000006 ]
							}
, 							{
								"key" : 10775,
								"value" : [ 67.959999999999994 ]
							}
, 							{
								"key" : 10776,
								"value" : [ 67.799999999999997 ]
							}
, 							{
								"key" : 10777,
								"value" : [ 67.590000000000003 ]
							}
, 							{
								"key" : 10778,
								"value" : [ 67.349999999999994 ]
							}
, 							{
								"key" : 10779,
								"value" : [ 66.959999999999994 ]
							}
, 							{
								"key" : 10780,
								"value" : [ 66.450000000000003 ]
							}
, 							{
								"key" : 10781,
								"value" : [ 66.159999999999997 ]
							}
, 							{
								"key" : 10782,
								"value" : [ 67.689999999999998 ]
							}
, 							{
								"key" : 10783,
								"value" : [ 69.040000000000006 ]
							}
, 							{
								"key" : 10784,
								"value" : [ 70.659999999999997 ]
							}
, 							{
								"key" : 10785,
								"value" : [ 73.260000000000005 ]
							}
, 							{
								"key" : 10786,
								"value" : [ 77.540000000000006 ]
							}
, 							{
								"key" : 10787,
								"value" : [ 79.629999999999995 ]
							}
, 							{
								"key" : 10788,
								"value" : [ 80.469999999999999 ]
							}
, 							{
								"key" : 10789,
								"value" : [ 80.939999999999998 ]
							}
, 							{
								"key" : 10790,
								"value" : [ 81.099999999999994 ]
							}
, 							{
								"key" : 10791,
								"value" : [ 80.799999999999997 ]
							}
, 							{
								"key" : 10792,
								"value" : [ 80.040000000000006 ]
							}
, 							{
								"key" : 10793,
								"value" : [ 79.829999999999998 ]
							}
, 							{
								"key" : 10794,
								"value" : [ 79.019999999999996 ]
							}
, 							{
								"key" : 10795,
								"value" : [ 76.349999999999994 ]
							}
, 							{
								"key" : 10796,
								"value" : [ 73.650000000000006 ]
							}
, 							{
								"key" : 10797,
								"value" : [ 72.590000000000003 ]
							}
, 							{
								"key" : 10798,
								"value" : [ 71.849999999999994 ]
							}
, 							{
								"key" : 10799,
								"value" : [ 71.150000000000006 ]
							}
, 							{
								"key" : 10800,
								"value" : [ 70.390000000000001 ]
							}
, 							{
								"key" : 10801,
								"value" : [ 69.620000000000005 ]
							}
, 							{
								"key" : 10802,
								"value" : [ 68.760000000000005 ]
							}
, 							{
								"key" : 10803,
								"value" : [ 68.040000000000006 ]
							}
, 							{
								"key" : 10804,
								"value" : [ 67.459999999999994 ]
							}
, 							{
								"key" : 10805,
								"value" : [ 67.239999999999995 ]
							}
, 							{
								"key" : 10806,
								"value" : [ 68.950000000000003 ]
							}
, 							{
								"key" : 10807,
								"value" : [ 70.340000000000003 ]
							}
, 							{
								"key" : 10808,
								"value" : [ 71.040000000000006 ]
							}
, 							{
								"key" : 10809,
								"value" : [ 71.730000000000004 ]
							}
, 							{
								"key" : 10810,
								"value" : [ 71.920000000000002 ]
							}
, 							{
								"key" : 10811,
								"value" : [ 71.510000000000005 ]
							}
, 							{
								"key" : 10812,
								"value" : [ 71.689999999999998 ]
							}
, 							{
								"key" : 10813,
								"value" : [ 73.670000000000002 ]
							}
, 							{
								"key" : 10814,
								"value" : [ 75.900000000000006 ]
							}
, 							{
								"key" : 10815,
								"value" : [ 76.780000000000001 ]
							}
, 							{
								"key" : 10816,
								"value" : [ 77.219999999999999 ]
							}
, 							{
								"key" : 10817,
								"value" : [ 77.049999999999997 ]
							}
, 							{
								"key" : 10818,
								"value" : [ 76.189999999999998 ]
							}
, 							{
								"key" : 10819,
								"value" : [ 74.890000000000001 ]
							}
, 							{
								"key" : 10820,
								"value" : [ 73.739999999999995 ]
							}
, 							{
								"key" : 10821,
								"value" : [ 72.909999999999997 ]
							}
, 							{
								"key" : 10822,
								"value" : [ 72.269999999999996 ]
							}
, 							{
								"key" : 10823,
								"value" : [ 71.829999999999998 ]
							}
, 							{
								"key" : 10824,
								"value" : [ 71.640000000000001 ]
							}
, 							{
								"key" : 10825,
								"value" : [ 71.510000000000005 ]
							}
, 							{
								"key" : 10826,
								"value" : [ 71.489999999999995 ]
							}
, 							{
								"key" : 10827,
								"value" : [ 71.459999999999994 ]
							}
, 							{
								"key" : 10828,
								"value" : [ 70.920000000000002 ]
							}
, 							{
								"key" : 10829,
								"value" : [ 69.840000000000003 ]
							}
, 							{
								"key" : 10830,
								"value" : [ 69.599999999999994 ]
							}
, 							{
								"key" : 10831,
								"value" : [ 70.049999999999997 ]
							}
, 							{
								"key" : 10832,
								"value" : [ 70.540000000000006 ]
							}
, 							{
								"key" : 10833,
								"value" : [ 70.950000000000003 ]
							}
, 							{
								"key" : 10834,
								"value" : [ 71.920000000000002 ]
							}
, 							{
								"key" : 10835,
								"value" : [ 73.040000000000006 ]
							}
, 							{
								"key" : 10836,
								"value" : [ 73.939999999999998 ]
							}
, 							{
								"key" : 10837,
								"value" : [ 74.549999999999997 ]
							}
, 							{
								"key" : 10838,
								"value" : [ 74.879999999999995 ]
							}
, 							{
								"key" : 10839,
								"value" : [ 74.609999999999999 ]
							}
, 							{
								"key" : 10840,
								"value" : [ 73.900000000000006 ]
							}
, 							{
								"key" : 10841,
								"value" : [ 72.909999999999997 ]
							}
, 							{
								"key" : 10842,
								"value" : [ 72.030000000000001 ]
							}
, 							{
								"key" : 10843,
								"value" : [ 71.280000000000001 ]
							}
, 							{
								"key" : 10844,
								"value" : [ 69.659999999999997 ]
							}
, 							{
								"key" : 10845,
								"value" : [ 68.739999999999995 ]
							}
, 							{
								"key" : 10846,
								"value" : [ 67.730000000000004 ]
							}
, 							{
								"key" : 10847,
								"value" : [ 66.650000000000006 ]
							}
, 							{
								"key" : 10848,
								"value" : [ 65.680000000000007 ]
							}
, 							{
								"key" : 10849,
								"value" : [ 64.939999999999998 ]
							}
, 							{
								"key" : 10850,
								"value" : [ 64.269999999999996 ]
							}
, 							{
								"key" : 10851,
								"value" : [ 63.630000000000003 ]
							}
, 							{
								"key" : 10852,
								"value" : [ 62.920000000000002 ]
							}
, 							{
								"key" : 10853,
								"value" : [ 62.469999999999999 ]
							}
, 							{
								"key" : 10854,
								"value" : [ 63.590000000000003 ]
							}
, 							{
								"key" : 10855,
								"value" : [ 65.260000000000005 ]
							}
, 							{
								"key" : 10856,
								"value" : [ 67.319999999999993 ]
							}
, 							{
								"key" : 10857,
								"value" : [ 68.359999999999999 ]
							}
, 							{
								"key" : 10858,
								"value" : [ 69.060000000000002 ]
							}
, 							{
								"key" : 10859,
								"value" : [ 69.780000000000001 ]
							}
, 							{
								"key" : 10860,
								"value" : [ 70.519999999999996 ]
							}
, 							{
								"key" : 10861,
								"value" : [ 71.060000000000002 ]
							}
, 							{
								"key" : 10862,
								"value" : [ 71.459999999999994 ]
							}
, 							{
								"key" : 10863,
								"value" : [ 71.599999999999994 ]
							}
, 							{
								"key" : 10864,
								"value" : [ 71.290000000000006 ]
							}
, 							{
								"key" : 10865,
								"value" : [ 70.659999999999997 ]
							}
, 							{
								"key" : 10866,
								"value" : [ 69.75 ]
							}
, 							{
								"key" : 10867,
								"value" : [ 68.129999999999995 ]
							}
, 							{
								"key" : 10868,
								"value" : [ 65.299999999999997 ]
							}
, 							{
								"key" : 10869,
								"value" : [ 63.93 ]
							}
, 							{
								"key" : 10870,
								"value" : [ 63.450000000000003 ]
							}
, 							{
								"key" : 10871,
								"value" : [ 63.270000000000003 ]
							}
, 							{
								"key" : 10872,
								"value" : [ 63.009999999999998 ]
							}
, 							{
								"key" : 10873,
								"value" : [ 62.710000000000001 ]
							}
, 							{
								"key" : 10874,
								"value" : [ 62.420000000000002 ]
							}
, 							{
								"key" : 10875,
								"value" : [ 62.079999999999998 ]
							}
, 							{
								"key" : 10876,
								"value" : [ 61.659999999999997 ]
							}
, 							{
								"key" : 10877,
								"value" : [ 61.409999999999997 ]
							}
, 							{
								"key" : 10878,
								"value" : [ 62.869999999999997 ]
							}
, 							{
								"key" : 10879,
								"value" : [ 64.310000000000002 ]
							}
, 							{
								"key" : 10880,
								"value" : [ 67.209999999999994 ]
							}
, 							{
								"key" : 10881,
								"value" : [ 70.969999999999999 ]
							}
, 							{
								"key" : 10882,
								"value" : [ 73.129999999999995 ]
							}
, 							{
								"key" : 10883,
								"value" : [ 74.519999999999996 ]
							}
, 							{
								"key" : 10884,
								"value" : [ 75.489999999999995 ]
							}
, 							{
								"key" : 10885,
								"value" : [ 76.209999999999994 ]
							}
, 							{
								"key" : 10886,
								"value" : [ 76.659999999999997 ]
							}
, 							{
								"key" : 10887,
								"value" : [ 76.819999999999993 ]
							}
, 							{
								"key" : 10888,
								"value" : [ 76.370000000000005 ]
							}
, 							{
								"key" : 10889,
								"value" : [ 75.939999999999998 ]
							}
, 							{
								"key" : 10890,
								"value" : [ 75.219999999999999 ]
							}
, 							{
								"key" : 10891,
								"value" : [ 73.810000000000002 ]
							}
, 							{
								"key" : 10892,
								"value" : [ 72.269999999999996 ]
							}
, 							{
								"key" : 10893,
								"value" : [ 71.439999999999998 ]
							}
, 							{
								"key" : 10894,
								"value" : [ 70.810000000000002 ]
							}
, 							{
								"key" : 10895,
								"value" : [ 69.930000000000007 ]
							}
, 							{
								"key" : 10896,
								"value" : [ 69.170000000000002 ]
							}
, 							{
								"key" : 10897,
								"value" : [ 68.019999999999996 ]
							}
, 							{
								"key" : 10898,
								"value" : [ 67.060000000000002 ]
							}
, 							{
								"key" : 10899,
								"value" : [ 66.400000000000006 ]
							}
, 							{
								"key" : 10900,
								"value" : [ 65.819999999999993 ]
							}
, 							{
								"key" : 10901,
								"value" : [ 65.439999999999998 ]
							}
, 							{
								"key" : 10902,
								"value" : [ 65.609999999999999 ]
							}
, 							{
								"key" : 10903,
								"value" : [ 67.209999999999994 ]
							}
, 							{
								"key" : 10904,
								"value" : [ 70.030000000000001 ]
							}
, 							{
								"key" : 10905,
								"value" : [ 72.390000000000001 ]
							}
, 							{
								"key" : 10906,
								"value" : [ 74.790000000000006 ]
							}
, 							{
								"key" : 10907,
								"value" : [ 76.959999999999994 ]
							}
, 							{
								"key" : 10908,
								"value" : [ 78.120000000000005 ]
							}
, 							{
								"key" : 10909,
								"value" : [ 78.310000000000002 ]
							}
, 							{
								"key" : 10910,
								"value" : [ 77.920000000000002 ]
							}
, 							{
								"key" : 10911,
								"value" : [ 76.959999999999994 ]
							}
, 							{
								"key" : 10912,
								"value" : [ 75.420000000000002 ]
							}
, 							{
								"key" : 10913,
								"value" : [ 73.530000000000001 ]
							}
, 							{
								"key" : 10914,
								"value" : [ 71.379999999999995 ]
							}
, 							{
								"key" : 10915,
								"value" : [ 69.310000000000002 ]
							}
, 							{
								"key" : 10916,
								"value" : [ 67.299999999999997 ]
							}
, 							{
								"key" : 10917,
								"value" : [ 67.189999999999998 ]
							}
, 							{
								"key" : 10918,
								"value" : [ 68.650000000000006 ]
							}
, 							{
								"key" : 10919,
								"value" : [ 69.870000000000005 ]
							}
, 							{
								"key" : 10920,
								"value" : [ 70.650000000000006 ]
							}
, 							{
								"key" : 10921,
								"value" : [ 71.010000000000005 ]
							}
, 							{
								"key" : 10922,
								"value" : [ 70.840000000000003 ]
							}
, 							{
								"key" : 10923,
								"value" : [ 69.780000000000001 ]
							}
, 							{
								"key" : 10924,
								"value" : [ 68.650000000000006 ]
							}
, 							{
								"key" : 10925,
								"value" : [ 67.980000000000004 ]
							}
, 							{
								"key" : 10926,
								"value" : [ 68.700000000000003 ]
							}
, 							{
								"key" : 10927,
								"value" : [ 70.340000000000003 ]
							}
, 							{
								"key" : 10928,
								"value" : [ 72.930000000000007 ]
							}
, 							{
								"key" : 10929,
								"value" : [ 76.079999999999998 ]
							}
, 							{
								"key" : 10930,
								"value" : [ 77.670000000000002 ]
							}
, 							{
								"key" : 10931,
								"value" : [ 78.760000000000005 ]
							}
, 							{
								"key" : 10932,
								"value" : [ 79.560000000000002 ]
							}
, 							{
								"key" : 10933,
								"value" : [ 80.109999999999999 ]
							}
, 							{
								"key" : 10934,
								"value" : [ 80.379999999999995 ]
							}
, 							{
								"key" : 10935,
								"value" : [ 80.489999999999995 ]
							}
, 							{
								"key" : 10936,
								"value" : [ 80.459999999999994 ]
							}
, 							{
								"key" : 10937,
								"value" : [ 79.969999999999999 ]
							}
, 							{
								"key" : 10938,
								"value" : [ 78.870000000000005 ]
							}
, 							{
								"key" : 10939,
								"value" : [ 77.129999999999995 ]
							}
, 							{
								"key" : 10940,
								"value" : [ 75.159999999999997 ]
							}
, 							{
								"key" : 10941,
								"value" : [ 73.799999999999997 ]
							}
, 							{
								"key" : 10942,
								"value" : [ 73.109999999999999 ]
							}
, 							{
								"key" : 10943,
								"value" : [ 72.370000000000005 ]
							}
, 							{
								"key" : 10944,
								"value" : [ 71.780000000000001 ]
							}
, 							{
								"key" : 10945,
								"value" : [ 71.239999999999995 ]
							}
, 							{
								"key" : 10946,
								"value" : [ 70.480000000000004 ]
							}
, 							{
								"key" : 10947,
								"value" : [ 69.760000000000005 ]
							}
, 							{
								"key" : 10948,
								"value" : [ 69.219999999999999 ]
							}
, 							{
								"key" : 10949,
								"value" : [ 69.219999999999999 ]
							}
, 							{
								"key" : 10950,
								"value" : [ 69.780000000000001 ]
							}
, 							{
								"key" : 10951,
								"value" : [ 70.659999999999997 ]
							}
, 							{
								"key" : 10952,
								"value" : [ 72.049999999999997 ]
							}
, 							{
								"key" : 10953,
								"value" : [ 73.260000000000005 ]
							}
, 							{
								"key" : 10954,
								"value" : [ 73.290000000000006 ]
							}
, 							{
								"key" : 10955,
								"value" : [ 72.519999999999996 ]
							}
, 							{
								"key" : 10956,
								"value" : [ 71.239999999999995 ]
							}
, 							{
								"key" : 10957,
								"value" : [ 70.090000000000003 ]
							}
, 							{
								"key" : 10958,
								"value" : [ 69.370000000000005 ]
							}
, 							{
								"key" : 10959,
								"value" : [ 68.939999999999998 ]
							}
, 							{
								"key" : 10960,
								"value" : [ 69.040000000000006 ]
							}
, 							{
								"key" : 10961,
								"value" : [ 69.549999999999997 ]
							}
, 							{
								"key" : 10962,
								"value" : [ 70.560000000000002 ]
							}
, 							{
								"key" : 10963,
								"value" : [ 70.590000000000003 ]
							}
, 							{
								"key" : 10964,
								"value" : [ 69.400000000000006 ]
							}
, 							{
								"key" : 10965,
								"value" : [ 68.739999999999995 ]
							}
, 							{
								"key" : 10966,
								"value" : [ 68.230000000000004 ]
							}
, 							{
								"key" : 10967,
								"value" : [ 67.769999999999996 ]
							}
, 							{
								"key" : 10968,
								"value" : [ 67.329999999999998 ]
							}
, 							{
								"key" : 10969,
								"value" : [ 66.790000000000006 ]
							}
, 							{
								"key" : 10970,
								"value" : [ 66.400000000000006 ]
							}
, 							{
								"key" : 10971,
								"value" : [ 66.019999999999996 ]
							}
, 							{
								"key" : 10972,
								"value" : [ 65.75 ]
							}
, 							{
								"key" : 10973,
								"value" : [ 65.659999999999997 ]
							}
, 							{
								"key" : 10974,
								"value" : [ 67.409999999999997 ]
							}
, 							{
								"key" : 10975,
								"value" : [ 68.879999999999995 ]
							}
, 							{
								"key" : 10976,
								"value" : [ 70.920000000000002 ]
							}
, 							{
								"key" : 10977,
								"value" : [ 72.459999999999994 ]
							}
, 							{
								"key" : 10978,
								"value" : [ 73.269999999999996 ]
							}
, 							{
								"key" : 10979,
								"value" : [ 73.900000000000006 ]
							}
, 							{
								"key" : 10980,
								"value" : [ 74.459999999999994 ]
							}
, 							{
								"key" : 10981,
								"value" : [ 75.290000000000006 ]
							}
, 							{
								"key" : 10982,
								"value" : [ 76.189999999999998 ]
							}
, 							{
								"key" : 10983,
								"value" : [ 76.709999999999994 ]
							}
, 							{
								"key" : 10984,
								"value" : [ 76.75 ]
							}
, 							{
								"key" : 10985,
								"value" : [ 76.349999999999994 ]
							}
, 							{
								"key" : 10986,
								"value" : [ 75.879999999999995 ]
							}
, 							{
								"key" : 10987,
								"value" : [ 74.260000000000005 ]
							}
, 							{
								"key" : 10988,
								"value" : [ 71.870000000000005 ]
							}
, 							{
								"key" : 10989,
								"value" : [ 70.859999999999999 ]
							}
, 							{
								"key" : 10990,
								"value" : [ 70.390000000000001 ]
							}
, 							{
								"key" : 10991,
								"value" : [ 70.069999999999993 ]
							}
, 							{
								"key" : 10992,
								"value" : [ 69.640000000000001 ]
							}
, 							{
								"key" : 10993,
								"value" : [ 69.120000000000005 ]
							}
, 							{
								"key" : 10994,
								"value" : [ 68.469999999999999 ]
							}
, 							{
								"key" : 10995,
								"value" : [ 67.680000000000007 ]
							}
, 							{
								"key" : 10996,
								"value" : [ 66.939999999999998 ]
							}
, 							{
								"key" : 10997,
								"value" : [ 66.700000000000003 ]
							}
, 							{
								"key" : 10998,
								"value" : [ 68.230000000000004 ]
							}
, 							{
								"key" : 10999,
								"value" : [ 69.640000000000001 ]
							}
, 							{
								"key" : 11000,
								"value" : [ 72.230000000000004 ]
							}
, 							{
								"key" : 11001,
								"value" : [ 73.980000000000004 ]
							}
, 							{
								"key" : 11002,
								"value" : [ 75.060000000000002 ]
							}
, 							{
								"key" : 11003,
								"value" : [ 75.760000000000005 ]
							}
, 							{
								"key" : 11004,
								"value" : [ 76.060000000000002 ]
							}
, 							{
								"key" : 11005,
								"value" : [ 76.209999999999994 ]
							}
, 							{
								"key" : 11006,
								"value" : [ 76.209999999999994 ]
							}
, 							{
								"key" : 11007,
								"value" : [ 76.120000000000005 ]
							}
, 							{
								"key" : 11008,
								"value" : [ 75.900000000000006 ]
							}
, 							{
								"key" : 11009,
								"value" : [ 75.540000000000006 ]
							}
, 							{
								"key" : 11010,
								"value" : [ 74.819999999999993 ]
							}
, 							{
								"key" : 11011,
								"value" : [ 73.170000000000002 ]
							}
, 							{
								"key" : 11012,
								"value" : [ 71.040000000000006 ]
							}
, 							{
								"key" : 11013,
								"value" : [ 70.359999999999999 ]
							}
, 							{
								"key" : 11014,
								"value" : [ 70.269999999999996 ]
							}
, 							{
								"key" : 11015,
								"value" : [ 70.340000000000003 ]
							}
, 							{
								"key" : 11016,
								"value" : [ 70.269999999999996 ]
							}
, 							{
								"key" : 11017,
								"value" : [ 70.299999999999997 ]
							}
, 							{
								"key" : 11018,
								"value" : [ 69.980000000000004 ]
							}
, 							{
								"key" : 11019,
								"value" : [ 69.780000000000001 ]
							}
, 							{
								"key" : 11020,
								"value" : [ 69.299999999999997 ]
							}
, 							{
								"key" : 11021,
								"value" : [ 69.040000000000006 ]
							}
, 							{
								"key" : 11022,
								"value" : [ 70.480000000000004 ]
							}
, 							{
								"key" : 11023,
								"value" : [ 71.689999999999998 ]
							}
, 							{
								"key" : 11024,
								"value" : [ 73.290000000000006 ]
							}
, 							{
								"key" : 11025,
								"value" : [ 76.439999999999998 ]
							}
, 							{
								"key" : 11026,
								"value" : [ 78.659999999999997 ]
							}
, 							{
								"key" : 11027,
								"value" : [ 79.790000000000006 ]
							}
, 							{
								"key" : 11028,
								"value" : [ 80.400000000000006 ]
							}
, 							{
								"key" : 11029,
								"value" : [ 80.620000000000005 ]
							}
, 							{
								"key" : 11030,
								"value" : [ 80.109999999999999 ]
							}
, 							{
								"key" : 11031,
								"value" : [ 79.140000000000001 ]
							}
, 							{
								"key" : 11032,
								"value" : [ 77.859999999999999 ]
							}
, 							{
								"key" : 11033,
								"value" : [ 76.549999999999997 ]
							}
, 							{
								"key" : 11034,
								"value" : [ 75.090000000000003 ]
							}
, 							{
								"key" : 11035,
								"value" : [ 74.189999999999998 ]
							}
, 							{
								"key" : 11036,
								"value" : [ 74.049999999999997 ]
							}
, 							{
								"key" : 11037,
								"value" : [ 74.370000000000005 ]
							}
, 							{
								"key" : 11038,
								"value" : [ 74.709999999999994 ]
							}
, 							{
								"key" : 11039,
								"value" : [ 74.890000000000001 ]
							}
, 							{
								"key" : 11040,
								"value" : [ 74.969999999999999 ]
							}
, 							{
								"key" : 11041,
								"value" : [ 74.969999999999999 ]
							}
, 							{
								"key" : 11042,
								"value" : [ 74.890000000000001 ]
							}
, 							{
								"key" : 11043,
								"value" : [ 75.159999999999997 ]
							}
, 							{
								"key" : 11044,
								"value" : [ 75.219999999999999 ]
							}
, 							{
								"key" : 11045,
								"value" : [ 75.469999999999999 ]
							}
, 							{
								"key" : 11046,
								"value" : [ 75.790000000000006 ]
							}
, 							{
								"key" : 11047,
								"value" : [ 76.280000000000001 ]
							}
, 							{
								"key" : 11048,
								"value" : [ 76.890000000000001 ]
							}
, 							{
								"key" : 11049,
								"value" : [ 78.129999999999995 ]
							}
, 							{
								"key" : 11050,
								"value" : [ 79.790000000000006 ]
							}
, 							{
								"key" : 11051,
								"value" : [ 81.25 ]
							}
, 							{
								"key" : 11052,
								"value" : [ 81.969999999999999 ]
							}
, 							{
								"key" : 11053,
								"value" : [ 82.290000000000006 ]
							}
, 							{
								"key" : 11054,
								"value" : [ 82.670000000000002 ]
							}
, 							{
								"key" : 11055,
								"value" : [ 82.810000000000002 ]
							}
, 							{
								"key" : 11056,
								"value" : [ 82.260000000000005 ]
							}
, 							{
								"key" : 11057,
								"value" : [ 80.920000000000002 ]
							}
, 							{
								"key" : 11058,
								"value" : [ 78.310000000000002 ]
							}
, 							{
								"key" : 11059,
								"value" : [ 75.159999999999997 ]
							}
, 							{
								"key" : 11060,
								"value" : [ 73.900000000000006 ]
							}
, 							{
								"key" : 11061,
								"value" : [ 73.219999999999999 ]
							}
, 							{
								"key" : 11062,
								"value" : [ 72.609999999999999 ]
							}
, 							{
								"key" : 11063,
								"value" : [ 71.849999999999994 ]
							}
, 							{
								"key" : 11064,
								"value" : [ 70.969999999999999 ]
							}
, 							{
								"key" : 11065,
								"value" : [ 70.209999999999994 ]
							}
, 							{
								"key" : 11066,
								"value" : [ 69.959999999999994 ]
							}
, 							{
								"key" : 11067,
								"value" : [ 70.0 ]
							}
, 							{
								"key" : 11068,
								"value" : [ 70.25 ]
							}
, 							{
								"key" : 11069,
								"value" : [ 70.519999999999996 ]
							}
, 							{
								"key" : 11070,
								"value" : [ 70.700000000000003 ]
							}
, 							{
								"key" : 11071,
								"value" : [ 70.790000000000006 ]
							}
, 							{
								"key" : 11072,
								"value" : [ 70.930000000000007 ]
							}
, 							{
								"key" : 11073,
								"value" : [ 71.109999999999999 ]
							}
, 							{
								"key" : 11074,
								"value" : [ 71.129999999999995 ]
							}
, 							{
								"key" : 11075,
								"value" : [ 71.420000000000002 ]
							}
, 							{
								"key" : 11076,
								"value" : [ 71.870000000000005 ]
							}
, 							{
								"key" : 11077,
								"value" : [ 72.140000000000001 ]
							}
, 							{
								"key" : 11078,
								"value" : [ 72.010000000000005 ]
							}
, 							{
								"key" : 11079,
								"value" : [ 71.670000000000002 ]
							}
, 							{
								"key" : 11080,
								"value" : [ 71.260000000000005 ]
							}
, 							{
								"key" : 11081,
								"value" : [ 70.810000000000002 ]
							}
, 							{
								"key" : 11082,
								"value" : [ 70.140000000000001 ]
							}
, 							{
								"key" : 11083,
								"value" : [ 69.299999999999997 ]
							}
, 							{
								"key" : 11084,
								"value" : [ 68.430000000000007 ]
							}
, 							{
								"key" : 11085,
								"value" : [ 68.25 ]
							}
, 							{
								"key" : 11086,
								"value" : [ 68.230000000000004 ]
							}
, 							{
								"key" : 11087,
								"value" : [ 68.219999999999999 ]
							}
, 							{
								"key" : 11088,
								"value" : [ 68.379999999999995 ]
							}
, 							{
								"key" : 11089,
								"value" : [ 68.650000000000006 ]
							}
, 							{
								"key" : 11090,
								"value" : [ 69.040000000000006 ]
							}
, 							{
								"key" : 11091,
								"value" : [ 69.439999999999998 ]
							}
, 							{
								"key" : 11092,
								"value" : [ 69.599999999999994 ]
							}
, 							{
								"key" : 11093,
								"value" : [ 69.930000000000007 ]
							}
, 							{
								"key" : 11094,
								"value" : [ 71.170000000000002 ]
							}
, 							{
								"key" : 11095,
								"value" : [ 72.459999999999994 ]
							}
, 							{
								"key" : 11096,
								"value" : [ 73.719999999999999 ]
							}
, 							{
								"key" : 11097,
								"value" : [ 75.040000000000006 ]
							}
, 							{
								"key" : 11098,
								"value" : [ 76.370000000000005 ]
							}
, 							{
								"key" : 11099,
								"value" : [ 77.140000000000001 ]
							}
, 							{
								"key" : 11100,
								"value" : [ 77.219999999999999 ]
							}
, 							{
								"key" : 11101,
								"value" : [ 77.049999999999997 ]
							}
, 							{
								"key" : 11102,
								"value" : [ 77.140000000000001 ]
							}
, 							{
								"key" : 11103,
								"value" : [ 77.849999999999994 ]
							}
, 							{
								"key" : 11104,
								"value" : [ 77.450000000000003 ]
							}
, 							{
								"key" : 11105,
								"value" : [ 76.329999999999998 ]
							}
, 							{
								"key" : 11106,
								"value" : [ 75.129999999999995 ]
							}
, 							{
								"key" : 11107,
								"value" : [ 73.810000000000002 ]
							}
, 							{
								"key" : 11108,
								"value" : [ 72.450000000000003 ]
							}
, 							{
								"key" : 11109,
								"value" : [ 71.939999999999998 ]
							}
, 							{
								"key" : 11110,
								"value" : [ 71.760000000000005 ]
							}
, 							{
								"key" : 11111,
								"value" : [ 71.819999999999993 ]
							}
, 							{
								"key" : 11112,
								"value" : [ 71.959999999999994 ]
							}
, 							{
								"key" : 11113,
								"value" : [ 72.090000000000003 ]
							}
, 							{
								"key" : 11114,
								"value" : [ 72.159999999999997 ]
							}
, 							{
								"key" : 11115,
								"value" : [ 72.189999999999998 ]
							}
, 							{
								"key" : 11116,
								"value" : [ 71.959999999999994 ]
							}
, 							{
								"key" : 11117,
								"value" : [ 71.920000000000002 ]
							}
, 							{
								"key" : 11118,
								"value" : [ 73.040000000000006 ]
							}
, 							{
								"key" : 11119,
								"value" : [ 73.290000000000006 ]
							}
, 							{
								"key" : 11120,
								"value" : [ 73.310000000000002 ]
							}
, 							{
								"key" : 11121,
								"value" : [ 73.349999999999994 ]
							}
, 							{
								"key" : 11122,
								"value" : [ 73.420000000000002 ]
							}
, 							{
								"key" : 11123,
								"value" : [ 73.629999999999995 ]
							}
, 							{
								"key" : 11124,
								"value" : [ 73.760000000000005 ]
							}
, 							{
								"key" : 11125,
								"value" : [ 73.510000000000005 ]
							}
, 							{
								"key" : 11126,
								"value" : [ 73.150000000000006 ]
							}
, 							{
								"key" : 11127,
								"value" : [ 73.090000000000003 ]
							}
, 							{
								"key" : 11128,
								"value" : [ 73.420000000000002 ]
							}
, 							{
								"key" : 11129,
								"value" : [ 73.200000000000003 ]
							}
, 							{
								"key" : 11130,
								"value" : [ 71.819999999999993 ]
							}
, 							{
								"key" : 11131,
								"value" : [ 70.290000000000006 ]
							}
, 							{
								"key" : 11132,
								"value" : [ 69.939999999999998 ]
							}
, 							{
								"key" : 11133,
								"value" : [ 70.659999999999997 ]
							}
, 							{
								"key" : 11134,
								"value" : [ 71.760000000000005 ]
							}
, 							{
								"key" : 11135,
								"value" : [ 72.319999999999993 ]
							}
, 							{
								"key" : 11136,
								"value" : [ 71.189999999999998 ]
							}
, 							{
								"key" : 11137,
								"value" : [ 69.689999999999998 ]
							}
, 							{
								"key" : 11138,
								"value" : [ 68.790000000000006 ]
							}
, 							{
								"key" : 11139,
								"value" : [ 68.359999999999999 ]
							}
, 							{
								"key" : 11140,
								"value" : [ 68.0 ]
							}
, 							{
								"key" : 11141,
								"value" : [ 67.689999999999998 ]
							}
, 							{
								"key" : 11142,
								"value" : [ 68.400000000000006 ]
							}
, 							{
								"key" : 11143,
								"value" : [ 68.950000000000003 ]
							}
, 							{
								"key" : 11144,
								"value" : [ 69.260000000000005 ]
							}
, 							{
								"key" : 11145,
								"value" : [ 69.510000000000005 ]
							}
, 							{
								"key" : 11146,
								"value" : [ 69.909999999999997 ]
							}
, 							{
								"key" : 11147,
								"value" : [ 70.299999999999997 ]
							}
, 							{
								"key" : 11148,
								"value" : [ 70.719999999999999 ]
							}
, 							{
								"key" : 11149,
								"value" : [ 71.040000000000006 ]
							}
, 							{
								"key" : 11150,
								"value" : [ 71.400000000000006 ]
							}
, 							{
								"key" : 11151,
								"value" : [ 71.420000000000002 ]
							}
, 							{
								"key" : 11152,
								"value" : [ 71.280000000000001 ]
							}
, 							{
								"key" : 11153,
								"value" : [ 71.040000000000006 ]
							}
, 							{
								"key" : 11154,
								"value" : [ 70.519999999999996 ]
							}
, 							{
								"key" : 11155,
								"value" : [ 69.400000000000006 ]
							}
, 							{
								"key" : 11156,
								"value" : [ 67.549999999999997 ]
							}
, 							{
								"key" : 11157,
								"value" : [ 67.140000000000001 ]
							}
, 							{
								"key" : 11158,
								"value" : [ 66.969999999999999 ]
							}
, 							{
								"key" : 11159,
								"value" : [ 66.810000000000002 ]
							}
, 							{
								"key" : 11160,
								"value" : [ 66.689999999999998 ]
							}
, 							{
								"key" : 11161,
								"value" : [ 66.689999999999998 ]
							}
, 							{
								"key" : 11162,
								"value" : [ 66.340000000000003 ]
							}
, 							{
								"key" : 11163,
								"value" : [ 65.890000000000001 ]
							}
, 							{
								"key" : 11164,
								"value" : [ 65.640000000000001 ]
							}
, 							{
								"key" : 11165,
								"value" : [ 65.709999999999994 ]
							}
, 							{
								"key" : 11166,
								"value" : [ 67.049999999999997 ]
							}
, 							{
								"key" : 11167,
								"value" : [ 68.790000000000006 ]
							}
, 							{
								"key" : 11168,
								"value" : [ 70.840000000000003 ]
							}
, 							{
								"key" : 11169,
								"value" : [ 72.859999999999999 ]
							}
, 							{
								"key" : 11170,
								"value" : [ 74.700000000000003 ]
							}
, 							{
								"key" : 11171,
								"value" : [ 75.689999999999998 ]
							}
, 							{
								"key" : 11172,
								"value" : [ 76.049999999999997 ]
							}
, 							{
								"key" : 11173,
								"value" : [ 76.930000000000007 ]
							}
, 							{
								"key" : 11174,
								"value" : [ 78.370000000000005 ]
							}
, 							{
								"key" : 11175,
								"value" : [ 79.469999999999999 ]
							}
, 							{
								"key" : 11176,
								"value" : [ 79.590000000000003 ]
							}
, 							{
								"key" : 11177,
								"value" : [ 78.909999999999997 ]
							}
, 							{
								"key" : 11178,
								"value" : [ 77.859999999999999 ]
							}
, 							{
								"key" : 11179,
								"value" : [ 75.849999999999994 ]
							}
, 							{
								"key" : 11180,
								"value" : [ 74.370000000000005 ]
							}
, 							{
								"key" : 11181,
								"value" : [ 74.099999999999994 ]
							}
, 							{
								"key" : 11182,
								"value" : [ 73.060000000000002 ]
							}
, 							{
								"key" : 11183,
								"value" : [ 71.739999999999995 ]
							}
, 							{
								"key" : 11184,
								"value" : [ 70.969999999999999 ]
							}
, 							{
								"key" : 11185,
								"value" : [ 70.069999999999993 ]
							}
, 							{
								"key" : 11186,
								"value" : [ 69.329999999999998 ]
							}
, 							{
								"key" : 11187,
								"value" : [ 68.650000000000006 ]
							}
, 							{
								"key" : 11188,
								"value" : [ 67.909999999999997 ]
							}
, 							{
								"key" : 11189,
								"value" : [ 67.709999999999994 ]
							}
, 							{
								"key" : 11190,
								"value" : [ 68.560000000000002 ]
							}
, 							{
								"key" : 11191,
								"value" : [ 70.319999999999993 ]
							}
, 							{
								"key" : 11192,
								"value" : [ 72.810000000000002 ]
							}
, 							{
								"key" : 11193,
								"value" : [ 75.180000000000007 ]
							}
, 							{
								"key" : 11194,
								"value" : [ 76.659999999999997 ]
							}
, 							{
								"key" : 11195,
								"value" : [ 77.340000000000003 ]
							}
, 							{
								"key" : 11196,
								"value" : [ 77.920000000000002 ]
							}
, 							{
								"key" : 11197,
								"value" : [ 78.209999999999994 ]
							}
, 							{
								"key" : 11198,
								"value" : [ 78.420000000000002 ]
							}
, 							{
								"key" : 11199,
								"value" : [ 77.950000000000003 ]
							}
, 							{
								"key" : 11200,
								"value" : [ 77.579999999999998 ]
							}
, 							{
								"key" : 11201,
								"value" : [ 76.640000000000001 ]
							}
, 							{
								"key" : 11202,
								"value" : [ 76.260000000000005 ]
							}
, 							{
								"key" : 11203,
								"value" : [ 75.920000000000002 ]
							}
, 							{
								"key" : 11204,
								"value" : [ 75.290000000000006 ]
							}
, 							{
								"key" : 11205,
								"value" : [ 74.75 ]
							}
, 							{
								"key" : 11206,
								"value" : [ 74.079999999999998 ]
							}
, 							{
								"key" : 11207,
								"value" : [ 73.379999999999995 ]
							}
, 							{
								"key" : 11208,
								"value" : [ 72.819999999999993 ]
							}
, 							{
								"key" : 11209,
								"value" : [ 71.739999999999995 ]
							}
, 							{
								"key" : 11210,
								"value" : [ 70.290000000000006 ]
							}
, 							{
								"key" : 11211,
								"value" : [ 68.269999999999996 ]
							}
, 							{
								"key" : 11212,
								"value" : [ 66.849999999999994 ]
							}
, 							{
								"key" : 11213,
								"value" : [ 66.219999999999999 ]
							}
, 							{
								"key" : 11214,
								"value" : [ 66.849999999999994 ]
							}
, 							{
								"key" : 11215,
								"value" : [ 68.609999999999999 ]
							}
, 							{
								"key" : 11216,
								"value" : [ 70.409999999999997 ]
							}
, 							{
								"key" : 11217,
								"value" : [ 72.159999999999997 ]
							}
, 							{
								"key" : 11218,
								"value" : [ 73.719999999999999 ]
							}
, 							{
								"key" : 11219,
								"value" : [ 75.129999999999995 ]
							}
, 							{
								"key" : 11220,
								"value" : [ 76.260000000000005 ]
							}
, 							{
								"key" : 11221,
								"value" : [ 77.090000000000003 ]
							}
, 							{
								"key" : 11222,
								"value" : [ 77.590000000000003 ]
							}
, 							{
								"key" : 11223,
								"value" : [ 77.859999999999999 ]
							}
, 							{
								"key" : 11224,
								"value" : [ 77.719999999999999 ]
							}
, 							{
								"key" : 11225,
								"value" : [ 77.219999999999999 ]
							}
, 							{
								"key" : 11226,
								"value" : [ 76.659999999999997 ]
							}
, 							{
								"key" : 11227,
								"value" : [ 75.420000000000002 ]
							}
, 							{
								"key" : 11228,
								"value" : [ 73.939999999999998 ]
							}
, 							{
								"key" : 11229,
								"value" : [ 73.290000000000006 ]
							}
, 							{
								"key" : 11230,
								"value" : [ 72.719999999999999 ]
							}
, 							{
								"key" : 11231,
								"value" : [ 71.709999999999994 ]
							}
, 							{
								"key" : 11232,
								"value" : [ 70.930000000000007 ]
							}
, 							{
								"key" : 11233,
								"value" : [ 70.340000000000003 ]
							}
, 							{
								"key" : 11234,
								"value" : [ 69.670000000000002 ]
							}
, 							{
								"key" : 11235,
								"value" : [ 68.829999999999998 ]
							}
, 							{
								"key" : 11236,
								"value" : [ 68.019999999999996 ]
							}
, 							{
								"key" : 11237,
								"value" : [ 67.409999999999997 ]
							}
, 							{
								"key" : 11238,
								"value" : [ 68.200000000000003 ]
							}
, 							{
								"key" : 11239,
								"value" : [ 69.510000000000005 ]
							}
, 							{
								"key" : 11240,
								"value" : [ 71.200000000000003 ]
							}
, 							{
								"key" : 11241,
								"value" : [ 73.129999999999995 ]
							}
, 							{
								"key" : 11242,
								"value" : [ 74.640000000000001 ]
							}
, 							{
								"key" : 11243,
								"value" : [ 75.180000000000007 ]
							}
, 							{
								"key" : 11244,
								"value" : [ 75.239999999999995 ]
							}
, 							{
								"key" : 11245,
								"value" : [ 74.980000000000004 ]
							}
, 							{
								"key" : 11246,
								"value" : [ 74.049999999999997 ]
							}
, 							{
								"key" : 11247,
								"value" : [ 72.180000000000007 ]
							}
, 							{
								"key" : 11248,
								"value" : [ 70.030000000000001 ]
							}
, 							{
								"key" : 11249,
								"value" : [ 68.739999999999995 ]
							}
, 							{
								"key" : 11250,
								"value" : [ 68.409999999999997 ]
							}
, 							{
								"key" : 11251,
								"value" : [ 68.090000000000003 ]
							}
, 							{
								"key" : 11252,
								"value" : [ 67.280000000000001 ]
							}
, 							{
								"key" : 11253,
								"value" : [ 67.120000000000005 ]
							}
, 							{
								"key" : 11254,
								"value" : [ 67.060000000000002 ]
							}
, 							{
								"key" : 11255,
								"value" : [ 66.959999999999994 ]
							}
, 							{
								"key" : 11256,
								"value" : [ 66.790000000000006 ]
							}
, 							{
								"key" : 11257,
								"value" : [ 66.629999999999995 ]
							}
, 							{
								"key" : 11258,
								"value" : [ 66.519999999999996 ]
							}
, 							{
								"key" : 11259,
								"value" : [ 66.420000000000002 ]
							}
, 							{
								"key" : 11260,
								"value" : [ 66.060000000000002 ]
							}
, 							{
								"key" : 11261,
								"value" : [ 65.700000000000003 ]
							}
, 							{
								"key" : 11262,
								"value" : [ 67.120000000000005 ]
							}
, 							{
								"key" : 11263,
								"value" : [ 68.319999999999993 ]
							}
, 							{
								"key" : 11264,
								"value" : [ 69.390000000000001 ]
							}
, 							{
								"key" : 11265,
								"value" : [ 70.469999999999999 ]
							}
, 							{
								"key" : 11266,
								"value" : [ 71.329999999999998 ]
							}
, 							{
								"key" : 11267,
								"value" : [ 71.829999999999998 ]
							}
, 							{
								"key" : 11268,
								"value" : [ 72.069999999999993 ]
							}
, 							{
								"key" : 11269,
								"value" : [ 72.209999999999994 ]
							}
, 							{
								"key" : 11270,
								"value" : [ 72.319999999999993 ]
							}
, 							{
								"key" : 11271,
								"value" : [ 72.319999999999993 ]
							}
, 							{
								"key" : 11272,
								"value" : [ 72.120000000000005 ]
							}
, 							{
								"key" : 11273,
								"value" : [ 71.730000000000004 ]
							}
, 							{
								"key" : 11274,
								"value" : [ 71.019999999999996 ]
							}
, 							{
								"key" : 11275,
								"value" : [ 69.599999999999994 ]
							}
, 							{
								"key" : 11276,
								"value" : [ 67.689999999999998 ]
							}
, 							{
								"key" : 11277,
								"value" : [ 67.280000000000001 ]
							}
, 							{
								"key" : 11278,
								"value" : [ 67.120000000000005 ]
							}
, 							{
								"key" : 11279,
								"value" : [ 66.959999999999994 ]
							}
, 							{
								"key" : 11280,
								"value" : [ 66.879999999999995 ]
							}
, 							{
								"key" : 11281,
								"value" : [ 66.969999999999999 ]
							}
, 							{
								"key" : 11282,
								"value" : [ 67.150000000000006 ]
							}
, 							{
								"key" : 11283,
								"value" : [ 67.239999999999995 ]
							}
, 							{
								"key" : 11284,
								"value" : [ 67.349999999999994 ]
							}
, 							{
								"key" : 11285,
								"value" : [ 67.590000000000003 ]
							}
, 							{
								"key" : 11286,
								"value" : [ 67.890000000000001 ]
							}
, 							{
								"key" : 11287,
								"value" : [ 67.170000000000002 ]
							}
, 							{
								"key" : 11288,
								"value" : [ 66.219999999999999 ]
							}
, 							{
								"key" : 11289,
								"value" : [ 66.180000000000007 ]
							}
, 							{
								"key" : 11290,
								"value" : [ 66.599999999999994 ]
							}
, 							{
								"key" : 11291,
								"value" : [ 67.459999999999994 ]
							}
, 							{
								"key" : 11292,
								"value" : [ 69.620000000000005 ]
							}
, 							{
								"key" : 11293,
								"value" : [ 71.730000000000004 ]
							}
, 							{
								"key" : 11294,
								"value" : [ 72.930000000000007 ]
							}
, 							{
								"key" : 11295,
								"value" : [ 74.140000000000001 ]
							}
, 							{
								"key" : 11296,
								"value" : [ 74.459999999999994 ]
							}
, 							{
								"key" : 11297,
								"value" : [ 73.939999999999998 ]
							}
, 							{
								"key" : 11298,
								"value" : [ 73.090000000000003 ]
							}
, 							{
								"key" : 11299,
								"value" : [ 72.049999999999997 ]
							}
, 							{
								"key" : 11300,
								"value" : [ 70.989999999999995 ]
							}
, 							{
								"key" : 11301,
								"value" : [ 70.719999999999999 ]
							}
, 							{
								"key" : 11302,
								"value" : [ 70.659999999999997 ]
							}
, 							{
								"key" : 11303,
								"value" : [ 70.560000000000002 ]
							}
, 							{
								"key" : 11304,
								"value" : [ 70.540000000000006 ]
							}
, 							{
								"key" : 11305,
								"value" : [ 70.560000000000002 ]
							}
, 							{
								"key" : 11306,
								"value" : [ 69.939999999999998 ]
							}
, 							{
								"key" : 11307,
								"value" : [ 69.310000000000002 ]
							}
, 							{
								"key" : 11308,
								"value" : [ 68.950000000000003 ]
							}
, 							{
								"key" : 11309,
								"value" : [ 68.939999999999998 ]
							}
, 							{
								"key" : 11310,
								"value" : [ 69.329999999999998 ]
							}
, 							{
								"key" : 11311,
								"value" : [ 69.709999999999994 ]
							}
, 							{
								"key" : 11312,
								"value" : [ 70.120000000000005 ]
							}
, 							{
								"key" : 11313,
								"value" : [ 70.900000000000006 ]
							}
, 							{
								"key" : 11314,
								"value" : [ 72.189999999999998 ]
							}
, 							{
								"key" : 11315,
								"value" : [ 72.909999999999997 ]
							}
, 							{
								"key" : 11316,
								"value" : [ 72.840000000000003 ]
							}
, 							{
								"key" : 11317,
								"value" : [ 72.269999999999996 ]
							}
, 							{
								"key" : 11318,
								"value" : [ 71.109999999999999 ]
							}
, 							{
								"key" : 11319,
								"value" : [ 69.709999999999994 ]
							}
, 							{
								"key" : 11320,
								"value" : [ 68.849999999999994 ]
							}
, 							{
								"key" : 11321,
								"value" : [ 68.519999999999996 ]
							}
, 							{
								"key" : 11322,
								"value" : [ 68.519999999999996 ]
							}
, 							{
								"key" : 11323,
								"value" : [ 68.25 ]
							}
, 							{
								"key" : 11324,
								"value" : [ 67.909999999999997 ]
							}
, 							{
								"key" : 11325,
								"value" : [ 67.959999999999994 ]
							}
, 							{
								"key" : 11326,
								"value" : [ 68.290000000000006 ]
							}
, 							{
								"key" : 11327,
								"value" : [ 68.950000000000003 ]
							}
, 							{
								"key" : 11328,
								"value" : [ 69.530000000000001 ]
							}
, 							{
								"key" : 11329,
								"value" : [ 69.939999999999998 ]
							}
, 							{
								"key" : 11330,
								"value" : [ 70.200000000000003 ]
							}
, 							{
								"key" : 11331,
								"value" : [ 70.269999999999996 ]
							}
, 							{
								"key" : 11332,
								"value" : [ 70.140000000000001 ]
							}
, 							{
								"key" : 11333,
								"value" : [ 70.030000000000001 ]
							}
, 							{
								"key" : 11334,
								"value" : [ 70.719999999999999 ]
							}
, 							{
								"key" : 11335,
								"value" : [ 71.099999999999994 ]
							}
, 							{
								"key" : 11336,
								"value" : [ 71.829999999999998 ]
							}
, 							{
								"key" : 11337,
								"value" : [ 72.75 ]
							}
, 							{
								"key" : 11338,
								"value" : [ 72.900000000000006 ]
							}
, 							{
								"key" : 11339,
								"value" : [ 72.640000000000001 ]
							}
, 							{
								"key" : 11340,
								"value" : [ 72.359999999999999 ]
							}
, 							{
								"key" : 11341,
								"value" : [ 72.099999999999994 ]
							}
, 							{
								"key" : 11342,
								"value" : [ 71.959999999999994 ]
							}
, 							{
								"key" : 11343,
								"value" : [ 71.909999999999997 ]
							}
, 							{
								"key" : 11344,
								"value" : [ 71.829999999999998 ]
							}
, 							{
								"key" : 11345,
								"value" : [ 71.620000000000005 ]
							}
, 							{
								"key" : 11346,
								"value" : [ 71.260000000000005 ]
							}
, 							{
								"key" : 11347,
								"value" : [ 70.840000000000003 ]
							}
, 							{
								"key" : 11348,
								"value" : [ 70.390000000000001 ]
							}
, 							{
								"key" : 11349,
								"value" : [ 70.140000000000001 ]
							}
, 							{
								"key" : 11350,
								"value" : [ 69.959999999999994 ]
							}
, 							{
								"key" : 11351,
								"value" : [ 69.840000000000003 ]
							}
, 							{
								"key" : 11352,
								"value" : [ 69.730000000000004 ]
							}
, 							{
								"key" : 11353,
								"value" : [ 69.75 ]
							}
, 							{
								"key" : 11354,
								"value" : [ 69.400000000000006 ]
							}
, 							{
								"key" : 11355,
								"value" : [ 69.010000000000005 ]
							}
, 							{
								"key" : 11356,
								"value" : [ 68.790000000000006 ]
							}
, 							{
								"key" : 11357,
								"value" : [ 68.760000000000005 ]
							}
, 							{
								"key" : 11358,
								"value" : [ 69.730000000000004 ]
							}
, 							{
								"key" : 11359,
								"value" : [ 70.319999999999993 ]
							}
, 							{
								"key" : 11360,
								"value" : [ 71.730000000000004 ]
							}
, 							{
								"key" : 11361,
								"value" : [ 74.189999999999998 ]
							}
, 							{
								"key" : 11362,
								"value" : [ 75.959999999999994 ]
							}
, 							{
								"key" : 11363,
								"value" : [ 77.5 ]
							}
, 							{
								"key" : 11364,
								"value" : [ 78.890000000000001 ]
							}
, 							{
								"key" : 11365,
								"value" : [ 80.109999999999999 ]
							}
, 							{
								"key" : 11366,
								"value" : [ 81.159999999999997 ]
							}
, 							{
								"key" : 11367,
								"value" : [ 81.989999999999995 ]
							}
, 							{
								"key" : 11368,
								"value" : [ 82.239999999999995 ]
							}
, 							{
								"key" : 11369,
								"value" : [ 81.989999999999995 ]
							}
, 							{
								"key" : 11370,
								"value" : [ 81.629999999999995 ]
							}
, 							{
								"key" : 11371,
								"value" : [ 79.719999999999999 ]
							}
, 							{
								"key" : 11372,
								"value" : [ 77.319999999999993 ]
							}
, 							{
								"key" : 11373,
								"value" : [ 76.030000000000001 ]
							}
, 							{
								"key" : 11374,
								"value" : [ 75.129999999999995 ]
							}
, 							{
								"key" : 11375,
								"value" : [ 74.370000000000005 ]
							}
, 							{
								"key" : 11376,
								"value" : [ 73.739999999999995 ]
							}
, 							{
								"key" : 11377,
								"value" : [ 73.090000000000003 ]
							}
, 							{
								"key" : 11378,
								"value" : [ 72.480000000000004 ]
							}
, 							{
								"key" : 11379,
								"value" : [ 71.780000000000001 ]
							}
, 							{
								"key" : 11380,
								"value" : [ 71.060000000000002 ]
							}
, 							{
								"key" : 11381,
								"value" : [ 70.519999999999996 ]
							}
, 							{
								"key" : 11382,
								"value" : [ 71.290000000000006 ]
							}
, 							{
								"key" : 11383,
								"value" : [ 72.659999999999997 ]
							}
, 							{
								"key" : 11384,
								"value" : [ 75.159999999999997 ]
							}
, 							{
								"key" : 11385,
								"value" : [ 77.489999999999995 ]
							}
, 							{
								"key" : 11386,
								"value" : [ 78.840000000000003 ]
							}
, 							{
								"key" : 11387,
								"value" : [ 80.010000000000005 ]
							}
, 							{
								"key" : 11388,
								"value" : [ 80.890000000000001 ]
							}
, 							{
								"key" : 11389,
								"value" : [ 81.480000000000004 ]
							}
, 							{
								"key" : 11390,
								"value" : [ 81.840000000000003 ]
							}
, 							{
								"key" : 11391,
								"value" : [ 81.840000000000003 ]
							}
, 							{
								"key" : 11392,
								"value" : [ 81.519999999999996 ]
							}
, 							{
								"key" : 11393,
								"value" : [ 80.980000000000004 ]
							}
, 							{
								"key" : 11394,
								"value" : [ 79.969999999999999 ]
							}
, 							{
								"key" : 11395,
								"value" : [ 78.260000000000005 ]
							}
, 							{
								"key" : 11396,
								"value" : [ 77.019999999999996 ]
							}
, 							{
								"key" : 11397,
								"value" : [ 76.049999999999997 ]
							}
, 							{
								"key" : 11398,
								"value" : [ 75.329999999999998 ]
							}
, 							{
								"key" : 11399,
								"value" : [ 74.769999999999996 ]
							}
, 							{
								"key" : 11400,
								"value" : [ 74.319999999999993 ]
							}
, 							{
								"key" : 11401,
								"value" : [ 73.959999999999994 ]
							}
, 							{
								"key" : 11402,
								"value" : [ 73.489999999999995 ]
							}
, 							{
								"key" : 11403,
								"value" : [ 73.170000000000002 ]
							}
, 							{
								"key" : 11404,
								"value" : [ 73.040000000000006 ]
							}
, 							{
								"key" : 11405,
								"value" : [ 73.260000000000005 ]
							}
, 							{
								"key" : 11406,
								"value" : [ 73.420000000000002 ]
							}
, 							{
								"key" : 11407,
								"value" : [ 74.840000000000003 ]
							}
, 							{
								"key" : 11408,
								"value" : [ 77.219999999999999 ]
							}
, 							{
								"key" : 11409,
								"value" : [ 78.959999999999994 ]
							}
, 							{
								"key" : 11410,
								"value" : [ 79.969999999999999 ]
							}
, 							{
								"key" : 11411,
								"value" : [ 80.670000000000002 ]
							}
, 							{
								"key" : 11412,
								"value" : [ 80.959999999999994 ]
							}
, 							{
								"key" : 11413,
								"value" : [ 81.120000000000005 ]
							}
, 							{
								"key" : 11414,
								"value" : [ 81.049999999999997 ]
							}
, 							{
								"key" : 11415,
								"value" : [ 80.819999999999993 ]
							}
, 							{
								"key" : 11416,
								"value" : [ 80.510000000000005 ]
							}
, 							{
								"key" : 11417,
								"value" : [ 80.109999999999999 ]
							}
, 							{
								"key" : 11418,
								"value" : [ 79.430000000000007 ]
							}
, 							{
								"key" : 11419,
								"value" : [ 78.400000000000006 ]
							}
, 							{
								"key" : 11420,
								"value" : [ 77.109999999999999 ]
							}
, 							{
								"key" : 11421,
								"value" : [ 76.189999999999998 ]
							}
, 							{
								"key" : 11422,
								"value" : [ 74.840000000000003 ]
							}
, 							{
								"key" : 11423,
								"value" : [ 73.530000000000001 ]
							}
, 							{
								"key" : 11424,
								"value" : [ 73.219999999999999 ]
							}
, 							{
								"key" : 11425,
								"value" : [ 72.879999999999995 ]
							}
, 							{
								"key" : 11426,
								"value" : [ 72.069999999999993 ]
							}
, 							{
								"key" : 11427,
								"value" : [ 70.75 ]
							}
, 							{
								"key" : 11428,
								"value" : [ 69.489999999999995 ]
							}
, 							{
								"key" : 11429,
								"value" : [ 68.590000000000003 ]
							}
, 							{
								"key" : 11430,
								"value" : [ 69.689999999999998 ]
							}
, 							{
								"key" : 11431,
								"value" : [ 71.310000000000002 ]
							}
, 							{
								"key" : 11432,
								"value" : [ 74.099999999999994 ]
							}
, 							{
								"key" : 11433,
								"value" : [ 77.950000000000003 ]
							}
, 							{
								"key" : 11434,
								"value" : [ 79.739999999999995 ]
							}
, 							{
								"key" : 11435,
								"value" : [ 80.730000000000004 ]
							}
, 							{
								"key" : 11436,
								"value" : [ 81.730000000000004 ]
							}
, 							{
								"key" : 11437,
								"value" : [ 82.540000000000006 ]
							}
, 							{
								"key" : 11438,
								"value" : [ 83.069999999999993 ]
							}
, 							{
								"key" : 11439,
								"value" : [ 83.390000000000001 ]
							}
, 							{
								"key" : 11440,
								"value" : [ 83.549999999999997 ]
							}
, 							{
								"key" : 11441,
								"value" : [ 83.319999999999993 ]
							}
, 							{
								"key" : 11442,
								"value" : [ 82.540000000000006 ]
							}
, 							{
								"key" : 11443,
								"value" : [ 80.939999999999998 ]
							}
, 							{
								"key" : 11444,
								"value" : [ 78.890000000000001 ]
							}
, 							{
								"key" : 11445,
								"value" : [ 77.849999999999994 ]
							}
, 							{
								"key" : 11446,
								"value" : [ 76.510000000000005 ]
							}
, 							{
								"key" : 11447,
								"value" : [ 75.019999999999996 ]
							}
, 							{
								"key" : 11448,
								"value" : [ 73.450000000000003 ]
							}
, 							{
								"key" : 11449,
								"value" : [ 72.189999999999998 ]
							}
, 							{
								"key" : 11450,
								"value" : [ 71.280000000000001 ]
							}
, 							{
								"key" : 11451,
								"value" : [ 70.480000000000004 ]
							}
, 							{
								"key" : 11452,
								"value" : [ 69.780000000000001 ]
							}
, 							{
								"key" : 11453,
								"value" : [ 69.439999999999998 ]
							}
, 							{
								"key" : 11454,
								"value" : [ 71.019999999999996 ]
							}
, 							{
								"key" : 11455,
								"value" : [ 72.590000000000003 ]
							}
, 							{
								"key" : 11456,
								"value" : [ 74.049999999999997 ]
							}
, 							{
								"key" : 11457,
								"value" : [ 74.790000000000006 ]
							}
, 							{
								"key" : 11458,
								"value" : [ 75.560000000000002 ]
							}
, 							{
								"key" : 11459,
								"value" : [ 77.409999999999997 ]
							}
, 							{
								"key" : 11460,
								"value" : [ 79.409999999999997 ]
							}
, 							{
								"key" : 11461,
								"value" : [ 80.939999999999998 ]
							}
, 							{
								"key" : 11462,
								"value" : [ 82.060000000000002 ]
							}
, 							{
								"key" : 11463,
								"value" : [ 82.739999999999995 ]
							}
, 							{
								"key" : 11464,
								"value" : [ 82.799999999999997 ]
							}
, 							{
								"key" : 11465,
								"value" : [ 81.769999999999996 ]
							}
, 							{
								"key" : 11466,
								"value" : [ 80.870000000000005 ]
							}
, 							{
								"key" : 11467,
								"value" : [ 78.760000000000005 ]
							}
, 							{
								"key" : 11468,
								"value" : [ 77.0 ]
							}
, 							{
								"key" : 11469,
								"value" : [ 76.189999999999998 ]
							}
, 							{
								"key" : 11470,
								"value" : [ 75.540000000000006 ]
							}
, 							{
								"key" : 11471,
								"value" : [ 75.150000000000006 ]
							}
, 							{
								"key" : 11472,
								"value" : [ 74.680000000000007 ]
							}
, 							{
								"key" : 11473,
								"value" : [ 73.849999999999994 ]
							}
, 							{
								"key" : 11474,
								"value" : [ 73.019999999999996 ]
							}
, 							{
								"key" : 11475,
								"value" : [ 72.519999999999996 ]
							}
, 							{
								"key" : 11476,
								"value" : [ 72.049999999999997 ]
							}
, 							{
								"key" : 11477,
								"value" : [ 71.739999999999995 ]
							}
, 							{
								"key" : 11478,
								"value" : [ 72.280000000000001 ]
							}
, 							{
								"key" : 11479,
								"value" : [ 73.359999999999999 ]
							}
, 							{
								"key" : 11480,
								"value" : [ 74.930000000000007 ]
							}
, 							{
								"key" : 11481,
								"value" : [ 77.049999999999997 ]
							}
, 							{
								"key" : 11482,
								"value" : [ 78.510000000000005 ]
							}
, 							{
								"key" : 11483,
								"value" : [ 79.790000000000006 ]
							}
, 							{
								"key" : 11484,
								"value" : [ 80.799999999999997 ]
							}
, 							{
								"key" : 11485,
								"value" : [ 81.189999999999998 ]
							}
, 							{
								"key" : 11486,
								"value" : [ 81.280000000000001 ]
							}
, 							{
								"key" : 11487,
								"value" : [ 81.140000000000001 ]
							}
, 							{
								"key" : 11488,
								"value" : [ 81.010000000000005 ]
							}
, 							{
								"key" : 11489,
								"value" : [ 80.709999999999994 ]
							}
, 							{
								"key" : 11490,
								"value" : [ 80.129999999999995 ]
							}
, 							{
								"key" : 11491,
								"value" : [ 79.109999999999999 ]
							}
, 							{
								"key" : 11492,
								"value" : [ 77.950000000000003 ]
							}
, 							{
								"key" : 11493,
								"value" : [ 76.870000000000005 ]
							}
, 							{
								"key" : 11494,
								"value" : [ 75.989999999999995 ]
							}
, 							{
								"key" : 11495,
								"value" : [ 75.469999999999999 ]
							}
, 							{
								"key" : 11496,
								"value" : [ 75.090000000000003 ]
							}
, 							{
								"key" : 11497,
								"value" : [ 74.609999999999999 ]
							}
, 							{
								"key" : 11498,
								"value" : [ 74.230000000000004 ]
							}
, 							{
								"key" : 11499,
								"value" : [ 73.920000000000002 ]
							}
, 							{
								"key" : 11500,
								"value" : [ 73.620000000000005 ]
							}
, 							{
								"key" : 11501,
								"value" : [ 73.379999999999995 ]
							}
, 							{
								"key" : 11502,
								"value" : [ 73.180000000000007 ]
							}
, 							{
								"key" : 11503,
								"value" : [ 73.400000000000006 ]
							}
, 							{
								"key" : 11504,
								"value" : [ 74.079999999999998 ]
							}
, 							{
								"key" : 11505,
								"value" : [ 74.280000000000001 ]
							}
, 							{
								"key" : 11506,
								"value" : [ 75.180000000000007 ]
							}
, 							{
								"key" : 11507,
								"value" : [ 76.640000000000001 ]
							}
, 							{
								"key" : 11508,
								"value" : [ 77.409999999999997 ]
							}
, 							{
								"key" : 11509,
								"value" : [ 78.299999999999997 ]
							}
, 							{
								"key" : 11510,
								"value" : [ 79.140000000000001 ]
							}
, 							{
								"key" : 11511,
								"value" : [ 79.469999999999999 ]
							}
, 							{
								"key" : 11512,
								"value" : [ 79.209999999999994 ]
							}
, 							{
								"key" : 11513,
								"value" : [ 78.510000000000005 ]
							}
, 							{
								"key" : 11514,
								"value" : [ 77.409999999999997 ]
							}
, 							{
								"key" : 11515,
								"value" : [ 76.099999999999994 ]
							}
, 							{
								"key" : 11516,
								"value" : [ 74.530000000000001 ]
							}
, 							{
								"key" : 11517,
								"value" : [ 73.219999999999999 ]
							}
, 							{
								"key" : 11518,
								"value" : [ 72.319999999999993 ]
							}
, 							{
								"key" : 11519,
								"value" : [ 71.760000000000005 ]
							}
, 							{
								"key" : 11520,
								"value" : [ 70.840000000000003 ]
							}
, 							{
								"key" : 11521,
								"value" : [ 70.390000000000001 ]
							}
, 							{
								"key" : 11522,
								"value" : [ 69.75 ]
							}
, 							{
								"key" : 11523,
								"value" : [ 69.390000000000001 ]
							}
, 							{
								"key" : 11524,
								"value" : [ 68.989999999999995 ]
							}
, 							{
								"key" : 11525,
								"value" : [ 68.790000000000006 ]
							}
, 							{
								"key" : 11526,
								"value" : [ 69.239999999999995 ]
							}
, 							{
								"key" : 11527,
								"value" : [ 69.310000000000002 ]
							}
, 							{
								"key" : 11528,
								"value" : [ 69.730000000000004 ]
							}
, 							{
								"key" : 11529,
								"value" : [ 70.409999999999997 ]
							}
, 							{
								"key" : 11530,
								"value" : [ 71.040000000000006 ]
							}
, 							{
								"key" : 11531,
								"value" : [ 71.689999999999998 ]
							}
, 							{
								"key" : 11532,
								"value" : [ 72.319999999999993 ]
							}
, 							{
								"key" : 11533,
								"value" : [ 72.769999999999996 ]
							}
, 							{
								"key" : 11534,
								"value" : [ 72.909999999999997 ]
							}
, 							{
								"key" : 11535,
								"value" : [ 72.719999999999999 ]
							}
, 							{
								"key" : 11536,
								"value" : [ 72.390000000000001 ]
							}
, 							{
								"key" : 11537,
								"value" : [ 71.819999999999993 ]
							}
, 							{
								"key" : 11538,
								"value" : [ 71.060000000000002 ]
							}
, 							{
								"key" : 11539,
								"value" : [ 69.730000000000004 ]
							}
, 							{
								"key" : 11540,
								"value" : [ 68.5 ]
							}
, 							{
								"key" : 11541,
								"value" : [ 68.090000000000003 ]
							}
, 							{
								"key" : 11542,
								"value" : [ 67.930000000000007 ]
							}
, 							{
								"key" : 11543,
								"value" : [ 67.930000000000007 ]
							}
, 							{
								"key" : 11544,
								"value" : [ 67.909999999999997 ]
							}
, 							{
								"key" : 11545,
								"value" : [ 67.840000000000003 ]
							}
, 							{
								"key" : 11546,
								"value" : [ 67.709999999999994 ]
							}
, 							{
								"key" : 11547,
								"value" : [ 67.769999999999996 ]
							}
, 							{
								"key" : 11548,
								"value" : [ 68.0 ]
							}
, 							{
								"key" : 11549,
								"value" : [ 67.959999999999994 ]
							}
, 							{
								"key" : 11550,
								"value" : [ 68.430000000000007 ]
							}
, 							{
								"key" : 11551,
								"value" : [ 69.939999999999998 ]
							}
, 							{
								"key" : 11552,
								"value" : [ 71.310000000000002 ]
							}
, 							{
								"key" : 11553,
								"value" : [ 72.719999999999999 ]
							}
, 							{
								"key" : 11554,
								"value" : [ 73.709999999999994 ]
							}
, 							{
								"key" : 11555,
								"value" : [ 74.340000000000003 ]
							}
, 							{
								"key" : 11556,
								"value" : [ 74.909999999999997 ]
							}
, 							{
								"key" : 11557,
								"value" : [ 75.379999999999995 ]
							}
, 							{
								"key" : 11558,
								"value" : [ 75.489999999999995 ]
							}
, 							{
								"key" : 11559,
								"value" : [ 75.510000000000005 ]
							}
, 							{
								"key" : 11560,
								"value" : [ 75.219999999999999 ]
							}
, 							{
								"key" : 11561,
								"value" : [ 74.840000000000003 ]
							}
, 							{
								"key" : 11562,
								"value" : [ 74.390000000000001 ]
							}
, 							{
								"key" : 11563,
								"value" : [ 72.879999999999995 ]
							}
, 							{
								"key" : 11564,
								"value" : [ 71.739999999999995 ]
							}
, 							{
								"key" : 11565,
								"value" : [ 71.439999999999998 ]
							}
, 							{
								"key" : 11566,
								"value" : [ 71.150000000000006 ]
							}
, 							{
								"key" : 11567,
								"value" : [ 70.859999999999999 ]
							}
, 							{
								"key" : 11568,
								"value" : [ 70.480000000000004 ]
							}
, 							{
								"key" : 11569,
								"value" : [ 70.269999999999996 ]
							}
, 							{
								"key" : 11570,
								"value" : [ 70.069999999999993 ]
							}
, 							{
								"key" : 11571,
								"value" : [ 69.620000000000005 ]
							}
, 							{
								"key" : 11572,
								"value" : [ 69.010000000000005 ]
							}
, 							{
								"key" : 11573,
								"value" : [ 68.340000000000003 ]
							}
, 							{
								"key" : 11574,
								"value" : [ 69.150000000000006 ]
							}
, 							{
								"key" : 11575,
								"value" : [ 70.209999999999994 ]
							}
, 							{
								"key" : 11576,
								"value" : [ 71.959999999999994 ]
							}
, 							{
								"key" : 11577,
								"value" : [ 73.420000000000002 ]
							}
, 							{
								"key" : 11578,
								"value" : [ 74.950000000000003 ]
							}
, 							{
								"key" : 11579,
								"value" : [ 76.349999999999994 ]
							}
, 							{
								"key" : 11580,
								"value" : [ 77.290000000000006 ]
							}
, 							{
								"key" : 11581,
								"value" : [ 77.700000000000003 ]
							}
, 							{
								"key" : 11582,
								"value" : [ 78.010000000000005 ]
							}
, 							{
								"key" : 11583,
								"value" : [ 77.989999999999995 ]
							}
, 							{
								"key" : 11584,
								"value" : [ 77.920000000000002 ]
							}
, 							{
								"key" : 11585,
								"value" : [ 77.739999999999995 ]
							}
, 							{
								"key" : 11586,
								"value" : [ 77.129999999999995 ]
							}
, 							{
								"key" : 11587,
								"value" : [ 75.290000000000006 ]
							}
, 							{
								"key" : 11588,
								"value" : [ 73.489999999999995 ]
							}
, 							{
								"key" : 11589,
								"value" : [ 72.819999999999993 ]
							}
, 							{
								"key" : 11590,
								"value" : [ 72.209999999999994 ]
							}
, 							{
								"key" : 11591,
								"value" : [ 71.280000000000001 ]
							}
, 							{
								"key" : 11592,
								"value" : [ 70.269999999999996 ]
							}
, 							{
								"key" : 11593,
								"value" : [ 69.579999999999998 ]
							}
, 							{
								"key" : 11594,
								"value" : [ 69.129999999999995 ]
							}
, 							{
								"key" : 11595,
								"value" : [ 69.099999999999994 ]
							}
, 							{
								"key" : 11596,
								"value" : [ 69.010000000000005 ]
							}
, 							{
								"key" : 11597,
								"value" : [ 68.519999999999996 ]
							}
, 							{
								"key" : 11598,
								"value" : [ 68.219999999999999 ]
							}
, 							{
								"key" : 11599,
								"value" : [ 68.790000000000006 ]
							}
, 							{
								"key" : 11600,
								"value" : [ 69.310000000000002 ]
							}
, 							{
								"key" : 11601,
								"value" : [ 69.709999999999994 ]
							}
, 							{
								"key" : 11602,
								"value" : [ 70.609999999999999 ]
							}
, 							{
								"key" : 11603,
								"value" : [ 73.200000000000003 ]
							}
, 							{
								"key" : 11604,
								"value" : [ 75.159999999999997 ]
							}
, 							{
								"key" : 11605,
								"value" : [ 76.189999999999998 ]
							}
, 							{
								"key" : 11606,
								"value" : [ 76.769999999999996 ]
							}
, 							{
								"key" : 11607,
								"value" : [ 76.950000000000003 ]
							}
, 							{
								"key" : 11608,
								"value" : [ 76.680000000000007 ]
							}
, 							{
								"key" : 11609,
								"value" : [ 76.120000000000005 ]
							}
, 							{
								"key" : 11610,
								"value" : [ 75.340000000000003 ]
							}
, 							{
								"key" : 11611,
								"value" : [ 73.870000000000005 ]
							}
, 							{
								"key" : 11612,
								"value" : [ 72.590000000000003 ]
							}
, 							{
								"key" : 11613,
								"value" : [ 71.739999999999995 ]
							}
, 							{
								"key" : 11614,
								"value" : [ 70.180000000000007 ]
							}
, 							{
								"key" : 11615,
								"value" : [ 68.769999999999996 ]
							}
, 							{
								"key" : 11616,
								"value" : [ 67.689999999999998 ]
							}
, 							{
								"key" : 11617,
								"value" : [ 66.719999999999999 ]
							}
, 							{
								"key" : 11618,
								"value" : [ 65.840000000000003 ]
							}
, 							{
								"key" : 11619,
								"value" : [ 65.069999999999993 ]
							}
, 							{
								"key" : 11620,
								"value" : [ 64.420000000000002 ]
							}
, 							{
								"key" : 11621,
								"value" : [ 63.969999999999999 ]
							}
, 							{
								"key" : 11622,
								"value" : [ 65.069999999999993 ]
							}
, 							{
								"key" : 11623,
								"value" : [ 66.420000000000002 ]
							}
, 							{
								"key" : 11624,
								"value" : [ 69.620000000000005 ]
							}
, 							{
								"key" : 11625,
								"value" : [ 72.189999999999998 ]
							}
, 							{
								"key" : 11626,
								"value" : [ 73.540000000000006 ]
							}
, 							{
								"key" : 11627,
								"value" : [ 74.569999999999993 ]
							}
, 							{
								"key" : 11628,
								"value" : [ 75.180000000000007 ]
							}
, 							{
								"key" : 11629,
								"value" : [ 75.510000000000005 ]
							}
, 							{
								"key" : 11630,
								"value" : [ 75.609999999999999 ]
							}
, 							{
								"key" : 11631,
								"value" : [ 75.540000000000006 ]
							}
, 							{
								"key" : 11632,
								"value" : [ 75.579999999999998 ]
							}
, 							{
								"key" : 11633,
								"value" : [ 75.489999999999995 ]
							}
, 							{
								"key" : 11634,
								"value" : [ 75.040000000000006 ]
							}
, 							{
								"key" : 11635,
								"value" : [ 73.489999999999995 ]
							}
, 							{
								"key" : 11636,
								"value" : [ 72.010000000000005 ]
							}
, 							{
								"key" : 11637,
								"value" : [ 71.530000000000001 ]
							}
, 							{
								"key" : 11638,
								"value" : [ 70.969999999999999 ]
							}
, 							{
								"key" : 11639,
								"value" : [ 70.469999999999999 ]
							}
, 							{
								"key" : 11640,
								"value" : [ 70.209999999999994 ]
							}
, 							{
								"key" : 11641,
								"value" : [ 69.819999999999993 ]
							}
, 							{
								"key" : 11642,
								"value" : [ 69.280000000000001 ]
							}
, 							{
								"key" : 11643,
								"value" : [ 68.769999999999996 ]
							}
, 							{
								"key" : 11644,
								"value" : [ 68.430000000000007 ]
							}
, 							{
								"key" : 11645,
								"value" : [ 68.140000000000001 ]
							}
, 							{
								"key" : 11646,
								"value" : [ 68.790000000000006 ]
							}
, 							{
								"key" : 11647,
								"value" : [ 70.340000000000003 ]
							}
, 							{
								"key" : 11648,
								"value" : [ 72.159999999999997 ]
							}
, 							{
								"key" : 11649,
								"value" : [ 74.890000000000001 ]
							}
, 							{
								"key" : 11650,
								"value" : [ 75.900000000000006 ]
							}
, 							{
								"key" : 11651,
								"value" : [ 76.769999999999996 ]
							}
, 							{
								"key" : 11652,
								"value" : [ 77.519999999999996 ]
							}
, 							{
								"key" : 11653,
								"value" : [ 77.969999999999999 ]
							}
, 							{
								"key" : 11654,
								"value" : [ 78.150000000000006 ]
							}
, 							{
								"key" : 11655,
								"value" : [ 78.329999999999998 ]
							}
, 							{
								"key" : 11656,
								"value" : [ 78.489999999999995 ]
							}
, 							{
								"key" : 11657,
								"value" : [ 78.310000000000002 ]
							}
, 							{
								"key" : 11658,
								"value" : [ 77.810000000000002 ]
							}
, 							{
								"key" : 11659,
								"value" : [ 75.780000000000001 ]
							}
, 							{
								"key" : 11660,
								"value" : [ 73.939999999999998 ]
							}
, 							{
								"key" : 11661,
								"value" : [ 73.269999999999996 ]
							}
, 							{
								"key" : 11662,
								"value" : [ 72.900000000000006 ]
							}
, 							{
								"key" : 11663,
								"value" : [ 72.590000000000003 ]
							}
, 							{
								"key" : 11664,
								"value" : [ 72.280000000000001 ]
							}
, 							{
								"key" : 11665,
								"value" : [ 71.890000000000001 ]
							}
, 							{
								"key" : 11666,
								"value" : [ 71.329999999999998 ]
							}
, 							{
								"key" : 11667,
								"value" : [ 70.519999999999996 ]
							}
, 							{
								"key" : 11668,
								"value" : [ 69.799999999999997 ]
							}
, 							{
								"key" : 11669,
								"value" : [ 69.75 ]
							}
, 							{
								"key" : 11670,
								"value" : [ 70.290000000000006 ]
							}
, 							{
								"key" : 11671,
								"value" : [ 71.099999999999994 ]
							}
, 							{
								"key" : 11672,
								"value" : [ 72.859999999999999 ]
							}
, 							{
								"key" : 11673,
								"value" : [ 75.560000000000002 ]
							}
, 							{
								"key" : 11674,
								"value" : [ 76.640000000000001 ]
							}
, 							{
								"key" : 11675,
								"value" : [ 77.430000000000007 ]
							}
, 							{
								"key" : 11676,
								"value" : [ 78.170000000000002 ]
							}
, 							{
								"key" : 11677,
								"value" : [ 78.819999999999993 ]
							}
, 							{
								"key" : 11678,
								"value" : [ 79.319999999999993 ]
							}
, 							{
								"key" : 11679,
								"value" : [ 79.560000000000002 ]
							}
, 							{
								"key" : 11680,
								"value" : [ 79.519999999999996 ]
							}
, 							{
								"key" : 11681,
								"value" : [ 79.090000000000003 ]
							}
, 							{
								"key" : 11682,
								"value" : [ 78.219999999999999 ]
							}
, 							{
								"key" : 11683,
								"value" : [ 76.230000000000004 ]
							}
, 							{
								"key" : 11684,
								"value" : [ 74.569999999999993 ]
							}
, 							{
								"key" : 11685,
								"value" : [ 74.099999999999994 ]
							}
, 							{
								"key" : 11686,
								"value" : [ 74.079999999999998 ]
							}
, 							{
								"key" : 11687,
								"value" : [ 73.599999999999994 ]
							}
, 							{
								"key" : 11688,
								"value" : [ 72.459999999999994 ]
							}
, 							{
								"key" : 11689,
								"value" : [ 71.650000000000006 ]
							}
, 							{
								"key" : 11690,
								"value" : [ 71.109999999999999 ]
							}
, 							{
								"key" : 11691,
								"value" : [ 70.790000000000006 ]
							}
, 							{
								"key" : 11692,
								"value" : [ 70.340000000000003 ]
							}
, 							{
								"key" : 11693,
								"value" : [ 70.209999999999994 ]
							}
, 							{
								"key" : 11694,
								"value" : [ 71.870000000000005 ]
							}
, 							{
								"key" : 11695,
								"value" : [ 73.510000000000005 ]
							}
, 							{
								"key" : 11696,
								"value" : [ 75.540000000000006 ]
							}
, 							{
								"key" : 11697,
								"value" : [ 77.290000000000006 ]
							}
, 							{
								"key" : 11698,
								"value" : [ 78.569999999999993 ]
							}
, 							{
								"key" : 11699,
								"value" : [ 79.200000000000003 ]
							}
, 							{
								"key" : 11700,
								"value" : [ 79.519999999999996 ]
							}
, 							{
								"key" : 11701,
								"value" : [ 79.969999999999999 ]
							}
, 							{
								"key" : 11702,
								"value" : [ 80.469999999999999 ]
							}
, 							{
								"key" : 11703,
								"value" : [ 80.670000000000002 ]
							}
, 							{
								"key" : 11704,
								"value" : [ 80.549999999999997 ]
							}
, 							{
								"key" : 11705,
								"value" : [ 80.260000000000005 ]
							}
, 							{
								"key" : 11706,
								"value" : [ 79.430000000000007 ]
							}
, 							{
								"key" : 11707,
								"value" : [ 77.5 ]
							}
, 							{
								"key" : 11708,
								"value" : [ 75.719999999999999 ]
							}
, 							{
								"key" : 11709,
								"value" : [ 74.859999999999999 ]
							}
, 							{
								"key" : 11710,
								"value" : [ 74.069999999999993 ]
							}
, 							{
								"key" : 11711,
								"value" : [ 73.260000000000005 ]
							}
, 							{
								"key" : 11712,
								"value" : [ 72.450000000000003 ]
							}
, 							{
								"key" : 11713,
								"value" : [ 71.819999999999993 ]
							}
, 							{
								"key" : 11714,
								"value" : [ 71.439999999999998 ]
							}
, 							{
								"key" : 11715,
								"value" : [ 71.329999999999998 ]
							}
, 							{
								"key" : 11716,
								"value" : [ 71.489999999999995 ]
							}
, 							{
								"key" : 11717,
								"value" : [ 71.459999999999994 ]
							}
, 							{
								"key" : 11718,
								"value" : [ 72.390000000000001 ]
							}
, 							{
								"key" : 11719,
								"value" : [ 74.030000000000001 ]
							}
, 							{
								"key" : 11720,
								"value" : [ 75.200000000000003 ]
							}
, 							{
								"key" : 11721,
								"value" : [ 76.5 ]
							}
, 							{
								"key" : 11722,
								"value" : [ 77.269999999999996 ]
							}
, 							{
								"key" : 11723,
								"value" : [ 77.719999999999999 ]
							}
, 							{
								"key" : 11724,
								"value" : [ 78.670000000000002 ]
							}
, 							{
								"key" : 11725,
								"value" : [ 80.260000000000005 ]
							}
, 							{
								"key" : 11726,
								"value" : [ 81.879999999999995 ]
							}
, 							{
								"key" : 11727,
								"value" : [ 82.829999999999998 ]
							}
, 							{
								"key" : 11728,
								"value" : [ 83.170000000000002 ]
							}
, 							{
								"key" : 11729,
								"value" : [ 82.959999999999994 ]
							}
, 							{
								"key" : 11730,
								"value" : [ 81.909999999999997 ]
							}
, 							{
								"key" : 11731,
								"value" : [ 79.269999999999996 ]
							}
, 							{
								"key" : 11732,
								"value" : [ 77.5 ]
							}
, 							{
								"key" : 11733,
								"value" : [ 76.890000000000001 ]
							}
, 							{
								"key" : 11734,
								"value" : [ 75.739999999999995 ]
							}
, 							{
								"key" : 11735,
								"value" : [ 74.620000000000005 ]
							}
, 							{
								"key" : 11736,
								"value" : [ 73.829999999999998 ]
							}
, 							{
								"key" : 11737,
								"value" : [ 73.170000000000002 ]
							}
, 							{
								"key" : 11738,
								"value" : [ 72.840000000000003 ]
							}
, 							{
								"key" : 11739,
								"value" : [ 72.719999999999999 ]
							}
, 							{
								"key" : 11740,
								"value" : [ 72.730000000000004 ]
							}
, 							{
								"key" : 11741,
								"value" : [ 72.930000000000007 ]
							}
, 							{
								"key" : 11742,
								"value" : [ 73.489999999999995 ]
							}
, 							{
								"key" : 11743,
								"value" : [ 74.700000000000003 ]
							}
, 							{
								"key" : 11744,
								"value" : [ 76.909999999999997 ]
							}
, 							{
								"key" : 11745,
								"value" : [ 78.930000000000007 ]
							}
, 							{
								"key" : 11746,
								"value" : [ 80.379999999999995 ]
							}
, 							{
								"key" : 11747,
								"value" : [ 81.120000000000005 ]
							}
, 							{
								"key" : 11748,
								"value" : [ 81.459999999999994 ]
							}
, 							{
								"key" : 11749,
								"value" : [ 81.659999999999997 ]
							}
, 							{
								"key" : 11750,
								"value" : [ 81.519999999999996 ]
							}
, 							{
								"key" : 11751,
								"value" : [ 81.099999999999994 ]
							}
, 							{
								"key" : 11752,
								"value" : [ 80.579999999999998 ]
							}
, 							{
								"key" : 11753,
								"value" : [ 79.030000000000001 ]
							}
, 							{
								"key" : 11754,
								"value" : [ 77.579999999999998 ]
							}
, 							{
								"key" : 11755,
								"value" : [ 77.019999999999996 ]
							}
, 							{
								"key" : 11756,
								"value" : [ 76.459999999999994 ]
							}
, 							{
								"key" : 11757,
								"value" : [ 76.060000000000002 ]
							}
, 							{
								"key" : 11758,
								"value" : [ 76.049999999999997 ]
							}
, 							{
								"key" : 11759,
								"value" : [ 76.079999999999998 ]
							}
, 							{
								"key" : 11760,
								"value" : [ 75.870000000000005 ]
							}
, 							{
								"key" : 11761,
								"value" : [ 75.519999999999996 ]
							}
, 							{
								"key" : 11762,
								"value" : [ 75.239999999999995 ]
							}
, 							{
								"key" : 11763,
								"value" : [ 74.969999999999999 ]
							}
, 							{
								"key" : 11764,
								"value" : [ 74.769999999999996 ]
							}
, 							{
								"key" : 11765,
								"value" : [ 74.430000000000007 ]
							}
, 							{
								"key" : 11766,
								"value" : [ 74.480000000000004 ]
							}
, 							{
								"key" : 11767,
								"value" : [ 74.950000000000003 ]
							}
, 							{
								"key" : 11768,
								"value" : [ 75.900000000000006 ]
							}
, 							{
								"key" : 11769,
								"value" : [ 77.290000000000006 ]
							}
, 							{
								"key" : 11770,
								"value" : [ 78.640000000000001 ]
							}
, 							{
								"key" : 11771,
								"value" : [ 79.409999999999997 ]
							}
, 							{
								"key" : 11772,
								"value" : [ 79.590000000000003 ]
							}
, 							{
								"key" : 11773,
								"value" : [ 79.120000000000005 ]
							}
, 							{
								"key" : 11774,
								"value" : [ 78.099999999999994 ]
							}
, 							{
								"key" : 11775,
								"value" : [ 76.099999999999994 ]
							}
, 							{
								"key" : 11776,
								"value" : [ 73.810000000000002 ]
							}
, 							{
								"key" : 11777,
								"value" : [ 72.430000000000007 ]
							}
, 							{
								"key" : 11778,
								"value" : [ 71.709999999999994 ]
							}
, 							{
								"key" : 11779,
								"value" : [ 71.040000000000006 ]
							}
, 							{
								"key" : 11780,
								"value" : [ 70.569999999999993 ]
							}
, 							{
								"key" : 11781,
								"value" : [ 70.409999999999997 ]
							}
, 							{
								"key" : 11782,
								"value" : [ 70.519999999999996 ]
							}
, 							{
								"key" : 11783,
								"value" : [ 70.840000000000003 ]
							}
, 							{
								"key" : 11784,
								"value" : [ 71.079999999999998 ]
							}
, 							{
								"key" : 11785,
								"value" : [ 71.239999999999995 ]
							}
, 							{
								"key" : 11786,
								"value" : [ 71.329999999999998 ]
							}
, 							{
								"key" : 11787,
								"value" : [ 71.400000000000006 ]
							}
, 							{
								"key" : 11788,
								"value" : [ 71.290000000000006 ]
							}
, 							{
								"key" : 11789,
								"value" : [ 71.129999999999995 ]
							}
, 							{
								"key" : 11790,
								"value" : [ 72.189999999999998 ]
							}
, 							{
								"key" : 11791,
								"value" : [ 73.670000000000002 ]
							}
, 							{
								"key" : 11792,
								"value" : [ 75.090000000000003 ]
							}
, 							{
								"key" : 11793,
								"value" : [ 76.549999999999997 ]
							}
, 							{
								"key" : 11794,
								"value" : [ 77.290000000000006 ]
							}
, 							{
								"key" : 11795,
								"value" : [ 77.590000000000003 ]
							}
, 							{
								"key" : 11796,
								"value" : [ 77.650000000000006 ]
							}
, 							{
								"key" : 11797,
								"value" : [ 77.579999999999998 ]
							}
, 							{
								"key" : 11798,
								"value" : [ 77.409999999999997 ]
							}
, 							{
								"key" : 11799,
								"value" : [ 77.25 ]
							}
, 							{
								"key" : 11800,
								"value" : [ 77.140000000000001 ]
							}
, 							{
								"key" : 11801,
								"value" : [ 76.859999999999999 ]
							}
, 							{
								"key" : 11802,
								"value" : [ 76.319999999999993 ]
							}
, 							{
								"key" : 11803,
								"value" : [ 75.129999999999995 ]
							}
, 							{
								"key" : 11804,
								"value" : [ 73.980000000000004 ]
							}
, 							{
								"key" : 11805,
								"value" : [ 73.810000000000002 ]
							}
, 							{
								"key" : 11806,
								"value" : [ 73.780000000000001 ]
							}
, 							{
								"key" : 11807,
								"value" : [ 73.829999999999998 ]
							}
, 							{
								"key" : 11808,
								"value" : [ 74.069999999999993 ]
							}
, 							{
								"key" : 11809,
								"value" : [ 74.260000000000005 ]
							}
, 							{
								"key" : 11810,
								"value" : [ 74.260000000000005 ]
							}
, 							{
								"key" : 11811,
								"value" : [ 74.079999999999998 ]
							}
, 							{
								"key" : 11812,
								"value" : [ 73.799999999999997 ]
							}
, 							{
								"key" : 11813,
								"value" : [ 73.359999999999999 ]
							}
, 							{
								"key" : 11814,
								"value" : [ 74.260000000000005 ]
							}
, 							{
								"key" : 11815,
								"value" : [ 75.609999999999999 ]
							}
, 							{
								"key" : 11816,
								"value" : [ 77.879999999999995 ]
							}
, 							{
								"key" : 11817,
								"value" : [ 79.989999999999995 ]
							}
, 							{
								"key" : 11818,
								"value" : [ 82.170000000000002 ]
							}
, 							{
								"key" : 11819,
								"value" : [ 83.620000000000005 ]
							}
, 							{
								"key" : 11820,
								"value" : [ 84.519999999999996 ]
							}
, 							{
								"key" : 11821,
								"value" : [ 85.590000000000003 ]
							}
, 							{
								"key" : 11822,
								"value" : [ 86.129999999999995 ]
							}
, 							{
								"key" : 11823,
								"value" : [ 86.269999999999996 ]
							}
, 							{
								"key" : 11824,
								"value" : [ 86.049999999999997 ]
							}
, 							{
								"key" : 11825,
								"value" : [ 85.390000000000001 ]
							}
, 							{
								"key" : 11826,
								"value" : [ 84.340000000000003 ]
							}
, 							{
								"key" : 11827,
								"value" : [ 82.239999999999995 ]
							}
, 							{
								"key" : 11828,
								"value" : [ 80.670000000000002 ]
							}
, 							{
								"key" : 11829,
								"value" : [ 79.840000000000003 ]
							}
, 							{
								"key" : 11830,
								"value" : [ 79.030000000000001 ]
							}
, 							{
								"key" : 11831,
								"value" : [ 78.209999999999994 ]
							}
, 							{
								"key" : 11832,
								"value" : [ 77.590000000000003 ]
							}
, 							{
								"key" : 11833,
								"value" : [ 77.409999999999997 ]
							}
, 							{
								"key" : 11834,
								"value" : [ 77.379999999999995 ]
							}
, 							{
								"key" : 11835,
								"value" : [ 76.950000000000003 ]
							}
, 							{
								"key" : 11836,
								"value" : [ 76.459999999999994 ]
							}
, 							{
								"key" : 11837,
								"value" : [ 75.969999999999999 ]
							}
, 							{
								"key" : 11838,
								"value" : [ 75.670000000000002 ]
							}
, 							{
								"key" : 11839,
								"value" : [ 75.849999999999994 ]
							}
, 							{
								"key" : 11840,
								"value" : [ 76.549999999999997 ]
							}
, 							{
								"key" : 11841,
								"value" : [ 77.219999999999999 ]
							}
, 							{
								"key" : 11842,
								"value" : [ 77.810000000000002 ]
							}
, 							{
								"key" : 11843,
								"value" : [ 78.390000000000001 ]
							}
, 							{
								"key" : 11844,
								"value" : [ 78.299999999999997 ]
							}
, 							{
								"key" : 11845,
								"value" : [ 77.719999999999999 ]
							}
, 							{
								"key" : 11846,
								"value" : [ 77.340000000000003 ]
							}
, 							{
								"key" : 11847,
								"value" : [ 77.409999999999997 ]
							}
, 							{
								"key" : 11848,
								"value" : [ 77.269999999999996 ]
							}
, 							{
								"key" : 11849,
								"value" : [ 76.959999999999994 ]
							}
, 							{
								"key" : 11850,
								"value" : [ 76.799999999999997 ]
							}
, 							{
								"key" : 11851,
								"value" : [ 76.459999999999994 ]
							}
, 							{
								"key" : 11852,
								"value" : [ 76.120000000000005 ]
							}
, 							{
								"key" : 11853,
								"value" : [ 75.989999999999995 ]
							}
, 							{
								"key" : 11854,
								"value" : [ 75.989999999999995 ]
							}
, 							{
								"key" : 11855,
								"value" : [ 76.150000000000006 ]
							}
, 							{
								"key" : 11856,
								"value" : [ 76.260000000000005 ]
							}
, 							{
								"key" : 11857,
								"value" : [ 76.189999999999998 ]
							}
, 							{
								"key" : 11858,
								"value" : [ 76.060000000000002 ]
							}
, 							{
								"key" : 11859,
								"value" : [ 76.060000000000002 ]
							}
, 							{
								"key" : 11860,
								"value" : [ 76.239999999999995 ]
							}
, 							{
								"key" : 11861,
								"value" : [ 75.790000000000006 ]
							}
, 							{
								"key" : 11862,
								"value" : [ 75.599999999999994 ]
							}
, 							{
								"key" : 11863,
								"value" : [ 75.920000000000002 ]
							}
, 							{
								"key" : 11864,
								"value" : [ 76.599999999999994 ]
							}
, 							{
								"key" : 11865,
								"value" : [ 77.700000000000003 ]
							}
, 							{
								"key" : 11866,
								"value" : [ 78.640000000000001 ]
							}
, 							{
								"key" : 11867,
								"value" : [ 78.599999999999994 ]
							}
, 							{
								"key" : 11868,
								"value" : [ 78.239999999999995 ]
							}
, 							{
								"key" : 11869,
								"value" : [ 77.519999999999996 ]
							}
, 							{
								"key" : 11870,
								"value" : [ 76.390000000000001 ]
							}
, 							{
								"key" : 11871,
								"value" : [ 75.090000000000003 ]
							}
, 							{
								"key" : 11872,
								"value" : [ 73.239999999999995 ]
							}
, 							{
								"key" : 11873,
								"value" : [ 71.239999999999995 ]
							}
, 							{
								"key" : 11874,
								"value" : [ 69.620000000000005 ]
							}
, 							{
								"key" : 11875,
								"value" : [ 68.920000000000002 ]
							}
, 							{
								"key" : 11876,
								"value" : [ 68.400000000000006 ]
							}
, 							{
								"key" : 11877,
								"value" : [ 67.930000000000007 ]
							}
, 							{
								"key" : 11878,
								"value" : [ 67.799999999999997 ]
							}
, 							{
								"key" : 11879,
								"value" : [ 67.780000000000001 ]
							}
, 							{
								"key" : 11880,
								"value" : [ 67.620000000000005 ]
							}
, 							{
								"key" : 11881,
								"value" : [ 67.510000000000005 ]
							}
, 							{
								"key" : 11882,
								"value" : [ 67.480000000000004 ]
							}
, 							{
								"key" : 11883,
								"value" : [ 67.510000000000005 ]
							}
, 							{
								"key" : 11884,
								"value" : [ 67.329999999999998 ]
							}
, 							{
								"key" : 11885,
								"value" : [ 66.989999999999995 ]
							}
, 							{
								"key" : 11886,
								"value" : [ 67.75 ]
							}
, 							{
								"key" : 11887,
								"value" : [ 69.120000000000005 ]
							}
, 							{
								"key" : 11888,
								"value" : [ 69.819999999999993 ]
							}
, 							{
								"key" : 11889,
								"value" : [ 70.540000000000006 ]
							}
, 							{
								"key" : 11890,
								"value" : [ 71.010000000000005 ]
							}
, 							{
								"key" : 11891,
								"value" : [ 71.060000000000002 ]
							}
, 							{
								"key" : 11892,
								"value" : [ 71.040000000000006 ]
							}
, 							{
								"key" : 11893,
								"value" : [ 70.950000000000003 ]
							}
, 							{
								"key" : 11894,
								"value" : [ 70.659999999999997 ]
							}
, 							{
								"key" : 11895,
								"value" : [ 70.379999999999995 ]
							}
, 							{
								"key" : 11896,
								"value" : [ 70.159999999999997 ]
							}
, 							{
								"key" : 11897,
								"value" : [ 69.909999999999997 ]
							}
, 							{
								"key" : 11898,
								"value" : [ 69.489999999999995 ]
							}
, 							{
								"key" : 11899,
								"value" : [ 68.269999999999996 ]
							}
, 							{
								"key" : 11900,
								"value" : [ 67.439999999999998 ]
							}
, 							{
								"key" : 11901,
								"value" : [ 67.709999999999994 ]
							}
, 							{
								"key" : 11902,
								"value" : [ 68.040000000000006 ]
							}
, 							{
								"key" : 11903,
								"value" : [ 68.269999999999996 ]
							}
, 							{
								"key" : 11904,
								"value" : [ 68.140000000000001 ]
							}
, 							{
								"key" : 11905,
								"value" : [ 68.090000000000003 ]
							}
, 							{
								"key" : 11906,
								"value" : [ 67.890000000000001 ]
							}
, 							{
								"key" : 11907,
								"value" : [ 67.370000000000005 ]
							}
, 							{
								"key" : 11908,
								"value" : [ 66.700000000000003 ]
							}
, 							{
								"key" : 11909,
								"value" : [ 65.980000000000004 ]
							}
, 							{
								"key" : 11910,
								"value" : [ 66.340000000000003 ]
							}
, 							{
								"key" : 11911,
								"value" : [ 68.409999999999997 ]
							}
, 							{
								"key" : 11912,
								"value" : [ 70.269999999999996 ]
							}
, 							{
								"key" : 11913,
								"value" : [ 72.840000000000003 ]
							}
, 							{
								"key" : 11914,
								"value" : [ 74.640000000000001 ]
							}
, 							{
								"key" : 11915,
								"value" : [ 75.670000000000002 ]
							}
, 							{
								"key" : 11916,
								"value" : [ 76.640000000000001 ]
							}
, 							{
								"key" : 11917,
								"value" : [ 77.590000000000003 ]
							}
, 							{
								"key" : 11918,
								"value" : [ 78.420000000000002 ]
							}
, 							{
								"key" : 11919,
								"value" : [ 79.069999999999993 ]
							}
, 							{
								"key" : 11920,
								"value" : [ 79.390000000000001 ]
							}
, 							{
								"key" : 11921,
								"value" : [ 79.569999999999993 ]
							}
, 							{
								"key" : 11922,
								"value" : [ 79.299999999999997 ]
							}
, 							{
								"key" : 11923,
								"value" : [ 77.450000000000003 ]
							}
, 							{
								"key" : 11924,
								"value" : [ 75.159999999999997 ]
							}
, 							{
								"key" : 11925,
								"value" : [ 73.959999999999994 ]
							}
, 							{
								"key" : 11926,
								"value" : [ 73.359999999999999 ]
							}
, 							{
								"key" : 11927,
								"value" : [ 72.909999999999997 ]
							}
, 							{
								"key" : 11928,
								"value" : [ 72.319999999999993 ]
							}
, 							{
								"key" : 11929,
								"value" : [ 71.689999999999998 ]
							}
, 							{
								"key" : 11930,
								"value" : [ 71.260000000000005 ]
							}
, 							{
								"key" : 11931,
								"value" : [ 70.879999999999995 ]
							}
, 							{
								"key" : 11932,
								"value" : [ 71.170000000000002 ]
							}
, 							{
								"key" : 11933,
								"value" : [ 71.780000000000001 ]
							}
, 							{
								"key" : 11934,
								"value" : [ 72.640000000000001 ]
							}
, 							{
								"key" : 11935,
								"value" : [ 73.090000000000003 ]
							}
, 							{
								"key" : 11936,
								"value" : [ 72.879999999999995 ]
							}
, 							{
								"key" : 11937,
								"value" : [ 73.040000000000006 ]
							}
, 							{
								"key" : 11938,
								"value" : [ 73.400000000000006 ]
							}
, 							{
								"key" : 11939,
								"value" : [ 73.739999999999995 ]
							}
, 							{
								"key" : 11940,
								"value" : [ 73.870000000000005 ]
							}
, 							{
								"key" : 11941,
								"value" : [ 73.829999999999998 ]
							}
, 							{
								"key" : 11942,
								"value" : [ 73.510000000000005 ]
							}
, 							{
								"key" : 11943,
								"value" : [ 72.950000000000003 ]
							}
, 							{
								"key" : 11944,
								"value" : [ 72.319999999999993 ]
							}
, 							{
								"key" : 11945,
								"value" : [ 71.579999999999998 ]
							}
, 							{
								"key" : 11946,
								"value" : [ 70.659999999999997 ]
							}
, 							{
								"key" : 11947,
								"value" : [ 69.310000000000002 ]
							}
, 							{
								"key" : 11948,
								"value" : [ 68.090000000000003 ]
							}
, 							{
								"key" : 11949,
								"value" : [ 67.689999999999998 ]
							}
, 							{
								"key" : 11950,
								"value" : [ 67.640000000000001 ]
							}
, 							{
								"key" : 11951,
								"value" : [ 67.709999999999994 ]
							}
, 							{
								"key" : 11952,
								"value" : [ 67.640000000000001 ]
							}
, 							{
								"key" : 11953,
								"value" : [ 67.420000000000002 ]
							}
, 							{
								"key" : 11954,
								"value" : [ 67.120000000000005 ]
							}
, 							{
								"key" : 11955,
								"value" : [ 66.849999999999994 ]
							}
, 							{
								"key" : 11956,
								"value" : [ 66.560000000000002 ]
							}
, 							{
								"key" : 11957,
								"value" : [ 66.359999999999999 ]
							}
, 							{
								"key" : 11958,
								"value" : [ 67.260000000000005 ]
							}
, 							{
								"key" : 11959,
								"value" : [ 69.120000000000005 ]
							}
, 							{
								"key" : 11960,
								"value" : [ 70.430000000000007 ]
							}
, 							{
								"key" : 11961,
								"value" : [ 71.819999999999993 ]
							}
, 							{
								"key" : 11962,
								"value" : [ 72.840000000000003 ]
							}
, 							{
								"key" : 11963,
								"value" : [ 73.219999999999999 ]
							}
, 							{
								"key" : 11964,
								"value" : [ 73.469999999999999 ]
							}
, 							{
								"key" : 11965,
								"value" : [ 73.510000000000005 ]
							}
, 							{
								"key" : 11966,
								"value" : [ 73.650000000000006 ]
							}
, 							{
								"key" : 11967,
								"value" : [ 73.620000000000005 ]
							}
, 							{
								"key" : 11968,
								"value" : [ 72.969999999999999 ]
							}
, 							{
								"key" : 11969,
								"value" : [ 72.340000000000003 ]
							}
, 							{
								"key" : 11970,
								"value" : [ 71.650000000000006 ]
							}
, 							{
								"key" : 11971,
								"value" : [ 69.579999999999998 ]
							}
, 							{
								"key" : 11972,
								"value" : [ 68.609999999999999 ]
							}
, 							{
								"key" : 11973,
								"value" : [ 68.469999999999999 ]
							}
, 							{
								"key" : 11974,
								"value" : [ 68.269999999999996 ]
							}
, 							{
								"key" : 11975,
								"value" : [ 68.140000000000001 ]
							}
, 							{
								"key" : 11976,
								"value" : [ 68.140000000000001 ]
							}
, 							{
								"key" : 11977,
								"value" : [ 68.109999999999999 ]
							}
, 							{
								"key" : 11978,
								"value" : [ 68.340000000000003 ]
							}
, 							{
								"key" : 11979,
								"value" : [ 68.040000000000006 ]
							}
, 							{
								"key" : 11980,
								"value" : [ 67.370000000000005 ]
							}
, 							{
								"key" : 11981,
								"value" : [ 66.109999999999999 ]
							}
, 							{
								"key" : 11982,
								"value" : [ 66.329999999999998 ]
							}
, 							{
								"key" : 11983,
								"value" : [ 67.569999999999993 ]
							}
, 							{
								"key" : 11984,
								"value" : [ 69.579999999999998 ]
							}
, 							{
								"key" : 11985,
								"value" : [ 72.319999999999993 ]
							}
, 							{
								"key" : 11986,
								"value" : [ 73.400000000000006 ]
							}
, 							{
								"key" : 11987,
								"value" : [ 74.409999999999997 ]
							}
, 							{
								"key" : 11988,
								"value" : [ 75.540000000000006 ]
							}
, 							{
								"key" : 11989,
								"value" : [ 76.730000000000004 ]
							}
, 							{
								"key" : 11990,
								"value" : [ 77.5 ]
							}
, 							{
								"key" : 11991,
								"value" : [ 77.719999999999999 ]
							}
, 							{
								"key" : 11992,
								"value" : [ 78.079999999999998 ]
							}
, 							{
								"key" : 11993,
								"value" : [ 77.670000000000002 ]
							}
, 							{
								"key" : 11994,
								"value" : [ 76.459999999999994 ]
							}
, 							{
								"key" : 11995,
								"value" : [ 74.620000000000005 ]
							}
, 							{
								"key" : 11996,
								"value" : [ 73.579999999999998 ]
							}
, 							{
								"key" : 11997,
								"value" : [ 72.680000000000007 ]
							}
, 							{
								"key" : 11998,
								"value" : [ 71.870000000000005 ]
							}
, 							{
								"key" : 11999,
								"value" : [ 71.040000000000006 ]
							}
, 							{
								"key" : 12000,
								"value" : [ 70.390000000000001 ]
							}
, 							{
								"key" : 12001,
								"value" : [ 69.930000000000007 ]
							}
, 							{
								"key" : 12002,
								"value" : [ 69.489999999999995 ]
							}
, 							{
								"key" : 12003,
								"value" : [ 69.079999999999998 ]
							}
, 							{
								"key" : 12004,
								"value" : [ 68.670000000000002 ]
							}
, 							{
								"key" : 12005,
								"value" : [ 68.379999999999995 ]
							}
, 							{
								"key" : 12006,
								"value" : [ 68.859999999999999 ]
							}
, 							{
								"key" : 12007,
								"value" : [ 70.019999999999996 ]
							}
, 							{
								"key" : 12008,
								"value" : [ 71.189999999999998 ]
							}
, 							{
								"key" : 12009,
								"value" : [ 72.390000000000001 ]
							}
, 							{
								"key" : 12010,
								"value" : [ 73.040000000000006 ]
							}
, 							{
								"key" : 12011,
								"value" : [ 73.170000000000002 ]
							}
, 							{
								"key" : 12012,
								"value" : [ 72.900000000000006 ]
							}
, 							{
								"key" : 12013,
								"value" : [ 72.069999999999993 ]
							}
, 							{
								"key" : 12014,
								"value" : [ 71.109999999999999 ]
							}
, 							{
								"key" : 12015,
								"value" : [ 70.519999999999996 ]
							}
, 							{
								"key" : 12016,
								"value" : [ 70.109999999999999 ]
							}
, 							{
								"key" : 12017,
								"value" : [ 69.890000000000001 ]
							}
, 							{
								"key" : 12018,
								"value" : [ 69.569999999999993 ]
							}
, 							{
								"key" : 12019,
								"value" : [ 69.219999999999999 ]
							}
, 							{
								"key" : 12020,
								"value" : [ 69.099999999999994 ]
							}
, 							{
								"key" : 12021,
								"value" : [ 69.120000000000005 ]
							}
, 							{
								"key" : 12022,
								"value" : [ 69.129999999999995 ]
							}
, 							{
								"key" : 12023,
								"value" : [ 69.129999999999995 ]
							}
, 							{
								"key" : 12024,
								"value" : [ 68.790000000000006 ]
							}
, 							{
								"key" : 12025,
								"value" : [ 68.409999999999997 ]
							}
, 							{
								"key" : 12026,
								"value" : [ 68.219999999999999 ]
							}
, 							{
								"key" : 12027,
								"value" : [ 68.159999999999997 ]
							}
, 							{
								"key" : 12028,
								"value" : [ 68.049999999999997 ]
							}
, 							{
								"key" : 12029,
								"value" : [ 67.890000000000001 ]
							}
, 							{
								"key" : 12030,
								"value" : [ 68.629999999999995 ]
							}
, 							{
								"key" : 12031,
								"value" : [ 70.340000000000003 ]
							}
, 							{
								"key" : 12032,
								"value" : [ 71.370000000000005 ]
							}
, 							{
								"key" : 12033,
								"value" : [ 72.269999999999996 ]
							}
, 							{
								"key" : 12034,
								"value" : [ 72.900000000000006 ]
							}
, 							{
								"key" : 12035,
								"value" : [ 73.260000000000005 ]
							}
, 							{
								"key" : 12036,
								"value" : [ 73.290000000000006 ]
							}
, 							{
								"key" : 12037,
								"value" : [ 73.060000000000002 ]
							}
, 							{
								"key" : 12038,
								"value" : [ 72.840000000000003 ]
							}
, 							{
								"key" : 12039,
								"value" : [ 72.430000000000007 ]
							}
, 							{
								"key" : 12040,
								"value" : [ 71.709999999999994 ]
							}
, 							{
								"key" : 12041,
								"value" : [ 71.040000000000006 ]
							}
, 							{
								"key" : 12042,
								"value" : [ 70.379999999999995 ]
							}
, 							{
								"key" : 12043,
								"value" : [ 69.569999999999993 ]
							}
, 							{
								"key" : 12044,
								"value" : [ 69.060000000000002 ]
							}
, 							{
								"key" : 12045,
								"value" : [ 68.719999999999999 ]
							}
, 							{
								"key" : 12046,
								"value" : [ 68.400000000000006 ]
							}
, 							{
								"key" : 12047,
								"value" : [ 68.450000000000003 ]
							}
, 							{
								"key" : 12048,
								"value" : [ 68.109999999999999 ]
							}
, 							{
								"key" : 12049,
								"value" : [ 67.870000000000005 ]
							}
, 							{
								"key" : 12050,
								"value" : [ 67.769999999999996 ]
							}
, 							{
								"key" : 12051,
								"value" : [ 67.5 ]
							}
, 							{
								"key" : 12052,
								"value" : [ 67.099999999999994 ]
							}
, 							{
								"key" : 12053,
								"value" : [ 66.739999999999995 ]
							}
, 							{
								"key" : 12054,
								"value" : [ 67.329999999999998 ]
							}
, 							{
								"key" : 12055,
								"value" : [ 69.489999999999995 ]
							}
, 							{
								"key" : 12056,
								"value" : [ 71.200000000000003 ]
							}
, 							{
								"key" : 12057,
								"value" : [ 72.269999999999996 ]
							}
, 							{
								"key" : 12058,
								"value" : [ 72.969999999999999 ]
							}
, 							{
								"key" : 12059,
								"value" : [ 73.489999999999995 ]
							}
, 							{
								"key" : 12060,
								"value" : [ 73.870000000000005 ]
							}
, 							{
								"key" : 12061,
								"value" : [ 73.939999999999998 ]
							}
, 							{
								"key" : 12062,
								"value" : [ 73.810000000000002 ]
							}
, 							{
								"key" : 12063,
								"value" : [ 73.629999999999995 ]
							}
, 							{
								"key" : 12064,
								"value" : [ 73.310000000000002 ]
							}
, 							{
								"key" : 12065,
								"value" : [ 72.769999999999996 ]
							}
, 							{
								"key" : 12066,
								"value" : [ 71.689999999999998 ]
							}
, 							{
								"key" : 12067,
								"value" : [ 69.439999999999998 ]
							}
, 							{
								"key" : 12068,
								"value" : [ 68.290000000000006 ]
							}
, 							{
								"key" : 12069,
								"value" : [ 68.049999999999997 ]
							}
, 							{
								"key" : 12070,
								"value" : [ 68.019999999999996 ]
							}
, 							{
								"key" : 12071,
								"value" : [ 67.959999999999994 ]
							}
, 							{
								"key" : 12072,
								"value" : [ 67.909999999999997 ]
							}
, 							{
								"key" : 12073,
								"value" : [ 67.780000000000001 ]
							}
, 							{
								"key" : 12074,
								"value" : [ 67.549999999999997 ]
							}
, 							{
								"key" : 12075,
								"value" : [ 67.230000000000004 ]
							}
, 							{
								"key" : 12076,
								"value" : [ 66.780000000000001 ]
							}
, 							{
								"key" : 12077,
								"value" : [ 66.290000000000006 ]
							}
, 							{
								"key" : 12078,
								"value" : [ 66.519999999999996 ]
							}
, 							{
								"key" : 12079,
								"value" : [ 68.609999999999999 ]
							}
, 							{
								"key" : 12080,
								"value" : [ 70.340000000000003 ]
							}
, 							{
								"key" : 12081,
								"value" : [ 71.939999999999998 ]
							}
, 							{
								"key" : 12082,
								"value" : [ 73.090000000000003 ]
							}
, 							{
								"key" : 12083,
								"value" : [ 73.620000000000005 ]
							}
, 							{
								"key" : 12084,
								"value" : [ 73.780000000000001 ]
							}
, 							{
								"key" : 12085,
								"value" : [ 73.620000000000005 ]
							}
, 							{
								"key" : 12086,
								"value" : [ 73.239999999999995 ]
							}
, 							{
								"key" : 12087,
								"value" : [ 72.879999999999995 ]
							}
, 							{
							}
, 							{