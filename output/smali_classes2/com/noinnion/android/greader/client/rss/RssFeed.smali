.class public Lcom/noinnion/android/greader/client/rss/RssFeed;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public categories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public hasPodcast:Z

.field public htmlUrl:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/noinnion/android/greader/client/rss/RssFeed;->hasPodcast:Z

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/greader/client/rss/RssFeed;->categories:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/noinnion/android/greader/client/rss/RssFeed;->hasPodcast:Z

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/noinnion/android/greader/client/rss/RssFeed;->categories:Ljava/util/Set;

    .line 7
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/RssFeed;->uid:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/noinnion/android/greader/client/rss/RssFeed;->title:Ljava/lang/String;

    return-void
.end method
