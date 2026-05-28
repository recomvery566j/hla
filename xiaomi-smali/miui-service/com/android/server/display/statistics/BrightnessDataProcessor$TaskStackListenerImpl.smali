# classes.dex

.class Lcom/android/server/display/statistics/BrightnessDataProcessor$TaskStackListenerImpl;
.super Landroid/app/TaskStackListener;
.source "BrightnessDataProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/statistics/BrightnessDataProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskStackListenerImpl"
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

    .line 1778
    iput-object p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$TaskStackListenerImpl;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .registers 3

    .line 1781
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$TaskStackListenerImpl;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-static {v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$fgetmBackgroundHandler(Lcom/android/server/display/statistics/BrightnessDataProcessor;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1782
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$TaskStackListenerImpl;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-static {v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$fgetmBackgroundHandler(Lcom/android/server/display/statistics/BrightnessDataProcessor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1783
    return-void
.end method
