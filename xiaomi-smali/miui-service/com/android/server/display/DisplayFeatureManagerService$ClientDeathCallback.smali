# classes.dex

.class Lcom/android/server/display/DisplayFeatureManagerService$ClientDeathCallback;
.super Ljava/lang/Object;
.source "DisplayFeatureManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayFeatureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientDeathCallback"
.end annotation


# instance fields
.field private mFlag:I

.field private mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/display/DisplayFeatureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayFeatureManagerService;Landroid/os/IBinder;I)V
    .registers 6
    .param p1, "this$0"  # Lcom/android/server/display/DisplayFeatureManagerService;
    .param p2, "token"  # Landroid/os/IBinder;
    .param p3, "flag"  # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1439
    iput-object p1, p0, Lcom/android/server/display/DisplayFeatureManagerService$ClientDeathCallback;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1440
    iput-object p2, p0, Lcom/android/server/display/DisplayFeatureManagerService$ClientDeathCallback;->mToken:Landroid/os/IBinder;

    .line 1441
    iput p3, p0, Lcom/android/server/display/DisplayFeatureManagerService$ClientDeathCallback;->mFlag:I

    .line 1443
    :try_start_9
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$ClientDeathCallback;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_f} :catch_10

    .line 1446
    goto :goto_14

    .line 1444
    :catch_10
    move-exception v0

    .line 1445
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1447
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_14
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 1451
    const-string v0, "DisplayFeatureManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied: flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayFeatureManagerService$ClientDeathCallback;->mFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$ClientDeathCallback;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmClientDeathCallbacks(Lcom/android/server/display/DisplayFeatureManagerService;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 1453
    :try_start_21
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$ClientDeathCallback;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmClientDeathCallbacks(Lcom/android/server/display/DisplayFeatureManagerService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureManagerService$ClientDeathCallback;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_3b

    .line 1455
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$ClientDeathCallback;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1456
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$ClientDeathCallback;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    iget v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$ClientDeathCallback;->mFlag:I

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mdoDieLocked(Lcom/android/server/display/DisplayFeatureManagerService;I)V

    .line 1457
    return-void

    .line 1454
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1
.end method
