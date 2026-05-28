# classes.dex

.class Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;
.super Landroid/os/Handler;
.source "DisplayFeatureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayFeatureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayFeatureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayFeatureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayFeatureManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"  # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1626
    iput-object p1, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    .line 1627
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1628
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"  # Landroid/os/Message;

    .line 1632
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1633
    iget v0, p1, Landroid/os/Message;->what:I

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_1ae

    goto/16 :goto_1ac

    .line 1664
    :sswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1665
    .local v0, "argss":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 1666
    .local v5, "r":F
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 1667
    .local v6, "g":F
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 1668
    .local v7, "b":F
    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    const v3, 0x17700

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static/range {v2 .. v7}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mnotifyCallBackPccLevel(Lcom/android/server/display/DisplayFeatureManagerService;IIFFF)V

    .line 1669
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1670
    goto/16 :goto_1ac

    .line 1725
    .end local v0  # "argss":Lcom/android/internal/os/SomeArgs;
    .end local v5  # "r":F
    .end local v6  # "g":F
    .end local v7  # "b":F
    :sswitch_39
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$msendMuraState(Lcom/android/server/display/DisplayFeatureManagerService;I)V

    goto/16 :goto_1ac

    .line 1690
    :sswitch_42
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$msendHbmState(Lcom/android/server/display/DisplayFeatureManagerService;I)V

    .line 1691
    goto/16 :goto_1ac

    .line 1693
    :sswitch_4b
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$msetSDR2HDR(Lcom/android/server/display/DisplayFeatureManagerService;I)V

    .line 1694
    goto/16 :goto_1ac

    .line 1697
    :sswitch_54
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmResolver(Lcom/android/server/display/DisplayFeatureManagerService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_game_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1698
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mloadSettings(Lcom/android/server/display/DisplayFeatureManagerService;)V

    .line 1699
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0, v2}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$msetScreenEffectAll(Lcom/android/server/display/DisplayFeatureManagerService;Z)V

    .line 1700
    invoke-static {}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$sfgetIS_GREEN_MOUNTAIN_EYECARE_V3()Z

    move-result v0

    if-eqz v0, :cond_1ac

    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmBootCompleted(Lcom/android/server/display/DisplayFeatureManagerService;)Z

    move-result v0

    if-eqz v0, :cond_1ac

    .line 1701
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmEffectScopeManager(Lcom/android/server/display/DisplayFeatureManagerService;)Lcom/android/server/display/eyecare/EffectScopeManager;

    move-result-object v0

    invoke-static {}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$sfgetCONTENT_URI()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmAmInternal(Lcom/android/server/display/DisplayFeatureManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/eyecare/EffectScopeManager;->updateReadEffectScopeOpenState(Landroid/net/Uri;I)V

    goto/16 :goto_1ac

    .line 1717
    :sswitch_91
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_99

    goto :goto_9a

    :cond_99
    move v2, v3

    :goto_9a
    invoke-static {v0, v2}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fputmDolbyState(Lcom/android/server/display/DisplayFeatureManagerService;Z)V

    .line 1719
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayFeatureManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/display/DisplayFeatureManagerService;->BRIGHTNESS_THROTTLER_STATUS:Ljava/lang/String;

    .line 1721
    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmDolbyState(Lcom/android/server/display/DisplayFeatureManagerService;)Z

    move-result v2

    .line 1719
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1722
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mnotifyHdrStateChanged(Lcom/android/server/display/DisplayFeatureManagerService;)V

    .line 1723
    goto/16 :goto_1ac

    .line 1687
    :sswitch_ba
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mhandleTrueToneModeChange(Lcom/android/server/display/DisplayFeatureManagerService;)V

    .line 1688
    goto/16 :goto_1ac

    .line 1639
    :sswitch_c1
    invoke-static {}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$sfgetIS_GREEN_MOUNTAIN_EYECARE_V3()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 1640
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmReadingModeEnabled(Lcom/android/server/display/DisplayFeatureManagerService;)Z

    move-result v1

    if-eqz v1, :cond_d2

    const/4 v3, 0x3

    :cond_d2
    invoke-static {v0, v3}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$msetPaperColors(Lcom/android/server/display/DisplayFeatureManagerService;I)V

    goto/16 :goto_1ac

    .line 1642
    :cond_d7
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmReadingModeEnabled(Lcom/android/server/display/DisplayFeatureManagerService;)Z

    move-result v1

    if-eqz v1, :cond_e7

    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmReadingModeType(Lcom/android/server/display/DisplayFeatureManagerService;)I

    move-result v3

    :cond_e7
    invoke-static {v0, v3}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$msetPaperColors(Lcom/android/server/display/DisplayFeatureManagerService;I)V

    .line 1644
    goto/16 :goto_1ac

    .line 1684
    :sswitch_ec
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mnotifySFSecondaryFrameRate(Lcom/android/server/display/DisplayFeatureManagerService;I)V

    .line 1685
    goto/16 :goto_1ac

    .line 1681
    :sswitch_f5
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mnotifySFDCParseState(Lcom/android/server/display/DisplayFeatureManagerService;I)V

    .line 1682
    goto/16 :goto_1ac

    .line 1675
    :sswitch_fe
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mnotifySFColorMode(Lcom/android/server/display/DisplayFeatureManagerService;I)V

    .line 1676
    goto/16 :goto_1ac

    .line 1678
    :sswitch_107
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$msetExpertScreenMode(Lcom/android/server/display/DisplayFeatureManagerService;)V

    .line 1679
    goto/16 :goto_1ac

    .line 1653
    :sswitch_10e
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mnotifySFDfpsMode(Lcom/android/server/display/DisplayFeatureManagerService;II)V

    .line 1654
    goto/16 :goto_1ac

    .line 1672
    :sswitch_119
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mhandleUnlimitedColorLevelChange(Lcom/android/server/display/DisplayFeatureManagerService;Z)V

    .line 1673
    goto/16 :goto_1ac

    .line 1656
    :sswitch_128
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1657
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1658
    .local v1, "red":F
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 1659
    .local v2, "green":F
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 1660
    .local v3, "blue":F
    iget-object v4, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4, v5, v1, v2, v3}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mnotifySFPccLevel(Lcom/android/server/display/DisplayFeatureManagerService;IFFF)V

    .line 1661
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1662
    goto :goto_1ac

    .line 1649
    .end local v0  # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1  # "red":F
    .end local v2  # "green":F
    .end local v3  # "blue":F
    :sswitch_14f
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_156

    goto :goto_157

    :cond_156
    move v2, v3

    :goto_157
    invoke-static {v0, v2}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mnotifySFWcgState(Lcom/android/server/display/DisplayFeatureManagerService;Z)V

    .line 1650
    goto :goto_1ac

    .line 1713
    :sswitch_15b
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v0, v2}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fputmCurrentGrayScaleForIPA(Lcom/android/server/display/DisplayFeatureManagerService;F)V

    .line 1714
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mnotifyCurrentGrayScaleChangedForIPA(Lcom/android/server/display/DisplayFeatureManagerService;)V

    .line 1715
    goto :goto_1ac

    .line 1709
    :sswitch_16a
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v0, v2}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fputmCurrentGrayScale(Lcom/android/server/display/DisplayFeatureManagerService;F)V

    .line 1710
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mnotifyCurrentGrayScaleChanged(Lcom/android/server/display/DisplayFeatureManagerService;)V

    .line 1711
    goto :goto_1ac

    .line 1705
    :sswitch_179
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    const/high16 v1, 0x437f0000  # 255.0f

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fputmGrayScale(Lcom/android/server/display/DisplayFeatureManagerService;F)V

    .line 1706
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mnotifyGrayScaleChanged(Lcom/android/server/display/DisplayFeatureManagerService;)V

    .line 1707
    goto :goto_1ac

    .line 1646
    :sswitch_18b
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mhandleScreenSchemeChange(Lcom/android/server/display/DisplayFeatureManagerService;Z)V

    .line 1647
    goto :goto_1ac

    .line 1635
    :sswitch_199
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mhandleReadingModeChange(Lcom/android/server/display/DisplayFeatureManagerService;Z)V

    .line 1636
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureHandler;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mhandleShowEyeCareNotifyChange(Lcom/android/server/display/DisplayFeatureManagerService;)V

    .line 1637
    nop

    .line 1728
    :cond_1ac
    :goto_1ac
    return-void

    nop

    :sswitch_data_1ae
    .sparse-switch
        0x1 -> :sswitch_199
        0x2 -> :sswitch_18b
        0x3 -> :sswitch_179
        0x4 -> :sswitch_16a
        0x5 -> :sswitch_15b
        0x6 -> :sswitch_14f
        0x7 -> :sswitch_128
        0x8 -> :sswitch_119
        0xb -> :sswitch_10e
        0xc -> :sswitch_107
        0xd -> :sswitch_fe
        0xe -> :sswitch_f5
        0xf -> :sswitch_ec
        0x10 -> :sswitch_c1
        0x11 -> :sswitch_10e
        0x13 -> :sswitch_ba
        0x14 -> :sswitch_91
        0x15 -> :sswitch_54
        0x16 -> :sswitch_4b
        0x1e -> :sswitch_42
        0x28 -> :sswitch_39
        0x32 -> :sswitch_e
    .end sparse-switch
.end method
