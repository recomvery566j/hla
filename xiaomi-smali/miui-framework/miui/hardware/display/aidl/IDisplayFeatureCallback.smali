.class public interface abstract Lmiui/hardware/display/aidl/IDisplayFeatureCallback;
.super Ljava/lang/Object;
.source "IDisplayFeatureCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/hardware/display/aidl/IDisplayFeatureCallback$Stub;,
        Lmiui/hardware/display/aidl/IDisplayFeatureCallback$Default;
    }
.end annotation


# virtual methods
.method public varargs abstract blacklist displayfeatureInfoChanged(I[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
