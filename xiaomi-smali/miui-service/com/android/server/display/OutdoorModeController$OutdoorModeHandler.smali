# classes.dex

.class Lcom/android/server/display/OutdoorModeController$OutdoorModeHandler;
.super Landroid/os/Handler;
.source "OutdoorModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OutdoorModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutdoorModeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/OutdoorModeController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/OutdoorModeController;Landroid/os/Looper;)V
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

    .line 124
    iput-object p1, p0, Lcom/android/server/display/OutdoorModeController$OutdoorModeHandler;->this$0:Lcom/android/server/display/OutdoorModeController;

    .line 125
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 126
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"  # Landroid/os/Message;

    .line 130
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    goto :goto_c

    .line 132
    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/server/display/OutdoorModeController$OutdoorModeHandler;->this$0:Lcom/android/server/display/OutdoorModeController;

    invoke-static {v0}, Lcom/android/server/display/OutdoorModeController;->-$$Nest$mregisterSettingsObserver(Lcom/android/server/display/OutdoorModeController;)V

    .line 133
    nop

    .line 137
    :goto_c
    return-void

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6  #00000001
    .end packed-switch
.end method
