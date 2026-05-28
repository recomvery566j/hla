# classes.dex

.class public final Lcom/android/server/display/DisplayFeatureManagerServiceImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "DisplayFeatureManagerServiceImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayFeatureManagerServiceImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/server/display/DisplayFeatureManagerServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;

    invoke-direct {v0}, Lcom/android/server/display/DisplayFeatureManagerServiceImpl;-><init>()V

    sput-object v0, Lcom/android/server/display/DisplayFeatureManagerServiceImpl$Provider$SINGLETON;->INSTANCE:Lcom/android/server/display/DisplayFeatureManagerServiceImpl;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
