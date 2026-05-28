# classes.dex

.class Lcom/android/server/display/TorchModeHelper$TorchCallback;
.super Landroid/hardware/camera2/CameraManager$TorchCallback;
.source "TorchModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/TorchModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TorchCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/TorchModeHelper;


# direct methods
.method constructor <init>(Lcom/android/server/display/TorchModeHelper;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/TorchModeHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/android/server/display/TorchModeHelper$TorchCallback;->this$0:Lcom/android/server/display/TorchModeHelper;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$TorchCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTorchModeChanged(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "cameraId"  # Ljava/lang/String;
    .param p2, "enabled"  # Z

    .line 70
    iget-object v0, p0, Lcom/android/server/display/TorchModeHelper$TorchCallback;->this$0:Lcom/android/server/display/TorchModeHelper;

    invoke-static {v0}, Lcom/android/server/display/TorchModeHelper;->-$$Nest$fgetmLock(Lcom/android/server/display/TorchModeHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 71
    const/4 v1, 0x0

    .line 73
    .local v1, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :try_start_8
    iget-object v2, p0, Lcom/android/server/display/TorchModeHelper$TorchCallback;->this$0:Lcom/android/server/display/TorchModeHelper;

    invoke-static {v2}, Lcom/android/server/display/TorchModeHelper;->-$$Nest$fgetmCameraManager(Lcom/android/server/display/TorchModeHelper;)Landroid/hardware/camera2/CameraManager;

    move-result-object v2

    .line 74
    invoke-virtual {v2, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2
    :try_end_12
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_8 .. :try_end_12} :catch_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_12} :catch_16
    .catchall {:try_start_8 .. :try_end_12} :catchall_14

    move-object v1, v2

    .line 80
    goto :goto_3b

    .line 84
    .end local v1  # "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :catchall_14
    move-exception v1

    goto :goto_57

    .line 78
    .restart local v1  # "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :catch_16
    move-exception v2

    .line 79
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_17
    const-string v3, "TorchModeHelper"

    const-string/jumbo v4, "onTorchModeChanged: can\'t get camera characteristics key"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b

    .line 75
    .end local v2  # "e":Ljava/lang/IllegalArgumentException;
    :catch_20
    move-exception v2

    .line 76
    .local v2, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v3, "TorchModeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onTorchModeChanged: can\'t get characteristics for camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    nop

    .line 81
    .end local v2  # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_3b
    iget-object v2, p0, Lcom/android/server/display/TorchModeHelper$TorchCallback;->this$0:Lcom/android/server/display/TorchModeHelper;

    invoke-static {v2}, Lcom/android/server/display/TorchModeHelper;->-$$Nest$fgetmListeners(Lcom/android/server/display/TorchModeHelper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/TorchModeHelper$Callback;

    .line 82
    .local v3, "callback":Lcom/android/server/display/TorchModeHelper$Callback;
    invoke-interface {v3, v1, p1, p2}, Lcom/android/server/display/TorchModeHelper$Callback;->onTorchModeChanged(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Z)V

    .line 83
    .end local v3  # "callback":Lcom/android/server/display/TorchModeHelper$Callback;
    goto :goto_45

    .line 84
    .end local v1  # "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :cond_55
    monitor-exit v0

    .line 85
    return-void

    .line 84
    :goto_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_17 .. :try_end_58} :catchall_14

    throw v1
.end method

.method public onTorchModeUnavailable(Ljava/lang/String;)V
    .registers 5
    .param p1, "cameraId"  # Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/android/server/display/TorchModeHelper$TorchCallback;->this$0:Lcom/android/server/display/TorchModeHelper;

    invoke-static {v0}, Lcom/android/server/display/TorchModeHelper;->-$$Nest$fgetmLock(Lcom/android/server/display/TorchModeHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 90
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/TorchModeHelper$TorchCallback;->this$0:Lcom/android/server/display/TorchModeHelper;

    invoke-static {v1}, Lcom/android/server/display/TorchModeHelper;->-$$Nest$fgetmListeners(Lcom/android/server/display/TorchModeHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/TorchModeHelper$Callback;

    .line 91
    .local v2, "callback":Lcom/android/server/display/TorchModeHelper$Callback;
    invoke-interface {v2, p1}, Lcom/android/server/display/TorchModeHelper$Callback;->onTorchModeUnavailable(Ljava/lang/String;)V

    .line 92
    .end local v2  # "callback":Lcom/android/server/display/TorchModeHelper$Callback;
    goto :goto_11

    .line 93
    :cond_21
    monitor-exit v0

    .line 94
    return-void

    .line 93
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v1
.end method
