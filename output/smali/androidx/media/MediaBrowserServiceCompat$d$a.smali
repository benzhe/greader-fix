.class public Landroidx/media/MediaBrowserServiceCompat$d$a;
.super Landroidx/media/MediaBrowserServiceCompat$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media/MediaBrowserServiceCompat$d;->a(Ljava/lang/String;Lre;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media/MediaBrowserServiceCompat$g<",
        "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lre;


# direct methods
.method public constructor <init>(Landroidx/media/MediaBrowserServiceCompat$d;Ljava/lang/Object;Lre;)V
    .locals 0

    .line 1
    iput-object p3, p0, Landroidx/media/MediaBrowserServiceCompat$d$a;->e:Lre;

    invoke-direct {p0, p2}, Landroidx/media/MediaBrowserServiceCompat$g;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$d$a;->e:Lre;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lre;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5
    iget-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$d$a;->e:Lre;

    invoke-virtual {p1, v0}, Lre;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
