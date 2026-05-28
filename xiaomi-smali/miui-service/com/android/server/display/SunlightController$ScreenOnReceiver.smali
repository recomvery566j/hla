# classes.dex

.class Lcom/android/server/display/SunlightController$ScreenOnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SunlightController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/SunlightController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenOnReceiver"
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

    .line 489
    iput-object p1, p0, Lcom/android/server/display/SunlightController$ScreenOnReceiver;->this$0:Lcom/android/server/display/SunlightController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/SunlightController;Lcom/android/server/display/SunlightController-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/SunlightController$ScreenOnReceiver;-><init>(Lcom/android/server/display/SunlightController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 493
    const/4 v0, 0x0

    .line 494
    .local v0, "screenOn":Z
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 495
    const/4 v0, 0x1

    .line 497
    :cond_e
    invoke-static {}, Lcom/android/server/display/SunlightController;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive screen on/off broadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 499
    if-eqz v0, :cond_25

    const-string/jumbo v2, "screen on."

    goto :goto_28

    :cond_25
    const-string/jumbo v2, "screen off."

    :goto_28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 498
    const-string v2, "SunlightController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_35
    iget-object v1, p0, Lcom/android/server/display/SunlightController$ScreenOnReceiver;->this$0:Lcom/android/server/display/SunlightController;

    invoke-static {v1}, Lcom/android/server/display/SunlightController;->-$$Nest$fgetmHandler(Lcom/android/server/display/SunlightController;)Lcom/android/server/display/SunlightController$SunlightModeHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/SunlightController$SunlightModeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 502
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 503
    return-void
.end method
