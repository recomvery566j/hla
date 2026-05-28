# classes.dex

.class public final synthetic Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/display/statistics/BrightnessDataProcessor;

    invoke-static {v0}, Lcom/android/server/display/statistics/BrightnessDataProcessor;->$r8$lambda$k4_KDsx5lnY_JZUVyDKugACPMNQ(Lcom/android/server/display/statistics/BrightnessDataProcessor;)V

    return-void
.end method
