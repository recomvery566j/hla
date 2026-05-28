# classes.dex

.class public final synthetic Lcom/android/server/display/MiuiDisplayCloudController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/MiuiDisplayCloudController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/MiuiDisplayCloudController;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/MiuiDisplayCloudController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/MiuiDisplayCloudController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/display/MiuiDisplayCloudController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/MiuiDisplayCloudController;

    check-cast p1, Lcom/android/server/display/MiuiDisplayCloudController$CloudListener;

    invoke-static {v0, p1}, Lcom/android/server/display/MiuiDisplayCloudController;->$r8$lambda$vfRAZsNGkd2qtTl7qGtlG3s29vg(Lcom/android/server/display/MiuiDisplayCloudController;Lcom/android/server/display/MiuiDisplayCloudController$CloudListener;)V

    return-void
.end method
