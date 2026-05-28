# classes.dex

.class public interface abstract Lcom/android/server/display/SunlightController$Callback;
.super Ljava/lang/Object;
.source "SunlightController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/SunlightController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract convertBrightnessToNit(F)F
.end method

.method public abstract notifySunlightModeChanged(Z)V
.end method

.method public abstract notifySunlightStateChange(Z)V
.end method
