# classes.dex

.class public final synthetic Lcom/android/server/display/DisplayPowerControllerImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayPowerControllerImpl;

.field public final synthetic f$1:F

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayPowerControllerImpl;FF)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    iput p2, p0, Lcom/android/server/display/DisplayPowerControllerImpl$$ExternalSyntheticLambda3;->f$1:F

    iput p3, p0, Lcom/android/server/display/DisplayPowerControllerImpl$$ExternalSyntheticLambda3;->f$2:F

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl$$ExternalSyntheticLambda3;->f$1:F

    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl$$ExternalSyntheticLambda3;->f$2:F

    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayPowerControllerImpl;->$r8$lambda$MMuV7nGviOy50y9RH2E6V9hFq8M(Lcom/android/server/display/DisplayPowerControllerImpl;FF)V

    return-void
.end method
