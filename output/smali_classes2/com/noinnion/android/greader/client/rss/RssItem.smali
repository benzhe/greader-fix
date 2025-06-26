.class public Lcom/noinnion/android/greader/client/rss/RssItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public audio:Ljava/lang/String;

.field public author:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public feed:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public publishedTime:J

.field public read:Z

.field public title:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field public updatedTime:J

.field public video:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lap6;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Lap6;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/noinnion/android/greader/client/rss/RssItem;->uid:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lap6;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/noinnion/android/greader/client/rss/RssItem;->title:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lap6;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/noinnion/android/greader/client/rss/RssItem;->content:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lap6;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/noinnion/android/greader/client/rss/RssItem;->author:Ljava/lang/String;

    .line 7
    iget-object v1, p1, Lap6;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/noinnion/android/greader/client/rss/RssItem;->image:Ljava/lang/String;

    .line 8
    iget-object v1, p1, Lap6;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/noinnion/android/greader/client/rss/RssItem;->video:Ljava/lang/String;

    .line 9
    iget-object v1, p1, Lap6;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/noinnion/android/greader/client/rss/RssItem;->audio:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/noinnion/android/greader/client/rss/RssItem;->author:Ljava/lang/String;

    .line 11
    iget-wide v0, p1, Lap6;->q:J

    iput-wide v0, p0, Lcom/noinnion/android/greader/client/rss/RssItem;->updatedTime:J

    .line 12
    iget-wide v0, p1, Lap6;->p:J

    iput-wide v0, p0, Lcom/noinnion/android/greader/client/rss/RssItem;->publishedTime:J

    .line 13
    iget-boolean p1, p1, Lap6;->v:Z

    iput-boolean p1, p0, Lcom/noinnion/android/greader/client/rss/RssItem;->read:Z

    return-void
.end method


# virtual methods
.method public getItem()Lap6;
    .locals 3

    .line 1
    new-instance v0, Lap6;

    invoke-direct {v0}, Lap6;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/noinnion/android/greader/client/rss/RssItem;->uid:Ljava/lang/String;

    iput-object v1, v0, Lap6;->f:Ljava/lang/String;

    .line 3
    iput-object v1, v0, Lap6;->k:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/noinnion/android/greader/client/rss/RssItem;->title:Ljava/lang/String;

    iput-object v1, v0, Lap6;->h:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/noinnion/android/greader/client/rss/RssItem;->content:Ljava/lang/String;

    iput-object v1, v0, Lap6;->i:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/noinnion/android/greader/client/rss/RssItem;->author:Ljava/lang/String;

    iput-object v1, v0, Lap6;->j:Ljava/lang/String;

    .line 7
    iget-object v2, p0, Lcom/noinnion/android/greader/client/rss/RssItem;->image:Ljava/lang/String;

    iput-object v2, v0, Lap6;->l:Ljava/lang/String;

    .line 8
    iget-object v2, p0, Lcom/noinnion/android/greader/client/rss/RssItem;->video:Ljava/lang/String;

    iput-object v2, v0, Lap6;->m:Ljava/lang/String;

    .line 9
    iget-object v2, p0, Lcom/noinnion/android/greader/client/rss/RssItem;->audio:Ljava/lang/String;

    iput-object v2, v0, Lap6;->n:Ljava/lang/String;

    .line 10
    iput-object v1, v0, Lap6;->j:Ljava/lang/String;

    .line 11
    iget-wide v1, p0, Lcom/noinnion/android/greader/client/rss/RssItem;->updatedTime:J

    iput-wide v1, v0, Lap6;->q:J

    .line 12
    iget-wide v1, p0, Lcom/noinnion/android/greader/client/rss/RssItem;->publishedTime:J

    iput-wide v1, v0, Lap6;->p:J

    .line 13
    iget-boolean v1, p0, Lcom/noinnion/android/greader/client/rss/RssItem;->read:Z

    iput-boolean v1, v0, Lap6;->v:Z

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v0, Lap6;->r:Z

    .line 15
    iget-object v1, p0, Lcom/noinnion/android/greader/client/rss/RssItem;->feed:Ljava/lang/String;

    iput-object v1, v0, Lap6;->z:Ljava/lang/String;

    .line 16
    iget-object v1, v0, Lap6;->y:Ljava/util/List;

    const-string v2, "user/starred"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
