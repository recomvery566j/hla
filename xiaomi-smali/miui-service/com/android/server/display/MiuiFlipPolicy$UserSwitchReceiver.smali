# classes.dex

.class final Lcom/android/server/display/MiuiFlipPolicy$UserSwitchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiuiFlipPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MiuiFlipPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserSwitchReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/MiuiFlipPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/display/MiuiFlipPolicy;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lcom/android/server/display/MiuiFlipPolicy$UserSwitchReceiver;->this$0:Lcom/android/server/display/MiuiFlipPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/MiuiFlipPolicy;Lcom/android/server/display/MiuiFlipPolicy-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/MiuiFlipPolicy$UserSwitchReceiver;-><init>(Lcom/android/server/display/MiuiFlipPolicy;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 219
    iget-object v0, p0, Lcom/android/server/display/MiuiFlipPolicy$UserSwitchReceiver;->this$0:Lcom/android/server/display/MiuiFlipPolicy;

    invoke-static {v0}, Lcom/android/server/display/MiuiFlipPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/display/MiuiFlipPolicy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 220
    return-void
.end method
