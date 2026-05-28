# classes.dex

.class final Lcom/android/server/display/SwipeUpWindow$SwipeUpWindowHandler;
.super Landroid/os/Handler;
.source "SwipeUpWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/SwipeUpWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SwipeUpWindowHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/SwipeUpWindow;


# direct methods
.method public constructor <init>(Lcom/android/server/display/SwipeUpWindow;Landroid/os/Looper;)V
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

    .line 501
    iput-object p1, p0, Lcom/android/server/display/SwipeUpWindow$SwipeUpWindowHandler;->this$0:Lcom/android/server/display/SwipeUpWindow;

    .line 502
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 503
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"  # Landroid/os/Message;

    .line 507
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_26

    goto :goto_24

    .line 518
    :pswitch_6  #0x69
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow$SwipeUpWindowHandler;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-virtual {v0}, Lcom/android/server/display/SwipeUpWindow;->releaseSwipeWindow()V

    .line 519
    goto :goto_24

    .line 521
    :pswitch_c  #0x68
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow$SwipeUpWindowHandler;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v0}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$mhandleScreenOff(Lcom/android/server/display/SwipeUpWindow;)V

    .line 522
    goto :goto_24

    .line 515
    :pswitch_12  #0x67
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow$SwipeUpWindowHandler;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v0}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$mplayIconAndTipHideAnimation(Lcom/android/server/display/SwipeUpWindow;)V

    .line 516
    goto :goto_24

    .line 512
    :pswitch_18  #0x66
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow$SwipeUpWindowHandler;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v0}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$mplayIconAnimation(Lcom/android/server/display/SwipeUpWindow;)V

    .line 513
    goto :goto_24

    .line 509
    :pswitch_1e  #0x65
    iget-object v0, p0, Lcom/android/server/display/SwipeUpWindow$SwipeUpWindowHandler;->this$0:Lcom/android/server/display/SwipeUpWindow;

    invoke-static {v0}, Lcom/android/server/display/SwipeUpWindow;->-$$Nest$msetLockStateWithLongAnimation(Lcom/android/server/display/SwipeUpWindow;)V

    .line 510
    nop

    .line 526
    :goto_24
    return-void

    nop

    :pswitch_data_26
    .packed-switch 0x65
        :pswitch_1e  #00000065
        :pswitch_18  #00000066
        :pswitch_12  #00000067
        :pswitch_c  #00000068
        :pswitch_6  #00000069
    .end packed-switch
.end method
