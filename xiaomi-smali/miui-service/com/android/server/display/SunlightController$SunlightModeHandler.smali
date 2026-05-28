# classes.dex

.class Lcom/android/server/display/SunlightController$SunlightModeHandler;
.super Landroid/os/Handler;
.source "SunlightController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/SunlightController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SunlightModeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/SunlightController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/SunlightController;Landroid/os/Looper;)V
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

    .line 414
    iput-object p1, p0, Lcom/android/server/display/SunlightController$SunlightModeHandler;->this$0:Lcom/android/server/display/SunlightController;

    .line 415
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 416
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"  # Landroid/os/Message;

    .line 420
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_30

    goto :goto_2e

    .line 431
    :pswitch_6  #0x4
    iget-object v0, p0, Lcom/android/server/display/SunlightController$SunlightModeHandler;->this$0:Lcom/android/server/display/SunlightController;

    invoke-static {v0}, Lcom/android/server/display/SunlightController;->-$$Nest$mregister(Lcom/android/server/display/SunlightController;)V

    .line 432
    goto :goto_2e

    .line 428
    :pswitch_c  #0x3
    iget-object v0, p0, Lcom/android/server/display/SunlightController$SunlightModeHandler;->this$0:Lcom/android/server/display/SunlightController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/SunlightController;->-$$Nest$mupdateHangUpState(Lcom/android/server/display/SunlightController;Z)V

    .line 429
    goto :goto_2e

    .line 425
    :pswitch_1a  #0x2
    iget-object v0, p0, Lcom/android/server/display/SunlightController$SunlightModeHandler;->this$0:Lcom/android/server/display/SunlightController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/SunlightController;->-$$Nest$mupdateScreenState(Lcom/android/server/display/SunlightController;Z)V

    .line 426
    goto :goto_2e

    .line 422
    :pswitch_28  #0x1
    iget-object v0, p0, Lcom/android/server/display/SunlightController$SunlightModeHandler;->this$0:Lcom/android/server/display/SunlightController;

    invoke-static {v0}, Lcom/android/server/display/SunlightController;->-$$Nest$mupdateAmbientLux(Lcom/android/server/display/SunlightController;)V

    .line 423
    nop

    .line 436
    :goto_2e
    return-void

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_28  #00000001
        :pswitch_1a  #00000002
        :pswitch_c  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method
