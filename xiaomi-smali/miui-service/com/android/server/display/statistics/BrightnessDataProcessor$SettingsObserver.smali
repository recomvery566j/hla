# classes.dex

.class Lcom/android/server/display/statistics/BrightnessDataProcessor$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BrightnessDataProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/statistics/BrightnessDataProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;


# direct methods
.method public constructor <init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"  # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1953
    iput-object p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$SettingsObserver;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    .line 1954
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1955
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 9
    .param p1, "selfChange"  # Z
    .param p2, "uri"  # Landroid/net/Uri;

    .line 1959
    if-eqz p1, :cond_3

    .line 1960
    return-void

    .line 1962
    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-string v2, "disable_security_by_mishow"

    const-string/jumbo v3, "screen_brightness_mode"

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_7e

    :cond_15
    goto :goto_26

    :sswitch_16
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v5

    goto :goto_27

    :sswitch_1e
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v4

    goto :goto_27

    :goto_26
    const/4 v0, -0x1

    :goto_27
    packed-switch v0, :pswitch_data_88

    goto :goto_7d

    .line 1979
    :pswitch_2b  #0x1
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$SettingsObserver;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$SettingsObserver;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-static {v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$fgetmContentResolver(Lcom/android/server/display/statistics/BrightnessDataProcessor;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_3a

    move v4, v5

    :cond_3a
    invoke-static {v0, v4}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$fputmIsMiShow(Lcom/android/server/display/statistics/BrightnessDataProcessor;Z)V

    .line 1980
    goto :goto_7d

    .line 1964
    :pswitch_3e  #0x0
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$SettingsObserver;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$SettingsObserver;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-static {v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$fgetmContentResolver(Lcom/android/server/display/statistics/BrightnessDataProcessor;)Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v5, :cond_4f

    move v1, v5

    goto :goto_50

    :cond_4f
    move v1, v4

    :goto_50
    invoke-static {v0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$fputmAutoBrightnessEnable(Lcom/android/server/display/statistics/BrightnessDataProcessor;Z)V

    .line 1968
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$SettingsObserver;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-static {v0, v5}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$fputmAutoBrightnessModeChanged(Lcom/android/server/display/statistics/BrightnessDataProcessor;Z)V

    .line 1971
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$SettingsObserver;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-static {v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$fgetmReportBrightnessEventsEnable(Lcom/android/server/display/statistics/BrightnessDataProcessor;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 1972
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$SettingsObserver;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-static {v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$mreportDisabledAutoBrightnessEvent(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V

    .line 1974
    :cond_65
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$SettingsObserver;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$SettingsObserver;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$SettingsObserver;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    iget v2, v2, Lcom/android/server/display/statistics/BrightnessDataProcessor;->mAmbientLux:F

    invoke-static {v1, v2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$mgetAmbientLuxSpanIndex(Lcom/android/server/display/statistics/BrightnessDataProcessor;F)I

    move-result v1

    const-string/jumbo v2, "switch_change"

    invoke-static {v0, v1, v4, v5, v2}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$mupdateLuxSpanUsage(Lcom/android/server/display/statistics/BrightnessDataProcessor;IZZLjava/lang/String;)V

    .line 1976
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$SettingsObserver;->this$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-static {v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->-$$Nest$mupdateUserResetAutoBrightnessModeTimes(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V

    .line 1977
    nop

    .line 1984
    :goto_7d
    return-void

    :sswitch_data_7e
    .sparse-switch
        -0x294f7102 -> :sswitch_1e
        0x5da4f7f9 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_3e  #00000000
        :pswitch_2b  #00000001
    .end packed-switch
.end method
