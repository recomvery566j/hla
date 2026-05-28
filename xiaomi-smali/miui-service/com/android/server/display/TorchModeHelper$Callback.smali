# classes.dex

.class interface abstract Lcom/android/server/display/TorchModeHelper$Callback;
.super Ljava/lang/Object;
.source "TorchModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/TorchModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onTorchModeChanged(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Z)V
.end method

.method public abstract onTorchModeUnavailable(Ljava/lang/String;)V
.end method
