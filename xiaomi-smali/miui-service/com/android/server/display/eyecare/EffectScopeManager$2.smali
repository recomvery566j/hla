# classes.dex

.class Lcom/android/server/display/eyecare/EffectScopeManager$2;
.super Ljava/lang/Object;
.source "EffectScopeManager.java"

# interfaces
.implements Landroid/app/KeyguardManager$KeyguardLockedStateListener;


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

    .line 114
    iput-object p1, p0, Lcom/android/server/display/eyecare/EffectScopeManager$2;->this$0:Lcom/android/server/display/eyecare/EffectScopeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardLockedStateChanged(Z)V
    .registers 5
    .param p1, "isKeyguardLocked"  # Z

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onKeyguardLockedStateChanged isKeyguardLocked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EffectScopeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v0, 0x4

    if-nez p1, :cond_23

    .line 119
    iget-object v1, p0, Lcom/android/server/display/eyecare/EffectScopeManager$2;->this$0:Lcom/android/server/display/eyecare/EffectScopeManager;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/server/display/eyecare/EffectScopeManager;->-$$Nest$mupdateState(Lcom/android/server/display/eyecare/EffectScopeManager;ZI)V

    goto :goto_29

    .line 121
    :cond_23
    iget-object v1, p0, Lcom/android/server/display/eyecare/EffectScopeManager$2;->this$0:Lcom/android/server/display/eyecare/EffectScopeManager;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/android/server/display/eyecare/EffectScopeManager;->-$$Nest$mupdateState(Lcom/android/server/display/eyecare/EffectScopeManager;ZI)V

    .line 123
    :goto_29
    return-void
.end method
