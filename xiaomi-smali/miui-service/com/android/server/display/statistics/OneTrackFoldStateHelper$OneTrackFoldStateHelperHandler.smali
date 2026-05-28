# classes.dex

.class final Lcom/android/server/display/statistics/OneTrackFoldStateHelper$OneTrackFoldStateHelperHandler;
.super Landroid/os/Handler;
.source "OneTrackFoldStateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/statistics/OneTrackFoldStateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OneTrackFoldStateHelperHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/statistics/OneTrackFoldStateHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/display/statistics/OneTrackFoldStateHelper;Landroid/os/Looper;)V
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

    .line 452
    iput-object p1, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper$OneTrackFoldStateHelperHandler;->this$0:Lcom/android/server/display/statistics/OneTrackFoldStateHelper;

    .line 453
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 454
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"  # Landroid/os/Message;

    .line 458
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_6e

    goto :goto_6c

    .line 481
    :pswitch_6  #0x8
    iget-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper$OneTrackFoldStateHelperHandler;->this$0:Lcom/android/server/display/statistics/OneTrackFoldStateHelper;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->-$$Nest$mhandleFocusedWindowChanged(Lcom/android/server/display/statistics/OneTrackFoldStateHelper;Ljava/lang/String;)V

    .line 482
    goto :goto_6c

    .line 478
    :pswitch_10  #0x7
    iget-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper$OneTrackFoldStateHelperHandler;->this$0:Lcom/android/server/display/statistics/OneTrackFoldStateHelper;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->-$$Nest$mhandleDisplaySwapFinished(Lcom/android/server/display/statistics/OneTrackFoldStateHelper;J)V

    .line 479
    goto :goto_6c

    .line 475
    :pswitch_1a  #0x6
    iget-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper$OneTrackFoldStateHelperHandler;->this$0:Lcom/android/server/display/statistics/OneTrackFoldStateHelper;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->-$$Nest$mhandleDisplaySwapFinished(Lcom/android/server/display/statistics/OneTrackFoldStateHelper;J)V

    .line 476
    goto :goto_6c

    .line 472
    :pswitch_28  #0x5
    iget-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper$OneTrackFoldStateHelperHandler;->this$0:Lcom/android/server/display/statistics/OneTrackFoldStateHelper;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->-$$Nest$mhandleInteractiveChanged(Lcom/android/server/display/statistics/OneTrackFoldStateHelper;Z)V

    .line 473
    goto :goto_6c

    .line 469
    :pswitch_36  #0x4
    iget-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper$OneTrackFoldStateHelperHandler;->this$0:Lcom/android/server/display/statistics/OneTrackFoldStateHelper;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->-$$Nest$mdebounceDeviceState(Lcom/android/server/display/statistics/OneTrackFoldStateHelper;J)V

    .line 470
    goto :goto_6c

    .line 466
    :pswitch_44  #0x3
    iget-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper$OneTrackFoldStateHelperHandler;->this$0:Lcom/android/server/display/statistics/OneTrackFoldStateHelper;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->-$$Nest$mhandleDeviceStateChanged(Lcom/android/server/display/statistics/OneTrackFoldStateHelper;IJ)V

    .line 467
    goto :goto_6c

    .line 463
    :pswitch_54  #0x2
    iget-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper$OneTrackFoldStateHelperHandler;->this$0:Lcom/android/server/display/statistics/OneTrackFoldStateHelper;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lmiui/process/ForegroundInfo;

    invoke-static {v0, v1}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->-$$Nest$mhandleWindowChanged(Lcom/android/server/display/statistics/OneTrackFoldStateHelper;Lmiui/process/ForegroundInfo;)V

    .line 464
    goto :goto_6c

    .line 460
    :pswitch_5e  #0x1
    iget-object v0, p0, Lcom/android/server/display/statistics/OneTrackFoldStateHelper$OneTrackFoldStateHelperHandler;->this$0:Lcom/android/server/display/statistics/OneTrackFoldStateHelper;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/statistics/OneTrackFoldStateHelper;->-$$Nest$mhandleFoldChanged(Lcom/android/server/display/statistics/OneTrackFoldStateHelper;Z)V

    .line 461
    nop

    .line 486
    :goto_6c
    return-void

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_5e  #00000001
        :pswitch_54  #00000002
        :pswitch_44  #00000003
        :pswitch_36  #00000004
        :pswitch_28  #00000005
        :pswitch_1a  #00000006
        :pswitch_10  #00000007
        :pswitch_6  #00000008
    .end packed-switch
.end method
