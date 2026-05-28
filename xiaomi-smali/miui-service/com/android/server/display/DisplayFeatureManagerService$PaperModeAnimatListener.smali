# classes.dex

.class Lcom/android/server/display/DisplayFeatureManagerService$PaperModeAnimatListener;
.super Ljava/lang/Object;
.source "DisplayFeatureManagerService.java"

# interfaces
.implements Lcom/android/server/display/MiuiRampAnimator$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayFeatureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PaperModeAnimatListener"
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

    .line 2160
    iput-object p1, p0, Lcom/android/server/display/DisplayFeatureManagerService$PaperModeAnimatListener;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .registers 3

    .line 2163
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$PaperModeAnimatListener;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmDisplayState(Lcom/android/server/display/DisplayFeatureManagerService;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    invoke-static {}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$sfgetIS_COMPATIBLE_PAPER_AND_SCREEN_EFFECT()Z

    move-result v0

    if-nez v0, :cond_15

    .line 2164
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$PaperModeAnimatListener;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mhandleScreenSchemeChange(Lcom/android/server/display/DisplayFeatureManagerService;Z)V

    .line 2166
    :cond_15
    return-void
.end method
