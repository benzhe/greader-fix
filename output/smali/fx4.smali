.class public final Lfx4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lu64;

.field public final synthetic f:Landroid/content/ServiceConnection;

.field public final synthetic g:Lgx4;


# direct methods
.method public constructor <init>(Lgx4;Lu64;Landroid/content/ServiceConnection;)V
    .locals 0

    iput-object p1, p0, Lfx4;->g:Lgx4;

    iput-object p2, p0, Lfx4;->e:Lu64;

    iput-object p3, p0, Lfx4;->f:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v0, p0, Lfx4;->g:Lgx4;

    iget-object v1, v0, Lgx4;->b:Lhx4;

    .line 1
    iget-object v0, v0, Lgx4;->a:Ljava/lang/String;

    .line 2
    iget-object v2, p0, Lfx4;->e:Lu64;

    iget-object v3, p0, Lfx4;->f:Landroid/content/ServiceConnection;

    iget-object v4, v1, Lhx4;->a:Lrx4;

    .line 3
    invoke-virtual {v4}, Lrx4;->m()Lox4;

    move-result-object v4

    invoke-virtual {v4}, Lox4;->d()V

    new-instance v4, Landroid/os/Bundle;

    .line 4
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "package_name"

    .line 5
    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 6
    :try_start_0
    invoke-interface {v2, v4}, Lu64;->P2(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lhx4;->a:Lrx4;

    .line 7
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 8
    iget-object v2, v2, Lqw4;->f:Low4;

    const-string v4, "Install Referrer Service returned a null response"

    .line 9
    invoke-virtual {v2, v4}, Low4;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 10
    iget-object v4, v1, Lhx4;->a:Lrx4;

    .line 11
    invoke-virtual {v4}, Lrx4;->a()Lqw4;

    move-result-object v4

    .line 12
    iget-object v4, v4, Lqw4;->f:Low4;

    .line 13
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Exception occurred while retrieving the Install Referrer"

    invoke-virtual {v4, v5, v2}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    move-object v2, v0

    .line 14
    :cond_0
    iget-object v4, v1, Lhx4;->a:Lrx4;

    .line 15
    invoke-virtual {v4}, Lrx4;->m()Lox4;

    move-result-object v4

    invoke-virtual {v4}, Lox4;->d()V

    if-nez v2, :cond_1

    goto/16 :goto_3

    :cond_1
    const-wide/16 v4, 0x0

    const-string v6, "install_begin_timestamp_seconds"

    .line 16
    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    cmp-long v10, v6, v4

    if-nez v10, :cond_2

    iget-object v0, v1, Lhx4;->a:Lrx4;

    .line 17
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 18
    iget-object v0, v0, Lqw4;->i:Low4;

    const-string v2, "Service response is missing Install Referrer install timestamp"

    .line 19
    invoke-virtual {v0, v2}, Low4;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    const-string v10, "install_referrer"

    .line 20
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 21
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    goto/16 :goto_2

    .line 22
    :cond_3
    iget-object v11, v1, Lhx4;->a:Lrx4;

    .line 23
    invoke-virtual {v11}, Lrx4;->a()Lqw4;

    move-result-object v11

    .line 24
    iget-object v11, v11, Lqw4;->n:Low4;

    const-string v12, "InstallReferrer API result"

    .line 25
    invoke-virtual {v11, v12, v10}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v11, v1, Lhx4;->a:Lrx4;

    .line 26
    invoke-virtual {v11}, Lrx4;->t()Lp25;

    move-result-object v11

    const-string v12, "?"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v12, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 27
    :cond_4
    new-instance v10, Ljava/lang/String;

    .line 28
    invoke-direct {v10, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v11, v10}, Lp25;->f0(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v10

    if-nez v10, :cond_5

    iget-object v0, v1, Lhx4;->a:Lrx4;

    .line 29
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 30
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v2, "No campaign params defined in Install Referrer result"

    .line 31
    invoke-virtual {v0, v2}, Low4;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    const-string v11, "medium"

    .line 32
    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7

    const-string v12, "(not set)"

    .line 33
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    const-string v12, "organic"

    .line 34
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "referrer_click_timestamp_seconds"

    .line 35
    invoke-virtual {v2, v11, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    mul-long v11, v11, v8

    cmp-long v2, v11, v4

    if-nez v2, :cond_6

    iget-object v0, v1, Lhx4;->a:Lrx4;

    .line 36
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 37
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v2, "Install Referrer is missing click timestamp for ad campaign"

    .line 38
    invoke-virtual {v0, v2}, Low4;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    const-string v2, "click_timestamp"

    .line 39
    invoke-virtual {v10, v2, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_7
    iget-object v2, v1, Lhx4;->a:Lrx4;

    .line 40
    invoke-virtual {v2}, Lrx4;->q()Lex4;

    move-result-object v2

    iget-object v2, v2, Lex4;->k:Lbx4;

    invoke-virtual {v2}, Lbx4;->a()J

    move-result-wide v4

    cmp-long v2, v6, v4

    if-nez v2, :cond_8

    iget-object v0, v1, Lhx4;->a:Lrx4;

    .line 41
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 42
    iget-object v0, v0, Lqw4;->n:Low4;

    const-string v2, "Install Referrer campaign has already been logged"

    .line 43
    invoke-virtual {v0, v2}, Low4;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 44
    :cond_8
    sget-object v2, Lfd4;->f:Lfd4;

    .line 45
    invoke-virtual {v2}, Lfd4;->b()Lgd4;

    move-result-object v2

    invoke-interface {v2}, Lgd4;->a()Z

    .line 46
    iget-object v2, v1, Lhx4;->a:Lrx4;

    .line 47
    iget-object v2, v2, Lrx4;->g:Lcs4;

    .line 48
    sget-object v4, Lew4;->s0:Ldw4;

    invoke-virtual {v2, v0, v4}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lhx4;->a:Lrx4;

    .line 49
    invoke-virtual {v0}, Lrx4;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_9
    iget-object v0, v1, Lhx4;->a:Lrx4;

    .line 50
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v0

    iget-object v0, v0, Lex4;->k:Lbx4;

    invoke-virtual {v0, v6, v7}, Lbx4;->b(J)V

    iget-object v0, v1, Lhx4;->a:Lrx4;

    .line 51
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 52
    iget-object v0, v0, Lqw4;->n:Low4;

    const-string v2, "referrer API"

    const-string v4, "Logging Install Referrer campaign from sdk with "

    .line 53
    invoke-virtual {v0, v4, v2}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "_cis"

    .line 54
    invoke-virtual {v10, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lhx4;->a:Lrx4;

    .line 55
    invoke-virtual {v0}, Lrx4;->s()Lsz4;

    move-result-object v0

    const-string v2, "auto"

    const-string v4, "_cmp"

    .line 56
    invoke-virtual {v0, v2, v4, v10}, Lsz4;->A(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    .line 57
    :cond_a
    :goto_2
    iget-object v0, v1, Lhx4;->a:Lrx4;

    .line 58
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 59
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v2, "No referrer defined in Install Referrer response"

    .line 60
    invoke-virtual {v0, v2}, Low4;->a(Ljava/lang/String;)V

    .line 61
    :cond_b
    :goto_3
    invoke-static {}, Lx10;->b()Lx10;

    move-result-object v0

    iget-object v1, v1, Lhx4;->a:Lrx4;

    .line 62
    iget-object v1, v1, Lrx4;->a:Landroid/content/Context;

    .line 63
    invoke-virtual {v0, v1, v3}, Lx10;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    return-void
.end method
