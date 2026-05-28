# classes.dex

.class Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeHandler;
.super Landroid/os/Handler;
.source "BrightnessDataProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/statistics/BrightnessDataProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessChangeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;


# direct methods
.method public constructor <init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;Landroid/os/Looper;)V
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

    .line 1420
    iput-object p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeHandler;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    .line 1421
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1422
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"  # Landroid/os/Message;

    .line 1426
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_11c

    goto/16 :goto_11a

    .line 1440
    :pswitch_8  #0x11
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeHandler;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeHandler;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iget-object v3, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeHandler;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iget v3, v3, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAmbientLux:F

    invoke-static {v2, v3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$mgetAmbientLuxSpanIndex(Lcom/android/server/display/statistics/BrightnessDataProcessor;F)I

    move-result v2

    const-string/jumbo v3, "span_change"

    invoke-static {v0, v2, v1, v1, v3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$mupdateLuxSpanUsage(Lcom/android/server/display/statistics/BrightnessDataProcessor;IZZLjava/lang/String;)V

    .line 1441
    goto/16 :goto_11a

    .line 1484
    :pswitch_1c  #0x10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1485
    .local v0, "mArgs":Lcom/android/internal/os/SomeArgs;
    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeHandler;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v2, v3, v1, v1, v4}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$mgetOver1060nitBrightnessUsage(Lcom/android/server/display/statistics/BrightnessDataProcessor;FZZZ)V

    .line 1486
    goto/16 :goto_11a

    .line 1481
    .end local v0  # "mArgs":Lcom/android/internal/os/SomeArgs;
    :pswitch_37  #0xf
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeHandler;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-static {v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$fputmIsNotAonSuppressDarken(Lcom/android/server/display/statistics/BrightnessDataProcessor;Z)V

    .line 1482
    goto/16 :goto_11a

    .line 1478
    :pswitch_3e  #0xe
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeHandler;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-static {v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$fputmIsAonSuppressDarken(Lcom/android/server/display/statistics/BrightnessDataProcessor;Z)V

    .line 1479
    goto/16 :goto_11a

    .line 1474
    :pswitch_45  #0xd
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/display/statistics/BrightnessEvent;

    .line 1475
    .local v0, "event":Lcom/android/server/display/statistics/BrightnessEvent;
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeHandler;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-static {v1, v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$mreportEventToServer(Lcom/android/server/display/statistics/BrightnessDataProcessor;Lcom/android/server/display/statistics/BrightnessEvent;)V

    .line 1476
    goto/16 :goto_11a

    .line 1471
    .end local v0  # "event":Lcom/android/server/display/statistics/BrightnessEvent;
    :pswitch_50  #0xc
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeHandler;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-static {v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$mresetBrightnessAnimInfo(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V

    .line 1472
    goto/16 :goto_11a

    .line 1468
    :pswitch_57  #0xb
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeHandler;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$fputmTemporaryBrightnessTimeStamp(Lcom/android/server/display/statistics/BrightnessDataProcessor;J)V

    .line 1469
    goto/16 :goto_11a

    .line 1465
    :pswitch_62  #0xa
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeHandler;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$mupdateInterruptBrightnessAnimDuration(Lcom/android/server/display/statistics/BrightnessDataProcessor;IF)V

    .line 1466
    goto/16 :goto_11a

    .line 1462
    :pswitch_73  #0x9
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeHandler;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$fputmTargetBrightnessAnimValue(Lcom/android/server/display/statistics/BrightnessDataProcessor;F)V

    .line 1463
    goto/16 :goto_11a

    .line 1458
    :pswitch_82  #0x8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1459
    .local v0, "someArgs":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeHandler;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$mupdateBrightnessAnimInfo(Lcom/android/server/display/statistics/BrightnessDataProcessor;FFZ)V

    .line 1460
    goto/16 :goto_11a

    .line 1454
    .end local v0  # "someArgs":Lcom/android/internal/os/SomeArgs;
    :pswitch_a5  #0x7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1455
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeHandler;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$mupdateBrightnessStatisticsData(Lcom/android/server/display/statistics/BrightnessDataProcessor;ZF)V

    .line 1456
    goto :goto_11a

    .line 1451
    .end local v0  # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_bf  #0x6
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeHandler;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$fputmOrientation(Lcom/android/server/display/statistics/BrightnessDataProcessor;I)V

    .line 1452
    goto :goto_11a

    .line 1446
    :pswitch_cd  #0x5
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeHandler;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-static {v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$mupdateForegroundApps(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V

    .line 1447
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeHandler;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    const/high16 v2, 0x7fc00000  # Float.NaN

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->getTopFiveAppsIn20000Lux(FZZZ)V

    .line 1448
    goto :goto_11a

    .line 1443
    :pswitch_db  #0x4
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeHandler;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$mupdateScreenStateChanged(Lcom/android/server/display/statistics/BrightnessDataProcessor;Z)V

    .line 1444
    goto :goto_11a

    .line 1434
    :pswitch_e9  #0x3
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeHandler;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-static {v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$mupdateResetMode(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V

    .line 1435
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeHandler;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-static {v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$mreadyToReportEvent(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V

    .line 1436
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeHandler;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-static {v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$mbrightnessChangedTriggerAggregation(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V

    .line 1437
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeHandler;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-static {v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$mresetPendingParams(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V

    .line 1438
    goto :goto_11a

    .line 1431
    :pswitch_fe  #0x2
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeHandler;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$mupdatePointerEventMotionState(Lcom/android/server/display/statistics/BrightnessDataProcessor;ZII)V

    .line 1432
    goto :goto_11a

    .line 1428
    :pswitch_110  #0x1
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeHandler;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    invoke-static {v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$mhandleBrightnessChangeEvent(Lcom/android/server/display/statistics/BrightnessDataProcessor;Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;)V

    .line 1429
    nop

    .line 1490
    :goto_11a
    return-void

    nop

    :pswitch_data_11c
    .packed-switch 0x1
        :pswitch_110  #00000001
        :pswitch_fe  #00000002
        :pswitch_e9  #00000003
        :pswitch_db  #00000004
        :pswitch_cd  #00000005
        :pswitch_bf  #00000006
        :pswitch_a5  #00000007
        :pswitch_82  #00000008
        :pswitch_73  #00000009
        :pswitch_62  #0000000a
        :pswitch_57  #0000000b
        :pswitch_50  #0000000c
        :pswitch_45  #0000000d
        :pswitch_3e  #0000000e
        :pswitch_37  #0000000f
        :pswitch_1c  #00000010
        :pswitch_8  #00000011
    .end packed-switch
.end method
