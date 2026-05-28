# classes.dex

.class Lcom/android/server/display/DisplayPowerControllerImpl$4;
.super Ljava/lang/Object;
.source "DisplayPowerControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayPowerControllerImpl;->updateForegroundApp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerControllerImpl;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/DisplayPowerControllerImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2187
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl$4;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 2191
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$4;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$fgetmActivityTaskManager(Lcom/android/server/display/DisplayPowerControllerImpl;)Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    .line 2192
    .local v0, "info":Landroid/app/ActivityTaskManager$RootTaskInfo;
    if-eqz v0, :cond_53

    iget-object v1, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v1, :cond_11

    goto :goto_53

    .line 2195
    :cond_11
    invoke-virtual {v0}, Landroid/app/ActivityTaskManager$RootTaskInfo;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_52

    .line 2196
    invoke-virtual {v0}, Landroid/app/ActivityTaskManager$RootTaskInfo;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_52

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl$4;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$fgetmActivityTaskManager(Lcom/android/server/display/DisplayPowerControllerImpl;)Landroid/app/IActivityTaskManager;

    move-result-object v1

    .line 2197
    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->isInSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_52

    .line 2200
    :cond_2c
    iget-object v1, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2202
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_41

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl$4;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v2}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$fgetmForegroundAppPackageName(Lcom/android/server/display/DisplayPowerControllerImpl;)Ljava/lang/String;

    move-result-object v2

    .line 2203
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 2204
    return-void

    .line 2206
    :cond_41
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl$4;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v2, v1}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$fputmPendingForegroundAppPackageName(Lcom/android/server/display/DisplayPowerControllerImpl;Ljava/lang/String;)V

    .line 2207
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl$4;->this$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    invoke-static {v2}, Lcom/android/server/display/DisplayPowerControllerImpl;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayPowerControllerImpl;)Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayPowerControllerImpl$DisplayPowerControllerImplHandler;->sendEmptyMessage(I)Z
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_50} :catch_54

    .line 2210
    nop

    .end local v0  # "info":Landroid/app/ActivityTaskManager$RootTaskInfo;
    .end local v1  # "packageName":Ljava/lang/String;
    goto :goto_55

    .line 2198
    .restart local v0  # "info":Landroid/app/ActivityTaskManager$RootTaskInfo;
    :cond_52
    :goto_52
    return-void

    .line 2193
    :cond_53
    :goto_53
    return-void

    .line 2208
    .end local v0  # "info":Landroid/app/ActivityTaskManager$RootTaskInfo;
    :catch_54
    move-exception v0

    .line 2211
    :goto_55
    return-void
.end method
