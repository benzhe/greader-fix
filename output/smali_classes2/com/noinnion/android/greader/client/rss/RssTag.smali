.class public Lcom/noinnion/android/greader/client/rss/RssTag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public label:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/RssTag;->uid:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/noinnion/android/greader/client/rss/RssTag;->label:Ljava/lang/String;

    return-void
.end method
