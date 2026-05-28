# classes.dex

.class Lcom/android/server/display/DisplayFeatureManagerService$2;
.super Ljava/lang/Object;
.source "DisplayFeatureManagerService.java"

# interfaces
.implements Lcom/android/server/display/eyecare/EffectScopeManager$EnteredReadAppScopeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayFeatureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayFeatureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayFeatureManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/DisplayFeatureManagerService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 311
    iput-object p1, p0, Lcom/android/server/display/DisplayFeatureManagerService$2;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnteredEffectAppScope(Z)V
    .registers 5
    .param p1, "effect"  # Z

    .line 314
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$2;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmEyeCareIsEnteredEffect(Lcom/android/server/display/DisplayFeatureManagerService;)Z

    move-result v0

    if-ne v0, p1, :cond_9

    .line 315
    return-void

    .line 318
    :cond_9
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$2;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fputmEyeCareIsEnteredEffect(Lcom/android/server/display/DisplayFeatureManagerService;Z)V

    .line 319
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$2;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mupdateEyeCareScope(Lcom/android/server/display/DisplayFeatureManagerService;)V

    .line 320
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$2;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mupdateReadingModeEnable(Lcom/android/server/display/DisplayFeatureManagerService;)V

    .line 321
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$2;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayFeatureManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 322
    return-void
.end method
