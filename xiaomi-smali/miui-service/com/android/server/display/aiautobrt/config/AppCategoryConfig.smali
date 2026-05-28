# classes.dex

.class public Lcom/android/server/display/aiautobrt/config/AppCategoryConfig;
.super Ljava/lang/Object;
.source "AppCategoryConfig.java"


# instance fields
.field private category:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/aiautobrt/config/AppCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/aiautobrt/config/AppCategoryConfig;
    .registers 8
    .param p0, "_parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 14
    new-instance v0, Lcom/android/server/display/aiautobrt/config/AppCategoryConfig;

    invoke-direct {v0}, Lcom/android/server/display/aiautobrt/config/AppCategoryConfig;-><init>()V

    .line 15
    .local v0, "_instance":Lcom/android/server/display/aiautobrt/config/AppCategoryConfig;
    const/4 v1, 0x0

    .line 16
    .local v1, "_raw":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 18
    .local v2, "outerDepth":I
    :goto_a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_39

    if-eq v4, v6, :cond_39

    .line 20
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1d

    goto :goto_a

    .line 21
    :cond_1d
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 22
    .local v3, "_tagName":Ljava/lang/String;
    const-string v5, "category"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 23
    invoke-static {p0}, Lcom/android/server/display/aiautobrt/config/AppCategory;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/aiautobrt/config/AppCategory;

    move-result-object v5

    .line 24
    .local v5, "_value":Lcom/android/server/display/aiautobrt/config/AppCategory;
    invoke-virtual {v0}, Lcom/android/server/display/aiautobrt/config/AppCategoryConfig;->getCategory()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    .end local v5  # "_value":Lcom/android/server/display/aiautobrt/config/AppCategory;
    goto :goto_38

    .line 26
    :cond_35
    invoke-static {p0}, Lcom/android/server/display/aiautobrt/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 28
    .end local v3  # "_tagName":Ljava/lang/String;
    :goto_38
    goto :goto_a

    .line 29
    :cond_39
    if-ne v4, v6, :cond_3c

    .line 32
    return-object v0

    .line 30
    :cond_3c
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "AppCategoryConfig is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getCategory()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/display/aiautobrt/config/AppCategory;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/config/AppCategoryConfig;->category:Ljava/util/List;

    if-nez v0, :cond_b

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/aiautobrt/config/AppCategoryConfig;->category:Ljava/util/List;

    .line 10
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/config/AppCategoryConfig;->category:Ljava/util/List;

    return-object v0
.end method
