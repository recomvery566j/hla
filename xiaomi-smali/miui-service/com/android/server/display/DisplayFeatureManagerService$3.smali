# classes.dex

.class Lcom/android/server/display/DisplayFeatureManagerService$3;
.super Landroid/database/ContentObserver;
.source "DisplayFeatureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayFeatureManagerService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayFeatureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayFeatureManagerService;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/display/DisplayFeatureManagerService;
    .param p2, "handler"  # Landroid/os/Handler;
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

    .line 417
    iput-object p1, p0, Lcom/android/server/display/DisplayFeatureManagerService$3;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"  # Z
    .param p2, "uri"  # Landroid/net/Uri;

    .line 420
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$3;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmEffectScopeManager(Lcom/android/server/display/DisplayFeatureManagerService;)Lcom/android/server/display/eyecare/EffectScopeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$3;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmAmInternal(Lcom/android/server/display/DisplayFeatureManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/android/server/display/eyecare/EffectScopeManager;->updateReadEffectScopeOpenState(Landroid/net/Uri;I)V

    .line 421
    return-void
.end method
