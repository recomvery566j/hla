# classes.dex

.class Lcom/android/server/display/DisplayFeatureManagerService$1;
.super Ljava/lang/Object;
.source "DisplayFeatureManagerService.java"

# interfaces
.implements Lcom/android/server/display/eyecare/RhythmicEyeCareManager$RhythmicEyeCareListener;


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

    .line 303
    iput-object p1, p0, Lcom/android/server/display/DisplayFeatureManagerService$1;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRhythmicEyeCareChange(II)V
    .registers 4
    .param p1, "category"  # I
    .param p2, "time"  # I

    .line 306
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$1;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$msetRhythmicColor(Lcom/android/server/display/DisplayFeatureManagerService;II)V

    .line 307
    return-void
.end method
