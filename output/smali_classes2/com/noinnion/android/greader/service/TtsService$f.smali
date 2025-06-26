.class public final Lcom/noinnion/android/greader/service/TtsService$f;
.super Lop6$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/service/TtsService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic f:Lcom/noinnion/android/greader/service/TtsService;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/service/TtsService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/service/TtsService$f;->f:Lcom/noinnion/android/greader/service/TtsService;

    invoke-direct {p0}, Lop6$a;-><init>()V

    return-void
.end method


# virtual methods
.method public E2(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService$f;->f:Lcom/noinnion/android/greader/service/TtsService;

    .line 2
    iput p1, v0, Lcom/noinnion/android/greader/service/TtsService;->m:I

    .line 3
    iget-object v1, v0, Lcom/noinnion/android/greader/service/TtsService;->k:Ljava/util/LinkedList;

    .line 4
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "mPlayList[position]"

    invoke-static {p1, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkv6;

    invoke-virtual {v0, p1}, Lcom/noinnion/android/greader/service/TtsService;->c(Lkv6;)V

    return-void
.end method

.method public F2()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService$f;->f:Lcom/noinnion/android/greader/service/TtsService;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lcom/noinnion/android/greader/service/TtsService;->A:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    const/4 v2, 0x5

    .line 4
    iput v2, v0, Lcom/noinnion/android/greader/service/TtsService;->j:I

    .line 5
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    :cond_0
    return-void
.end method

.method public J()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService$f;->f:Lcom/noinnion/android/greader/service/TtsService;

    invoke-virtual {v0}, Lcom/noinnion/android/greader/service/TtsService;->h()V

    return-void
.end method

.method public J2()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService$f;->f:Lcom/noinnion/android/greader/service/TtsService;

    .line 2
    iget-object v1, v0, Lcom/noinnion/android/greader/service/TtsService;->k:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/noinnion/android/greader/service/TtsService;->m:I

    if-eqz v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, v0, Lcom/noinnion/android/greader/service/TtsService;->k:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/noinnion/android/greader/service/TtsService;->n()V

    .line 4
    iget v1, v0, Lcom/noinnion/android/greader/service/TtsService;->m:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/noinnion/android/greader/service/TtsService;->m:I

    .line 5
    iget-object v2, v0, Lcom/noinnion/android/greader/service/TtsService;->k:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "mPlayList[mCurrentPosition]"

    invoke-static {v1, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lkv6;

    invoke-virtual {v0, v1}, Lcom/noinnion/android/greader/service/TtsService;->c(Lkv6;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public K3()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService$f;->f:Lcom/noinnion/android/greader/service/TtsService;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lcom/noinnion/android/greader/service/TtsService;->A:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    const/4 v2, 0x6

    .line 4
    iput v2, v0, Lcom/noinnion/android/greader/service/TtsService;->j:I

    .line 5
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    :cond_0
    return-void
.end method

.method public N1(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService$f;->f:Lcom/noinnion/android/greader/service/TtsService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/noinnion/android/greader/service/TtsService;->l(II)V

    return-void
.end method

.method public V4(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "lang"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService$f;->f:Lcom/noinnion/android/greader/service/TtsService;

    invoke-virtual {v0}, Lcom/noinnion/android/greader/service/TtsService;->n()V

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService$f;->f:Lcom/noinnion/android/greader/service/TtsService;

    invoke-static {p1}, Ljx6;->a(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    .line 3
    iput-object p1, v0, Lcom/noinnion/android/greader/service/TtsService;->r:Ljava/util/Locale;

    .line 4
    sget-object p1, Lcom/noinnion/android/greader/service/TtsService;->A:Landroid/speech/tts/TextToSpeech;

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService$f;->f:Lcom/noinnion/android/greader/service/TtsService;

    .line 6
    iget-object v0, v0, Lcom/noinnion/android/greader/service/TtsService;->r:Ljava/util/Locale;

    .line 7
    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/service/TtsService$f;->f:Lcom/noinnion/android/greader/service/TtsService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/noinnion/android/greader/service/TtsService;->l(II)V

    return-void
.end method

.method public X1()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService$f;->f:Lcom/noinnion/android/greader/service/TtsService;

    invoke-virtual {v0}, Lcom/noinnion/android/greader/service/TtsService;->g()Z

    move-result v0

    return v0
.end method

.method public Z3()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService$f;->f:Lcom/noinnion/android/greader/service/TtsService;

    .line 2
    iget-boolean v1, v0, Lcom/noinnion/android/greader/service/TtsService;->e:Z

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.noinnion.android.greader.reader.action.INIT_LANGUAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v2, v0, Lcom/noinnion/android/greader/service/TtsService;->q:Ljava/util/ArrayList;

    const-string v3, "ttsAvailableVoices"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 5
    invoke-static {v0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v0

    invoke-virtual {v0, v1}, Lyd;->c(Landroid/content/Intent;)Z

    .line 6
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService$f;->f:Lcom/noinnion/android/greader/service/TtsService;

    invoke-virtual {v0}, Lcom/noinnion/android/greader/service/TtsService;->i()V

    .line 7
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService$f;->f:Lcom/noinnion/android/greader/service/TtsService;

    invoke-virtual {v0}, Lcom/noinnion/android/greader/service/TtsService;->j()V

    :cond_0
    return-void
.end method

.method public c3()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService$f;->f:Lcom/noinnion/android/greader/service/TtsService;

    .line 2
    iget-wide v0, v0, Lcom/noinnion/android/greader/service/TtsService;->l:J

    return-wide v0
.end method

.method public f2()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService$f;->f:Lcom/noinnion/android/greader/service/TtsService;

    .line 2
    sget-object v1, Lcom/noinnion/android/greader/service/TtsService;->A:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/noinnion/android/greader/service/TtsService;->m(Z)V

    return-void
.end method

.method public i3()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/noinnion/android/greader/service/TtsService$f;->f:Lcom/noinnion/android/greader/service/TtsService;

    .line 3
    iget-object v1, v1, Lcom/noinnion/android/greader/service/TtsService;->k:Ljava/util/LinkedList;

    .line 4
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkv6;

    .line 5
    iget-wide v2, v2, Lkv6;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public m(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService$f;->f:Lcom/noinnion/android/greader/service/TtsService;

    .line 2
    iget-object v0, v0, Lcom/noinnion/android/greader/service/TtsService;->k:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "mPlayList[from]"

    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkv6;

    .line 4
    iget-object v1, p0, Lcom/noinnion/android/greader/service/TtsService$f;->f:Lcom/noinnion/android/greader/service/TtsService;

    .line 5
    iget-object v1, v1, Lcom/noinnion/android/greader/service/TtsService;->k:Ljava/util/LinkedList;

    .line 6
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 7
    iget-object v1, p0, Lcom/noinnion/android/greader/service/TtsService$f;->f:Lcom/noinnion/android/greader/service/TtsService;

    .line 8
    iget-object v1, v1, Lcom/noinnion/android/greader/service/TtsService;->k:Ljava/util/LinkedList;

    .line 9
    invoke-virtual {v1, p2, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    if-ge p1, p2, :cond_1

    .line 10
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService$f;->f:Lcom/noinnion/android/greader/service/TtsService;

    .line 11
    iget v1, v0, Lcom/noinnion/android/greader/service/TtsService;->m:I

    if-ne v1, p1, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 12
    iput p2, v0, Lcom/noinnion/android/greader/service/TtsService;->m:I

    goto :goto_0

    :cond_0
    if-le v1, p1, :cond_3

    if-ge v1, p2, :cond_3

    add-int/lit8 v1, v1, -0x1

    .line 13
    iput v1, v0, Lcom/noinnion/android/greader/service/TtsService;->m:I

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_3

    .line 14
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService$f;->f:Lcom/noinnion/android/greader/service/TtsService;

    .line 15
    iget v1, v0, Lcom/noinnion/android/greader/service/TtsService;->m:I

    if-ne v1, p1, :cond_2

    .line 16
    iput p2, v0, Lcom/noinnion/android/greader/service/TtsService;->m:I

    goto :goto_0

    :cond_2
    if-le v1, p2, :cond_3

    if-ge v1, p1, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 17
    iput v1, v0, Lcom/noinnion/android/greader/service/TtsService;->m:I

    :cond_3
    :goto_0
    return-void
.end method

.method public p3()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService$f;->f:Lcom/noinnion/android/greader/service/TtsService;

    .line 2
    iget-boolean v1, v0, Lcom/noinnion/android/greader/service/TtsService;->e:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/noinnion/android/greader/service/TtsService;->A:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/noinnion/android/greader/service/TtsService;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService$f;->f:Lcom/noinnion/android/greader/service/TtsService;

    .line 5
    iget-object v0, v0, Lcom/noinnion/android/greader/service/TtsService;->k:Ljava/util/LinkedList;

    .line 6
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService$f;->f:Lcom/noinnion/android/greader/service/TtsService;

    .line 7
    iget v1, v0, Lcom/noinnion/android/greader/service/TtsService;->m:I

    .line 8
    iget-object v0, v0, Lcom/noinnion/android/greader/service/TtsService;->k:Ljava/util/LinkedList;

    .line 9
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-lt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public remove(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService$f;->f:Lcom/noinnion/android/greader/service/TtsService;

    .line 2
    iget-object v0, v0, Lcom/noinnion/android/greader/service/TtsService;->k:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService$f;->f:Lcom/noinnion/android/greader/service/TtsService;

    .line 5
    iget v1, v0, Lcom/noinnion/android/greader/service/TtsService;->m:I

    if-le v1, p1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 6
    iput v1, v0, Lcom/noinnion/android/greader/service/TtsService;->m:I

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService$f;->f:Lcom/noinnion/android/greader/service/TtsService;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/noinnion/android/greader/service/TtsService;->f:Z

    .line 3
    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
