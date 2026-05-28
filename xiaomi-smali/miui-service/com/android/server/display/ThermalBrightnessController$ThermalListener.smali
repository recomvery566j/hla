# classes.dex

.class public interface abstract Lcom/android/server/display/ThermalBrightnessController$ThermalListener;
.super Ljava/lang/Object;
.source "ThermalBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ThermalBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ThermalListener"
.end annotation


# virtual methods
.method public abstract thermalConfigChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/display/thermalbrightnesscondition/config/ThermalConditionItem;",
            ">;)V"
        }
    .end annotation
.end method
