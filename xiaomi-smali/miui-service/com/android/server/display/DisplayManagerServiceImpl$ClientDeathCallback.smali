# classes.dex

.class Lcom/android/server/display/DisplayManagerServiceImpl$ClientDeathCallback;
.super Ljava/lang/Object;
.source "DisplayManagerServiceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientDeathCallback"
.end annotation


# instance fields
.field private mFlag:I

.field private mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/display/DisplayManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerServiceImpl;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "this$0"  # Lcom/android/server/display/DisplayManagerServiceImpl;
    .param p2, "token"  # Landroid/os/IBinder;
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

    .line 1605
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/display/DisplayManagerServiceImpl$ClientDeathCallback;-><init>(Lcom/android/server/display/DisplayManagerServiceImpl;Landroid/os/IBinder;I)V

    .line 1606
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerServiceImpl;Landroid/os/IBinder;I)V
    .registers 5
    .param p1, "this$0"  # Lcom/android/server/display/DisplayManagerServiceImpl;
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

    .line 1608
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerServiceImpl$ClientDeathCallback;->this$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1609
    iput-object p2, p0, Lcom/android/server/display/DisplayManagerServiceImpl$ClientDeathCallback;->mToken:Landroid/os/IBinder;

    .line 1610
    iput p3, p0, Lcom/android/server/display/DisplayManagerServiceImpl$ClientDeathCallback;->mFlag:I

    .line 1612
    const/4 v0, 0x0

    :try_start_a
    invoke-interface {p2, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    .line 1615
    goto :goto_12

    .line 1613
    :catch_e
    move-exception v0

    .line 1614
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1616
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 1620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "binderDied: flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl$ClientDeathCallback;->mFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManagerServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl$ClientDeathCallback;->this$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    iget v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl$ClientDeathCallback;->mFlag:I

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerServiceImpl$ClientDeathCallback;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayManagerServiceImpl;->-$$Nest$mdoDieLocked(Lcom/android/server/display/DisplayManagerServiceImpl;ILandroid/os/IBinder;)V

    .line 1622
    return-void
.end method
