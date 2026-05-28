# classes.dex

.class public final Lcom/android/server/display/BrightnessRangeControllerImpl$Provider;
.super Ljava/lang/Object;
.source "BrightnessRangeControllerImpl$Provider.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/BrightnessRangeControllerImpl$Provider$SINGLETON;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
        "Lcom/android/server/display/BrightnessRangeControllerImpl;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideNewInstance()Lcom/android/server/display/BrightnessRangeControllerImpl;
    .registers 2

    .line 17
    new-instance v0, Lcom/android/server/display/BrightnessRangeControllerImpl;

    invoke-direct {v0}, Lcom/android/server/display/BrightnessRangeControllerImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic provideNewInstance()Ljava/lang/Object;
    .registers 2

    .line 10
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessRangeControllerImpl$Provider;->provideNewInstance()Lcom/android/server/display/BrightnessRangeControllerImpl;

    move-result-object v0

    return-object v0
.end method

.method public provideSingleton()Lcom/android/server/display/BrightnessRangeControllerImpl;
    .registers 2

    .line 13
    sget-object v0, Lcom/android/server/display/BrightnessRangeControllerImpl$Provider$SINGLETON;->INSTANCE:Lcom/android/server/display/BrightnessRangeControllerImpl;

    return-object v0
.end method

.method public bridge synthetic provideSingleton()Ljava/lang/Object;
    .registers 2

    .line 10
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessRangeControllerImpl$Provider;->provideSingleton()Lcom/android/server/display/BrightnessRangeControllerImpl;

    move-result-object v0

    return-object v0
.end method
