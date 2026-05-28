# classes.dex

.class final Lcom/android/server/display/ThermalObserver$TemperatureControllerHandler;
.super Landroid/os/Handler;
.source "ThermalObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ThermalObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TemperatureControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ThermalObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/display/ThermalObserver;Landroid/os/Looper;)V
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

    .line 63
    iput-object p1, p0, Lcom/android/server/display/ThermalObserver$TemperatureControllerHandler;->this$0:Lcom/android/server/display/ThermalObserver;

    .line 64
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 65
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"  # Landroid/os/Message;

    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    goto :goto_c

    .line 71
    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/server/display/ThermalObserver$TemperatureControllerHandler;->this$0:Lcom/android/server/display/ThermalObserver;

    invoke-static {v0}, Lcom/android/server/display/ThermalObserver;->-$$Nest$mupdateTemperature(Lcom/android/server/display/ThermalObserver;)V

    .line 72
    nop

    .line 76
    :goto_c
    return-void

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6  #00000001
    .end packed-switch
.end method
