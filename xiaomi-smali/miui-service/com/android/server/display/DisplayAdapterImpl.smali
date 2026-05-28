# classes.dex

.class public Lcom/android/server/display/DisplayAdapterImpl;
.super Lcom/android/server/display/DisplayAdapterStub;
.source "DisplayAdapterImpl.java"


# static fields
.field private static final EXTERNAL_DISPLAY_CONNECTED:Ljava/lang/String; = "external_display_connected"


# instance fields
.field private mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private mSystemReady:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/android/server/display/DisplayAdapterStub;-><init>()V

    return-void
.end method

.method private isSystemReady()Z
    .registers 2

    .line 32
    iget-boolean v0, p0, Lcom/android/server/display/DisplayAdapterImpl;->mSystemReady:Z

    if-nez v0, :cond_1a

    .line 33
    iget-object v0, p0, Lcom/android/server/display/DisplayAdapterImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    if-nez v0, :cond_12

    .line 34
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/display/DisplayAdapterImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 36
    :cond_12
    iget-object v0, p0, Lcom/android/server/display/DisplayAdapterImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayAdapterImpl;->mSystemReady:Z

    .line 38
    :cond_1a
    iget-boolean v0, p0, Lcom/android/server/display/DisplayAdapterImpl;->mSystemReady:Z

    return v0
.end method


# virtual methods
.method public updateExternalDisplayStatus(Lcom/android/server/display/DisplayDevice;ILandroid/content/Context;)V
    .registers 7
    .param p1, "device"  # Lcom/android/server/display/DisplayDevice;
    .param p2, "event"  # I
    .param p3, "context"  # Landroid/content/Context;

    .line 22
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_27

    invoke-direct {p0}, Lcom/android/server/display/DisplayAdapterImpl;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 23
    const-string v0, "external_display_connected"

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1c

    .line 24
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_27

    .line 25
    :cond_1c
    const/4 v1, 0x3

    if-ne p2, v1, :cond_27

    .line 26
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 29
    :cond_27
    :goto_27
    return-void
.end method
