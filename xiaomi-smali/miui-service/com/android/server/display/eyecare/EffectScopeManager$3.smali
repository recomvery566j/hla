# classes.dex

.class Lcom/android/server/display/eyecare/EffectScopeManager$3;
.super Landroid/app/TaskStackListener;
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
.method public static synthetic $r8$lambda$o0-1V7clFw1sHk83Ovz5GuCUCrE(Lcom/android/server/display/eyecare/EffectScopeManager$3;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/eyecare/EffectScopeManager$3;->lambda$onTaskStackChanged$0()V

    return-void
.end method

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

    .line 410
    iput-object p1, p0, Lcom/android/server/display/eyecare/EffectScopeManager$3;->this$0:Lcom/android/server/display/eyecare/EffectScopeManager;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method

.method private synthetic lambda$onTaskStackChanged$0()V
    .registers 3

    .line 413
    iget-object v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager$3;->this$0:Lcom/android/server/display/eyecare/EffectScopeManager;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/android/server/display/eyecare/EffectScopeManager;->-$$Nest$mupdateState(Lcom/android/server/display/eyecare/EffectScopeManager;ZI)V

    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .registers 3

    .line 413
    iget-object v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager$3;->this$0:Lcom/android/server/display/eyecare/EffectScopeManager;

    invoke-static {v0}, Lcom/android/server/display/eyecare/EffectScopeManager;->-$$Nest$fgetmHandler(Lcom/android/server/display/eyecare/EffectScopeManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/eyecare/EffectScopeManager$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/display/eyecare/EffectScopeManager$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/eyecare/EffectScopeManager$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 414
    return-void
.end method
