# classes.dex

.class Lcom/android/server/display/DisplayFeatureManagerService$UserSwitchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DisplayFeatureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayFeatureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserSwitchReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayFeatureManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayFeatureManagerService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1967
    iput-object p1, p0, Lcom/android/server/display/DisplayFeatureManagerService$UserSwitchReceiver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayFeatureManagerService;Lcom/android/server/display/DisplayFeatureManagerService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayFeatureManagerService$UserSwitchReceiver;-><init>(Lcom/android/server/display/DisplayFeatureManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 1971
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$UserSwitchReceiver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmBootCompleted(Lcom/android/server/display/DisplayFeatureManagerService;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1972
    return-void

    .line 1975
    :cond_9
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$UserSwitchReceiver;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayFeatureManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1976
    return-void
.end method
