# classes.dex

.class public final synthetic Lcom/android/server/display/DisplayPowerControllerImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayPowerControllerImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:F

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayPowerControllerImpl;IFZ)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerControllerImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    iput p2, p0, Lcom/android/server/display/DisplayPowerControllerImpl$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Lcom/android/server/display/DisplayPowerControllerImpl$$ExternalSyntheticLambda2;->f$2:F

    iput-boolean p4, p0, Lcom/android/server/display/DisplayPowerControllerImpl$$ExternalSyntheticLambda2;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerControllerImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/display/DisplayPowerControllerImpl;

    iget v1, p0, Lcom/android/server/display/DisplayPowerControllerImpl$$ExternalSyntheticLambda2;->f$1:I

    iget v2, p0, Lcom/android/server/display/DisplayPowerControllerImpl$$ExternalSyntheticLambda2;->f$2:F

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerControllerImpl$$ExternalSyntheticLambda2;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerControllerImpl;->$r8$lambda$RjLJNCl97M9PYxlpdpxYkSI9tVI(Lcom/android/server/display/DisplayPowerControllerImpl;IFZ)V

    return-void
.end method
