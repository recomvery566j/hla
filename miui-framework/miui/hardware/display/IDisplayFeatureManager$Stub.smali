.class public abstract Lmiui/hardware/display/IDisplayFeatureManager$Stub;
.super Landroid/os/Binder;
.source "IDisplayFeatureManager.java"

# interfaces
.implements Lmiui/hardware/display/IDisplayFeatureManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/hardware/display/IDisplayFeatureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/hardware/display/IDisplayFeatureManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getReadAppList:I = 0x4

.field static final blacklist TRANSACTION_registerDFCallback:I = 0x6

.field static final blacklist TRANSACTION_registerReadAppOperationListener:I = 0x2

.field static final blacklist TRANSACTION_setEyeCareSwitch:I = 0x3

.field static final blacklist TRANSACTION_setScreenEffect:I = 0x1

.field static final blacklist TRANSACTION_unregisterDFCallback:I = 0x7

.field static final blacklist TRANSACTION_unregisterReadAppOperationListener:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    const-string v0, "miui.hardware.display.IDisplayFeatureManager"

    invoke-virtual {p0, p0, v0}, Lmiui/hardware/display/IDisplayFeatureManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lmiui/hardware/display/IDisplayFeatureManager;
    .registers 3
    .param p0, "obj"  # Landroid/os/IBinder;

    .line 58
    if-nez p0, :cond_4

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_4
    const-string v0, "miui.hardware.display.IDisplayFeatureManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/hardware/display/IDisplayFeatureManager;

    if-eqz v1, :cond_14

    .line 63
    move-object v1, v0

    check-cast v1, Lmiui/hardware/display/IDisplayFeatureManager;

    return-object v1

    .line 65
    :cond_14
    new-instance v1, Lmiui/hardware/display/IDisplayFeatureManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/hardware/display/IDisplayFeatureManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"  # I

    .line 74
    packed-switch p0, :pswitch_data_1e

    .line 106
    const/4 v0, 0x0

    return-object v0

    .line 102
    :pswitch_5  #0x7
    const-string/jumbo v0, "unregisterDFCallback"

    return-object v0

    .line 98
    :pswitch_9  #0x6
    const-string v0, "registerDFCallback"

    return-object v0

    .line 94
    :pswitch_c  #0x5
    const-string/jumbo v0, "unregisterReadAppOperationListener"

    return-object v0

    .line 90
    :pswitch_10  #0x4
    const-string v0, "getReadAppList"

    return-object v0

    .line 86
    :pswitch_13  #0x3
    const-string v0, "setEyeCareSwitch"

    return-object v0

    .line 82
    :pswitch_16  #0x2
    const-string v0, "registerReadAppOperationListener"

    return-object v0

    .line 78
    :pswitch_19  #0x1
    const-string/jumbo v0, "setScreenEffect"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_19  #00000001
        :pswitch_16  #00000002
        :pswitch_13  #00000003
        :pswitch_10  #00000004
        :pswitch_c  #00000005
        :pswitch_9  #00000006
        :pswitch_5  #00000007
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 69
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 349
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"  # I

    .line 113
    invoke-static {p1}, Lmiui/hardware/display/IDisplayFeatureManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"  # I
    .param p2, "data"  # Landroid/os/Parcel;
    .param p3, "reply"  # Landroid/os/Parcel;
    .param p4, "flags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    const-string v0, "miui.hardware.display.IDisplayFeatureManager"

    .line 118
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 119
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 122
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    return v1

    .line 125
    :cond_16
    packed-switch p1, :pswitch_data_a8

    .line 204
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 196
    :pswitch_1e  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 197
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v2}, Lmiui/hardware/display/IDisplayFeatureManager$Stub;->unregisterDFCallback(I)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    goto/16 :goto_a6

    .line 185
    .end local v2  # "_arg0":I
    :pswitch_2d  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lmiui/hardware/display/IDisplayFeatureCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/hardware/display/IDisplayFeatureCallback;

    move-result-object v2

    .line 187
    .local v2, "_arg0":Lmiui/hardware/display/IDisplayFeatureCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 188
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v2, v3}, Lmiui/hardware/display/IDisplayFeatureManager$Stub;->registerDFCallback(Lmiui/hardware/display/IDisplayFeatureCallback;I)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    goto :goto_a6

    .line 174
    .end local v2  # "_arg0":Lmiui/hardware/display/IDisplayFeatureCallback;
    .end local v3  # "_arg1":I
    :pswitch_43  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lmiui/hardware/display/IReadAppOperationListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/hardware/display/IReadAppOperationListener;

    move-result-object v2

    .line 176
    .local v2, "_arg0":Lmiui/hardware/display/IReadAppOperationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 177
    .restart local v3  # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {p0, v2, v3}, Lmiui/hardware/display/IDisplayFeatureManager$Stub;->unregisterReadAppOperationListener(Lmiui/hardware/display/IReadAppOperationListener;I)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    goto :goto_a6

    .line 166
    .end local v2  # "_arg0":Lmiui/hardware/display/IReadAppOperationListener;
    .end local v3  # "_arg1":I
    :pswitch_59  #0x4
    invoke-virtual {p0}, Lmiui/hardware/display/IDisplayFeatureManager$Stub;->getReadAppList()Ljava/util/List;

    move-result-object v2

    .line 167
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 169
    goto :goto_a6

    .line 158
    .end local v2  # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_64  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 159
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, v2}, Lmiui/hardware/display/IDisplayFeatureManager$Stub;->setEyeCareSwitch(Z)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    goto :goto_a6

    .line 145
    .end local v2  # "_arg0":Z
    :pswitch_72  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lmiui/hardware/display/IReadAppOperationListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/hardware/display/IReadAppOperationListener;

    move-result-object v2

    .line 147
    .local v2, "_arg0":Lmiui/hardware/display/IReadAppOperationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 149
    .restart local v3  # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 150
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-virtual {p0, v2, v3, v4}, Lmiui/hardware/display/IDisplayFeatureManager$Stub;->registerReadAppOperationListener(Lmiui/hardware/display/IReadAppOperationListener;II)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    goto :goto_a6

    .line 130
    .end local v2  # "_arg0":Lmiui/hardware/display/IReadAppOperationListener;
    .end local v3  # "_arg1":I
    .end local v4  # "_arg2":I
    :pswitch_8c  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 132
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 134
    .restart local v3  # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 136
    .restart local v4  # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 137
    .local v5, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, v2, v3, v4, v5}, Lmiui/hardware/display/IDisplayFeatureManager$Stub;->setScreenEffect(IIILandroid/os/IBinder;)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    nop

    .line 207
    .end local v2  # "_arg0":I
    .end local v3  # "_arg1":I
    .end local v4  # "_arg2":I
    .end local v5  # "_arg3":Landroid/os/IBinder;
    :goto_a6
    return v1

    nop

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_8c  #00000001
        :pswitch_72  #00000002
        :pswitch_64  #00000003
        :pswitch_59  #00000004
        :pswitch_43  #00000005
        :pswitch_2d  #00000006
        :pswitch_1e  #00000007
    .end packed-switch
.end method
