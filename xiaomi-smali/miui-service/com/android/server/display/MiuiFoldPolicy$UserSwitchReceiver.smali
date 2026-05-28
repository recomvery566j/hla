# classes.dex

.class final Lcom/android/server/display/MiuiFoldPolicy$UserSwitchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiuiFoldPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MiuiFoldPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserSwitchReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/MiuiFoldPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/display/MiuiFoldPolicy;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 464
    iput-object p1, p0, Lcom/android/server/display/MiuiFoldPolicy$UserSwitchReceiver;->this$0:Lcom/android/server/display/MiuiFoldPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/MiuiFoldPolicy;Lcom/android/server/display/MiuiFoldPolicy-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/MiuiFoldPolicy$UserSwitchReceiver;-><init>(Lcom/android/server/display/MiuiFoldPolicy;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 467
    iget-object v0, p0, Lcom/android/server/display/MiuiFoldPolicy$UserSwitchReceiver;->this$0:Lcom/android/server/display/MiuiFoldPolicy;

    invoke-static {v0}, Lcom/android/server/display/MiuiFoldPolicy;->-$$Nest$fgetmHandler(Lcom/android/server/display/MiuiFoldPolicy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 468
    return-void
.end method
