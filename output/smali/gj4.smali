.class public final synthetic Lgj4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lfj4;

.field public final f:Lgp4$a;

.field public final g:Loh4;


# direct methods
.method public constructor <init>(Lfj4;Lgp4$a;Loh4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgj4;->e:Lfj4;

    iput-object p2, p0, Lgj4;->f:Lgp4$a;

    iput-object p3, p0, Lgj4;->g:Loh4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lgj4;->e:Lfj4;

    iget-object v1, p0, Lgj4;->f:Lgp4$a;

    iget-object v2, p0, Lgj4;->g:Loh4;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v3, v1, Lpk4$b;->f:Lpk4;

    check-cast v3, Lgp4;

    invoke-virtual {v3}, Lgp4;->q()Llq4;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Llq4;->q()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NA"

    .line 4
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ""

    .line 5
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string v3, "NA"

    .line 6
    :cond_1
    invoke-static {}, Llq4;->v()Llq4$a;

    move-result-object v4

    iget-object v5, v0, Lfj4;->a:Ljava/lang/String;

    .line 7
    iget-boolean v6, v4, Lpk4$b;->g:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 8
    invoke-virtual {v4}, Lpk4$b;->f()V

    .line 9
    iput-boolean v7, v4, Lpk4$b;->g:Z

    .line 10
    :cond_2
    iget-object v6, v4, Lpk4$b;->f:Lpk4;

    check-cast v6, Llq4;

    invoke-static {v6, v5}, Llq4;->u(Llq4;Ljava/lang/String;)V

    .line 11
    iget-object v5, v0, Lfj4;->b:Ljava/lang/String;

    .line 12
    iget-boolean v6, v4, Lpk4$b;->g:Z

    if-eqz v6, :cond_3

    .line 13
    invoke-virtual {v4}, Lpk4$b;->f()V

    .line 14
    iput-boolean v7, v4, Lpk4$b;->g:Z

    .line 15
    :cond_3
    iget-object v6, v4, Lpk4$b;->f:Lpk4;

    check-cast v6, Llq4;

    invoke-static {v6, v5}, Llq4;->x(Llq4;Ljava/lang/String;)V

    .line 16
    iget-boolean v5, v4, Lpk4$b;->g:Z

    if-eqz v5, :cond_4

    .line 17
    invoke-virtual {v4}, Lpk4$b;->f()V

    .line 18
    iput-boolean v7, v4, Lpk4$b;->g:Z

    .line 19
    :cond_4
    iget-object v5, v4, Lpk4$b;->f:Lpk4;

    check-cast v5, Llq4;

    invoke-static {v5, v3}, Llq4;->B(Llq4;Ljava/lang/String;)V

    .line 20
    const-class v3, Lfj4;

    monitor-enter v3

    .line 21
    :try_start_0
    sget-object v5, Lfj4;->h:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_5

    .line 22
    monitor-exit v3

    goto :goto_2

    .line 23
    :cond_5
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 24
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-lt v6, v8, :cond_6

    .line 25
    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    .line 26
    new-instance v6, Lx8;

    new-instance v8, La9;

    invoke-direct {v8, v5}, La9;-><init>(Landroid/os/LocaleList;)V

    invoke-direct {v6, v8}, Lx8;-><init>(Lz8;)V

    goto :goto_0

    :cond_6
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/util/Locale;

    .line 27
    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    aput-object v5, v6, v7

    invoke-static {v6}, Lx8;->a([Ljava/util/Locale;)Lx8;

    move-result-object v6

    .line 28
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    .line 29
    iget-object v8, v6, Lx8;->a:Lz8;

    invoke-interface {v8}, Lz8;->size()I

    move-result v8

    .line 30
    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v5, Lfj4;->h:Ljava/util/List;

    const/4 v5, 0x0

    .line 31
    :goto_1
    iget-object v8, v6, Lx8;->a:Lz8;

    invoke-interface {v8}, Lz8;->size()I

    move-result v8

    if-ge v5, v8, :cond_7

    .line 32
    iget-object v8, v6, Lx8;->a:Lz8;

    invoke-interface {v8, v5}, Lz8;->get(I)Ljava/util/Locale;

    move-result-object v8

    .line 33
    sget-object v9, Lfj4;->h:Ljava/util/List;

    .line 34
    sget-object v10, Ldh6;->a:Lo00;

    .line 35
    invoke-virtual {v8}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    .line 36
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 37
    :cond_7
    sget-object v5, Lfj4;->h:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 38
    :goto_2
    iget-boolean v3, v4, Lpk4$b;->g:Z

    if-eqz v3, :cond_8

    .line 39
    invoke-virtual {v4}, Lpk4$b;->f()V

    .line 40
    iput-boolean v7, v4, Lpk4$b;->g:Z

    .line 41
    :cond_8
    iget-object v3, v4, Lpk4$b;->f:Lpk4;

    check-cast v3, Llq4;

    invoke-static {v3, v5}, Llq4;->t(Llq4;Ljava/lang/Iterable;)V

    .line 42
    iget-boolean v3, v4, Lpk4$b;->g:Z

    if-eqz v3, :cond_9

    .line 43
    invoke-virtual {v4}, Lpk4$b;->f()V

    .line 44
    iput-boolean v7, v4, Lpk4$b;->g:Z

    .line 45
    :cond_9
    iget-object v3, v4, Lpk4$b;->f:Lpk4;

    check-cast v3, Llq4;

    invoke-static {v3}, Llq4;->w(Llq4;)V

    .line 46
    iget-object v3, v0, Lfj4;->e:Le45;

    invoke-virtual {v3}, Le45;->o()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 47
    iget-object v3, v0, Lfj4;->e:Le45;

    invoke-virtual {v3}, Le45;->l()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_3

    .line 48
    :cond_a
    sget-object v3, Lv00;->c:Lv00;

    const-string v5, "language-id"

    .line 49
    invoke-virtual {v3, v5}, Lv00;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    :goto_3
    iget-boolean v5, v4, Lpk4$b;->g:Z

    if-eqz v5, :cond_b

    .line 51
    invoke-virtual {v4}, Lpk4$b;->f()V

    .line 52
    iput-boolean v7, v4, Lpk4$b;->g:Z

    .line 53
    :cond_b
    iget-object v5, v4, Lpk4$b;->f:Lpk4;

    check-cast v5, Llq4;

    invoke-static {v5, v3}, Llq4;->z(Llq4;Ljava/lang/String;)V

    .line 54
    iget-object v3, v0, Lfj4;->f:Le45;

    invoke-virtual {v3}, Le45;->o()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 55
    iget-object v3, v0, Lfj4;->f:Le45;

    invoke-virtual {v3}, Le45;->l()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_4

    .line 56
    :cond_c
    iget-object v3, v0, Lfj4;->d:Lkh6;

    invoke-virtual {v3}, Lkh6;->a()Ljava/lang/String;

    move-result-object v3

    .line 57
    :goto_4
    iget-boolean v5, v4, Lpk4$b;->g:Z

    if-eqz v5, :cond_d

    .line 58
    invoke-virtual {v4}, Lpk4$b;->f()V

    .line 59
    iput-boolean v7, v4, Lpk4$b;->g:Z

    .line 60
    :cond_d
    iget-object v5, v4, Lpk4$b;->f:Lpk4;

    check-cast v5, Llq4;

    invoke-static {v5, v3}, Llq4;->C(Llq4;Ljava/lang/String;)V

    .line 61
    iget-boolean v3, v1, Lpk4$b;->g:Z

    if-eqz v3, :cond_e

    .line 62
    invoke-virtual {v1}, Lpk4$d;->f()V

    .line 63
    iput-boolean v7, v1, Lpk4$b;->g:Z

    .line 64
    :cond_e
    iget-object v3, v1, Lpk4$b;->f:Lpk4;

    check-cast v3, Lgp4;

    invoke-static {v3, v2}, Lgp4;->t(Lgp4;Loh4;)V

    .line 65
    invoke-virtual {v1, v4}, Lgp4$a;->l(Llq4$a;)Lgp4$a;

    .line 66
    iget-object v0, v0, Lfj4;->c:Lfj4$b;

    invoke-virtual {v1}, Lpk4$b;->j()Lam4;

    move-result-object v1

    check-cast v1, Lpk4;

    check-cast v1, Lgp4;

    invoke-interface {v0, v1}, Lfj4$b;->a(Lgp4;)V

    return-void

    :catchall_0
    move-exception v0

    .line 67
    monitor-exit v3

    throw v0
.end method
