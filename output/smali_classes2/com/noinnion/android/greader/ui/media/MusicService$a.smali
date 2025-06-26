.class public Lcom/noinnion/android/greader/ui/media/MusicService$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/media/MusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/media/MusicService;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/media/MusicService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicService$a;->a:Lcom/noinnion/android/greader/ui/media/MusicService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "com.noinnion.android.greader.reader.action.PLAY"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicService$a;->a:Lcom/noinnion/android/greader/ui/media/MusicService;

    .line 4
    iget-object p2, p1, Lcom/noinnion/android/greader/ui/media/MusicService;->g:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    sget-object v0, Lcom/noinnion/android/greader/ui/media/MusicService$d;->i:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/noinnion/android/greader/ui/media/MusicService$d;->f:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/media/MusicService;->f()V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/media/MusicService;->g()V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    const-string p2, "com.noinnion.android.greader.reader.action.REWIND"

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 8
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicService$a;->a:Lcom/noinnion/android/greader/ui/media/MusicService;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/media/MusicService;->h()V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    const-string p2, "com.noinnion.android.greader.reader.action.FORWARD"

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/media/MusicService$a;->a:Lcom/noinnion/android/greader/ui/media/MusicService;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/media/MusicService;->i()V

    :cond_4
    :goto_1
    return-void
.end method
