.class public Lle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/media/MediaBrowserServiceCompat$i;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:Landroid/os/Bundle;

.field public final synthetic j:Landroidx/media/MediaBrowserServiceCompat$h;


# direct methods
.method public constructor <init>(Landroidx/media/MediaBrowserServiceCompat$h;Landroidx/media/MediaBrowserServiceCompat$i;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lle;->j:Landroidx/media/MediaBrowserServiceCompat$h;

    iput-object p2, p0, Lle;->e:Landroidx/media/MediaBrowserServiceCompat$i;

    iput-object p3, p0, Lle;->f:Ljava/lang/String;

    iput p4, p0, Lle;->g:I

    iput p5, p0, Lle;->h:I

    iput-object p6, p0, Lle;->i:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lle;->e:Landroidx/media/MediaBrowserServiceCompat$i;

    check-cast v0, Landroidx/media/MediaBrowserServiceCompat$j;

    invoke-virtual {v0}, Landroidx/media/MediaBrowserServiceCompat$j;->a()Landroid/os/IBinder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lle;->j:Landroidx/media/MediaBrowserServiceCompat$h;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$h;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->f:Lf4;

    invoke-virtual {v1, v0}, Lm4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Landroidx/media/MediaBrowserServiceCompat$a;

    iget-object v2, p0, Lle;->j:Landroidx/media/MediaBrowserServiceCompat$h;

    iget-object v3, v2, Landroidx/media/MediaBrowserServiceCompat$h;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v4, p0, Lle;->f:Ljava/lang/String;

    iget v5, p0, Lle;->g:I

    iget v6, p0, Lle;->h:I

    iget-object v7, p0, Lle;->i:Landroid/os/Bundle;

    iget-object v8, p0, Lle;->e:Landroidx/media/MediaBrowserServiceCompat$i;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroidx/media/MediaBrowserServiceCompat$a;-><init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/String;IILandroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$i;)V

    .line 4
    iget-object v2, p0, Lle;->j:Landroidx/media/MediaBrowserServiceCompat$h;

    iget-object v2, v2, Landroidx/media/MediaBrowserServiceCompat$h;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroidx/media/MediaBrowserServiceCompat;->f:Lf4;

    invoke-virtual {v2, v0, v1}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "MBServiceCompat"

    const-string v1, "IBinder is already dead."

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
