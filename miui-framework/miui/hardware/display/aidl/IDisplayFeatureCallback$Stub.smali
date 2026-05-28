.class public abstract Lmiui/hardware/display/aidl/IDisplayFeatureCallback$Stub;
.super Landroid/os/Binder;
.source "IDisplayFeatureCallback.java"

# interfaces
.implements Lmiui/hardware/display/aidl/IDisplayFeatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/hardware/display/aidl/IDisplayFeatureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# static fields
.field private static final blacklist DESCRIPTOR:Ljava/lang/String; = "vendor.xiaomi.hardware.displayfeature_aidl.IDisplayFeatureCallback"

.field static final blacklist TRANSACTION_displayfeatureInfoChanged:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    invoke-virtual {p0}, Lmiui/hardware/display/aidl/IDisplayFeatureCallback$Stub;->markVintfStability()V

    .line 32
    const-string/jumbo v0, "vendor.xiaomi.hardware.displayfeature_aidl.IDisplayFeatureCallback"

    invoke-virtual {p0, p0, v0}, Lmiui/hardware/display/aidl/IDisplayFeatureCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 37
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .param p1, "code"  # I
    .param p2, "data"  # Landroid/os/Parcel;
    .param p3, "reply"  # Landroid/os/Parcel;
    .param p4, "flags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const-string/jumbo v0, "vendor.xiaomi.hardware.displayfeature_aidl.IDisplayFeatureCallback"

    .line 43
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_40

    .line 59
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 45
    :sswitch_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v1

    .line 49
    :sswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 51
    .local v2, "caseId":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 52
    .local v3, "value":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 53
    .local v4, "red":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 54
    .local v5, "green":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 55
    .local v6, "blue":F
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    filled-new-array {v7, v8, v9, v10}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v2, v7}, Lmiui/hardware/display/aidl/IDisplayFeatureCallback$Stub;->displayfeatureInfoChanged(I[Ljava/lang/Object;)V

    .line 56
    return v1

    nop

    :sswitch_data_40
    .sparse-switch
        0x1 -> :sswitch_10
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
