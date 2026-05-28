# classes.dex

.class Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;
.super Ljava/lang/Object;
.source "DisplayFeatureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayFeatureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisplayFeatureManagerWrapper"
.end annotation


# static fields
.field private static final AIDL_TRANSACTION_registerCallback:I = 0x2

.field private static final AIDL_TRANSACTION_setFeature:I = 0x7

.field private static final HIDL_TRANSACTION_interfaceDescriptor:I = 0xf445343

.field private static final HIDL_TRANSACTION_registerCallback:I = 0x2

.field private static final HIDL_TRANSACTION_setFeature:I = 0x1

.field private static final HWBINDER_BASE_INTERFACE_DESCRIPTOR:Ljava/lang/String; = "android.hidl.base@1.0::IBase"

.field private static final HWBINDER_INTERFACE_DESCRIPTOR:Ljava/lang/String; = "vendor.xiaomi.hardware.displayfeature@1.0::IDisplayFeature"

.field private static final INTERFACE_DESCRIPTOR:Ljava/lang/String; = "vendor.xiaomi.hardware.displayfeature_aidl.IDisplayFeature"


# instance fields
.field private mDescriptor:Ljava/lang/String;

.field private mHwService:Landroid/os/IHwBinder;

.field private mService:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayFeatureManagerService;Ljava/lang/Object;)V
    .registers 4
    .param p1, "this$0"  # Lcom/android/server/display/DisplayFeatureManagerService;
    .param p2, "service"  # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2246
    instance-of v0, p2, Landroid/os/IBinder;

    if-eqz v0, :cond_24

    .line 2247
    move-object v0, p2

    check-cast v0, Landroid/os/IBinder;

    iput-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;->mService:Landroid/os/IBinder;

    .line 2249
    :try_start_c
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;->mService:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;->mDescriptor:Ljava/lang/String;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15

    .line 2251
    goto :goto_16

    .line 2250
    :catch_15
    move-exception v0

    .line 2252
    :goto_16
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;->mDescriptor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2253
    const-string/jumbo v0, "vendor.xiaomi.hardware.displayfeature_aidl.IDisplayFeature"

    iput-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;->mDescriptor:Ljava/lang/String;

    goto :goto_42

    .line 2255
    :cond_24
    instance-of v0, p2, Landroid/os/IHwBinder;

    if-eqz v0, :cond_42

    .line 2256
    move-object v0, p2

    check-cast v0, Landroid/os/IHwBinder;

    iput-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;->mHwService:Landroid/os/IHwBinder;

    .line 2258
    :try_start_2d
    invoke-virtual {p0}, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;->mDescriptor:Ljava/lang/String;
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_33} :catch_34

    .line 2260
    goto :goto_35

    .line 2259
    :catch_34
    move-exception v0

    .line 2261
    :goto_35
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;->mDescriptor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2262
    const-string/jumbo v0, "vendor.xiaomi.hardware.displayfeature@1.0::IDisplayFeature"

    iput-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;->mDescriptor:Ljava/lang/String;

    .line 2265
    :cond_42
    :goto_42
    return-void
.end method

.method private varargs callBinderTransact(II[Ljava/lang/Object;)V
    .registers 10
    .param p1, "transactId"  # I
    .param p2, "flag"  # I
    .param p3, "params"  # [Ljava/lang/Object;

    .line 2303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2304
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2306
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_8
    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2307
    array-length v2, p3

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_33

    aget-object v4, p3, v3

    .line 2308
    .local v4, "param":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_22

    .line 2309
    move-object v5, v4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_30

    .line 2310
    :cond_22
    instance-of v5, v4, Landroid/os/IInterface;

    if-eqz v5, :cond_30

    .line 2311
    move-object v5, v4

    check-cast v5, Landroid/os/IInterface;

    invoke-interface {v5}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2307
    .end local v4  # "param":Ljava/lang/Object;
    :cond_30
    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 2314
    :cond_33
    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;->mService:Landroid/os/IBinder;

    if-eqz v2, :cond_3c

    .line 2315
    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;->mService:Landroid/os/IBinder;

    invoke-interface {v2, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_3c} :catch_46
    .catchall {:try_start_8 .. :try_end_3c} :catchall_44

    .line 2320
    :cond_3c
    nop

    :goto_3d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2322
    goto :goto_61

    .line 2320
    :catchall_44
    move-exception v2

    goto :goto_62

    .line 2317
    :catch_46
    move-exception v2

    .line 2318
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_47
    const-string v3, "DisplayFeatureManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callBinderTransact transact fail. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_47 .. :try_end_5f} :catchall_44

    .line 2320
    nop

    .end local v2  # "e":Landroid/os/RemoteException;
    goto :goto_3d

    .line 2323
    :goto_61
    return-void

    .line 2320
    :goto_62
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2322
    throw v2
.end method

.method private varargs callHwBinderTransact(II[Ljava/lang/Object;)V
    .registers 10
    .param p1, "_hidl_code"  # I
    .param p2, "flag"  # I
    .param p3, "params"  # [Ljava/lang/Object;

    .line 2326
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2328
    .local v0, "hidl_reply":Landroid/os/HwParcel;
    :try_start_5
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2329
    .local v1, "hidl_request":Landroid/os/HwParcel;
    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2330
    array-length v2, p3

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_35

    aget-object v4, p3, v3

    .line 2331
    .local v4, "param":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_24

    .line 2332
    move-object v5, v4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->writeInt32(I)V

    goto :goto_32

    .line 2333
    :cond_24
    instance-of v5, v4, Landroid/os/IHwInterface;

    if-eqz v5, :cond_32

    .line 2334
    move-object v5, v4

    check-cast v5, Landroid/os/IHwInterface;

    invoke-interface {v5}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 2330
    .end local v4  # "param":Ljava/lang/Object;
    :cond_32
    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 2337
    :cond_35
    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;->mHwService:Landroid/os/IHwBinder;

    invoke-interface {v2, p1, v1, v0, p2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2338
    invoke-virtual {v0}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2339
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_40} :catch_43
    .catchall {:try_start_5 .. :try_end_40} :catchall_41

    .line 2343
    .end local v1  # "hidl_request":Landroid/os/HwParcel;
    goto :goto_5d

    :catchall_41
    move-exception v1

    goto :goto_62

    .line 2340
    :catch_43
    move-exception v1

    .line 2341
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_44
    const-string v2, "DisplayFeatureManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callHwBinderTransact transact fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_44 .. :try_end_5c} :catchall_41

    .line 2343
    nop

    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_5d
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2344
    nop

    .line 2345
    return-void

    .line 2343
    :goto_62
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 2344
    throw v1
.end method


# virtual methods
.method public interfaceDescriptor()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2285
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 2286
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2288
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 2290
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;->mHwService:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 2292
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 2293
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 2295
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 2296
    .local v2, "_hidl_out_descriptor":Ljava/lang/String;
    nop

    .line 2298
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2296
    return-object v2

    .line 2298
    .end local v2  # "_hidl_out_descriptor":Ljava/lang/String;
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 2299
    throw v2
.end method

.method registerCallback(ILjava/lang/Object;)V
    .registers 6
    .param p1, "displayId"  # I
    .param p2, "callback"  # Ljava/lang/Object;

    .line 2276
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_DISPLAYFEATURE_HIDL:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_12

    .line 2277
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v2, v1, v0}, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;->callHwBinderTransact(II[Ljava/lang/Object;)V

    goto :goto_1d

    .line 2279
    :cond_12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v2, v1, v0}, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;->callBinderTransact(II[Ljava/lang/Object;)V

    .line 2281
    :goto_1d
    return-void
.end method

.method setFeature(IIII)V
    .registers 10
    .param p1, "displayId"  # I
    .param p2, "mode"  # I
    .param p3, "value"  # I
    .param p4, "cookie"  # I

    .line 2268
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_DISPLAYFEATURE_HIDL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 2269
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1, v0}, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;->callHwBinderTransact(II[Ljava/lang/Object;)V

    goto :goto_36

    .line 2271
    :cond_1e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x7

    invoke-direct {p0, v2, v1, v0}, Lcom/android/server/display/DisplayFeatureManagerService$DisplayFeatureManagerWrapper;->callBinderTransact(II[Ljava/lang/Object;)V

    .line 2273
    :goto_36
    return-void
.end method
