# classes.dex

.class Lcom/android/server/display/statistics/BrightnessDataProcessor$ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BrightnessDataProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/statistics/BrightnessDataProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;


# direct methods
.method constructor <init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/statistics/BrightnessDataProcessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1761
    iput-object p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$ScreenStateReceiver;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 1764
    const/4 v0, 0x0

    .line 1765
    .local v0, "screenOn":Z
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_3c

    :cond_c
    goto :goto_21

    :sswitch_d
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_22

    :sswitch_17
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_22

    :goto_21
    const/4 v1, -0x1

    :goto_22
    packed-switch v1, :pswitch_data_46

    goto :goto_28

    .line 1767
    :pswitch_26  #0x0
    const/4 v0, 0x1

    .line 1768
    nop

    .line 1773
    :goto_28
    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$ScreenStateReceiver;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-static {v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$fgetmBackgroundHandler(Lcom/android/server/display/statistics/BrightnessDataProcessor;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1774
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1775
    return-void

    nop

    :sswitch_data_3c
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_17
        -0x56ac2893 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_26  #00000000
    .end packed-switch
.end method
