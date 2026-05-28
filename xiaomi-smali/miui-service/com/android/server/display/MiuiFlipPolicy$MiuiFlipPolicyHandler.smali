# classes.dex

.class final Lcom/android/server/display/MiuiFlipPolicy$MiuiFlipPolicyHandler;
.super Landroid/os/Handler;
.source "MiuiFlipPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MiuiFlipPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MiuiFlipPolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/MiuiFlipPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/display/MiuiFlipPolicy;Landroid/os/Looper;)V
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

    .line 144
    iput-object p1, p0, Lcom/android/server/display/MiuiFlipPolicy$MiuiFlipPolicyHandler;->this$0:Lcom/android/server/display/MiuiFlipPolicy;

    .line 145
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 146
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"  # Landroid/os/Message;

    .line 150
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    goto :goto_c

    .line 152
    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/server/display/MiuiFlipPolicy$MiuiFlipPolicyHandler;->this$0:Lcom/android/server/display/MiuiFlipPolicy;

    invoke-static {v0}, Lcom/android/server/display/MiuiFlipPolicy;->-$$Nest$mupdateSettings(Lcom/android/server/display/MiuiFlipPolicy;)V

    .line 153
    nop

    .line 157
    :goto_c
    return-void

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6  #00000001
    .end packed-switch
.end method
