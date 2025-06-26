.class public final Lcom/noinnion/android/greader/service/TtsService$a;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/service/TtsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/service/TtsService;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/service/TtsService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/service/TtsService$a;->a:Lcom/noinnion/android/greader/service/TtsService;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 7

    const-string v0, "utteranceId"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService$a;->a:Lcom/noinnion/android/greader/service/TtsService;

    .line 2
    iget v1, v0, Lcom/noinnion/android/greader/service/TtsService;->j:I

    const/4 v2, 0x1

    .line 3
    iput v2, v0, Lcom/noinnion/android/greader/service/TtsService;->j:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_b

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    .line 4
    iput v4, v0, Lcom/noinnion/android/greader/service/TtsService;->h:I

    .line 5
    iput v4, v0, Lcom/noinnion/android/greader/service/TtsService;->i:I

    goto/16 :goto_2

    .line 6
    :cond_0
    new-instance v5, Lyn7;

    const-string v6, "-"

    invoke-direct {v5, v6}, Lyn7;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1, v4}, Lyn7;->b(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    new-array v5, v4, [Ljava/lang/String;

    .line 7
    invoke-interface {p1, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v5, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    check-cast p1, [Ljava/lang/String;

    .line 9
    aget-object v5, p1, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/noinnion/android/greader/service/TtsService;->h:I

    .line 10
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/noinnion/android/greader/service/TtsService;->i:I

    if-eq v1, v2, :cond_6

    const/4 v3, 0x5

    if-eq v1, v3, :cond_4

    const/4 v3, 0x6

    if-eq v1, v3, :cond_1

    goto/16 :goto_2

    :cond_1
    if-nez p1, :cond_3

    .line 11
    iget p1, v0, Lcom/noinnion/android/greader/service/TtsService;->h:I

    if-lez p1, :cond_2

    sub-int/2addr p1, v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput p1, v0, Lcom/noinnion/android/greader/service/TtsService;->h:I

    .line 12
    :cond_3
    iget p1, v0, Lcom/noinnion/android/greader/service/TtsService;->h:I

    invoke-virtual {v0, p1, v4}, Lcom/noinnion/android/greader/service/TtsService;->l(II)V

    goto :goto_2

    .line 13
    :cond_4
    iget p1, v0, Lcom/noinnion/android/greader/service/TtsService;->h:I

    iget-object v1, v0, Lcom/noinnion/android/greader/service/TtsService;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge p1, v1, :cond_5

    .line 14
    iget p1, v0, Lcom/noinnion/android/greader/service/TtsService;->h:I

    add-int/2addr p1, v2

    invoke-virtual {v0, p1, v4}, Lcom/noinnion/android/greader/service/TtsService;->l(II)V

    goto :goto_2

    .line 15
    :cond_5
    invoke-virtual {v0, v2}, Lcom/noinnion/android/greader/service/TtsService;->m(Z)V

    goto :goto_2

    .line 16
    :cond_6
    iget-object p1, v0, Lcom/noinnion/android/greader/service/TtsService;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_7

    .line 17
    iput v3, v0, Lcom/noinnion/android/greader/service/TtsService;->h:I

    .line 18
    iput v3, v0, Lcom/noinnion/android/greader/service/TtsService;->i:I

    goto :goto_1

    .line 19
    :cond_7
    iget p1, v0, Lcom/noinnion/android/greader/service/TtsService;->i:I

    iget-object v1, v0, Lcom/noinnion/android/greader/service/TtsService;->g:Ljava/util/ArrayList;

    iget v5, v0, Lcom/noinnion/android/greader/service/TtsService;->h:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_8

    .line 20
    iget p1, v0, Lcom/noinnion/android/greader/service/TtsService;->h:I

    add-int/2addr p1, v2

    iput p1, v0, Lcom/noinnion/android/greader/service/TtsService;->h:I

    .line 21
    iput v4, v0, Lcom/noinnion/android/greader/service/TtsService;->i:I

    .line 22
    iget-object v1, v0, Lcom/noinnion/android/greader/service/TtsService;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_9

    .line 23
    iput v3, v0, Lcom/noinnion/android/greader/service/TtsService;->h:I

    .line 24
    iput v3, v0, Lcom/noinnion/android/greader/service/TtsService;->i:I

    goto :goto_1

    .line 25
    :cond_8
    iget p1, v0, Lcom/noinnion/android/greader/service/TtsService;->i:I

    add-int/2addr p1, v2

    iput p1, v0, Lcom/noinnion/android/greader/service/TtsService;->i:I

    .line 26
    :cond_9
    :goto_1
    iget p1, v0, Lcom/noinnion/android/greader/service/TtsService;->h:I

    if-ne p1, v3, :cond_a

    iget p1, v0, Lcom/noinnion/android/greader/service/TtsService;->i:I

    if-ne p1, v3, :cond_a

    .line 27
    invoke-virtual {v0, v4}, Lcom/noinnion/android/greader/service/TtsService;->m(Z)V

    goto :goto_2

    .line 28
    :cond_a
    invoke-virtual {v0}, Lcom/noinnion/android/greader/service/TtsService;->j()V

    :cond_b
    :goto_2
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    const-string v0, "utteranceId"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 1

    const-string v0, "utteranceId"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStop(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "utteranceId"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/noinnion/android/greader/service/TtsService$a;->onDone(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
