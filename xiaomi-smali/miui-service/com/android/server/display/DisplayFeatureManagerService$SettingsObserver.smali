# classes.dex

.class Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DisplayFeatureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayFeatureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayFeatureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayFeatureManagerService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1485
    iput-object p1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    .line 1486
    invoke-static {p1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayFeatureManagerService;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1487
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 9
    .param p1, "selfChange"  # Z
    .param p2, "uri"  # Landroid/net/Uri;

    .line 1491
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 1492
    .local v0, "lastPathSegment":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v1, :sswitch_data_236

    :cond_f
    goto/16 :goto_b5

    :sswitch_11
    const-string/jumbo v1, "screen_paper_mode_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v5

    goto/16 :goto_b6

    :sswitch_1d
    const-string/jumbo v1, "miui_dkt_mode"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v1, 0xc

    goto/16 :goto_b6

    :sswitch_2a
    const-string/jumbo v1, "screen_optimize_mode"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v2

    goto/16 :goto_b6

    :sswitch_36
    const-string/jumbo v1, "screen_auto_adjust"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x6

    goto/16 :goto_b6

    :sswitch_42
    const-string/jumbo v1, "screen_color_level"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x4

    goto/16 :goto_b6

    :sswitch_4e
    const-string/jumbo v1, "screen_paper_mode_time_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v1, 0xb

    goto :goto_b6

    :sswitch_5a
    const-string/jumbo v1, "screen_texture_color_type"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x7

    goto :goto_b6

    :sswitch_65
    const-string/jumbo v1, "read_apps_only"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v1, 0xa

    goto :goto_b6

    :sswitch_71
    const-string/jumbo v1, "screen_mode_type"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v1, 0x8

    goto :goto_b6

    :sswitch_7d
    const-string/jumbo v1, "screen_true_tone"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v1, 0x9

    goto :goto_b6

    :sswitch_89
    const-string/jumbo v1, "screen_game_mode"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x5

    goto :goto_b6

    :sswitch_94
    const-string/jumbo v1, "screen_paper_mode_level"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v4

    goto :goto_b6

    :sswitch_9f
    const-string/jumbo v1, "screen_paper_texture_level"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v3

    goto :goto_b6

    :sswitch_aa
    const-string v1, "external_display_connected"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v1, 0xd

    goto :goto_b6

    :goto_b5
    const/4 v1, -0x1

    :goto_b6
    packed-switch v1, :pswitch_data_270

    goto/16 :goto_235

    .line 1587
    :pswitch_bb  #0xd
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mupdateExternalDisplayConnectConfig(Lcom/android/server/display/DisplayFeatureManagerService;)V

    .line 1588
    goto/16 :goto_235

    .line 1584
    :pswitch_c2  #0xc
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mupdateDeskTopMode(Lcom/android/server/display/DisplayFeatureManagerService;)V

    .line 1585
    goto/16 :goto_235

    .line 1577
    :pswitch_c9  #0xb
    invoke-static {}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$sfgetIS_GREEN_MOUNTAIN_EYECARE_V3()Z

    move-result v1

    if-eqz v1, :cond_235

    .line 1578
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mupdateEyeCareTimerEnable(Lcom/android/server/display/DisplayFeatureManagerService;)V

    .line 1579
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mupdateShowEyeCareNotifyEnable(Lcom/android/server/display/DisplayFeatureManagerService;)V

    .line 1580
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mhandleShowEyeCareNotifyChange(Lcom/android/server/display/DisplayFeatureManagerService;)V

    goto/16 :goto_235

    .line 1565
    :pswitch_e0  #0xa
    invoke-static {}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$sfgetIS_GREEN_MOUNTAIN_EYECARE_V3()Z

    move-result v1

    if-eqz v1, :cond_235

    .line 1566
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mupdateEyeCareScope(Lcom/android/server/display/DisplayFeatureManagerService;)V

    .line 1567
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mupdateShowEyeCareNotifyEnable(Lcom/android/server/display/DisplayFeatureManagerService;)V

    .line 1568
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mhandleShowEyeCareNotifyChange(Lcom/android/server/display/DisplayFeatureManagerService;)V

    .line 1569
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmIsPopUpEnabled(Lcom/android/server/display/DisplayFeatureManagerService;)Z

    move-result v1

    if-nez v1, :cond_104

    .line 1570
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1, v5}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mhandleReadingModeChange(Lcom/android/server/display/DisplayFeatureManagerService;Z)V

    goto/16 :goto_235

    .line 1572
    :cond_104
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1, v5}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fputmIsPopUpEnabled(Lcom/android/server/display/DisplayFeatureManagerService;Z)V

    goto/16 :goto_235

    .line 1561
    :pswitch_10b  #0x9
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mupdateTrueToneModeEnable(Lcom/android/server/display/DisplayFeatureManagerService;)V

    .line 1562
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mhandleTrueToneModeChange(Lcom/android/server/display/DisplayFeatureManagerService;)V

    .line 1563
    goto/16 :goto_235

    .line 1546
    :pswitch_117  #0x8
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mupdateReadingModeType(Lcom/android/server/display/DisplayFeatureManagerService;)V

    .line 1547
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmReadingModeEnabled(Lcom/android/server/display/DisplayFeatureManagerService;)Z

    move-result v1

    if-eqz v1, :cond_235

    .line 1548
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmAutoAdjustEnable(Lcom/android/server/display/DisplayFeatureManagerService;)Z

    move-result v1

    if-nez v1, :cond_131

    .line 1549
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1, v4, v5}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mupdatePaperMode(Lcom/android/server/display/DisplayFeatureManagerService;ZZ)V

    .line 1551
    :cond_131
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmReadingModeType(Lcom/android/server/display/DisplayFeatureManagerService;)I

    move-result v1

    if-ne v1, v3, :cond_151

    .line 1552
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$sfgetIS_GREEN_MOUNTAIN_EYECARE_V3()Z

    move-result v2

    if-eqz v2, :cond_142

    goto :goto_143

    :cond_142
    move v3, v5

    :goto_143
    invoke-static {v1, v3}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$msetPaperColors(Lcom/android/server/display/DisplayFeatureManagerService;I)V

    .line 1553
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmRhythmicEyeCareManager(Lcom/android/server/display/DisplayFeatureManagerService;)Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->setModeEnable(Z)V

    goto/16 :goto_235

    .line 1555
    :cond_151
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmRhythmicEyeCareManager(Lcom/android/server/display/DisplayFeatureManagerService;)Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->setModeEnable(Z)V

    .line 1556
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmReadingModeType(Lcom/android/server/display/DisplayFeatureManagerService;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$msetPaperColors(Lcom/android/server/display/DisplayFeatureManagerService;I)V

    goto/16 :goto_235

    .line 1537
    :pswitch_167  #0x7
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mupdatePaperColorType(Lcom/android/server/display/DisplayFeatureManagerService;)V

    .line 1538
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmReadingModeEnabled(Lcom/android/server/display/DisplayFeatureManagerService;)Z

    move-result v1

    if-eqz v1, :cond_235

    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmReadingModeType(Lcom/android/server/display/DisplayFeatureManagerService;)I

    move-result v1

    if-eq v1, v4, :cond_18a

    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmReadingModeType(Lcom/android/server/display/DisplayFeatureManagerService;)I

    move-result v1

    if-eq v1, v2, :cond_18a

    invoke-static {}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$sfgetIS_GREEN_MOUNTAIN_EYECARE_V3()Z

    move-result v1

    if-eqz v1, :cond_235

    .line 1542
    :cond_18a
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmReadingModeType(Lcom/android/server/display/DisplayFeatureManagerService;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$msetPaperColors(Lcom/android/server/display/DisplayFeatureManagerService;I)V

    goto/16 :goto_235

    .line 1531
    :pswitch_197  #0x6
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mupdateAutoAdjustEnable(Lcom/android/server/display/DisplayFeatureManagerService;)V

    .line 1532
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$misSupportSmartEyeCare(Lcom/android/server/display/DisplayFeatureManagerService;)Z

    move-result v1

    if-eqz v1, :cond_235

    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmReadingModeEnabled(Lcom/android/server/display/DisplayFeatureManagerService;)Z

    move-result v1

    if-eqz v1, :cond_235

    .line 1533
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mhandleAutoAdjustChange(Lcom/android/server/display/DisplayFeatureManagerService;)V

    goto/16 :goto_235

    .line 1528
    :pswitch_1b3  #0x5
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mhandleGameModeChange(Lcom/android/server/display/DisplayFeatureManagerService;)V

    .line 1529
    goto/16 :goto_235

    .line 1520
    :pswitch_1ba  #0x4
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mupdateColorSchemeCTLevel(Lcom/android/server/display/DisplayFeatureManagerService;)V

    .line 1521
    invoke-static {}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$sfgetSUPPORT_UNLIMITED_COLOR_MODE()Z

    move-result v1

    if-eqz v1, :cond_1cb

    .line 1522
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1, v5}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mhandleUnlimitedColorLevelChange(Lcom/android/server/display/DisplayFeatureManagerService;Z)V

    goto :goto_235

    .line 1524
    :cond_1cb
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1, v5}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mhandleScreenSchemeChange(Lcom/android/server/display/DisplayFeatureManagerService;Z)V

    .line 1526
    goto :goto_235

    .line 1516
    :pswitch_1d1  #0x3
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mupdateColorSchemeModeType(Lcom/android/server/display/DisplayFeatureManagerService;)V

    .line 1517
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1, v5}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mhandleScreenSchemeChange(Lcom/android/server/display/DisplayFeatureManagerService;Z)V

    .line 1518
    goto :goto_235

    .line 1506
    :pswitch_1dc  #0x1, 0x2
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmReadingModeEnabled(Lcom/android/server/display/DisplayFeatureManagerService;)Z

    move-result v1

    if-eqz v1, :cond_235

    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmReadingModeType(Lcom/android/server/display/DisplayFeatureManagerService;)I

    move-result v1

    if-eq v1, v4, :cond_202

    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmReadingModeType(Lcom/android/server/display/DisplayFeatureManagerService;)I

    move-result v1

    if-eq v1, v2, :cond_202

    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmReadingModeType(Lcom/android/server/display/DisplayFeatureManagerService;)I

    move-result v1

    if-eqz v1, :cond_202

    invoke-static {}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$sfgetIS_GREEN_MOUNTAIN_EYECARE_V3()Z

    move-result v1

    if-eqz v1, :cond_235

    .line 1511
    :cond_202
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mupdateReadingModeCTLevel(Lcom/android/server/display/DisplayFeatureManagerService;)V

    .line 1512
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1, v4, v4}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mupdatePaperMode(Lcom/android/server/display/DisplayFeatureManagerService;ZZ)V

    goto :goto_235

    .line 1494
    :pswitch_20d  #0x0
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mupdateReadingModeEnable(Lcom/android/server/display/DisplayFeatureManagerService;)V

    .line 1495
    invoke-static {}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$sfgetIS_GREEN_MOUNTAIN_EYECARE_V3()Z

    move-result v1

    if-eqz v1, :cond_222

    .line 1496
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mupdateShowEyeCareNotifyEnable(Lcom/android/server/display/DisplayFeatureManagerService;)V

    .line 1497
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mhandleShowEyeCareNotifyChange(Lcom/android/server/display/DisplayFeatureManagerService;)V

    .line 1500
    :cond_222
    invoke-static {}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$sfgetIS_GREEN_MOUNTAIN_EYECARE_V3()Z

    move-result v1

    if-eqz v1, :cond_230

    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmEyeCareEffect(Lcom/android/server/display/DisplayFeatureManagerService;)Z

    move-result v1

    if-eqz v1, :cond_235

    .line 1501
    :cond_230
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1, v5}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mhandleReadingModeChange(Lcom/android/server/display/DisplayFeatureManagerService;Z)V

    .line 1592
    :cond_235
    :goto_235
    return-void

    :sswitch_data_236
    .sparse-switch
        -0x688973a8 -> :sswitch_aa
        -0x63a18e66 -> :sswitch_9f
        -0x6076b212 -> :sswitch_94
        -0x56e48e43 -> :sswitch_89
        -0x4241e690 -> :sswitch_7d
        -0xb0e3fbd -> :sswitch_71
        -0x7cc6a10 -> :sswitch_65
        0x25b806ed -> :sswitch_5a
        0x26590a25 -> :sswitch_4e
        0x2807b455 -> :sswitch_42
        0x6fff40cc -> :sswitch_36
        0x74fb4732 -> :sswitch_2a
        0x75414804 -> :sswitch_1d
        0x7e544b2b -> :sswitch_11
    .end sparse-switch

    :pswitch_data_270
    .packed-switch 0x0
        :pswitch_20d  #00000000
        :pswitch_1dc  #00000001
        :pswitch_1dc  #00000002
        :pswitch_1d1  #00000003
        :pswitch_1ba  #00000004
        :pswitch_1b3  #00000005
        :pswitch_197  #00000006
        :pswitch_167  #00000007
        :pswitch_117  #00000008
        :pswitch_10b  #00000009
        :pswitch_e0  #0000000a
        :pswitch_c9  #0000000b
        :pswitch_c2  #0000000c
        :pswitch_bb  #0000000d
    .end packed-switch
.end method
