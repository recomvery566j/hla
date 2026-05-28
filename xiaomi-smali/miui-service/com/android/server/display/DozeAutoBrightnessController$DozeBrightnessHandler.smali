# classes.dex

.class final Lcom/android/server/display/DozeAutoBrightnessController$DozeBrightnessHandler;
.super Landroid/os/Handler;
.source "DozeAutoBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DozeAutoBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DozeBrightnessHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DozeAutoBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DozeAutoBrightnessController;Landroid/os/Looper;)V
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

    .line 557
    iput-object p1, p0, Lcom/android/server/display/DozeAutoBrightnessController$DozeBrightnessHandler;->this$0:Lcom/android/server/display/DozeAutoBrightnessController;

    .line 558
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 559
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"  # Landroid/os/Message;

    .line 563
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    goto :goto_c

    .line 565
    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController$DozeBrightnessHandler;->this$0:Lcom/android/server/display/DozeAutoBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/DozeAutoBrightnessController;->-$$Nest$mupdateAmbientLux(Lcom/android/server/display/DozeAutoBrightnessController;)V

    .line 566
    nop

    .line 570
    :goto_c
    return-void

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6  #00000001
    .end packed-switch
.end method
