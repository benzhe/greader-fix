.class public final Liv6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljv6$e;


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/tts/TtsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Liv6;->a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public J()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Liv6;->a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    .line 2
    iget-object v1, v0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->G:Lop6;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Lop6;->X1()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0, v1}, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->C(Z)V

    .line 5
    iget-object v0, p0, Liv6;->a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    .line 6
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->G:Lop6;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Lop6;->J()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Liv6;->a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    .line 2
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->G:Lop6;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lop6;->E2(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public m(II)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Liv6;->a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    .line 2
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->G:Lop6;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2}, Lop6;->m(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public remove(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Liv6;->a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    .line 2
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->G:Lop6;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lop6;->remove(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
