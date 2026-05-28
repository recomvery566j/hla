.class public Lmiui/hardware/display/IDisplayFeatureManager$Default;
.super Ljava/lang/Object;
.source "IDisplayFeatureManager.java"

# interfaces
.implements Lmiui/hardware/display/IDisplayFeatureManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/hardware/display/IDisplayFeatureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getReadAppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerDFCallback(Lmiui/hardware/display/IDisplayFeatureCallback;I)V
    .registers 3
    .param p1, "callback"  # Lmiui/hardware/display/IDisplayFeatureCallback;
    .param p2, "callingId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist registerReadAppOperationListener(Lmiui/hardware/display/IReadAppOperationListener;II)V
    .registers 4
    .param p1, "listener"  # Lmiui/hardware/display/IReadAppOperationListener;
    .param p2, "userId"  # I
    .param p3, "userPid"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist setEyeCareSwitch(Z)V
    .registers 2
    .param p1, "eyeCareSwitch"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist setScreenEffect(IIILandroid/os/IBinder;)V
    .registers 5
    .param p1, "mode"  # I
    .param p2, "value"  # I
    .param p3, "cookie"  # I
    .param p4, "token"  # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist unregisterDFCallback(I)V
    .registers 2
    .param p1, "callingId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist unregisterReadAppOperationListener(Lmiui/hardware/display/IReadAppOperationListener;I)V
    .registers 3
    .param p1, "listener"  # Lmiui/hardware/display/IReadAppOperationListener;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method
