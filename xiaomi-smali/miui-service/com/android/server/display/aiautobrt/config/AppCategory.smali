# classes.dex

.class public Lcom/android/server/display/aiautobrt/config/AppCategory;
.super Ljava/lang/Object;
.source "AppCategory.java"


# instance fields
.field private id:Ljava/lang/Integer;

.field private name:Ljava/lang/String;

.field private pkg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/aiautobrt/config/PackageInfo;",
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

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/aiautobrt/config/AppCategory;
    .registers 8
    .param p0, "_parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/android/server/display/aiautobrt/config/AppCategory;

    invoke-direct {v0}, Lcom/android/server/display/aiautobrt/config/AppCategory;-><init>()V

    .line 50
    .local v0, "_instance":Lcom/android/server/display/aiautobrt/config/AppCategory;
    const/4 v1, 0x0

    .line 51
    .local v1, "_raw":Ljava/lang/String;
    const-string/jumbo v2, "id"

    const/4 v3, 0x0

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    if-eqz v1, :cond_17

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 54
    .local v2, "_value":I
    invoke-virtual {v0, v2}, Lcom/android/server/display/aiautobrt/config/AppCategory;->setId(I)V

    .line 56
    .end local v2  # "_value":I
    :cond_17
    const-string/jumbo v2, "name"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    if-eqz v1, :cond_24

    .line 58
    move-object v2, v1

    .line 59
    .local v2, "_value":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/server/display/aiautobrt/config/AppCategory;->setName(Ljava/lang/String;)V

    .line 61
    .end local v2  # "_value":Ljava/lang/String;
    :cond_24
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 63
    .local v2, "outerDepth":I
    :goto_28
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_58

    if-eq v4, v6, :cond_58

    .line 65
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3b

    goto :goto_28

    .line 66
    :cond_3b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "_tagName":Ljava/lang/String;
    const-string/jumbo v5, "pkg"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 68
    invoke-static {p0}, Lcom/android/server/display/aiautobrt/config/PackageInfo;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/aiautobrt/config/PackageInfo;

    move-result-object v5

    .line 69
    .local v5, "_value":Lcom/android/server/display/aiautobrt/config/PackageInfo;
    invoke-virtual {v0}, Lcom/android/server/display/aiautobrt/config/AppCategory;->getPkg()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .end local v5  # "_value":Lcom/android/server/display/aiautobrt/config/PackageInfo;
    goto :goto_57

    .line 71
    :cond_54
    invoke-static {p0}, Lcom/android/server/display/aiautobrt/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 73
    .end local v3  # "_tagName":Ljava/lang/String;
    :goto_57
    goto :goto_28

    .line 74
    :cond_58
    if-ne v4, v6, :cond_5b

    .line 77
    return-object v0

    .line 75
    :cond_5b
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "AppCategory is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getId()I
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/config/AppCategory;->id:Ljava/lang/Integer;

    if-nez v0, :cond_6

    .line 17
    const/4 v0, 0x0

    return v0

    .line 19
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/config/AppCategory;->id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/config/AppCategory;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPkg()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/display/aiautobrt/config/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/config/AppCategory;->pkg:Ljava/util/List;

    if-nez v0, :cond_b

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/aiautobrt/config/AppCategory;->pkg:Ljava/util/List;

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/config/AppCategory;->pkg:Ljava/util/List;

    return-object v0
.end method

.method hasId()Z
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/config/AppCategory;->id:Ljava/lang/Integer;

    if-nez v0, :cond_6

    .line 24
    const/4 v0, 0x0

    return v0

    .line 26
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasName()Z
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/config/AppCategory;->name:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 39
    const/4 v0, 0x0

    return v0

    .line 41
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public setId(I)V
    .registers 3
    .param p1, "id"  # I

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/aiautobrt/config/AppCategory;->id:Ljava/lang/Integer;

    .line 31
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"  # Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/android/server/display/aiautobrt/config/AppCategory;->name:Ljava/lang/String;

    .line 46
    return-void
.end method
