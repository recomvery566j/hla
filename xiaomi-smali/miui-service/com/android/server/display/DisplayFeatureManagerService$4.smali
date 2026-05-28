# classes.dex

.class Lcom/android/server/display/DisplayFeatureManagerService$4;
.super Landroid/util/IntProperty;
.source "DisplayFeatureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayFeatureManagerService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty<",
        "Lcom/android/server/display/DisplayFeatureManagerService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayFeatureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayFeatureManagerService;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/display/DisplayFeatureManagerService;
    .param p2, "name"  # Ljava/lang/String;
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

    .line 429
    iput-object p1, p0, Lcom/android/server/display/DisplayFeatureManagerService$4;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-direct {p0, p2}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/server/display/DisplayFeatureManagerService;)Ljava/lang/Integer;
    .registers 3
    .param p1, "object"  # Lcom/android/server/display/DisplayFeatureManagerService;

    .line 452
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 429
    check-cast p1, Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayFeatureManagerService$4;->get(Lcom/android/server/display/DisplayFeatureManagerService;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/server/display/DisplayFeatureManagerService;I)V
    .registers 6
    .param p1, "object"  # Lcom/android/server/display/DisplayFeatureManagerService;
    .param p2, "value"  # I

    .line 434
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$4;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmDisplayState(Lcom/android/server/display/DisplayFeatureManagerService;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1c

    if-gtz p2, :cond_18

    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$4;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmPaperModeAnimator(Lcom/android/server/display/DisplayFeatureManagerService;)Lcom/android/server/display/MiuiRampAnimator;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Lcom/android/server/display/MiuiRampAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 436
    :cond_18
    invoke-static {p1, v1, p2}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$msetScreenEffect(Lcom/android/server/display/DisplayFeatureManagerService;II)V

    goto :goto_62

    .line 437
    :cond_1c
    invoke-static {}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$sfgetIS_COMPATIBLE_PAPER_AND_SCREEN_EFFECT()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$4;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmDisplayState(Lcom/android/server/display/DisplayFeatureManagerService;)I

    move-result v0

    if-eq v0, v2, :cond_37

    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$4;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmReadingModeEnabled(Lcom/android/server/display/DisplayFeatureManagerService;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 443
    const/4 v0, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$msetScreenEffect(Lcom/android/server/display/DisplayFeatureManagerService;II)V

    goto :goto_62

    .line 444
    :cond_37
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$4;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmDisplayState(Lcom/android/server/display/DisplayFeatureManagerService;)I

    move-result v0

    if-ne v0, v2, :cond_62

    .line 445
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$4;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0, v2}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fputmScreenEyecareNeedUpdate(Lcom/android/server/display/DisplayFeatureManagerService;Z)V

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "display off, screen eyecare value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is abandon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayFeatureManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_62
    :goto_62
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
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

    .line 429
    check-cast p1, Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayFeatureManagerService$4;->setValue(Lcom/android/server/display/DisplayFeatureManagerService;I)V

    return-void
.end method
