# classes.dex

.class Lcom/android/server/display/statistics/DisplayUsageStates$1;
.super Landroid/content/BroadcastReceiver;
.source "DisplayUsageStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/statistics/DisplayUsageStates;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/statistics/DisplayUsageStates;


# direct methods
.method constructor <init>(Lcom/android/server/display/statistics/DisplayUsageStates;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/statistics/DisplayUsageStates;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/android/server/display/statistics/DisplayUsageStates$1;->this$0:Lcom/android/server/display/statistics/DisplayUsageStates;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 95
    iget-object v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates$1;->this$0:Lcom/android/server/display/statistics/DisplayUsageStates;

    invoke-static {v0}, Lcom/android/server/display/statistics/DisplayUsageStates;->-$$Nest$fgetmThreadInit(Lcom/android/server/display/statistics/DisplayUsageStates;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 96
    return-void

    .line 98
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_3c

    :cond_14
    goto :goto_29

    :sswitch_15
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_2a

    :sswitch_1f
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    goto :goto_2a

    :goto_29
    const/4 v0, -0x1

    :goto_2a
    packed-switch v0, :pswitch_data_46

    goto :goto_3a

    .line 103
    :pswitch_2e  #0x1
    iget-object v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates$1;->this$0:Lcom/android/server/display/statistics/DisplayUsageStates;

    invoke-static {v0}, Lcom/android/server/display/statistics/DisplayUsageStates;->-$$Nest$mreportScreenOnEvent(Lcom/android/server/display/statistics/DisplayUsageStates;)V

    goto :goto_3a

    .line 100
    :pswitch_34  #0x0
    iget-object v0, p0, Lcom/android/server/display/statistics/DisplayUsageStates$1;->this$0:Lcom/android/server/display/statistics/DisplayUsageStates;

    invoke-static {v0}, Lcom/android/server/display/statistics/DisplayUsageStates;->-$$Nest$mreportScreenOffEvent(Lcom/android/server/display/statistics/DisplayUsageStates;)V

    .line 101
    nop

    .line 106
    :goto_3a
    return-void

    nop

    :sswitch_data_3c
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_1f
        -0x56ac2893 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_34  #00000000
        :pswitch_2e  #00000001
    .end packed-switch
.end method
