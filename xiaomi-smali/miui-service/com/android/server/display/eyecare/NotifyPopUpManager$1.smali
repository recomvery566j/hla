# classes.dex

.class Lcom/android/server/display/eyecare/NotifyPopUpManager$1;
.super Landroid/os/RemoteCallbackList;
.source "NotifyPopUpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/eyecare/NotifyPopUpManager;->registerReadAppOperationListener(Lmiui/hardware/display/IReadAppOperationListener;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList<",
        "Lmiui/hardware/display/IReadAppOperationListener;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/android/server/display/eyecare/NotifyPopUpManager;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/eyecare/NotifyPopUpManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 90
    check-cast p1, Lmiui/hardware/display/IReadAppOperationListener;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/eyecare/NotifyPopUpManager$1;->onCallbackDied(Lmiui/hardware/display/IReadAppOperationListener;Ljava/lang/Object;)V

    return-void
.end method

.method public onCallbackDied(Lmiui/hardware/display/IReadAppOperationListener;Ljava/lang/Object;)V
    .registers 5
    .param p1, "callback"  # Lmiui/hardware/display/IReadAppOperationListener;
    .param p2, "userPid"  # Ljava/lang/Object;

    .line 93
    invoke-super {p0, p1, p2}, Landroid/os/RemoteCallbackList;->onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCallbackDied: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userPid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotifyPopUpManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method
