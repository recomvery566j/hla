# classes.dex

.class public final synthetic Lcom/android/server/display/ThermalBrightnessController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/ThermalBrightnessController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/ThermalBrightnessController;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/ThermalBrightnessController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/display/ThermalBrightnessController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/display/ThermalBrightnessController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/display/ThermalBrightnessController;

    check-cast p1, Lcom/android/server/display/ThermalBrightnessController$ThermalListener;

    invoke-static {v0, p1}, Lcom/android/server/display/ThermalBrightnessController;->$r8$lambda$eDQhaKAlYCXvHPnmqavTUE1LHLg(Lcom/android/server/display/ThermalBrightnessController;Lcom/android/server/display/ThermalBrightnessController$ThermalListener;)V

    return-void
.end method
