.class public Lzr6;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzr6$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lyr6;

.field public b:Lzr6$a;


# direct methods
.method public constructor <init>(Lyr6;Lzr6$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lzr6;->a:Lyr6;

    .line 3
    iput-object p2, p0, Lzr6;->b:Lzr6$a;

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lzr6;->a:Lyr6;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lzr6;->b:Lzr6$a;

    check-cast p1, Lcom/noinnion/android/greader/ui/media/MusicService;

    .line 3
    sget-object v0, Lcom/noinnion/android/greader/ui/media/MusicService$d;->f:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/media/MusicService;->g:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    .line 4
    iget-boolean v0, p1, Lcom/noinnion/android/greader/ui/media/MusicService;->h:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/media/MusicService;->m()V

    .line 6
    iget-object v0, p1, Lcom/noinnion/android/greader/ui/media/MusicService;->i:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/noinnion/android/greader/ui/media/MusicService;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
