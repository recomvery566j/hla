.class public interface abstract Lmiui/hardware/display/IDisplayFeatureCallback;
.super Ljava/lang/Object;
.source "IDisplayFeatureCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/hardware/display/IDisplayFeatureCallback$Stub;,
        Lmiui/hardware/display/IDisplayFeatureCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.hardware.display.IDisplayFeatureCallback"


# virtual methods
.method public abstract whitelist displayfeatureInfoChanged(IIFFF)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
