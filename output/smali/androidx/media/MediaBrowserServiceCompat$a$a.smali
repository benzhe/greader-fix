.class public Landroidx/media/MediaBrowserServiceCompat$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media/MediaBrowserServiceCompat$a;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroidx/media/MediaBrowserServiceCompat$a;


# direct methods
.method public constructor <init>(Landroidx/media/MediaBrowserServiceCompat$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$a$a;->e:Landroidx/media/MediaBrowserServiceCompat$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$a$a;->e:Landroidx/media/MediaBrowserServiceCompat$a;

    iget-object v1, v0, Landroidx/media/MediaBrowserServiceCompat$a;->d:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->f:Lf4;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat$a;->b:Landroidx/media/MediaBrowserServiceCompat$i;

    check-cast v0, Landroidx/media/MediaBrowserServiceCompat$j;

    invoke-virtual {v0}, Landroidx/media/MediaBrowserServiceCompat$j;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lm4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
