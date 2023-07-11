/****** Object:  Index [aaaaanlu_sys_tbl_Accessibility_Item_PK]    Script Date: 7/10/2023 1:52:39 PM ******/
ALTER TABLE [dbo].[nlu_sys_tbl_Accessibility_Item] ADD  CONSTRAINT [aaaaanlu_sys_tbl_Accessibility_Item_PK] PRIMARY KEY NONCLUSTERED 
(
	[fldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aaaaanlu_sys_tbl_AuditTrailAction_PK]    Script Date: 7/10/2023 1:52:39 PM ******/
ALTER TABLE [dbo].[nlu_sys_tbl_AuditTrailAction] ADD  CONSTRAINT [aaaaanlu_sys_tbl_AuditTrailAction_PK] PRIMARY KEY NONCLUSTERED 
(
	[fldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aaaaanlu_sys_tbl_AuditTrailModule_PK]    Script Date: 7/10/2023 1:52:39 PM ******/
ALTER TABLE [dbo].[nlu_sys_tbl_AuditTrailModule] ADD  CONSTRAINT [aaaaanlu_sys_tbl_AuditTrailModule_PK] PRIMARY KEY NONCLUSTERED 
(
	[fldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_NLU_SYS_TBL_LISTOFCOUNTRY]    Script Date: 7/10/2023 1:52:39 PM ******/
ALTER TABLE [dbo].[NLU_SYS_TBL_LISTOFCOUNTRY] ADD  CONSTRAINT [IX_NLU_SYS_TBL_LISTOFCOUNTRY] UNIQUE NONCLUSTERED 
(
	[FLDTITLE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_NLU_SYS_TBL_LISTOFCOUNTRY]    Script Date: 7/10/2023 1:52:39 PM ******/
ALTER TABLE [dbo].[NLU_SYS_TBL_LISTOFCOUNTRY] ADD  CONSTRAINT [PK_NLU_SYS_TBL_LISTOFCOUNTRY] UNIQUE NONCLUSTERED 
(
	[FLDID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aaaaanlu_tbl_Accessibility_PK]    Script Date: 7/10/2023 1:52:39 PM ******/
ALTER TABLE [dbo].[nlu_tbl_Accessibility] ADD  CONSTRAINT [aaaaanlu_tbl_Accessibility_PK] PRIMARY KEY NONCLUSTERED 
(
	[fldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aaaaanlu_tbl_Application_PK]    Script Date: 7/10/2023 1:52:39 PM ******/
ALTER TABLE [dbo].[nlu_tbl_Application] ADD  CONSTRAINT [aaaaanlu_tbl_Application_PK] PRIMARY KEY NONCLUSTERED 
(
	[fldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aaaaanlu_tbl_AuditTrail_Det_PK]    Script Date: 7/10/2023 1:52:39 PM ******/
ALTER TABLE [dbo].[nlu_tbl_AuditTrail_Det] ADD  CONSTRAINT [aaaaanlu_tbl_AuditTrail_Det_PK] PRIMARY KEY NONCLUSTERED 
(
	[fldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aaaaanlu_tbl_AuditTrail_Main_PK]    Script Date: 7/10/2023 1:52:39 PM ******/
ALTER TABLE [dbo].[nlu_tbl_AuditTrail_Main] ADD  CONSTRAINT [aaaaanlu_tbl_AuditTrail_Main_PK] PRIMARY KEY NONCLUSTERED 
(
	[fldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aaaaanlu_tbl_Link_App_Mod_PK]    Script Date: 7/10/2023 1:52:39 PM ******/
ALTER TABLE [dbo].[nlu_tbl_Link_App_Mod] ADD  CONSTRAINT [aaaaanlu_tbl_Link_App_Mod_PK] PRIMARY KEY NONCLUSTERED 
(
	[fldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aaaaanlu_tbl_Link_AppMod_Permission_PK]    Script Date: 7/10/2023 1:52:39 PM ******/
ALTER TABLE [dbo].[nlu_tbl_Link_AppMod_Permission] ADD  CONSTRAINT [aaaaanlu_tbl_Link_AppMod_Permission_PK] PRIMARY KEY NONCLUSTERED 
(
	[fldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aaaaanlu_tbl_Link_Type_AppMod_Perm_PK]    Script Date: 7/10/2023 1:52:39 PM ******/
ALTER TABLE [dbo].[nlu_tbl_Link_Type_AppMod_Perm] ADD  CONSTRAINT [aaaaanlu_tbl_Link_Type_AppMod_Perm_PK] PRIMARY KEY NONCLUSTERED 
(
	[fldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aaaaanlu_tbl_ListOfDepartment_PK]    Script Date: 7/10/2023 1:52:39 PM ******/
ALTER TABLE [dbo].[nlu_tbl_ListOfDepartment] ADD  CONSTRAINT [aaaaanlu_tbl_ListOfDepartment_PK] PRIMARY KEY NONCLUSTERED 
(
	[fldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aaaaanlu_tbl_ListOfPosition_PK]    Script Date: 7/10/2023 1:52:39 PM ******/
ALTER TABLE [dbo].[nlu_tbl_ListOfPosition] ADD  CONSTRAINT [aaaaanlu_tbl_ListOfPosition_PK] PRIMARY KEY NONCLUSTERED 
(
	[fldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aaaaanlu_tbl_Module_PK]    Script Date: 7/10/2023 1:52:39 PM ******/
ALTER TABLE [dbo].[nlu_tbl_Module] ADD  CONSTRAINT [aaaaanlu_tbl_Module_PK] PRIMARY KEY NONCLUSTERED 
(
	[fldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aaaaanlu_tbl_Permission_PK]    Script Date: 7/10/2023 1:52:39 PM ******/
ALTER TABLE [dbo].[nlu_tbl_Permission] ADD  CONSTRAINT [aaaaanlu_tbl_Permission_PK] PRIMARY KEY NONCLUSTERED 
(
	[fldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_NLU_TBL_SITE]    Script Date: 7/10/2023 1:52:39 PM ******/
ALTER TABLE [dbo].[NLU_TBL_SITE] ADD  CONSTRAINT [IX_NLU_TBL_SITE] UNIQUE NONCLUSTERED 
(
	[FLDTITLE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aaaaanlu_tbl_Soap_PK]    Script Date: 7/10/2023 1:52:39 PM ******/
ALTER TABLE [dbo].[nlu_tbl_Soap] ADD  CONSTRAINT [aaaaanlu_tbl_Soap_PK] PRIMARY KEY NONCLUSTERED 
(
	[fldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aaaaanlu_tbl_SystemParams_PK]    Script Date: 7/10/2023 1:52:39 PM ******/
ALTER TABLE [dbo].[nlu_tbl_SystemParams] ADD  CONSTRAINT [aaaaanlu_tbl_SystemParams_PK] PRIMARY KEY NONCLUSTERED 
(
	[fldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aaaaanlu_tbl_Type_PK]    Script Date: 7/10/2023 1:52:39 PM ******/
ALTER TABLE [dbo].[nlu_tbl_Type] ADD  CONSTRAINT [aaaaanlu_tbl_Type_PK] PRIMARY KEY NONCLUSTERED 
(
	[fldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aaaaanlu_tbl_User_PK]    Script Date: 7/10/2023 1:52:39 PM ******/
ALTER TABLE [dbo].[nlu_tbl_User] ADD  CONSTRAINT [aaaaanlu_tbl_User_PK] PRIMARY KEY NONCLUSTERED 
(
	[fldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aaaaanlu_tbl_UserLogin_PK]    Script Date: 7/10/2023 1:52:39 PM ******/
ALTER TABLE [dbo].[nlu_tbl_UserLogin] ADD  CONSTRAINT [aaaaanlu_tbl_UserLogin_PK] PRIMARY KEY NONCLUSTERED 
(
	[fldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_nlu_tbl_UserPasswords_1]    Script Date: 7/10/2023 1:52:39 PM ******/
ALTER TABLE [dbo].[nlu_tbl_UserPasswords] ADD  CONSTRAINT [PK_nlu_tbl_UserPasswords_1] PRIMARY KEY NONCLUSTERED 
(
	[fldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aaaaanlu_tbl_UserPersonal_PK]    Script Date: 7/10/2023 1:52:39 PM ******/
ALTER TABLE [dbo].[nlu_tbl_UserPersonal] ADD  CONSTRAINT [aaaaanlu_tbl_UserPersonal_PK] PRIMARY KEY NONCLUSTERED 
(
	[fldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aaaaanlu_tbl_UserPersonnel_PK]    Script Date: 7/10/2023 1:52:39 PM ******/
ALTER TABLE [dbo].[nlu_tbl_UserPersonnel] ADD  CONSTRAINT [aaaaanlu_tbl_UserPersonnel_PK] PRIMARY KEY NONCLUSTERED 
(
	[fldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aaaaanlu_tbl_UserSite_PK]    Script Date: 7/10/2023 1:52:39 PM ******/
ALTER TABLE [dbo].[NLU_TBL_USERSITE] ADD  CONSTRAINT [aaaaanlu_tbl_UserSite_PK] PRIMARY KEY NONCLUSTERED 
(
	[FLDID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aaaaanlu_tbl_UserType_PK]    Script Date: 7/10/2023 1:52:39 PM ******/
ALTER TABLE [dbo].[nlu_tbl_UserType] ADD  CONSTRAINT [aaaaanlu_tbl_UserType_PK] PRIMARY KEY NONCLUSTERED 
(
	[fldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[nlu_sys_tbl_AuditTrailAction] ADD  CONSTRAINT [DF__sys_tbl_A__fldID__7A9C383C]  DEFAULT ((0)) FOR [fldID]
GO
ALTER TABLE [dbo].[nlu_sys_tbl_AuditTrailModule] ADD  CONSTRAINT [DF__sys_tbl_A__fldID__7F60ED59]  DEFAULT ((0)) FOR [fldID]
GO
ALTER TABLE [dbo].[nlu_tbl_Accessibility] ADD  DEFAULT (getutcdate()) FOR [fldDate]
GO
ALTER TABLE [dbo].[nlu_tbl_Accessibility] ADD  CONSTRAINT [DF__Tbl_Acces__fldUI__0519C6AF]  DEFAULT ('@') FOR [fldUID]
GO
ALTER TABLE [dbo].[nlu_tbl_Application] ADD  CONSTRAINT [DF__tbl_Appli__fldIs__09DE7BCC]  DEFAULT ((0)) FOR [fldIsActive]
GO
ALTER TABLE [dbo].[nlu_tbl_AuditTrail_Main] ADD  DEFAULT (getutcdate()) FOR [fldDate]
GO
ALTER TABLE [dbo].[nlu_tbl_AuditTrail_Main] ADD  CONSTRAINT [DF__tbl_Audit__fldPa__1367E606]  DEFAULT ((-1)) FOR [fldParentID_0]
GO
ALTER TABLE [dbo].[nlu_tbl_AuditTrail_Main] ADD  CONSTRAINT [DF__tbl_Audit__fldPa__145C0A3F]  DEFAULT ((-1)) FOR [fldParentID_1]
GO
ALTER TABLE [dbo].[nlu_tbl_AuditTrail_Main] ADD  CONSTRAINT [DF__tbl_Audit__fldPa__15502E78]  DEFAULT ((-1)) FOR [fldParentID_2]
GO
ALTER TABLE [dbo].[nlu_tbl_AuditTrail_Main] ADD  CONSTRAINT [DF__tbl_Audit__fldPa__164452B1]  DEFAULT ((-1)) FOR [fldParentID_3]
GO
ALTER TABLE [dbo].[nlu_tbl_AuditTrail_Main] ADD  CONSTRAINT [DF__tbl_Audit__fldPa__173876EA]  DEFAULT ((-1)) FOR [fldParentID_4]
GO
ALTER TABLE [dbo].[nlu_tbl_AuditTrail_Main] ADD  DEFAULT ((-1)) FOR [fldSiteID]
GO
ALTER TABLE [dbo].[nlu_tbl_Link_App_Mod] ADD  CONSTRAINT [DF__tbl_Link___fldIs__1BFD2C07]  DEFAULT ((0)) FOR [fldIsActive]
GO
ALTER TABLE [dbo].[nlu_tbl_MetaData] ADD  CONSTRAINT [DF_nlu_tbl_MetaData_fldIsRequired]  DEFAULT ((1)) FOR [fldIsRequired]
GO
ALTER TABLE [dbo].[nlu_tbl_MetaData] ADD  CONSTRAINT [DF_nlu_tbl_MetaData_fldIsUsed]  DEFAULT ((1)) FOR [fldIsUsed]
GO
ALTER TABLE [dbo].[nlu_tbl_Permission] ADD  CONSTRAINT [DF__tbl_Permi__fldIs__33D4B598]  DEFAULT ((0)) FOR [fldIsSystemCode]
GO
ALTER TABLE [dbo].[NLU_TBL_SITE] ADD  DEFAULT ((0)) FOR [FLDDELETED]
GO
ALTER TABLE [dbo].[NLU_TBL_SITE] ADD  DEFAULT (getdate()) FOR [FLDDATECREATE]
GO
ALTER TABLE [dbo].[NLU_TBL_SITE] ADD  DEFAULT (getdate()) FOR [FLDDATEUPDATE]
GO
ALTER TABLE [dbo].[nlu_tbl_Soap] ADD  DEFAULT (getutcdate()) FOR [fldDate]
GO
ALTER TABLE [dbo].[nlu_tbl_Type] ADD  CONSTRAINT [DF__tbl_Type__fldIsS__412EB0B6]  DEFAULT ((0)) FOR [fldIsSystemCode]
GO
ALTER TABLE [dbo].[nlu_tbl_Type] ADD  CONSTRAINT [DF__tbl_Type__fldIsE__4222D4EF]  DEFAULT ((0)) FOR [fldIsEnable]
GO
ALTER TABLE [dbo].[nlu_tbl_User] ADD  CONSTRAINT [DF__tbl_User__fldIsE__46E78A0C]  DEFAULT ((1)) FOR [fldIsEnable]
GO
ALTER TABLE [dbo].[nlu_tbl_User] ADD  CONSTRAINT [DF__tbl_User__fldIsS__47DBAE45]  DEFAULT ((0)) FOR [fldIsSysAdmin]
GO
ALTER TABLE [dbo].[nlu_tbl_User] ADD  CONSTRAINT [DF_nlu_tbl_User_fldPasswdLocked]  DEFAULT ((0)) FOR [fldPasswdLocked]
GO
ALTER TABLE [dbo].[nlu_tbl_User] ADD  DEFAULT ((2)) FOR [FLDMAINLANGID]
GO
ALTER TABLE [dbo].[nlu_tbl_UserLogin] ADD  DEFAULT (getutcdate()) FOR [fldLoginDate]
GO
ALTER TABLE [dbo].[nlu_tbl_UserLogin] ADD  CONSTRAINT [DF__tbl_UserL__fldNu__4D94879B]  DEFAULT ((0)) FOR [fldNumFailed]
GO
ALTER TABLE [dbo].[nlu_tbl_UserLogin] ADD  CONSTRAINT [DF__tbl_UserL__fldIs__4E88ABD4]  DEFAULT ((0)) FOR [fldIsReset]
GO
ALTER TABLE [dbo].[nlu_tbl_UserPersonnel] ADD  CONSTRAINT [DF__tbl_UserP__fldSe__571DF1D5]  DEFAULT (getdate()) FOR [fldSetPasswordDate]
GO
ALTER TABLE [dbo].[nlu_tbl_UserPersonnel] ADD  CONSTRAINT [DF__tbl_UserP__fldRe__5812160E]  DEFAULT (getdate()) FOR [fldRegisterDate]
GO
ALTER TABLE [dbo].[NLU_SYS_TBL_LISTOFSTATE]  WITH CHECK ADD  CONSTRAINT [FK_NLU_LISTOFSTATE_01] FOREIGN KEY([FLDLINKID])
REFERENCES [dbo].[NLU_SYS_TBL_LISTOFCOUNTRY] ([FLDID])
GO
ALTER TABLE [dbo].[NLU_SYS_TBL_LISTOFSTATE] CHECK CONSTRAINT [FK_NLU_LISTOFSTATE_01]
GO
ALTER TABLE [dbo].[nlu_tbl_Accessibility]  WITH CHECK ADD  CONSTRAINT [nlu_tbl_Accessibility_FK00] FOREIGN KEY([fldItemType])
REFERENCES [dbo].[nlu_sys_tbl_Accessibility_Item] ([fldID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[nlu_tbl_Accessibility] CHECK CONSTRAINT [nlu_tbl_Accessibility_FK00]
GO
ALTER TABLE [dbo].[nlu_tbl_Accessibility]  WITH CHECK ADD  CONSTRAINT [nlu_tbl_Accessibility_FK01] FOREIGN KEY([fldUser])
REFERENCES [dbo].[nlu_tbl_User] ([fldID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[nlu_tbl_Accessibility] CHECK CONSTRAINT [nlu_tbl_Accessibility_FK01]
GO
ALTER TABLE [dbo].[nlu_tbl_AuditTrail_Det]  WITH CHECK ADD  CONSTRAINT [nlu_tbl_AuditTrail_Det_FK00] FOREIGN KEY([fldLinkID])
REFERENCES [dbo].[nlu_tbl_AuditTrail_Main] ([fldID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[nlu_tbl_AuditTrail_Det] CHECK CONSTRAINT [nlu_tbl_AuditTrail_Det_FK00]
GO
ALTER TABLE [dbo].[nlu_tbl_AuditTrail_Main]  WITH CHECK ADD  CONSTRAINT [FK_nlu_tbl_AuditTrail_Main_nlu_tbl_Reasons] FOREIGN KEY([fldReason])
REFERENCES [dbo].[nlu_tbl_Reasons] ([fldID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[nlu_tbl_AuditTrail_Main] CHECK CONSTRAINT [FK_nlu_tbl_AuditTrail_Main_nlu_tbl_Reasons]
GO
ALTER TABLE [dbo].[nlu_tbl_AuditTrail_Main]  WITH CHECK ADD  CONSTRAINT [nlu_tbl_AuditTrail_Main_FK00] FOREIGN KEY([fldSubModuleID])
REFERENCES [dbo].[nlu_sys_tbl_AuditTrailModule] ([fldID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[nlu_tbl_AuditTrail_Main] CHECK CONSTRAINT [nlu_tbl_AuditTrail_Main_FK00]
GO
ALTER TABLE [dbo].[nlu_tbl_AuditTrail_Main]  WITH CHECK ADD  CONSTRAINT [nlu_tbl_AuditTrail_Main_FK01] FOREIGN KEY([fldModuleID])
REFERENCES [dbo].[nlu_tbl_Application] ([fldID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[nlu_tbl_AuditTrail_Main] CHECK CONSTRAINT [nlu_tbl_AuditTrail_Main_FK01]
GO
ALTER TABLE [dbo].[nlu_tbl_AuditTrail_Main]  WITH CHECK ADD  CONSTRAINT [nlu_tbl_AuditTrail_Main_FK02] FOREIGN KEY([fldLoginID])
REFERENCES [dbo].[nlu_tbl_UserLogin] ([fldID])
GO
ALTER TABLE [dbo].[nlu_tbl_AuditTrail_Main] CHECK CONSTRAINT [nlu_tbl_AuditTrail_Main_FK02]
GO
ALTER TABLE [dbo].[nlu_tbl_AuditTrail_Main]  WITH CHECK ADD  CONSTRAINT [nlu_tbl_AuditTrail_Main_FK03] FOREIGN KEY([fldUserID])
REFERENCES [dbo].[nlu_tbl_User] ([fldID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[nlu_tbl_AuditTrail_Main] CHECK CONSTRAINT [nlu_tbl_AuditTrail_Main_FK03]
GO
ALTER TABLE [dbo].[nlu_tbl_AuditTrail_Main]  WITH CHECK ADD  CONSTRAINT [nlu_tbl_AuditTrail_Main_FK04] FOREIGN KEY([fldAction])
REFERENCES [dbo].[nlu_sys_tbl_AuditTrailAction] ([fldID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[nlu_tbl_AuditTrail_Main] CHECK CONSTRAINT [nlu_tbl_AuditTrail_Main_FK04]
GO
ALTER TABLE [dbo].[nlu_tbl_Link_App_Mod]  WITH CHECK ADD  CONSTRAINT [nlu_tbl_Link_App_Mod_FK00] FOREIGN KEY([fldApplicationID])
REFERENCES [dbo].[nlu_tbl_Application] ([fldID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[nlu_tbl_Link_App_Mod] CHECK CONSTRAINT [nlu_tbl_Link_App_Mod_FK00]
GO
ALTER TABLE [dbo].[nlu_tbl_Link_App_Mod]  WITH CHECK ADD  CONSTRAINT [nlu_tbl_Link_App_Mod_FK01] FOREIGN KEY([fldModuleID])
REFERENCES [dbo].[nlu_tbl_Module] ([fldID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[nlu_tbl_Link_App_Mod] CHECK CONSTRAINT [nlu_tbl_Link_App_Mod_FK01]
GO
ALTER TABLE [dbo].[nlu_tbl_Link_AppMod_Permission]  WITH CHECK ADD  CONSTRAINT [nlu_tbl_Link_AppMod_Permissio_FK00] FOREIGN KEY([fldAppModID])
REFERENCES [dbo].[nlu_tbl_Link_App_Mod] ([fldID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[nlu_tbl_Link_AppMod_Permission] CHECK CONSTRAINT [nlu_tbl_Link_AppMod_Permissio_FK00]
GO
ALTER TABLE [dbo].[nlu_tbl_Link_AppMod_Permission]  WITH CHECK ADD  CONSTRAINT [nlu_tbl_Link_AppMod_Permissio_FK01] FOREIGN KEY([fldPermissionID])
REFERENCES [dbo].[nlu_tbl_Permission] ([fldID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[nlu_tbl_Link_AppMod_Permission] CHECK CONSTRAINT [nlu_tbl_Link_AppMod_Permissio_FK01]
GO
ALTER TABLE [dbo].[nlu_tbl_Link_Type_AppMod_Perm]  WITH CHECK ADD  CONSTRAINT [nlu_tbl_Link_Type_AppMod_Perm_FK00] FOREIGN KEY([fldLinkID])
REFERENCES [dbo].[nlu_tbl_Link_AppMod_Permission] ([fldID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[nlu_tbl_Link_Type_AppMod_Perm] CHECK CONSTRAINT [nlu_tbl_Link_Type_AppMod_Perm_FK00]
GO
ALTER TABLE [dbo].[nlu_tbl_Link_Type_AppMod_Perm]  WITH CHECK ADD  CONSTRAINT [nlu_tbl_Link_Type_AppMod_Perm_FK01] FOREIGN KEY([fldTypeID])
REFERENCES [dbo].[nlu_tbl_Type] ([fldID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[nlu_tbl_Link_Type_AppMod_Perm] CHECK CONSTRAINT [nlu_tbl_Link_Type_AppMod_Perm_FK01]
GO
ALTER TABLE [dbo].[nlu_tbl_Lockout]  WITH CHECK ADD  CONSTRAINT [FK_nlu_tbl_Lockout_nlu_tbl_User] FOREIGN KEY([fldUserID])
REFERENCES [dbo].[nlu_tbl_User] ([fldID])
GO
ALTER TABLE [dbo].[nlu_tbl_Lockout] CHECK CONSTRAINT [FK_nlu_tbl_Lockout_nlu_tbl_User]
GO
ALTER TABLE [dbo].[nlu_tbl_Reasons]  WITH CHECK ADD  CONSTRAINT [FK_nlu_tbl_Reasons_nlu_sys_tbl_AuditTrailAction] FOREIGN KEY([fldActionID])
REFERENCES [dbo].[nlu_sys_tbl_AuditTrailAction] ([fldID])
GO
ALTER TABLE [dbo].[nlu_tbl_Reasons] CHECK CONSTRAINT [FK_nlu_tbl_Reasons_nlu_sys_tbl_AuditTrailAction]
GO
ALTER TABLE [dbo].[NLU_TBL_SITE]  WITH CHECK ADD  CONSTRAINT [FK_NLU_SITE_01] FOREIGN KEY([FLDPARENTID])
REFERENCES [dbo].[NLU_TBL_SITE] ([FLDID])
GO
ALTER TABLE [dbo].[NLU_TBL_SITE] CHECK CONSTRAINT [FK_NLU_SITE_01]
GO
ALTER TABLE [dbo].[NLU_TBL_SITE]  WITH CHECK ADD  CONSTRAINT [FK_NLU_SITE_02] FOREIGN KEY([FLDCOUNTRY])
REFERENCES [dbo].[NLU_SYS_TBL_LISTOFCOUNTRY] ([FLDID])
GO
ALTER TABLE [dbo].[NLU_TBL_SITE] CHECK CONSTRAINT [FK_NLU_SITE_02]
GO
ALTER TABLE [dbo].[NLU_TBL_SITE]  WITH CHECK ADD  CONSTRAINT [FK_NLU_SITE_03] FOREIGN KEY([FLDSTATE])
REFERENCES [dbo].[NLU_SYS_TBL_LISTOFSTATE] ([FLDID])
GO
ALTER TABLE [dbo].[NLU_TBL_SITE] CHECK CONSTRAINT [FK_NLU_SITE_03]
GO
ALTER TABLE [dbo].[nlu_tbl_Soap]  WITH CHECK ADD  CONSTRAINT [nlu_tbl_Soap_FK00] FOREIGN KEY([fldDepID])
REFERENCES [dbo].[nlu_tbl_ListOfDepartment] ([fldID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[nlu_tbl_Soap] CHECK CONSTRAINT [nlu_tbl_Soap_FK00]
GO
ALTER TABLE [dbo].[nlu_tbl_Soap]  WITH CHECK ADD  CONSTRAINT [nlu_tbl_Soap_FK01] FOREIGN KEY([fldUser])
REFERENCES [dbo].[nlu_tbl_User] ([fldID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[nlu_tbl_Soap] CHECK CONSTRAINT [nlu_tbl_Soap_FK01]
GO
ALTER TABLE [dbo].[NLU_TBL_TYPESITE]  WITH CHECK ADD  CONSTRAINT [FK_NLU_TYPESITE_01] FOREIGN KEY([FLDTYPEID])
REFERENCES [dbo].[nlu_tbl_Type] ([fldID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NLU_TBL_TYPESITE] CHECK CONSTRAINT [FK_NLU_TYPESITE_01]
GO
ALTER TABLE [dbo].[NLU_TBL_TYPESITE]  WITH CHECK ADD  CONSTRAINT [FK_NLU_TYPESITE_02] FOREIGN KEY([FLDSITEID])
REFERENCES [dbo].[NLU_TBL_SITE] ([FLDID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NLU_TBL_TYPESITE] CHECK CONSTRAINT [FK_NLU_TYPESITE_02]
GO
ALTER TABLE [dbo].[nlu_tbl_UserDeptList]  WITH CHECK ADD  CONSTRAINT [FK_nlu_tbl_UserDeptList_nlu_tbl_ListOfDepartment] FOREIGN KEY([fldDepartmentID])
REFERENCES [dbo].[nlu_tbl_ListOfDepartment] ([fldID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[nlu_tbl_UserDeptList] CHECK CONSTRAINT [FK_nlu_tbl_UserDeptList_nlu_tbl_ListOfDepartment]
GO
ALTER TABLE [dbo].[nlu_tbl_UserDeptList]  WITH CHECK ADD  CONSTRAINT [FK_nlu_tbl_UserDeptList_nlu_tbl_User] FOREIGN KEY([fldUserID])
REFERENCES [dbo].[nlu_tbl_User] ([fldID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[nlu_tbl_UserDeptList] CHECK CONSTRAINT [FK_nlu_tbl_UserDeptList_nlu_tbl_User]
GO
ALTER TABLE [dbo].[nlu_tbl_UserLogin]  WITH CHECK ADD  CONSTRAINT [FK_nlu_tbl_UserLogin_nlu_tbl_Application] FOREIGN KEY([fldApplicationID])
REFERENCES [dbo].[nlu_tbl_Application] ([fldID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[nlu_tbl_UserLogin] CHECK CONSTRAINT [FK_nlu_tbl_UserLogin_nlu_tbl_Application]
GO
ALTER TABLE [dbo].[nlu_tbl_UserLogin]  WITH CHECK ADD  CONSTRAINT [FK_nlu_tbl_UserLogin_nlu_tbl_User] FOREIGN KEY([fldUserID])
REFERENCES [dbo].[nlu_tbl_User] ([fldID])
GO
ALTER TABLE [dbo].[nlu_tbl_UserLogin] CHECK CONSTRAINT [FK_nlu_tbl_UserLogin_nlu_tbl_User]
GO
ALTER TABLE [dbo].[nlu_tbl_UserPasswords]  WITH CHECK ADD  CONSTRAINT [FK_nlu_tbl_UserPasswords_nlu_tbl_User] FOREIGN KEY([fldUserID])
REFERENCES [dbo].[nlu_tbl_User] ([fldID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[nlu_tbl_UserPasswords] CHECK CONSTRAINT [FK_nlu_tbl_UserPasswords_nlu_tbl_User]
GO
ALTER TABLE [dbo].[nlu_tbl_UserPersonal]  WITH CHECK ADD  CONSTRAINT [nlu_tbl_UserPersonal_FK00] FOREIGN KEY([fldUserID])
REFERENCES [dbo].[nlu_tbl_User] ([fldID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[nlu_tbl_UserPersonal] CHECK CONSTRAINT [nlu_tbl_UserPersonal_FK00]
GO
ALTER TABLE [dbo].[nlu_tbl_UserPersonnel]  WITH CHECK ADD  CONSTRAINT [nlu_tbl_UserPersonnel_FK00] FOREIGN KEY([fldDepartment])
REFERENCES [dbo].[nlu_tbl_ListOfDepartment] ([fldID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[nlu_tbl_UserPersonnel] CHECK CONSTRAINT [nlu_tbl_UserPersonnel_FK00]
GO
ALTER TABLE [dbo].[nlu_tbl_UserPersonnel]  WITH CHECK ADD  CONSTRAINT [nlu_tbl_UserPersonnel_FK01] FOREIGN KEY([fldPosition])
REFERENCES [dbo].[nlu_tbl_ListOfPosition] ([fldID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[nlu_tbl_UserPersonnel] CHECK CONSTRAINT [nlu_tbl_UserPersonnel_FK01]
GO
ALTER TABLE [dbo].[nlu_tbl_UserPersonnel]  WITH CHECK ADD  CONSTRAINT [nlu_tbl_UserPersonnel_FK02] FOREIGN KEY([fldUserID])
REFERENCES [dbo].[nlu_tbl_User] ([fldID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[nlu_tbl_UserPersonnel] CHECK CONSTRAINT [nlu_tbl_UserPersonnel_FK02]
GO
ALTER TABLE [dbo].[NLU_TBL_USERSITE]  WITH CHECK ADD  CONSTRAINT [FK_NLU_USERSITE_01] FOREIGN KEY([FLDUSERID])
REFERENCES [dbo].[nlu_tbl_User] ([fldID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NLU_TBL_USERSITE] CHECK CONSTRAINT [FK_NLU_USERSITE_01]
GO
ALTER TABLE [dbo].[NLU_TBL_USERSITE]  WITH CHECK ADD  CONSTRAINT [FK_NLU_USERSITE_02] FOREIGN KEY([FLDSITEID])
REFERENCES [dbo].[NLU_TBL_SITE] ([FLDID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NLU_TBL_USERSITE] CHECK CONSTRAINT [FK_NLU_USERSITE_02]
GO
ALTER TABLE [dbo].[nlu_tbl_UserType]  WITH CHECK ADD  CONSTRAINT [nlu_tbl_UserType_FK00] FOREIGN KEY([fldTypeID])
REFERENCES [dbo].[nlu_tbl_Type] ([fldID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[nlu_tbl_UserType] CHECK CONSTRAINT [nlu_tbl_UserType_FK00]
GO
ALTER TABLE [dbo].[nlu_tbl_UserType]  WITH CHECK ADD  CONSTRAINT [nlu_tbl_UserType_FK01] FOREIGN KEY([fldUserID])
REFERENCES [dbo].[nlu_tbl_User] ([fldID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[nlu_tbl_UserType] CHECK CONSTRAINT [nlu_tbl_UserType_FK01]
GO
