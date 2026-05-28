# classes.dex

.class public final synthetic Lcom/android/server/display/mode/SocThermalStatusObserver$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/mode/SocThermalStatusObserver;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/mode/SocThermalStatusObserver;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/mode/SocThermalStatusObserver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/mode/SocThermalStatusObserver;

    iput p2, p0, Lcom/android/server/display/mode/SocThermalStatusObserver$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/display/mode/SocThermalStatusObserver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/mode/SocThermalStatusObserver;

    iget v1, p0, Lcom/android/server/display/mode/SocThermalStatusObserver$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, v1}, Lcom/android/server/display/mode/SocThermalStatusObserver;->$r8$lambda$F6Eeo0stshfD2gjx6DifhDqIQ_g(Lcom/android/server/display/mode/SocThermalStatusObserver;I)V

    return-void
.end method
