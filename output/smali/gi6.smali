.class public final synthetic Lgi6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;

.field public final f:Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;

.field public final g:Ljava/lang/String;

.field public final h:Z


# direct methods
.method public constructor <init>(Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgi6;->e:Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;

    iput-object p2, p0, Lgi6;->f:Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;

    iput-object p3, p0, Lgi6;->g:Ljava/lang/String;

    iput-boolean p4, p0, Lgi6;->h:Z

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 13

    iget-object v7, p0, Lgi6;->e:Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;

    iget-object v0, p0, Lgi6;->f:Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;

    iget-object v1, p0, Lgi6;->g:Ljava/lang/String;

    iget-boolean v8, p0, Lgi6;->h:Z

    .line 1
    iget-object v2, v7, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->e:Lai6;

    .line 2
    iget-object v2, v2, Lai6;->a:Ljava/lang/Float;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 4
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc8

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_0

    :cond_0
    const v2, 0x3c23d70a    # 0.01f

    .line 6
    :goto_0
    iget-wide v5, v0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->g:J

    const-wide/16 v11, 0x0

    cmp-long v3, v5, v11

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Lbi;->l(Z)V

    .line 7
    iget-wide v5, v0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->g:J

    sget-object v3, Lyh4;->a:Ljava/nio/charset/Charset;

    .line 8
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 9
    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->nativeIdentifyPossibleLanguages(J[BF)[Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;

    move-result-object v0

    .line 10
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 11
    invoke-static {}, Lxp4$d;->p()Lxp4$d$a;

    move-result-object v0

    .line 12
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;

    .line 13
    invoke-static {}, Lxp4$b;->p()Lxp4$b$a;

    move-result-object v3

    .line 14
    iget-object v5, v2, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->a:Ljava/lang/String;

    .line 15
    iget-boolean v6, v3, Lpk4$b;->g:Z

    if-eqz v6, :cond_2

    .line 16
    invoke-virtual {v3}, Lpk4$b;->f()V

    .line 17
    iput-boolean v4, v3, Lpk4$b;->g:Z

    .line 18
    :cond_2
    iget-object v6, v3, Lpk4$b;->f:Lpk4;

    check-cast v6, Lxp4$b;

    invoke-static {v6, v5}, Lxp4$b;->s(Lxp4$b;Ljava/lang/String;)V

    .line 19
    iget v2, v2, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->b:F

    .line 20
    iget-boolean v5, v3, Lpk4$b;->g:Z

    if-eqz v5, :cond_3

    .line 21
    invoke-virtual {v3}, Lpk4$b;->f()V

    .line 22
    iput-boolean v4, v3, Lpk4$b;->g:Z

    .line 23
    :cond_3
    iget-object v5, v3, Lpk4$b;->f:Lpk4;

    check-cast v5, Lxp4$b;

    invoke-static {v5, v2}, Lxp4$b;->q(Lxp4$b;F)V

    .line 24
    iget-boolean v2, v0, Lpk4$b;->g:Z

    if-eqz v2, :cond_4

    .line 25
    invoke-virtual {v0}, Lpk4$b;->f()V

    .line 26
    iput-boolean v4, v0, Lpk4$b;->g:Z

    .line 27
    :cond_4
    iget-object v2, v0, Lpk4$b;->f:Lpk4;

    check-cast v2, Lxp4$d;

    invoke-virtual {v3}, Lpk4$b;->j()Lam4;

    move-result-object v3

    check-cast v3, Lpk4;

    check-cast v3, Lxp4$b;

    invoke-static {v2, v3}, Lxp4$d;->q(Lxp4$d;Lxp4$b;)V

    goto :goto_2

    .line 28
    :cond_5
    invoke-virtual {v0}, Lpk4$b;->j()Lam4;

    move-result-object v0

    check-cast v0, Lpk4;

    move-object v4, v0

    check-cast v4, Lxp4$d;

    const/4 v5, 0x0

    .line 29
    sget-object v6, Lnh4;->f:Lnh4;

    move-object v0, v7

    move-wide v1, v9

    move v3, v8

    .line 30
    invoke-virtual/range {v0 .. v6}, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->k(JZLxp4$d;Lxp4$c;Lnh4;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v11

    :catch_0
    move-exception v0

    move-object v11, v0

    .line 31
    invoke-static {}, Lxp4$d;->s()Lxp4$d;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Lnh4;->G:Lnh4;

    move-object v0, v7

    move-wide v1, v9

    move v3, v8

    .line 32
    invoke-virtual/range {v0 .. v6}, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->k(JZLxp4$d;Lxp4$c;Lnh4;)V

    .line 33
    throw v11
.end method
