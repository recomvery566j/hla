# classes.dex

.class public final Lcom/android/server/display/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static FEATURE_FLAGS:Lcom/android/server/display/FeatureFlags; = null

.field public static final FLAG_AUTOBRIGHTNESS_RESET_POLICY:Ljava/lang/String; = "com.android.server.display.autobrightness_reset_policy"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Lcom/android/server/display/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/server/display/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/server/display/Flags;->FEATURE_FLAGS:Lcom/android/server/display/FeatureFlags;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static autobrightnessResetPolicy()Z
    .registers 1

    .line 14
    sget-object v0, Lcom/android/server/display/Flags;->FEATURE_FLAGS:Lcom/android/server/display/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/display/FeatureFlags;->autobrightnessResetPolicy()Z

    move-result v0

    return v0
.end method
