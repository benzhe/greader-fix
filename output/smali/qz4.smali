.class public final Lqz4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Z

.field public final synthetic f:Landroid/net/Uri;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Lrz4;


# direct methods
.method public constructor <init>(Lrz4;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lqz4;->i:Lrz4;

    iput-boolean p2, p0, Lqz4;->e:Z

    iput-object p3, p0, Lqz4;->f:Landroid/net/Uri;

    iput-object p4, p0, Lqz4;->g:Ljava/lang/String;

    iput-object p5, p0, Lqz4;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    iget-object v2, v1, Lqz4;->i:Lrz4;

    iget-boolean v0, v1, Lqz4;->e:Z

    iget-object v3, v1, Lqz4;->f:Landroid/net/Uri;

    iget-object v4, v1, Lqz4;->g:Ljava/lang/String;

    iget-object v5, v1, Lqz4;->h:Ljava/lang/String;

    iget-object v6, v2, Lrz4;->e:Lsz4;

    .line 1
    invoke-virtual {v6}, Lyv4;->d()V

    :try_start_0
    iget-object v6, v2, Lrz4;->e:Lsz4;

    iget-object v6, v6, Lly4;->a:Lrx4;

    .line 2
    iget-object v6, v6, Lrx4;->g:Lcs4;

    .line 3
    sget-object v7, Lew4;->d0:Ldw4;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "Activity created with data \'referrer\' without required params"

    const-string v10, "_cis"

    const-string v11, "utm_medium"

    const-string v12, "utm_source"

    const-string v13, "utm_campaign"

    const-string v14, "gclid"

    if-nez v6, :cond_0

    :try_start_1
    iget-object v6, v2, Lrz4;->e:Lsz4;

    iget-object v6, v6, Lly4;->a:Lrx4;

    .line 4
    iget-object v6, v6, Lrx4;->g:Lcs4;

    .line 5
    sget-object v15, Lew4;->f0:Ldw4;

    .line 6
    invoke-virtual {v6, v8, v15}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v2, Lrz4;->e:Lsz4;

    iget-object v6, v6, Lly4;->a:Lrx4;

    .line 7
    iget-object v6, v6, Lrx4;->g:Lcs4;

    .line 8
    sget-object v15, Lew4;->e0:Ldw4;

    .line 9
    invoke-virtual {v6, v8, v15}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    iget-object v6, v2, Lrz4;->e:Lsz4;

    iget-object v6, v6, Lly4;->a:Lrx4;

    .line 10
    invoke-virtual {v6}, Lrx4;->t()Lp25;

    move-result-object v6

    .line 11
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    :cond_1
    :goto_0
    move-object v6, v8

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {v5, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 13
    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 14
    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 15
    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    iget-object v6, v6, Lly4;->a:Lrx4;

    .line 16
    invoke-virtual {v6}, Lrx4;->a()Lqw4;

    move-result-object v6

    .line 17
    iget-object v6, v6, Lqw4;->m:Low4;

    .line 18
    invoke-virtual {v6, v9}, Low4;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v15, "https://google.com/search?"

    .line 19
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_4

    invoke-virtual {v15, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    .line 20
    :cond_4
    new-instance v8, Ljava/lang/String;

    .line 21
    invoke-direct {v8, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v15, v8

    .line 22
    :goto_1
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 23
    invoke-virtual {v6, v8}, Lp25;->f0(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_5

    const-string v8, "referrer"

    .line 24
    invoke-virtual {v6, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_2
    const-string v8, "_cmp"

    if-eqz v0, :cond_7

    .line 25
    :try_start_2
    iget-object v0, v2, Lrz4;->e:Lsz4;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 26
    invoke-virtual {v0}, Lrx4;->t()Lp25;

    move-result-object v0

    .line 27
    invoke-virtual {v0, v3}, Lp25;->f0(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v3, "intent"

    .line 28
    invoke-virtual {v0, v10, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v2, Lrz4;->e:Lsz4;

    iget-object v3, v3, Lly4;->a:Lrx4;

    .line 29
    iget-object v3, v3, Lrx4;->g:Lcs4;

    const/4 v10, 0x0

    .line 30
    invoke-virtual {v3, v10, v7}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 31
    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz v6, :cond_6

    .line 32
    invoke-virtual {v6, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 33
    invoke-virtual {v6, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v7

    const-string v7, "_cer"

    const-string v10, "gclid=%s"

    invoke-static {v10, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v3, v2, Lrz4;->e:Lsz4;

    .line 35
    invoke-virtual {v3, v4, v8, v0}, Lsz4;->A(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v3, v2, Lrz4;->e:Lsz4;

    iget-object v3, v3, Lly4;->a:Lrx4;

    .line 36
    iget-object v3, v3, Lrx4;->g:Lcs4;

    .line 37
    sget-object v7, Lew4;->B0:Ldw4;

    const/4 v10, 0x0

    .line 38
    invoke-virtual {v3, v10, v7}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v2, Lrz4;->e:Lsz4;

    iget-object v3, v3, Lsz4;->n:Lv25;

    .line 39
    invoke-virtual {v3, v4, v0}, Lv25;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_3
    iget-object v3, v2, Lrz4;->e:Lsz4;

    iget-object v3, v3, Lly4;->a:Lrx4;

    .line 40
    iget-object v3, v3, Lrx4;->g:Lcs4;

    .line 41
    sget-object v7, Lew4;->f0:Ldw4;

    const/4 v10, 0x0

    .line 42
    invoke-virtual {v3, v10, v7}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v2, Lrz4;->e:Lsz4;

    iget-object v3, v3, Lly4;->a:Lrx4;

    .line 43
    iget-object v3, v3, Lrx4;->g:Lcs4;

    .line 44
    sget-object v7, Lew4;->e0:Ldw4;

    const/4 v10, 0x0

    .line 45
    invoke-virtual {v3, v10, v7}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v3

    if-nez v3, :cond_a

    if-eqz v6, :cond_a

    .line 46
    invoke-virtual {v6, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v0, :cond_9

    .line 47
    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    iget-object v0, v2, Lrz4;->e:Lsz4;

    const-string v3, "_lgclid"

    .line 48
    invoke-virtual {v6, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 49
    invoke-virtual {v0, v3, v7}, Lsz4;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    :cond_a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_5

    :cond_b
    iget-object v0, v2, Lrz4;->e:Lsz4;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 51
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 52
    iget-object v0, v0, Lqw4;->m:Low4;

    const-string v3, "Activity created with referrer"

    .line 53
    invoke-virtual {v0, v3, v5}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v2, Lrz4;->e:Lsz4;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 54
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 55
    sget-object v3, Lew4;->e0:Ldw4;

    const/4 v7, 0x0

    .line 56
    invoke-virtual {v0, v7, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v3, "_ldl"

    if-eqz v0, :cond_e

    if-eqz v6, :cond_c

    :try_start_3
    iget-object v0, v2, Lrz4;->e:Lsz4;

    .line 57
    invoke-virtual {v0, v4, v8, v6}, Lsz4;->A(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, v2, Lrz4;->e:Lsz4;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 58
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 59
    sget-object v5, Lew4;->B0:Ldw4;

    const/4 v7, 0x0

    .line 60
    invoke-virtual {v0, v7, v5}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v2, Lrz4;->e:Lsz4;

    iget-object v0, v0, Lsz4;->n:Lv25;

    .line 61
    invoke-virtual {v0, v4, v6}, Lv25;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4

    .line 62
    :cond_c
    iget-object v0, v2, Lrz4;->e:Lsz4;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 63
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 64
    iget-object v0, v0, Lqw4;->m:Low4;

    const-string v4, "Referrer does not contain valid parameters"

    .line 65
    invoke-virtual {v0, v4, v5}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    :cond_d
    :goto_4
    iget-object v0, v2, Lrz4;->e:Lsz4;

    const/4 v4, 0x0

    .line 67
    invoke-virtual {v0, v3, v4}, Lsz4;->F(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 68
    :cond_e
    invoke-virtual {v5, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 69
    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 70
    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 71
    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "utm_term"

    .line 72
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "utm_content"

    .line 73
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 74
    :cond_f
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v2, Lrz4;->e:Lsz4;

    .line 75
    invoke-virtual {v0, v3, v5}, Lsz4;->F(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_10
    :goto_5
    return-void

    :cond_11
    iget-object v0, v2, Lrz4;->e:Lsz4;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 76
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 77
    iget-object v0, v0, Lqw4;->m:Low4;

    .line 78
    invoke-virtual {v0, v9}, Low4;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 79
    iget-object v2, v2, Lrz4;->e:Lsz4;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 80
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 81
    iget-object v2, v2, Lqw4;->f:Low4;

    const-string v3, "Throwable caught in handleReferrerForOnActivityCreated"

    .line 82
    invoke-virtual {v2, v3, v0}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
