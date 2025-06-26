.class public Lcom/noinnion/android/greader/client/rss/DataSet;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FILENAME:Ljava/lang/String; = "data.json"

.field public static final FILENAME_BACKUP:Ljava/lang/String; = "data.old.json"


# instance fields
.field public feeds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/noinnion/android/greader/client/rss/RssFeed;",
            ">;"
        }
    .end annotation
.end field

.field public tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/noinnion/android/greader/client/rss/RssTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/DataSet;->feeds:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/DataSet;->tags:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
