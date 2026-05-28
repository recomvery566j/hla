# classes.dex

.class public final Lcom/android/server/display/BrightnessMappingStrategyImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "BrightnessMappingStrategyImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessMappingStrategyImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/server/display/BrightnessMappingStrategyImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Lcom/android/server/display/BrightnessMappingStrategyImpl;

    invoke-direct {v0}, Lcom/android/server/display/BrightnessMappingStrategyImpl;-><init>()V

    sput-object v0, Lcom/android/server/display/BrightnessMappingStrategyImpl$Provider$SINGLETON;->INSTANCE:Lcom/android/server/display/BrightnessMappingStrategyImpl;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
