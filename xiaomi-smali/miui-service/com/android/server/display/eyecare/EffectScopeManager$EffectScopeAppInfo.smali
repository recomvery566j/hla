# classes.dex

.class Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;
.super Ljava/lang/Object;
.source "EffectScopeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/eyecare/EffectScopeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EffectScopeAppInfo"
.end annotation


# instance fields
.field private mEnable:Z

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/display/eyecare/EffectScopeManager;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "this$0"  # Lcom/android/server/display/eyecare/EffectScopeManager;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "enable"  # Z
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

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    iput-object p2, p0, Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;->mPackageName:Ljava/lang/String;

    .line 506
    iput-boolean p3, p0, Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;->mEnable:Z

    .line 507
    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 510
    iget-object v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isEnable()Z
    .registers 2

    .line 514
    iget-boolean v0, p0, Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;->mEnable:Z

    return v0
.end method

.method public setEnable(Z)V
    .registers 2
    .param p1, "enable"  # Z

    .line 518
    iput-boolean p1, p0, Lcom/android/server/display/eyecare/EffectScopeManager$EffectScopeAppInfo;->mEnable:Z

    .line 519
    return-void
.end method
