# classes.dex

.class Lcom/android/server/display/eyecare/EffectScopeManager$1;
.super Lmiui/process/IForegroundInfoListener$Stub;
.source "EffectScopeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/eyecare/EffectScopeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/eyecare/EffectScopeManager;


# direct methods
.method constructor <init>(Lcom/android/server/display/eyecare/EffectScopeManager;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/eyecare/EffectScopeManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/android/server/display/eyecare/EffectScopeManager$1;->this$0:Lcom/android/server/display/eyecare/EffectScopeManager;

    invoke-direct {p0}, Lmiui/process/IForegroundInfoListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundInfoChanged(Lmiui/process/ForegroundInfo;)V
    .registers 5
    .param p1, "foregroundInfo"  # Lmiui/process/ForegroundInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager$1;->this$0:Lcom/android/server/display/eyecare/EffectScopeManager;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/android/server/display/eyecare/EffectScopeManager;->-$$Nest$mupdateState(Lcom/android/server/display/eyecare/EffectScopeManager;ZI)V

    .line 111
    return-void
.end method
