# classes.dex

.class Lcom/android/server/display/SunlightController$ScreenHangUpReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SunlightController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/SunlightController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenHangUpReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/SunlightController;


# direct methods
.method private constructor <init>(Lcom/android/server/display/SunlightController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 506
    iput-object p1, p0, Lcom/android/server/display/SunlightController$ScreenHangUpReceiver;->this$0:Lcom/android/server/display/SunlightController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/SunlightController;Lcom/android/server/display/SunlightController-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/SunlightController$ScreenHangUpReceiver;-><init>(Lcom/android/server/display/SunlightController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 509
    const-string/jumbo v0, "hang_up_enable"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 510
    .local v0, "screenIsHangUp":Z
    invoke-static {}, Lcom/android/server/display/SunlightController;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 511
    const-string v1, "SunlightController"

    const-string v2, "Receive screen hang on broadcast."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_15
    iget-object v1, p0, Lcom/android/server/display/SunlightController$ScreenHangUpReceiver;->this$0:Lcom/android/server/display/SunlightController;

    invoke-static {v1}, Lcom/android/server/display/SunlightController;->-$$Nest$fgetmHandler(Lcom/android/server/display/SunlightController;)Lcom/android/server/display/SunlightController$SunlightModeHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/SunlightController$SunlightModeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 514
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 515
    return-void
.end method
