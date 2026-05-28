.class public Lmiui/hardware/display/IDisplayFeatureCallback$Default;
.super Ljava/lang/Object;
.source "IDisplayFeatureCallback.java"

# interfaces
.implements Lmiui/hardware/display/IDisplayFeatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/hardware/display/IDisplayFeatureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist displayfeatureInfoChanged(IIFFF)V
    .registers 6
    .param p1, "caseId"  # I
    .param p2, "value"  # I
    .param p3, "red"  # F
    .param p4, "green"  # F
    .param p5, "blue"  # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method
