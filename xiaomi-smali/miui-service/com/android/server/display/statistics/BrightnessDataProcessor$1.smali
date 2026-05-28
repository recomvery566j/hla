# classes.dex

.class Lcom/android/server/display/statistics/BrightnessDataProcessor$1;
.super Lmiui/process/IForegroundWindowListener$Stub;
.source "BrightnessDataProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/statistics/BrightnessDataProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;


# direct methods
.method constructor <init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/statistics/BrightnessDataProcessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 424
    iput-object p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$1;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-direct {p0}, Lmiui/process/IForegroundWindowListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundWindowChanged(Lmiui/process/ForegroundInfo;)V
    .registers 4
    .param p1, "foregroundInfo"  # Lmiui/process/ForegroundInfo;

    .line 427
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$1;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-static {v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$fgetmBackgroundHandler(Lcom/android/server/display/statistics/BrightnessDataProcessor;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 428
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$1;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-static {v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$fgetmBackgroundHandler(Lcom/android/server/display/statistics/BrightnessDataProcessor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 429
    return-void
.end method
