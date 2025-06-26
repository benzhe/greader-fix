.class public Lce;
.super Landroidx/media/MediaBrowserServiceCompat$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media/MediaBrowserServiceCompat$g<",
        "Ljava/util/List<",
        "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Landroidx/media/MediaBrowserServiceCompat$a;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Landroid/os/Bundle;

.field public final synthetic h:Landroid/os/Bundle;

.field public final synthetic i:Landroidx/media/MediaBrowserServiceCompat;


# direct methods
.method public constructor <init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroidx/media/MediaBrowserServiceCompat$a;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lce;->i:Landroidx/media/MediaBrowserServiceCompat;

    iput-object p3, p0, Lce;->e:Landroidx/media/MediaBrowserServiceCompat$a;

    iput-object p4, p0, Lce;->f:Ljava/lang/String;

    iput-object p5, p0, Lce;->g:Landroid/os/Bundle;

    iput-object p6, p0, Lce;->h:Landroid/os/Bundle;

    invoke-direct {p0, p2}, Landroidx/media/MediaBrowserServiceCompat$g;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    iget-object v0, p0, Lce;->i:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->f:Lf4;

    iget-object v1, p0, Lce;->e:Landroidx/media/MediaBrowserServiceCompat$a;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$a;->b:Landroidx/media/MediaBrowserServiceCompat$i;

    check-cast v1, Landroidx/media/MediaBrowserServiceCompat$j;

    invoke-virtual {v1}, Landroidx/media/MediaBrowserServiceCompat$j;->a()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lce;->e:Landroidx/media/MediaBrowserServiceCompat$a;

    const-string v2, "MBServiceCompat"

    if-eq v0, v1, :cond_0

    .line 3
    sget-boolean p1, Landroidx/media/MediaBrowserServiceCompat;->h:Z

    if-eqz p1, :cond_7

    const-string p1, "Not sending onLoadChildren result for connection that has been disconnected. pkg="

    .line 4
    invoke-static {p1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lce;->e:Landroidx/media/MediaBrowserServiceCompat$a;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lce;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 5
    :cond_0
    iget v0, p0, Landroidx/media/MediaBrowserServiceCompat$g;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    .line 6
    iget-object v0, p0, Lce;->i:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v3, p0, Lce;->g:Landroid/os/Bundle;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    const-string v4, "android.media.browse.extra.PAGE"

    .line 8
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "android.media.browse.extra.PAGE_SIZE"

    .line 9
    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v4, v0, :cond_2

    if-ne v3, v0, :cond_2

    goto :goto_1

    :cond_2
    mul-int v0, v3, v4

    add-int v5, v0, v3

    if-ltz v4, :cond_5

    if-lt v3, v1, :cond_5

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v5, v1, :cond_4

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 13
    :cond_4
    invoke-interface {p1, v0, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 14
    :cond_5
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 15
    :cond_6
    :goto_1
    :try_start_0
    iget-object v0, p0, Lce;->e:Landroidx/media/MediaBrowserServiceCompat$a;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat$a;->b:Landroidx/media/MediaBrowserServiceCompat$i;

    iget-object v1, p0, Lce;->f:Ljava/lang/String;

    iget-object v3, p0, Lce;->g:Landroid/os/Bundle;

    iget-object v4, p0, Lce;->h:Landroid/os/Bundle;

    check-cast v0, Landroidx/media/MediaBrowserServiceCompat$j;

    invoke-virtual {v0, v1, p1, v3, v4}, Landroidx/media/MediaBrowserServiceCompat$j;->b(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p1, "Calling onLoadChildren() failed for id="

    .line 16
    invoke-static {p1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lce;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " package="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lce;->e:Landroidx/media/MediaBrowserServiceCompat$a;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    return-void
.end method
