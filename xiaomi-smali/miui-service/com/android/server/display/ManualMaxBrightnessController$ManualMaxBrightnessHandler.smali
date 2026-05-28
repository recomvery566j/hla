# classes.dex

.class final Lcom/android/server/display/ManualMaxBrightnessController$ManualMaxBrightnessHandler;
.super Landroid/os/Handler;
.source "ManualMaxBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ManualMaxBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ManualMaxBrightnessHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ManualMaxBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/ManualMaxBrightnessController;Landroid/os/Looper;)V
    .registers 4
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

    .line 369
    iput-object p1, p0, Lcom/android/server/display/ManualMaxBrightnessController$ManualMaxBrightnessHandler;->this$0:Lcom/android/server/display/ManualMaxBrightnessController;

    .line 370
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 371
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"  # Landroid/os/Message;

    .line 375
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    goto :goto_c

    .line 377
    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/server/display/ManualMaxBrightnessController$ManualMaxBrightnessHandler;->this$0:Lcom/android/server/display/ManualMaxBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/ManualMaxBrightnessController;->-$$Nest$mupdateAmbientLux(Lcom/android/server/display/ManualMaxBrightnessController;)V

    .line 378
    nop

    .line 382
    :goto_c
    return-void

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6  #00000001
    .end packed-switch
.end method
