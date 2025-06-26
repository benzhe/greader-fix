.class public final Lzw6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loc5$b;


# instance fields
.field public final synthetic a:Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lzw6;->a:Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Loc5$e;Loc5;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lzw6;->a:Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;

    .line 2
    iput-object p2, p1, Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;->l:Loc5;

    if-nez p3, :cond_1

    if-eqz p2, :cond_1

    .line 3
    iget-object p1, p1, Lcom/noinnion/android/reader/ui/dialog/YoutubePlayerActivity;->n:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 4
    move-object p3, p2

    check-cast p3, Ldd5;

    .line 5
    :try_start_0
    iget-object p3, p3, Ldd5;->b:Lvc5;

    const/4 v0, 0x0

    invoke-interface {p3, p1, v0}, Lvc5;->J4(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lad5;

    invoke-direct {p2, p1}, Lad5;-><init>(Landroid/os/RemoteException;)V

    throw p2

    :cond_0
    const-string p1, "videoId"

    .line 6
    invoke-static {p1}, Lim7;->k(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 7
    new-instance p1, Lzw6$a;

    invoke-direct {p1}, Lzw6$a;-><init>()V

    check-cast p2, Ldd5;

    .line 8
    :try_start_1
    iget-object p3, p2, Ldd5;->b:Lvc5;

    new-instance v0, Lcd5;

    invoke-direct {v0, p2, p1}, Lcd5;-><init>(Ldd5;Loc5$c;)V

    invoke-interface {p3, v0}, Lvc5;->d4(Lwc5;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    new-instance p2, Lad5;

    invoke-direct {p2, p1}, Lad5;-><init>(Landroid/os/RemoteException;)V

    throw p2

    :cond_2
    :goto_1
    return-void
.end method

.method public b(Loc5$e;Lnc5;)V
    .locals 0

    return-void
.end method
