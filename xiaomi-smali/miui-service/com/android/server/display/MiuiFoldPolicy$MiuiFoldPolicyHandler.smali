# classes.dex

.class final Lcom/android/server/display/MiuiFoldPolicy$MiuiFoldPolicyHandler;
.super Landroid/os/Handler;
.source "MiuiFoldPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MiuiFoldPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MiuiFoldPolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/MiuiFoldPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/display/MiuiFoldPolicy;Landroid/os/Looper;)V
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

    .line 248
    iput-object p1, p0, Lcom/android/server/display/MiuiFoldPolicy$MiuiFoldPolicyHandler;->this$0:Lcom/android/server/display/MiuiFoldPolicy;

    .line 249
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 250
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"  # Landroid/os/Message;

    .line 254
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_30

    goto :goto_2f

    .line 268
    :pswitch_6  #0x6
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy$MiuiFoldPolicyHandler;->this$0:Lcom/android/server/display/MiuiFoldPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MiuiFoldPolicy;->handleScreenTurningOff()V

    .line 269
    goto :goto_2f

    .line 271
    :pswitch_c  #0x5
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy$MiuiFoldPolicyHandler;->this$0:Lcom/android/server/display/MiuiFoldPolicy;

    invoke-virtual {v0}, Lcom/android/server/display/MiuiFoldPolicy;->handleScreenTurningOn()V

    .line 272
    goto :goto_2f

    .line 265
    :pswitch_12  #0x4
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy$MiuiFoldPolicyHandler;->this$0:Lcom/android/server/display/MiuiFoldPolicy;

    invoke-static {v0}, Lcom/android/server/display/MiuiFoldPolicy;->-$$Nest$mupdateSettings(Lcom/android/server/display/MiuiFoldPolicy;)V

    .line 266
    goto :goto_2f

    .line 262
    :pswitch_18  #0x3
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy$MiuiFoldPolicyHandler;->this$0:Lcom/android/server/display/MiuiFoldPolicy;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/display/MiuiFoldPolicy;->handleDeviceStateChanged(I)V

    .line 263
    goto :goto_2f

    .line 259
    :pswitch_20  #0x2
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy$MiuiFoldPolicyHandler;->this$0:Lcom/android/server/display/MiuiFoldPolicy;

    const-string/jumbo v1, "screen off"

    invoke-static {v0, v1}, Lcom/android/server/display/MiuiFoldPolicy;->-$$Nest$mreleaseSwipeUpWindow(Lcom/android/server/display/MiuiFoldPolicy;Ljava/lang/String;)V

    .line 260
    goto :goto_2f

    .line 256
    :pswitch_29  #0x1
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy$MiuiFoldPolicyHandler;->this$0:Lcom/android/server/display/MiuiFoldPolicy;

    invoke-static {v0}, Lcom/android/server/display/MiuiFoldPolicy;->-$$Nest$mshowOrReleaseSwipeUpWindow(Lcom/android/server/display/MiuiFoldPolicy;)V

    .line 257
    nop

    .line 276
    :goto_2f
    return-void

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_29  #00000001
        :pswitch_20  #00000002
        :pswitch_18  #00000003
        :pswitch_12  #00000004
        :pswitch_c  #00000005
        :pswitch_6  #00000006
    .end packed-switch
.end method
