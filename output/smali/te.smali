.class public Lte;
.super Lqe;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lue;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lqe;-><init>(Landroid/content/Context;Lse;)V

    return-void
.end method


# virtual methods
.method public onLoadItem(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lqe;->e:Lse;

    check-cast v0, Lue;

    new-instance v1, Lre;

    invoke-direct {v1, p2}, Lre;-><init>(Landroid/service/media/MediaBrowserService$Result;)V

    invoke-interface {v0, p1, v1}, Lue;->a(Ljava/lang/String;Lre;)V

    return-void
.end method
