# classes.dex

.class public final Lcom/android/server/display/mode/SocThermalStatusObserver$$GeneratedMiuiImplManifest;
.super Ljava/lang/Object;
.source "SocThermalStatusObserver$$GeneratedMiuiImplManifest.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProviderManifest;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final collectImplProviders(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
            "*>;>;)V"
        }
    .end annotation

    .line 29
    .local p1, "outProviders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/miui/base/MiuiStubRegistry$ImplProvider<*>;>;"
    new-instance v0, Lcom/android/server/display/DisplayAdapterImpl$Provider;

    invoke-direct {v0}, Lcom/android/server/display/DisplayAdapterImpl$Provider;-><init>()V

    const-string v1, "com.android.server.display.DisplayAdapterStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v0, Lcom/android/server/display/DisplayManagerServiceImpl$Provider;

    invoke-direct {v0}, Lcom/android/server/display/DisplayManagerServiceImpl$Provider;-><init>()V

    const-string v1, "com.android.server.display.DisplayManagerServiceStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v0, Lcom/android/server/display/HysteresisLevelsImpl$Provider;

    invoke-direct {v0}, Lcom/android/server/display/HysteresisLevelsImpl$Provider;-><init>()V

    const-string v1, "com.android.server.display.HysteresisLevelsStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl$Provider;

    invoke-direct {v0}, Lcom/android/server/display/DisplayFeatureManagerServiceImpl$Provider;-><init>()V

    const-string v1, "com.android.server.display.DisplayFeatureManagerServiceStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapterImpl$Provider;

    invoke-direct {v0}, Lcom/android/server/display/LocalDisplayAdapterImpl$Provider;-><init>()V

    const-string v1, "com.android.server.display.LocalDisplayAdapterStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v0, Lcom/android/server/display/MiuiBrightnessUtilsImpl$Provider;

    invoke-direct {v0}, Lcom/android/server/display/MiuiBrightnessUtilsImpl$Provider;-><init>()V

    const-string v1, "com.android.server.display.MiuiBrightnessUtilsStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl$Provider;

    invoke-direct {v0}, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategyImpl$Provider;-><init>()V

    const-string v1, "com.android.server.display.brightness.strategy.DozeBrightnessStrategyStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v0, Lcom/android/server/display/mode/SocThermalStatusObserver$Provider;

    invoke-direct {v0}, Lcom/android/server/display/mode/SocThermalStatusObserver$Provider;-><init>()V

    const-string v1, "com.android.server.display.mode.SocThermalStatusObserverStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v0, Lcom/android/server/display/AutomaticBrightnessControllerImpl$Provider;

    invoke-direct {v0}, Lcom/android/server/display/AutomaticBrightnessControllerImpl$Provider;-><init>()V

    const-string v1, "com.android.server.display.AutomaticBrightnessControllerStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v0, Lcom/android/server/display/BrightnessRangeControllerImpl$Provider;

    invoke-direct {v0}, Lcom/android/server/display/BrightnessRangeControllerImpl$Provider;-><init>()V

    const-string v1, "com.android.server.display.BrightnessRangeControllerStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v0, Lcom/android/server/display/BrightnessMappingStrategyImpl$Provider;

    invoke-direct {v0}, Lcom/android/server/display/BrightnessMappingStrategyImpl$Provider;-><init>()V

    const-string v1, "com.android.server.display.BrightnessMappingStrategyStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v0, Lcom/android/server/display/DisplayPowerControllerImpl$Provider;

    invoke-direct {v0}, Lcom/android/server/display/DisplayPowerControllerImpl$Provider;-><init>()V

    const-string v1, "com.android.server.display.DisplayPowerControllerStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirectorImpl$Provider;

    invoke-direct {v0}, Lcom/android/server/display/mode/DisplayModeDirectorImpl$Provider;-><init>()V

    const-string v1, "com.android.server.display.mode.DisplayModeDirectorStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method
