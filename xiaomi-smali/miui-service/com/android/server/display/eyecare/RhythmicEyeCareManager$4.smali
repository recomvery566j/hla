# classes.dex

.class Lcom/android/server/display/eyecare/RhythmicEyeCareManager$4;
.super Lcom/android/internal/policy/IKeyguardLockedStateListener$Stub;
.source "RhythmicEyeCareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/eyecare/RhythmicEyeCareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;


# direct methods
.method public static synthetic $r8$lambda$b_ASEuOED2BaCRCQF6C6UZz4-wc(Lcom/android/server/display/eyecare/RhythmicEyeCareManager$4;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$4;->lambda$onKeyguardLockedStateChanged$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/eyecare/RhythmicEyeCareManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$4;->this$0:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardLockedStateListener$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$onKeyguardLockedStateChanged$0()V
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$4;->this$0:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->-$$Nest$mupdateState(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;Z)V

    return-void
.end method


# virtual methods
.method public onKeyguardLockedStateChanged(Z)V
    .registers 4
    .param p1, "isKeyguardLocked"  # Z

    .line 132
    if-nez p1, :cond_10

    .line 133
    iget-object v0, p0, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$4;->this$0:Lcom/android/server/display/eyecare/RhythmicEyeCareManager;

    invoke-static {v0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager;->-$$Nest$fgetmHandler(Lcom/android/server/display/eyecare/RhythmicEyeCareManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/display/eyecare/RhythmicEyeCareManager$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/eyecare/RhythmicEyeCareManager$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    :cond_10
    return-void
.end method
