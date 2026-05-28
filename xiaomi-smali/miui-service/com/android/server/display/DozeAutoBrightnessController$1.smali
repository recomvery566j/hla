# classes.dex

.class Lcom/android/server/display/DozeAutoBrightnessController$1;
.super Landroid/content/BroadcastReceiver;
.source "DozeAutoBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DozeAutoBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DozeAutoBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DozeAutoBrightnessController;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/DozeAutoBrightnessController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/android/server/display/DozeAutoBrightnessController$1;->this$0:Lcom/android/server/display/DozeAutoBrightnessController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 147
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "miui.intent.action.SUB_SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 149
    :cond_19
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController$1;->this$0:Lcom/android/server/display/DozeAutoBrightnessController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/DozeAutoBrightnessController;->-$$Nest$fputmUseDynamicDozeCurve(Lcom/android/server/display/DozeAutoBrightnessController;Z)V

    .line 150
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController$1;->this$0:Lcom/android/server/display/DozeAutoBrightnessController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/DozeAutoBrightnessController;->-$$Nest$fputmDynamicDozeSpline(Lcom/android/server/display/DozeAutoBrightnessController;Landroid/util/Spline;)V

    .line 151
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController$1;->this$0:Lcom/android/server/display/DozeAutoBrightnessController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/DozeAutoBrightnessController;->-$$Nest$fputmIsFirstLux(Lcom/android/server/display/DozeAutoBrightnessController;Z)V

    .line 152
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController$1;->this$0:Lcom/android/server/display/DozeAutoBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/DozeAutoBrightnessController;->-$$Nest$fgetbrightnessLock(Lcom/android/server/display/DozeAutoBrightnessController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_5f

    .line 153
    :try_start_32
    iget-object v1, p0, Lcom/android/server/display/DozeAutoBrightnessController$1;->this$0:Lcom/android/server/display/DozeAutoBrightnessController;

    const/high16 v2, 0x7fc00000  # Float.NaN

    invoke-static {v1, v2}, Lcom/android/server/display/DozeAutoBrightnessController;->-$$Nest$fputmScreenAutoBrightness(Lcom/android/server/display/DozeAutoBrightnessController;F)V

    .line 154
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_5c

    .line 155
    :try_start_3a
    iget-object v0, p0, Lcom/android/server/display/DozeAutoBrightnessController$1;->this$0:Lcom/android/server/display/DozeAutoBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/DozeAutoBrightnessController;->-$$Nest$fgetmTag(Lcom/android/server/display/DozeAutoBrightnessController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_5b} :catch_5f

    .line 159
    :cond_5b
    goto :goto_7d

    .line 154
    :catchall_5c
    move-exception v1

    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    .end local p0  # "this":Lcom/android/server/display/DozeAutoBrightnessController$1;
    .end local p1  # "context":Landroid/content/Context;
    .end local p2  # "intent":Landroid/content/Intent;
    :try_start_5e
    throw v1
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_5f} :catch_5f

    .line 157
    .restart local p0  # "this":Lcom/android/server/display/DozeAutoBrightnessController$1;
    .restart local p1  # "context":Landroid/content/Context;
    .restart local p2  # "intent":Landroid/content/Intent;
    :catch_5f
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/display/DozeAutoBrightnessController$1;->this$0:Lcom/android/server/display/DozeAutoBrightnessController;

    invoke-static {v1}, Lcom/android/server/display/DozeAutoBrightnessController;->-$$Nest$fgetmTag(Lcom/android/server/display/DozeAutoBrightnessController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_7d
    return-void
.end method
