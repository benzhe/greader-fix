.class public Ltr6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public a:Landroid/media/AudioManager;

.field public b:Lxr6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lxr6;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "audio"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Ltr6;->a:Landroid/media/AudioManager;

    .line 3
    iput-object p2, p0, Ltr6;->b:Lxr6;

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Ltr6;->b:Lxr6;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x3

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, -0x2

    const/4 v3, 0x0

    if-eq p1, v1, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast v0, Lcom/noinnion/android/greader/ui/media/MusicService;

    .line 3
    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "gained audio focus."

    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 4
    sget-object p1, Lcom/noinnion/android/greader/ui/media/MusicService$c;->g:Lcom/noinnion/android/greader/ui/media/MusicService$c;

    iput-object p1, v0, Lcom/noinnion/android/greader/ui/media/MusicService;->j:Lcom/noinnion/android/greader/ui/media/MusicService$c;

    .line 5
    iget-object p1, v0, Lcom/noinnion/android/greader/ui/media/MusicService;->g:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    sget-object v1, Lcom/noinnion/android/greader/ui/media/MusicService$d;->h:Lcom/noinnion/android/greader/ui/media/MusicService$d;

    if-ne p1, v1, :cond_4

    .line 6
    invoke-virtual {v0}, Lcom/noinnion/android/greader/ui/media/MusicService;->a()V

    goto :goto_0

    .line 7
    :cond_2
    check-cast v0, Lcom/noinnion/android/greader/ui/media/MusicService;

    invoke-virtual {v0, v3}, Lcom/noinnion/android/greader/ui/media/MusicService;->d(Z)V

    goto :goto_0

    .line 8
    :cond_3
    check-cast v0, Lcom/noinnion/android/greader/ui/media/MusicService;

    invoke-virtual {v0, v2}, Lcom/noinnion/android/greader/ui/media/MusicService;->d(Z)V

    :cond_4
    :goto_0
    return-void
.end method
