.class public Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public name:Ljava/lang/String;

.field public namespace:Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;->name:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;->namespace:Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/client/rss/syndication/namespace/SyndElement;->namespace:Lcom/noinnion/android/greader/client/rss/syndication/namespace/Namespace;

    return-object v0
.end method
