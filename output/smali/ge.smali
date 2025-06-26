.class public Lge;
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
    iput-object p1, p0, Lge;->j:Landroidx/media/MediaBrowserServiceCompat$h;

    iput-object p2, p0, Lge;->e:Landroidx/media/MediaBrowserServiceCompat$i;

    iput-object p3, p0, Lge;->f:Ljava/lang/String;

    iput p4, p0, Lge;->g:I

    iput p5, p0, Lge;->h:I

    iput-object p6, p0, Lge;->i:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lge;->e:Landroidx/media/MediaBrowserServiceCompat$i;

    check-cast v0, Landroidx/media/MediaBrowserServiceCompat$j;

    invoke-virtual {v0}, Landroidx/media/MediaBrowserServiceCompat$j;->a()Landroid/os/IBinder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lge;->j:Landroidx/media/MediaBrowserServiceCompat$h;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$h;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->f:Lf4;

    invoke-virtual {v1, v0}, Lm4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lge;->j:Landroidx/media/MediaBrowserServiceCompat$h;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat$h;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v0, p0, Lge;->f:Ljava/lang/String;

    iget v1, p0, Lge;->g:I

    iget v2, p0, Lge;->h:I

    .line 4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_0

    .line 6
    new-instance v3, Lye;

    invoke-direct {v3, v0, v1, v2}, Lye;-><init>(Ljava/lang/String;II)V

    .line 7
    :cond_0
    iget-object v0, p0, Lge;->j:Landroidx/media/MediaBrowserServiceCompat$h;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat$h;->a:Landroidx/media/MediaBrowserServiceCompat;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lge;->j:Landroidx/media/MediaBrowserServiceCompat$h;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat$h;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, p0, Lge;->f:Ljava/lang/String;

    iget v2, p0, Lge;->h:I

    iget-object v3, p0, Lge;->i:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media/MediaBrowserServiceCompat;->b(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 9
    iget-object v0, p0, Lge;->j:Landroidx/media/MediaBrowserServiceCompat$h;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat$h;->a:Landroidx/media/MediaBrowserServiceCompat;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No root for client "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lge;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-class v1, Lge;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBServiceCompat"

    .line 12
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :try_start_0
    iget-object v0, p0, Lge;->e:Landroidx/media/MediaBrowserServiceCompat$i;

    check-cast v0, Landroidx/media/MediaBrowserServiceCompat$j;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 14
    invoke-virtual {v0, v2, v3}, Landroidx/media/MediaBrowserServiceCompat$j;->c(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Calling onConnectFailed() failed. Ignoring. pkg="

    .line 15
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lge;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
