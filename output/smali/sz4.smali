.class public final Lsz4;
.super Lww4;
.source "SourceFile"


# instance fields
.field public c:Lrz4;

.field public d:Ls25;

.field public final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lry4;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/lang/Object;

.field public i:Lds4;

.field public j:I

.field public final k:Ljava/util/concurrent/atomic/AtomicLong;

.field public l:J

.field public m:I

.field public final n:Lv25;

.field public o:Z

.field public final p:Lo25;


# direct methods
.method public constructor <init>(Lrx4;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lww4;-><init>(Lrx4;)V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lsz4;->e:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsz4;->h:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsz4;->o:Z

    new-instance v0, Lhz4;

    .line 3
    invoke-direct {v0, p0}, Lhz4;-><init>(Lsz4;)V

    iput-object v0, p0, Lsz4;->p:Lo25;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lsz4;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lds4;

    const/4 v1, 0x0

    .line 5
    invoke-direct {v0, v1, v1}, Lds4;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lsz4;->i:Lds4;

    const/16 v0, 0x64

    iput v0, p0, Lsz4;->j:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lsz4;->l:J

    iput v0, p0, Lsz4;->m:I

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lsz4;->k:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lv25;

    .line 7
    invoke-direct {v0, p1}, Lv25;-><init>(Lrx4;)V

    iput-object v0, p0, Lsz4;->n:Lv25;

    return-void
.end method

.method public static t(Lsz4;Lds4;IJZZ)V
    .locals 4

    invoke-virtual {p0}, Lyv4;->d()V

    invoke-virtual {p0}, Lww4;->f()V

    iget-wide v0, p0, Lsz4;->l:J

    cmp-long v2, p3, v0

    if-gtz v2, :cond_1

    iget v0, p0, Lsz4;->m:I

    invoke-static {v0, p2}, Lds4;->i(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lly4;->a:Lrx4;

    invoke-virtual {p0}, Lrx4;->a()Lqw4;

    move-result-object p0

    .line 1
    iget-object p0, p0, Lqw4;->l:Low4;

    const-string p2, "Dropped out-of-date consent setting, proposed settings"

    .line 2
    invoke-virtual {p0, p2, p1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lly4;->a:Lrx4;

    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v0

    invoke-static {}, Lpc4;->b()Z

    iget-object v1, v0, Lly4;->a:Lrx4;

    .line 3
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 4
    sget-object v2, Lew4;->E0:Ldw4;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lly4;->d()V

    invoke-virtual {v0, p2}, Lex4;->r(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lex4;->n()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lds4;->c()Ljava/lang/String;

    move-result-object p1

    const-string v1, "consent_settings"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "consent_source"

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-wide p3, p0, Lsz4;->l:J

    iput p2, p0, Lsz4;->m:I

    iget-object p1, p0, Lly4;->a:Lrx4;

    invoke-virtual {p1}, Lrx4;->z()Lh15;

    move-result-object p1

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lpc4;->b()Z

    iget-object p2, p1, Lly4;->a:Lrx4;

    .line 7
    iget-object p2, p2, Lrx4;->g:Lcs4;

    .line 8
    invoke-virtual {p2, v3, v2}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {p1}, Lyv4;->d()V

    .line 10
    invoke-virtual {p1}, Lww4;->f()V

    if-eqz p5, :cond_2

    .line 11
    invoke-virtual {p1}, Lh15;->r()Z

    iget-object p2, p1, Lly4;->a:Lrx4;

    .line 12
    invoke-virtual {p2}, Lrx4;->v()Lkw4;

    move-result-object p2

    .line 13
    invoke-virtual {p2}, Lkw4;->i()V

    .line 14
    :cond_2
    invoke-virtual {p1}, Lh15;->p()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, p2}, Lh15;->v(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object p2

    new-instance p3, Lv05;

    .line 16
    invoke-direct {p3, p1, p2}, Lv05;-><init>(Lh15;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-virtual {p1, p3}, Lh15;->t(Ljava/lang/Runnable;)V

    :cond_3
    if-eqz p6, :cond_4

    .line 17
    iget-object p0, p0, Lly4;->a:Lrx4;

    invoke-virtual {p0}, Lrx4;->z()Lh15;

    move-result-object p0

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p0, p1}, Lh15;->z(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_4
    return-void

    :cond_5
    iget-object p0, p0, Lly4;->a:Lrx4;

    invoke-virtual {p0}, Lrx4;->a()Lqw4;

    move-result-object p0

    .line 18
    iget-object p0, p0, Lqw4;->l:Low4;

    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Lower precedence consent source ignored, proposed source"

    invoke-virtual {p0, p2, p1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 1
    iget-object v0, v0, Lrx4;->n:Lb20;

    .line 2
    invoke-interface {v0}, Lb20;->a()J

    move-result-wide v7

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v8}, Lsz4;->D(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method

.method public final B(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lyv4;->d()V

    move-object v10, p0

    iget-object v0, v10, Lsz4;->d:Ls25;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p2}, Lp25;->F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    const/4 v7, 0x1

    :goto_1
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    .line 3
    invoke-virtual/range {v0 .. v9}, Lsz4;->C(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method public final C(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 24

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    move-object/from16 v12, p5

    const-string v0, "com.google.android.gms.tagmanager.TagManagerService"

    .line 1
    invoke-static/range {p1 .. p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    const-string v13, "null reference"

    .line 2
    invoke-static {v12, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lyv4;->d()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lww4;->f()V

    iget-object v1, v7, Lly4;->a:Lrx4;

    .line 5
    invoke-virtual {v1}, Lrx4;->g()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, v7, Lly4;->a:Lrx4;

    .line 6
    invoke-virtual {v1}, Lrx4;->b()Liw4;

    move-result-object v1

    .line 7
    iget-object v1, v1, Liw4;->i:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, v7, Lly4;->a:Lrx4;

    .line 10
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 11
    iget-object v0, v0, Lqw4;->m:Low4;

    const-string v1, "Dropping non-safelisted event. event name, origin"

    .line 12
    invoke-virtual {v0, v1, v9, v8}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 13
    :cond_1
    :goto_0
    iget-boolean v1, v7, Lsz4;->f:Z

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_3

    iput-boolean v15, v7, Lsz4;->f:Z

    :try_start_0
    iget-object v1, v7, Lly4;->a:Lrx4;

    .line 14
    iget-boolean v2, v1, Lrx4;->e:Z

    if-nez v2, :cond_2

    .line 15
    iget-object v1, v1, Lrx4;->a:Landroid/content/Context;

    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v15, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 17
    :cond_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    new-array v1, v15, [Ljava/lang/Class;

    .line 18
    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v5

    const-string v2, "initialize"

    .line 19
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v15, [Ljava/lang/Object;

    iget-object v2, v7, Lly4;->a:Lrx4;

    .line 20
    iget-object v2, v2, Lrx4;->a:Landroid/content/Context;

    aput-object v2, v1, v5

    .line 21
    invoke-virtual {v0, v14, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 22
    :try_start_2
    iget-object v1, v7, Lly4;->a:Lrx4;

    .line 23
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 24
    iget-object v1, v1, Lqw4;->i:Low4;

    const-string v2, "Failed to invoke Tag Manager\'s initialize() method"

    .line 25
    invoke-virtual {v1, v2, v0}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 26
    :catch_1
    iget-object v0, v7, Lly4;->a:Lrx4;

    .line 27
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 28
    iget-object v0, v0, Lqw4;->l:Low4;

    const-string v1, "Tag Manager is not found and thus will not be used"

    .line 29
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    .line 30
    :cond_3
    :goto_2
    iget-object v0, v7, Lly4;->a:Lrx4;

    .line 31
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 32
    sget-object v1, Lew4;->d0:Ldw4;

    invoke-virtual {v0, v14, v1}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "_cmp"

    .line 33
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "gclid"

    .line 34
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v7, Lly4;->a:Lrx4;

    .line 35
    iget-object v1, v1, Lrx4;->f:Lc35;

    .line 36
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v7, Lly4;->a:Lrx4;

    .line 37
    iget-object v0, v0, Lrx4;->n:Lb20;

    .line 38
    invoke-interface {v0}, Lb20;->a()J

    move-result-wide v16

    const-string v2, "auto"

    const-string v3, "_lgclid"

    move-object/from16 v1, p0

    const/4 v15, 0x0

    move-wide/from16 v5, v16

    .line 39
    invoke-virtual/range {v1 .. v6}, Lsz4;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    .line 40
    :goto_3
    invoke-static {}, Lde4;->b()Z

    iget-object v0, v7, Lly4;->a:Lrx4;

    .line 41
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 42
    sget-object v1, Lew4;->y0:Ldw4;

    .line 43
    invoke-virtual {v0, v14, v1}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v7, Lly4;->a:Lrx4;

    .line 44
    iget-object v0, v0, Lrx4;->f:Lc35;

    if-eqz p6, :cond_5

    .line 45
    sget-object v0, Lp25;->h:[Ljava/lang/String;

    aget-object v0, v0, v15

    .line 46
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 47
    iget-object v0, v7, Lly4;->a:Lrx4;

    .line 48
    invoke-virtual {v0}, Lrx4;->t()Lp25;

    move-result-object v0

    iget-object v1, v7, Lly4;->a:Lrx4;

    .line 49
    invoke-virtual {v1}, Lrx4;->q()Lex4;

    move-result-object v1

    .line 50
    iget-object v1, v1, Lex4;->B:Lax4;

    invoke-virtual {v1}, Lax4;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lp25;->v(Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_5
    const/16 v0, 0x28

    if-eqz p8, :cond_b

    iget-object v1, v7, Lly4;->a:Lrx4;

    .line 51
    iget-object v1, v1, Lrx4;->f:Lc35;

    const-string v1, "_iap"

    .line 52
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, v7, Lly4;->a:Lrx4;

    .line 53
    invoke-virtual {v1}, Lrx4;->t()Lp25;

    move-result-object v1

    .line 54
    invoke-static {}, Ltb4;->b()Z

    iget-object v2, v7, Lly4;->a:Lrx4;

    .line 55
    iget-object v2, v2, Lrx4;->g:Lcs4;

    .line 56
    sget-object v3, Lew4;->I0:Ldw4;

    .line 57
    invoke-virtual {v2, v14, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v2

    const-string v3, "event"

    .line 58
    invoke-virtual {v1, v3, v9}, Lp25;->g0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x2

    if-nez v4, :cond_6

    goto :goto_5

    :cond_6
    if-eqz v2, :cond_7

    .line 59
    sget-object v2, Loy4;->a:[Ljava/lang/String;

    sget-object v4, Loy4;->b:[Ljava/lang/String;

    .line 60
    invoke-virtual {v1, v3, v2, v4, v9}, Lp25;->i0(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_4

    .line 61
    :cond_7
    sget-object v2, Loy4;->a:[Ljava/lang/String;

    .line 62
    invoke-virtual {v1, v3, v2, v14, v9}, Lp25;->i0(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    :goto_4
    const/16 v5, 0xd

    goto :goto_5

    :cond_8
    iget-object v2, v1, Lly4;->a:Lrx4;

    .line 63
    iget-object v2, v2, Lrx4;->g:Lcs4;

    .line 64
    invoke-virtual {v1, v3, v0, v9}, Lp25;->j0(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_b

    iget-object v1, v7, Lly4;->a:Lrx4;

    .line 65
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 66
    iget-object v1, v1, Lqw4;->h:Low4;

    .line 67
    iget-object v2, v7, Lly4;->a:Lrx4;

    .line 68
    invoke-virtual {v2}, Lrx4;->u()Llw4;

    move-result-object v2

    .line 69
    invoke-virtual {v2, v9}, Llw4;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Invalid public event name. Event will not be logged (FE)"

    .line 70
    invoke-virtual {v1, v3, v2}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v7, Lly4;->a:Lrx4;

    .line 71
    invoke-virtual {v1}, Lrx4;->t()Lp25;

    move-result-object v1

    iget-object v2, v7, Lly4;->a:Lrx4;

    .line 72
    iget-object v2, v2, Lrx4;->g:Lcs4;

    const/4 v3, 0x1

    .line 73
    invoke-virtual {v1, v9, v0, v3}, Lp25;->q(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v9, :cond_a

    .line 74
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    move v15, v1

    :cond_a
    iget-object v1, v7, Lly4;->a:Lrx4;

    .line 75
    invoke-virtual {v1}, Lrx4;->t()Lp25;

    move-result-object v1

    iget-object v2, v7, Lsz4;->p:Lo25;

    const/4 v3, 0x0

    const-string v4, "_ev"

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move/from16 p4, v5

    move-object/from16 p5, v4

    move-object/from16 p6, v0

    move/from16 p7, v15

    .line 76
    invoke-virtual/range {p1 .. p7}, Lp25;->A(Lo25;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 77
    :cond_b
    iget-object v1, v7, Lly4;->a:Lrx4;

    .line 78
    iget-object v2, v1, Lrx4;->f:Lc35;

    .line 79
    invoke-virtual {v1}, Lrx4;->y()Lh05;

    move-result-object v1

    .line 80
    invoke-virtual {v1, v15}, Lh05;->p(Z)La05;

    move-result-object v1

    const-string v6, "_sc"

    if-eqz v1, :cond_c

    .line 81
    invoke-virtual {v12, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x1

    iput-boolean v2, v1, La05;->d:Z

    :cond_c
    if-eqz p6, :cond_d

    if-eqz p8, :cond_d

    const/4 v5, 0x1

    goto :goto_6

    :cond_d
    const/4 v5, 0x0

    .line 82
    :goto_6
    invoke-static {v1, v12, v5}, Lh05;->r(La05;Landroid/os/Bundle;Z)V

    const-string v1, "am"

    .line 83
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 84
    invoke-static/range {p2 .. p2}, Lp25;->F(Ljava/lang/String;)Z

    move-result v2

    if-eqz p6, :cond_f

    iget-object v3, v7, Lsz4;->d:Ls25;

    if-eqz v3, :cond_f

    if-nez v2, :cond_f

    if-eqz v1, :cond_e

    const/4 v13, 0x1

    goto :goto_8

    .line 85
    :cond_e
    iget-object v0, v7, Lly4;->a:Lrx4;

    .line 86
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 87
    iget-object v0, v0, Lqw4;->m:Low4;

    .line 88
    iget-object v1, v7, Lly4;->a:Lrx4;

    .line 89
    invoke-virtual {v1}, Lrx4;->u()Llw4;

    move-result-object v1

    .line 90
    invoke-virtual {v1, v9}, Llw4;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lly4;->a:Lrx4;

    .line 91
    invoke-virtual {v2}, Lrx4;->u()Llw4;

    move-result-object v2

    .line 92
    invoke-virtual {v2, v12}, Llw4;->s(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Passing event to registered event handler (FE)"

    .line 93
    invoke-virtual {v0, v3, v1, v2}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v7, Lsz4;->d:Ls25;

    .line 94
    invoke-static {v0, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    iget-object v13, v7, Lsz4;->d:Ls25;

    .line 96
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    iget-object v1, v13, Ls25;->a:Leg4;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-wide/from16 v5, p3

    .line 97
    invoke-interface/range {v1 .. v6}, Leg4;->o1(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    iget-object v1, v13, Ls25;->b:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lrx4;

    .line 98
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 99
    iget-object v1, v1, Lqw4;->i:Low4;

    const-string v2, "Event interceptor threw exception"

    .line 100
    invoke-virtual {v1, v2, v0}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_7
    return-void

    :cond_f
    move v13, v1

    .line 101
    :goto_8
    iget-object v1, v7, Lly4;->a:Lrx4;

    .line 102
    invoke-virtual {v1}, Lrx4;->i()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, v7, Lly4;->a:Lrx4;

    .line 103
    invoke-virtual {v1}, Lrx4;->t()Lp25;

    move-result-object v1

    .line 104
    invoke-static {}, Ltb4;->b()Z

    iget-object v2, v7, Lly4;->a:Lrx4;

    .line 105
    iget-object v2, v2, Lrx4;->g:Lcs4;

    .line 106
    sget-object v3, Lew4;->I0:Ldw4;

    .line 107
    invoke-virtual {v2, v14, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v2

    .line 108
    invoke-virtual {v1, v9, v2}, Lp25;->k0(Ljava/lang/String;Z)I

    move-result v1

    if-eqz v1, :cond_11

    iget-object v2, v7, Lly4;->a:Lrx4;

    .line 109
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 110
    iget-object v2, v2, Lqw4;->h:Low4;

    .line 111
    iget-object v3, v7, Lly4;->a:Lrx4;

    .line 112
    invoke-virtual {v3}, Lrx4;->u()Llw4;

    move-result-object v3

    .line 113
    invoke-virtual {v3, v9}, Llw4;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invalid event name. Event will not be logged (FE)"

    .line 114
    invoke-virtual {v2, v4, v3}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v7, Lly4;->a:Lrx4;

    .line 115
    invoke-virtual {v2}, Lrx4;->t()Lp25;

    move-result-object v2

    iget-object v3, v7, Lly4;->a:Lrx4;

    .line 116
    iget-object v3, v3, Lrx4;->g:Lcs4;

    const/4 v4, 0x1

    .line 117
    invoke-virtual {v2, v9, v0, v4}, Lp25;->q(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v9, :cond_10

    .line 118
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    move v15, v5

    :cond_10
    iget-object v2, v7, Lly4;->a:Lrx4;

    .line 119
    invoke-virtual {v2}, Lrx4;->t()Lp25;

    move-result-object v2

    iget-object v3, v7, Lsz4;->p:Lo25;

    const-string v4, "_ev"

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, p9

    move/from16 p4, v1

    move-object/from16 p5, v4

    move-object/from16 p6, v0

    move/from16 p7, v15

    .line 120
    invoke-virtual/range {p1 .. p7}, Lp25;->A(Lo25;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_11
    const-string v0, "_o"

    const-string v5, "_sn"

    const-string v4, "_si"

    filled-new-array {v0, v5, v6, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    .line 122
    iget-object v1, v7, Lly4;->a:Lrx4;

    .line 123
    invoke-virtual {v1}, Lrx4;->t()Lp25;

    move-result-object v1

    move-object/from16 v2, p9

    move-object/from16 v3, p2

    move-object v14, v4

    move-object/from16 v4, p5

    move-object v12, v5

    move-object/from16 v5, v16

    move-object v15, v6

    move/from16 v6, p8

    .line 124
    invoke-virtual/range {v1 .. v6}, Lp25;->t(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v5

    .line 125
    invoke-virtual {v5, v15}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 126
    invoke-virtual {v5, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 127
    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    invoke-virtual {v5, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    invoke-virtual {v5, v14}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 130
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    :cond_12
    iget-object v1, v7, Lly4;->a:Lrx4;

    .line 131
    iget-object v2, v1, Lrx4;->f:Lc35;

    .line 132
    invoke-virtual {v1}, Lrx4;->y()Lh05;

    move-result-object v1

    const/4 v2, 0x0

    .line 133
    invoke-virtual {v1, v2}, Lh05;->p(Z)La05;

    move-result-object v1

    const-wide/16 v14, 0x0

    const-string v12, "_ae"

    if-eqz v1, :cond_13

    .line 134
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v7, Lly4;->a:Lrx4;

    .line 135
    invoke-virtual {v1}, Lrx4;->r()Lx15;

    move-result-object v1

    iget-object v1, v1, Lx15;->e:Lu15;

    .line 136
    invoke-virtual {v1}, Lu15;->b()J

    move-result-wide v1

    cmp-long v3, v1, v14

    if-lez v3, :cond_13

    iget-object v3, v7, Lly4;->a:Lrx4;

    .line 137
    invoke-virtual {v3}, Lrx4;->t()Lp25;

    move-result-object v3

    .line 138
    invoke-virtual {v3, v5, v1, v2}, Lp25;->O(Landroid/os/Bundle;J)V

    .line 139
    :cond_13
    invoke-static {}, Lyc4;->b()Z

    iget-object v1, v7, Lly4;->a:Lrx4;

    .line 140
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 141
    sget-object v2, Lew4;->o0:Ldw4;

    const/4 v6, 0x0

    .line 142
    invoke-virtual {v1, v6, v2}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "auto"

    .line 143
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "_ffr"

    if-nez v1, :cond_17

    const-string v1, "_ssr"

    .line 144
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, v7, Lly4;->a:Lrx4;

    .line 145
    invoke-virtual {v1}, Lrx4;->t()Lp25;

    move-result-object v1

    .line 146
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-static {v2}, Lg20;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    move-object v2, v6

    goto :goto_9

    :cond_14
    if-eqz v2, :cond_15

    .line 148
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 149
    :cond_15
    :goto_9
    iget-object v3, v1, Lly4;->a:Lrx4;

    .line 150
    invoke-virtual {v3}, Lrx4;->q()Lex4;

    move-result-object v3

    .line 151
    iget-object v3, v3, Lex4;->y:Ldx4;

    invoke-virtual {v3}, Ldx4;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lp25;->G(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 152
    invoke-virtual {v1}, Lrx4;->q()Lex4;

    move-result-object v1

    .line 153
    iget-object v1, v1, Lex4;->y:Ldx4;

    invoke-virtual {v1, v2}, Ldx4;->b(Ljava/lang/String;)V

    goto :goto_a

    .line 154
    :cond_16
    iget-object v0, v1, Lly4;->a:Lrx4;

    .line 155
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 156
    iget-object v0, v0, Lqw4;->m:Low4;

    const-string v1, "Not logging duplicate session_start_with_rollout event"

    .line 157
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    return-void

    .line 158
    :cond_17
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v7, Lly4;->a:Lrx4;

    .line 159
    invoke-virtual {v1}, Lrx4;->t()Lp25;

    move-result-object v1

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 160
    invoke-virtual {v1}, Lrx4;->q()Lex4;

    move-result-object v1

    .line 161
    iget-object v1, v1, Lex4;->y:Ldx4;

    invoke-virtual {v1}, Ldx4;->a()Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 163
    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_18
    :goto_a
    new-instance v4, Ljava/util/ArrayList;

    .line 165
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 166
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lly4;->a:Lrx4;

    .line 167
    invoke-virtual {v1}, Lrx4;->t()Lp25;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Lp25;->d0()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    iget-object v1, v7, Lly4;->a:Lrx4;

    .line 169
    invoke-virtual {v1}, Lrx4;->q()Lex4;

    move-result-object v1

    .line 170
    iget-object v1, v1, Lex4;->t:Lbx4;

    invoke-virtual {v1}, Lbx4;->a()J

    move-result-wide v1

    cmp-long v3, v1, v14

    if-lez v3, :cond_19

    iget-object v1, v7, Lly4;->a:Lrx4;

    .line 171
    invoke-virtual {v1}, Lrx4;->q()Lex4;

    move-result-object v1

    .line 172
    invoke-virtual {v1, v10, v11}, Lex4;->u(J)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, v7, Lly4;->a:Lrx4;

    .line 173
    invoke-virtual {v1}, Lrx4;->q()Lex4;

    move-result-object v1

    .line 174
    iget-object v1, v1, Lex4;->v:Lzw4;

    invoke-virtual {v1}, Lzw4;->a()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, v7, Lly4;->a:Lrx4;

    .line 175
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 176
    iget-object v1, v1, Lqw4;->n:Low4;

    const-string v2, "Current session is expired, remove the session number, ID, and engagement time"

    .line 177
    invoke-virtual {v1, v2}, Low4;->a(Ljava/lang/String;)V

    const/16 v17, 0x0

    iget-object v1, v7, Lly4;->a:Lrx4;

    .line 178
    iget-object v1, v1, Lrx4;->n:Lb20;

    .line 179
    invoke-interface {v1}, Lb20;->a()J

    move-result-wide v18

    const-string v2, "auto"

    const-string v3, "_sid"

    move-object/from16 v1, p0

    move-object/from16 p5, v4

    move-object/from16 v4, v17

    move-object v14, v5

    move-object/from16 v17, v6

    move-wide/from16 v5, v18

    .line 180
    invoke-virtual/range {v1 .. v6}, Lsz4;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    const/4 v4, 0x0

    iget-object v1, v7, Lly4;->a:Lrx4;

    .line 181
    iget-object v1, v1, Lrx4;->n:Lb20;

    .line 182
    invoke-interface {v1}, Lb20;->a()J

    move-result-wide v5

    const-string v2, "auto"

    const-string v3, "_sno"

    move-object/from16 v1, p0

    .line 183
    invoke-virtual/range {v1 .. v6}, Lsz4;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    iget-object v1, v7, Lly4;->a:Lrx4;

    .line 184
    iget-object v1, v1, Lrx4;->n:Lb20;

    .line 185
    invoke-interface {v1}, Lb20;->a()J

    move-result-wide v5

    const-string v2, "auto"

    const-string v3, "_se"

    move-object/from16 v1, p0

    .line 186
    invoke-virtual/range {v1 .. v6}, Lsz4;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_b

    :cond_19
    move-object/from16 p5, v4

    move-object v14, v5

    move-object/from16 v17, v6

    :goto_b
    const-string v1, "extend_session"

    const-wide/16 v2, 0x0

    .line 187
    invoke-virtual {v14, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1a

    iget-object v1, v7, Lly4;->a:Lrx4;

    .line 188
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 189
    iget-object v1, v1, Lqw4;->n:Low4;

    const-string v2, "EXTEND_SESSION param attached: initiate a new session or extend the current active session"

    .line 190
    invoke-virtual {v1, v2}, Low4;->a(Ljava/lang/String;)V

    iget-object v1, v7, Lly4;->a:Lrx4;

    .line 191
    invoke-virtual {v1}, Lrx4;->r()Lx15;

    move-result-object v1

    iget-object v1, v1, Lx15;->d:Lw15;

    const/4 v2, 0x1

    .line 192
    invoke-virtual {v1, v10, v11, v2}, Lw15;->b(JZ)V

    :cond_1a
    new-instance v1, Ljava/util/ArrayList;

    .line 193
    invoke-virtual {v14}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 194
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v2, :cond_1f

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 195
    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1e

    iget-object v4, v7, Lly4;->a:Lrx4;

    .line 196
    invoke-virtual {v4}, Lrx4;->t()Lp25;

    .line 197
    invoke-virtual {v14, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 198
    instance-of v6, v4, Landroid/os/Bundle;

    if-eqz v6, :cond_1b

    const/4 v6, 0x1

    new-array v15, v6, [Landroid/os/Bundle;

    .line 199
    check-cast v4, Landroid/os/Bundle;

    const/4 v6, 0x0

    aput-object v4, v15, v6

    move-object v6, v15

    goto :goto_d

    .line 200
    :cond_1b
    instance-of v6, v4, [Landroid/os/Parcelable;

    if-eqz v6, :cond_1c

    .line 201
    check-cast v4, [Landroid/os/Parcelable;

    array-length v6, v4

    const-class v15, [Landroid/os/Bundle;

    .line 202
    invoke-static {v4, v6, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, [Landroid/os/Bundle;

    goto :goto_d

    .line 203
    :cond_1c
    instance-of v6, v4, Ljava/util/ArrayList;

    if-eqz v6, :cond_1d

    .line 204
    check-cast v4, Ljava/util/ArrayList;

    .line 205
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/os/Bundle;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, [Landroid/os/Bundle;

    goto :goto_d

    :cond_1d
    move-object/from16 v6, v17

    :goto_d
    if-eqz v6, :cond_1e

    .line 206
    invoke-virtual {v14, v3, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_1e
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_1f
    const/4 v14, 0x0

    .line 207
    :goto_e
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v14, v1, :cond_24

    move-object/from16 v15, p5

    .line 208
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v14, :cond_20

    const-string v2, "_ep"

    goto :goto_f

    :cond_20
    move-object v2, v9

    .line 209
    :goto_f
    invoke-virtual {v1, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_21

    iget-object v3, v7, Lly4;->a:Lrx4;

    .line 210
    invoke-virtual {v3}, Lrx4;->t()Lp25;

    move-result-object v3

    .line 211
    invoke-virtual {v3, v1}, Lp25;->I(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    :cond_21
    move-object v5, v1

    .line 212
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzas;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v3, v5}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    move-object v1, v6

    move-object/from16 v4, p1

    move-object/from16 p6, v0

    move-object v0, v5

    move-object v8, v6

    move-wide/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    iget-object v1, v7, Lly4;->a:Lrx4;

    .line 213
    invoke-virtual {v1}, Lrx4;->z()Lh15;

    move-result-object v1

    .line 214
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-virtual {v1}, Lyv4;->d()V

    .line 216
    invoke-virtual {v1}, Lww4;->f()V

    .line 217
    invoke-virtual {v1}, Lh15;->r()Z

    iget-object v2, v1, Lly4;->a:Lrx4;

    .line 218
    invoke-virtual {v2}, Lrx4;->v()Lkw4;

    move-result-object v2

    .line 219
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const/4 v4, 0x0

    .line 221
    invoke-static {v8, v3, v4}, Los4;->a(Lcom/google/android/gms/measurement/internal/zzas;Landroid/os/Parcel;I)V

    .line 222
    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    .line 223
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 224
    array-length v3, v4

    const/high16 v5, 0x20000

    if-le v3, v5, :cond_22

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 225
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 226
    iget-object v2, v2, Lqw4;->g:Low4;

    const-string v3, "Event is too long for local database. Sending event directly to service"

    .line 227
    invoke-virtual {v2, v3}, Low4;->a(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/16 v21, 0x0

    goto :goto_10

    :cond_22
    const/4 v3, 0x0

    .line 228
    invoke-virtual {v2, v3, v4}, Lkw4;->n(I[B)Z

    move-result v5

    move/from16 v21, v5

    const/4 v2, 0x1

    .line 229
    :goto_10
    invoke-virtual {v1, v2}, Lh15;->v(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v20

    new-instance v2, Lw05;

    move-object/from16 v18, v2

    move-object/from16 v19, v1

    move-object/from16 v22, v8

    move-object/from16 v23, p9

    .line 230
    invoke-direct/range {v18 .. v23}, Lw05;-><init>(Lh15;Lcom/google/android/gms/measurement/internal/zzp;ZLcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lh15;->t(Ljava/lang/Runnable;)V

    if-nez v13, :cond_23

    .line 231
    iget-object v1, v7, Lsz4;->e:Ljava/util/Set;

    .line 232
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_11
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lry4;

    new-instance v4, Landroid/os/Bundle;

    .line 233
    invoke-direct {v4, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v5, p3

    .line 234
    invoke-interface/range {v1 .. v6}, Lry4;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    goto :goto_11

    :cond_23
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, p1

    move-object/from16 v0, p6

    move-object/from16 p5, v15

    goto/16 :goto_e

    :cond_24
    iget-object v0, v7, Lly4;->a:Lrx4;

    .line 235
    iget-object v1, v0, Lrx4;->f:Lc35;

    .line 236
    invoke-virtual {v0}, Lrx4;->y()Lh05;

    move-result-object v0

    const/4 v1, 0x0

    .line 237
    invoke-virtual {v0, v1}, Lh05;->p(Z)La05;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 238
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, v7, Lly4;->a:Lrx4;

    .line 239
    invoke-virtual {v0}, Lrx4;->r()Lx15;

    move-result-object v0

    iget-object v1, v7, Lly4;->a:Lrx4;

    .line 240
    iget-object v1, v1, Lrx4;->n:Lb20;

    .line 241
    invoke-interface {v1}, Lb20;->b()J

    move-result-wide v1

    iget-object v0, v0, Lx15;->e:Lu15;

    const/4 v3, 0x1

    .line 242
    invoke-virtual {v0, v3, v3, v1, v2}, Lu15;->a(ZZJ)Z

    :cond_25
    return-void

    .line 243
    :cond_26
    iget-object v0, v7, Lly4;->a:Lrx4;

    .line 244
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 245
    iget-object v0, v0, Lqw4;->m:Low4;

    const-string v1, "Event not sent since app measurement is disabled"

    .line 246
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final D(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .locals 20

    move-object/from16 v11, p0

    if-nez p1, :cond_0

    const-string v0, "app"

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    if-nez p3, :cond_1

    new-instance v0, Landroid/os/Bundle;

    .line 1
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    :cond_1
    move-object/from16 v0, p3

    :goto_1
    iget-object v1, v11, Lly4;->a:Lrx4;

    .line 2
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 3
    sget-object v3, Lew4;->u0:Ldw4;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_f

    const-string v1, "screen_view"

    move-object/from16 v6, p2

    .line 4
    invoke-static {v6, v1}, Lp25;->G(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_8

    .line 5
    :cond_2
    iget-object v1, v11, Lly4;->a:Lrx4;

    .line 6
    invoke-virtual {v1}, Lrx4;->y()Lh05;

    move-result-object v1

    .line 7
    iget-object v2, v1, Lly4;->a:Lrx4;

    .line 8
    iget-object v2, v2, Lrx4;->g:Lcs4;

    .line 9
    invoke-virtual {v2, v4, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v0, v1, Lly4;->a:Lrx4;

    .line 10
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 11
    iget-object v0, v0, Lqw4;->k:Low4;

    const-string v1, "Manual screen reporting is disabled."

    .line 12
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_3
    iget-object v3, v1, Lh05;->l:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, v1, Lh05;->k:Z

    if-nez v2, :cond_4

    iget-object v0, v1, Lly4;->a:Lrx4;

    .line 13
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 14
    iget-object v0, v0, Lqw4;->k:Low4;

    const-string v1, "Cannot log screen view event when the app is in the background."

    .line 15
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    .line 16
    monitor-exit v3

    goto/16 :goto_7

    :cond_4
    const-string v2, "screen_name"

    .line 17
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v2, 0x64

    if-eqz v13, :cond_6

    .line 18
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 19
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v6, v1, Lly4;->a:Lrx4;

    .line 20
    iget-object v6, v6, Lrx4;->g:Lcs4;

    if-le v4, v2, :cond_6

    .line 21
    :cond_5
    iget-object v0, v1, Lly4;->a:Lrx4;

    .line 22
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 23
    iget-object v0, v0, Lqw4;->k:Low4;

    const-string v1, "Invalid screen name length for screen view. Length"

    .line 24
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    monitor-exit v3

    goto/16 :goto_7

    :cond_6
    const-string v4, "screen_class"

    .line 26
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 27
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7

    .line 28
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, v1, Lly4;->a:Lrx4;

    .line 29
    iget-object v7, v7, Lrx4;->g:Lcs4;

    if-le v6, v2, :cond_8

    .line 30
    :cond_7
    iget-object v0, v1, Lly4;->a:Lrx4;

    .line 31
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 32
    iget-object v0, v0, Lqw4;->k:Low4;

    const-string v1, "Invalid screen class length for screen view. Length"

    .line 33
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    monitor-exit v3

    goto/16 :goto_7

    :cond_8
    if-nez v4, :cond_a

    iget-object v2, v1, Lh05;->g:Landroid/app/Activity;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "Activity"

    .line 35
    invoke-virtual {v1, v2, v4}, Lh05;->q(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_9
    const-string v2, "Activity"

    :goto_2
    move-object v14, v2

    goto :goto_3

    :cond_a
    move-object v14, v4

    :goto_3
    iget-object v2, v1, Lh05;->c:La05;

    iget-boolean v4, v1, Lh05;->h:Z

    if-eqz v4, :cond_b

    if-eqz v2, :cond_b

    iput-boolean v5, v1, Lh05;->h:Z

    iget-object v4, v2, La05;->b:Ljava/lang/String;

    .line 36
    invoke-static {v4, v14}, Lp25;->G(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    iget-object v2, v2, La05;->a:Ljava/lang/String;

    .line 37
    invoke-static {v2, v13}, Lp25;->G(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v4, :cond_b

    if-eqz v2, :cond_b

    iget-object v0, v1, Lly4;->a:Lrx4;

    .line 38
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 39
    iget-object v0, v0, Lqw4;->k:Low4;

    const-string v1, "Ignoring call to log screen view event with duplicate parameters."

    .line 40
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    .line 41
    monitor-exit v3

    goto :goto_7

    .line 42
    :cond_b
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v1, Lly4;->a:Lrx4;

    .line 43
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 44
    iget-object v2, v2, Lqw4;->n:Low4;

    if-nez v13, :cond_c

    const-string v3, "null"

    goto :goto_4

    :cond_c
    move-object v3, v13

    :goto_4
    if-nez v14, :cond_d

    const-string v4, "null"

    goto :goto_5

    :cond_d
    move-object v4, v14

    :goto_5
    const-string v5, "Logging screen view with name, class"

    .line 45
    invoke-virtual {v2, v5, v3, v4}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Lh05;->c:La05;

    if-nez v2, :cond_e

    iget-object v2, v1, Lh05;->d:La05;

    goto :goto_6

    .line 46
    :cond_e
    iget-object v2, v1, Lh05;->c:La05;

    .line 47
    :goto_6
    new-instance v3, La05;

    iget-object v4, v1, Lly4;->a:Lrx4;

    .line 48
    invoke-virtual {v4}, Lrx4;->t()Lp25;

    move-result-object v4

    .line 49
    invoke-virtual {v4}, Lp25;->c0()J

    move-result-wide v15

    const/16 v17, 0x1

    move-object v12, v3

    move-wide/from16 v18, p6

    invoke-direct/range {v12 .. v19}, La05;-><init>(Ljava/lang/String;Ljava/lang/String;JZJ)V

    iput-object v3, v1, Lh05;->c:La05;

    iput-object v2, v1, Lh05;->d:La05;

    iput-object v3, v1, Lh05;->i:La05;

    iget-object v4, v1, Lly4;->a:Lrx4;

    .line 50
    iget-object v4, v4, Lrx4;->n:Lb20;

    .line 51
    invoke-interface {v4}, Lb20;->b()J

    move-result-wide v4

    iget-object v6, v1, Lly4;->a:Lrx4;

    .line 52
    invoke-virtual {v6}, Lrx4;->m()Lox4;

    move-result-object v6

    new-instance v7, Lb05;

    move-object/from16 p1, v7

    move-object/from16 p2, v1

    move-object/from16 p3, v0

    move-object/from16 p4, v3

    move-object/from16 p5, v2

    move-wide/from16 p6, v4

    .line 53
    invoke-direct/range {p1 .. p7}, Lb05;-><init>(Lh05;Landroid/os/Bundle;La05;La05;J)V

    .line 54
    invoke-virtual {v6, v7}, Lox4;->q(Ljava/lang/Runnable;)V

    :goto_7
    return-void

    :catchall_0
    move-exception v0

    .line 55
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_f
    move-object/from16 v6, p2

    :goto_8
    const/4 v1, 0x1

    if-eqz p5, :cond_11

    .line 56
    iget-object v3, v11, Lsz4;->d:Ls25;

    if-eqz v3, :cond_11

    .line 57
    invoke-static/range {p2 .. p2}, Lp25;->F(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_9

    :cond_10
    const/4 v8, 0x0

    goto :goto_a

    :cond_11
    :goto_9
    const/4 v8, 0x1

    :goto_a
    xor-int/lit8 v9, p4, 0x1

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-wide/from16 v4, p6

    move-object v6, v0

    move/from16 v7, p5

    .line 58
    invoke-virtual/range {v1 .. v10}, Lsz4;->E(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method public final E(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 14

    .line 1
    new-instance v6, Landroid/os/Bundle;

    move-object/from16 v0, p5

    .line 2
    invoke-direct {v6, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-virtual {v6, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 7
    new-instance v3, Landroid/os/Bundle;

    .line 8
    check-cast v2, Landroid/os/Bundle;

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 9
    :cond_1
    instance-of v1, v2, [Landroid/os/Parcelable;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 10
    check-cast v2, [Landroid/os/Parcelable;

    .line 11
    :goto_1
    array-length v1, v2

    if-ge v3, v1, :cond_0

    .line 12
    aget-object v1, v2, v3

    instance-of v4, v1, Landroid/os/Bundle;

    if-eqz v4, :cond_2

    .line 13
    new-instance v4, Landroid/os/Bundle;

    .line 14
    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v4, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    aput-object v4, v2, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 15
    :cond_3
    instance-of v1, v2, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 16
    check-cast v2, Ljava/util/List;

    .line 17
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    .line 18
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 19
    instance-of v4, v1, Landroid/os/Bundle;

    if-eqz v4, :cond_4

    .line 20
    new-instance v4, Landroid/os/Bundle;

    .line 21
    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v4, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move-object v11, p0

    iget-object v0, v11, Lly4;->a:Lrx4;

    .line 22
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v12

    new-instance v13, Lzy4;

    const/4 v10, 0x0

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 23
    invoke-direct/range {v0 .. v10}, Lzy4;-><init>(Lsz4;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    .line 24
    invoke-virtual {v12, v13}, Lox4;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final F(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 1
    iget-object v0, v0, Lrx4;->n:Lb20;

    .line 2
    invoke-interface {v0}, Lb20;->a()J

    move-result-wide v6

    const-string v2, "auto"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v7}, Lsz4;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    return-void
.end method

.method public final G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V
    .locals 15

    move-object v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    if-nez p1, :cond_0

    const-string v1, "app"

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    const/4 v3, 0x6

    const/4 v4, 0x0

    const/16 v5, 0x18

    if-eqz p4, :cond_1

    iget-object v3, v6, Lly4;->a:Lrx4;

    .line 1
    invoke-virtual {v3}, Lrx4;->t()Lp25;

    move-result-object v3

    .line 2
    invoke-virtual {v3, v2}, Lp25;->l0(Ljava/lang/String;)I

    move-result v3

    move v11, v3

    goto :goto_2

    .line 3
    :cond_1
    iget-object v7, v6, Lly4;->a:Lrx4;

    .line 4
    invoke-virtual {v7}, Lrx4;->t()Lp25;

    move-result-object v7

    const-string v8, "user property"

    .line 5
    invoke-virtual {v7, v8, v2}, Lp25;->g0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    :goto_1
    const/4 v11, 0x6

    goto :goto_2

    .line 6
    :cond_2
    sget-object v9, Lqy4;->a:[Ljava/lang/String;

    const/4 v10, 0x0

    .line 7
    invoke-virtual {v7, v8, v9, v10, v2}, Lp25;->i0(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const/16 v3, 0xf

    const/16 v11, 0xf

    goto :goto_2

    :cond_3
    iget-object v9, v7, Lly4;->a:Lrx4;

    .line 8
    iget-object v9, v9, Lrx4;->g:Lcs4;

    .line 9
    invoke-virtual {v7, v8, v5, v2}, Lp25;->j0(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    :goto_2
    const/4 v3, 0x1

    if-eqz v11, :cond_6

    .line 10
    iget-object v0, v6, Lly4;->a:Lrx4;

    .line 11
    invoke-virtual {v0}, Lrx4;->t()Lp25;

    move-result-object v0

    iget-object v1, v6, Lly4;->a:Lrx4;

    .line 12
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 13
    invoke-virtual {v0, v2, v5, v3}, Lp25;->q(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v13

    if-eqz v2, :cond_5

    .line 14
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    move v14, v4

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    :goto_3
    iget-object v0, v6, Lly4;->a:Lrx4;

    .line 15
    invoke-virtual {v0}, Lrx4;->t()Lp25;

    move-result-object v8

    iget-object v9, v6, Lsz4;->p:Lo25;

    const/4 v10, 0x0

    const-string v12, "_ev"

    .line 16
    invoke-virtual/range {v8 .. v14}, Lp25;->A(Lo25;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_6
    if-eqz v0, :cond_b

    iget-object v7, v6, Lly4;->a:Lrx4;

    .line 17
    invoke-virtual {v7}, Lrx4;->t()Lp25;

    move-result-object v7

    .line 18
    invoke-virtual {v7, v2, v0}, Lp25;->x(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v11

    if-eqz v11, :cond_9

    iget-object v1, v6, Lly4;->a:Lrx4;

    .line 19
    invoke-virtual {v1}, Lrx4;->t()Lp25;

    move-result-object v1

    iget-object v7, v6, Lly4;->a:Lrx4;

    .line 20
    iget-object v7, v7, Lrx4;->g:Lcs4;

    .line 21
    invoke-virtual {v1, v2, v5, v3}, Lp25;->q(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v13

    .line 22
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_8

    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v14, 0x0

    goto :goto_5

    .line 23
    :cond_8
    :goto_4
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    move v14, v4

    :goto_5
    iget-object v0, v6, Lly4;->a:Lrx4;

    .line 25
    invoke-virtual {v0}, Lrx4;->t()Lp25;

    move-result-object v8

    iget-object v9, v6, Lsz4;->p:Lo25;

    const/4 v10, 0x0

    const-string v12, "_ev"

    .line 26
    invoke-virtual/range {v8 .. v14}, Lp25;->A(Lo25;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_9
    iget-object v3, v6, Lly4;->a:Lrx4;

    .line 27
    invoke-virtual {v3}, Lrx4;->t()Lp25;

    move-result-object v3

    .line 28
    invoke-virtual {v3, v2, v0}, Lp25;->y(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_a

    move-object v0, p0

    move-object/from16 v2, p2

    move-wide/from16 v3, p5

    .line 29
    invoke-virtual/range {v0 .. v5}, Lsz4;->i(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :cond_a
    return-void

    :cond_b
    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v2, p2

    move-wide/from16 v3, p5

    .line 30
    invoke-virtual/range {v0 .. v5}, Lsz4;->i(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    return-void
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    new-instance v8, Laz4;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-wide v6, p3

    .line 2
    invoke-direct/range {v1 .. v7}, Laz4;-><init>(Lsz4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 3
    invoke-virtual {v0, v8}, Lox4;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 9

    .line 1
    invoke-static {p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p2}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lyv4;->d()V

    .line 4
    invoke-virtual {p0}, Lww4;->f()V

    const-string v0, "allow_personalized_ads"

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "_npa"

    if-eqz v0, :cond_3

    .line 6
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "false"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-wide/16 v3, 0x1

    if-eq v1, p2, :cond_0

    const-wide/16 v5, 0x0

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 8
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v0

    .line 9
    iget-object v0, v0, Lex4;->r:Ldx4;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-nez v7, :cond_1

    const-string p3, "true"

    :cond_1
    invoke-virtual {v0, p3}, Ldx4;->b(Ljava/lang/String;)V

    move-object v7, p2

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    .line 10
    iget-object p2, p0, Lly4;->a:Lrx4;

    .line 11
    invoke-virtual {p2}, Lrx4;->q()Lex4;

    move-result-object p2

    .line 12
    iget-object p2, p2, Lex4;->r:Ldx4;

    const-string v0, "unset"

    invoke-virtual {p2, v0}, Ldx4;->b(Ljava/lang/String;)V

    move-object v7, p3

    :goto_1
    move-object v4, v2

    goto :goto_2

    :cond_3
    move-object v4, p2

    move-object v7, p3

    .line 13
    :goto_2
    iget-object p2, p0, Lly4;->a:Lrx4;

    .line 14
    invoke-virtual {p2}, Lrx4;->g()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p1, p0, Lly4;->a:Lrx4;

    .line 15
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 16
    iget-object p1, p1, Lqw4;->n:Low4;

    const-string p2, "User property not set since app measurement is disabled"

    .line 17
    invoke-virtual {p1, p2}, Low4;->a(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object p2, p0, Lly4;->a:Lrx4;

    .line 18
    invoke-virtual {p2}, Lrx4;->i()Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    .line 19
    :cond_5
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzkr;

    move-object v3, p2

    move-wide v5, p4

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lly4;->a:Lrx4;

    .line 20
    invoke-virtual {p1}, Lrx4;->z()Lh15;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lyv4;->d()V

    .line 22
    invoke-virtual {p1}, Lww4;->f()V

    .line 23
    invoke-virtual {p1}, Lh15;->r()Z

    iget-object p3, p1, Lly4;->a:Lrx4;

    .line 24
    invoke-virtual {p3}, Lrx4;->v()Lkw4;

    move-result-object p3

    .line 25
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p4

    const/4 p5, 0x0

    .line 27
    invoke-static {p2, p4, p5}, Lm25;->a(Lcom/google/android/gms/measurement/internal/zzkr;Landroid/os/Parcel;I)V

    .line 28
    invoke-virtual {p4}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 29
    invoke-virtual {p4}, Landroid/os/Parcel;->recycle()V

    .line 30
    array-length p4, v0

    const/high16 v2, 0x20000

    if-le p4, v2, :cond_6

    iget-object p3, p3, Lly4;->a:Lrx4;

    .line 31
    invoke-virtual {p3}, Lrx4;->a()Lqw4;

    move-result-object p3

    .line 32
    iget-object p3, p3, Lqw4;->g:Low4;

    const-string p4, "User property too long for local database. Sending directly to service"

    .line 33
    invoke-virtual {p3, p4}, Low4;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 34
    :cond_6
    invoke-virtual {p3, v1, v0}, Lkw4;->n(I[B)Z

    move-result p5

    .line 35
    :goto_3
    invoke-virtual {p1, v1}, Lh15;->v(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object p3

    new-instance p4, Lj05;

    .line 36
    invoke-direct {p4, p1, p3, p5, p2}, Lj05;-><init>(Lh15;Lcom/google/android/gms/measurement/internal/zzp;ZLcom/google/android/gms/measurement/internal/zzkr;)V

    invoke-virtual {p1, p4}, Lh15;->t(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final l(JZ)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lyv4;->d()V

    .line 2
    invoke-virtual {p0}, Lww4;->f()V

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 3
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lqw4;->m:Low4;

    const-string v1, "Resetting analytics data (FE)"

    .line 5
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 6
    invoke-virtual {v0}, Lrx4;->r()Lx15;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lyv4;->d()V

    iget-object v0, v0, Lx15;->e:Lu15;

    .line 8
    iget-object v1, v0, Lu15;->c:Lis4;

    .line 9
    invoke-virtual {v1}, Lis4;->c()V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lu15;->a:J

    iput-wide v1, v0, Lu15;->b:J

    .line 10
    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 11
    invoke-virtual {v0}, Lrx4;->g()Z

    move-result v0

    iget-object v3, p0, Lly4;->a:Lrx4;

    .line 12
    invoke-virtual {v3}, Lrx4;->q()Lex4;

    move-result-object v3

    iget-object v4, v3, Lex4;->j:Lbx4;

    .line 13
    invoke-virtual {v4, p1, p2}, Lbx4;->b(J)V

    iget-object p1, v3, Lly4;->a:Lrx4;

    .line 14
    invoke-virtual {p1}, Lrx4;->q()Lex4;

    move-result-object p1

    .line 15
    iget-object p1, p1, Lex4;->y:Ldx4;

    invoke-virtual {p1}, Ldx4;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iget-object p1, v3, Lex4;->y:Ldx4;

    .line 16
    invoke-virtual {p1, p2}, Ldx4;->b(Ljava/lang/String;)V

    .line 17
    :cond_0
    invoke-static {}, Lod4;->b()Z

    iget-object p1, v3, Lly4;->a:Lrx4;

    .line 18
    iget-object p1, p1, Lrx4;->g:Lcs4;

    .line 19
    sget-object v4, Lew4;->p0:Ldw4;

    invoke-virtual {p1, p2, v4}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v3, Lex4;->t:Lbx4;

    .line 20
    invoke-virtual {p1, v1, v2}, Lbx4;->b(J)V

    :cond_1
    iget-object p1, v3, Lly4;->a:Lrx4;

    .line 21
    iget-object p1, p1, Lrx4;->g:Lcs4;

    .line 22
    invoke-virtual {p1}, Lcs4;->v()Z

    move-result p1

    if-nez p1, :cond_2

    xor-int/lit8 p1, v0, 0x1

    .line 23
    invoke-virtual {v3, p1}, Lex4;->t(Z)V

    :cond_2
    iget-object p1, v3, Lex4;->z:Ldx4;

    .line 24
    invoke-virtual {p1, p2}, Ldx4;->b(Ljava/lang/String;)V

    iget-object p1, v3, Lex4;->A:Lbx4;

    .line 25
    invoke-virtual {p1, v1, v2}, Lbx4;->b(J)V

    iget-object p1, v3, Lex4;->B:Lax4;

    .line 26
    invoke-virtual {p1, p2}, Lax4;->b(Landroid/os/Bundle;)V

    if-eqz p3, :cond_3

    iget-object p1, p0, Lly4;->a:Lrx4;

    .line 27
    invoke-virtual {p1}, Lrx4;->z()Lh15;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lyv4;->d()V

    .line 29
    invoke-virtual {p1}, Lww4;->f()V

    const/4 p3, 0x0

    .line 30
    invoke-virtual {p1, p3}, Lh15;->v(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object p3

    .line 31
    invoke-virtual {p1}, Lh15;->r()Z

    iget-object v1, p1, Lly4;->a:Lrx4;

    .line 32
    invoke-virtual {v1}, Lrx4;->v()Lkw4;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lkw4;->i()V

    new-instance v1, Lk05;

    .line 34
    invoke-direct {v1, p1, p3}, Lk05;-><init>(Lh15;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-virtual {p1, v1}, Lh15;->t(Ljava/lang/Runnable;)V

    .line 35
    :cond_3
    invoke-static {}, Lod4;->b()Z

    iget-object p1, p0, Lly4;->a:Lrx4;

    .line 36
    iget-object p1, p1, Lrx4;->g:Lcs4;

    .line 37
    invoke-virtual {p1, p2, v4}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lly4;->a:Lrx4;

    .line 38
    invoke-virtual {p1}, Lrx4;->r()Lx15;

    move-result-object p1

    .line 39
    iget-object p1, p1, Lx15;->d:Lw15;

    invoke-virtual {p1}, Lw15;->a()V

    :cond_4
    xor-int/lit8 p1, v0, 0x1

    iput-boolean p1, p0, Lsz4;->o:Z

    return-void
.end method

.method public final n()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lyv4;->d()V

    .line 2
    invoke-virtual {p0}, Lww4;->f()V

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 3
    invoke-virtual {v0}, Lrx4;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 4
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 5
    sget-object v1, Lew4;->c0:Ldw4;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 6
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 7
    iget-object v1, v0, Lly4;->a:Lrx4;

    .line 8
    iget-object v1, v1, Lrx4;->f:Lc35;

    const-string v1, "google_analytics_deferred_deep_link_enabled"

    .line 9
    invoke-virtual {v0, v1}, Lcs4;->u(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 11
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 12
    iget-object v0, v0, Lqw4;->m:Low4;

    const-string v1, "Deferred Deep Link feature enabled."

    .line 13
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 14
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    new-instance v1, Lvy4;

    .line 15
    invoke-direct {v1, p0}, Lvy4;-><init>(Lsz4;)V

    invoke-virtual {v0, v1}, Lox4;->q(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 16
    invoke-virtual {v0}, Lrx4;->z()Lh15;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lyv4;->d()V

    .line 18
    invoke-virtual {v0}, Lww4;->f()V

    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Lh15;->v(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v1

    iget-object v3, v0, Lly4;->a:Lrx4;

    .line 20
    invoke-virtual {v3}, Lrx4;->v()Lkw4;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [B

    const/4 v6, 0x3

    .line 21
    invoke-virtual {v3, v6, v5}, Lkw4;->n(I[B)Z

    .line 22
    new-instance v3, Ln05;

    .line 23
    invoke-direct {v3, v0, v1}, Ln05;-><init>(Lh15;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-virtual {v0, v3}, Lh15;->t(Ljava/lang/Runnable;)V

    .line 24
    iput-boolean v4, p0, Lsz4;->o:Z

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 25
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lly4;->d()V

    invoke-virtual {v0}, Lex4;->n()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "previous_os_version"

    .line 27
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lly4;->a:Lrx4;

    .line 28
    invoke-virtual {v2}, Lrx4;->A()Ljs4;

    move-result-object v2

    .line 29
    invoke-virtual {v2}, Lmy4;->i()V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 31
    invoke-virtual {v0}, Lex4;->n()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 32
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 33
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 34
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 35
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 36
    invoke-virtual {v0}, Lrx4;->A()Ljs4;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lmy4;->i()V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Bundle;

    .line 38
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "_po"

    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "auto"

    const-string v2, "_ou"

    .line 40
    invoke-virtual {p0, v1, v2, v0}, Lsz4;->A(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public final p(Ls25;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lyv4;->d()V

    .line 2
    invoke-virtual {p0}, Lww4;->f()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lsz4;->d:Ls25;

    if-eq p1, v0, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "EventInterceptor already set."

    .line 3
    invoke-static {v0, v1}, Lbi;->m(ZLjava/lang/Object;)V

    :cond_1
    iput-object p1, p0, Lsz4;->d:Ls25;

    return-void
.end method

.method public final q(Landroid/os/Bundle;J)V
    .locals 12

    .line 1
    const-class v0, Ljava/lang/Long;

    const-class v1, Ljava/lang/String;

    const-string v2, "null reference"

    .line 2
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v3, Landroid/os/Bundle;

    .line 4
    invoke-direct {v3, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string p1, "app_id"

    .line 5
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lly4;->a:Lrx4;

    .line 6
    invoke-virtual {v4}, Lrx4;->a()Lqw4;

    move-result-object v4

    .line 7
    iget-object v4, v4, Lqw4;->i:Low4;

    const-string v5, "Package name should be null when calling setConditionalUserProperty"

    .line 8
    invoke-virtual {v4, v5}, Low4;->a(Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 10
    invoke-static {v3, p1, v1, v4}, Lc50;->W2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "origin"

    .line 11
    invoke-static {v3, p1, v1, v4}, Lc50;->W2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "name"

    .line 12
    invoke-static {v3, v5, v1, v4}, Lc50;->W2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v6, Ljava/lang/Object;

    const-string v7, "value"

    .line 13
    invoke-static {v3, v7, v6, v4}, Lc50;->W2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "trigger_event_name"

    .line 14
    invoke-static {v3, v6, v1, v4}, Lc50;->W2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v8, 0x0

    .line 15
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "trigger_timeout"

    .line 16
    invoke-static {v3, v9, v0, v8}, Lc50;->W2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "timed_out_event_name"

    .line 17
    invoke-static {v3, v10, v1, v4}, Lc50;->W2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v10, Landroid/os/Bundle;

    const-string v11, "timed_out_event_params"

    .line 18
    invoke-static {v3, v11, v10, v4}, Lc50;->W2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "triggered_event_name"

    .line 19
    invoke-static {v3, v10, v1, v4}, Lc50;->W2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v10, Landroid/os/Bundle;

    const-string v11, "triggered_event_params"

    .line 20
    invoke-static {v3, v11, v10, v4}, Lc50;->W2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "time_to_live"

    .line 21
    invoke-static {v3, v10, v0, v8}, Lc50;->W2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "expired_event_name"

    .line 22
    invoke-static {v3, v0, v1, v4}, Lc50;->W2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Landroid/os/Bundle;

    const-string v1, "expired_event_params"

    .line 23
    invoke-static {v3, v1, v0, v4}, Lc50;->W2(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 27
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "creation_timestamp"

    .line 28
    invoke-virtual {v3, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 29
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    iget-object p3, p0, Lly4;->a:Lrx4;

    .line 31
    invoke-virtual {p3}, Lrx4;->t()Lp25;

    move-result-object p3

    .line 32
    invoke-virtual {p3, p1}, Lp25;->l0(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_7

    iget-object p3, p0, Lly4;->a:Lrx4;

    .line 33
    invoke-virtual {p3}, Lrx4;->t()Lp25;

    move-result-object p3

    .line 34
    invoke-virtual {p3, p1, p2}, Lp25;->x(Ljava/lang/String;Ljava/lang/Object;)I

    move-result p3

    if-nez p3, :cond_6

    iget-object p3, p0, Lly4;->a:Lrx4;

    .line 35
    invoke-virtual {p3}, Lrx4;->t()Lp25;

    move-result-object p3

    .line 36
    invoke-virtual {p3, p1, p2}, Lp25;->y(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lly4;->a:Lrx4;

    .line 37
    invoke-virtual {p3}, Lrx4;->a()Lqw4;

    move-result-object p3

    .line 38
    iget-object p3, p3, Lqw4;->f:Low4;

    .line 39
    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 40
    invoke-virtual {v0}, Lrx4;->u()Llw4;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p1}, Llw4;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unable to normalize conditional user property value"

    .line 42
    invoke-virtual {p3, v0, p1, p2}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 43
    :cond_1
    invoke-static {v3, p3}, Lc50;->Z1(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    .line 45
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x1

    const-wide v4, 0x39ef8b000L

    if-nez v0, :cond_3

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 47
    iget-object v6, v0, Lrx4;->g:Lcs4;

    cmp-long v6, p2, v4

    if-gtz v6, :cond_2

    cmp-long v6, p2, v1

    if-ltz v6, :cond_2

    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 49
    iget-object v0, v0, Lqw4;->f:Low4;

    .line 50
    iget-object v1, p0, Lly4;->a:Lrx4;

    .line 51
    invoke-virtual {v1}, Lrx4;->u()Llw4;

    move-result-object v1

    .line 52
    invoke-virtual {v1, p1}, Llw4;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "Invalid conditional user property timeout"

    .line 54
    invoke-virtual {v0, p3, p1, p2}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 55
    :cond_3
    :goto_0
    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 56
    iget-object v6, v0, Lrx4;->g:Lcs4;

    cmp-long v6, p2, v4

    if-gtz v6, :cond_5

    cmp-long v4, p2, v1

    if-gez v4, :cond_4

    goto :goto_1

    .line 57
    :cond_4
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object p1

    new-instance p2, Lcz4;

    .line 58
    invoke-direct {p2, p0, v3}, Lcz4;-><init>(Lsz4;Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p1, p2}, Lox4;->q(Ljava/lang/Runnable;)V

    return-void

    .line 60
    :cond_5
    :goto_1
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 61
    iget-object v0, v0, Lqw4;->f:Low4;

    .line 62
    iget-object v1, p0, Lly4;->a:Lrx4;

    .line 63
    invoke-virtual {v1}, Lrx4;->u()Llw4;

    move-result-object v1

    .line 64
    invoke-virtual {v1, p1}, Llw4;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "Invalid conditional user property time to live"

    .line 66
    invoke-virtual {v0, p3, p1, p2}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 67
    :cond_6
    iget-object p3, p0, Lly4;->a:Lrx4;

    .line 68
    invoke-virtual {p3}, Lrx4;->a()Lqw4;

    move-result-object p3

    .line 69
    iget-object p3, p3, Lqw4;->f:Low4;

    .line 70
    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 71
    invoke-virtual {v0}, Lrx4;->u()Llw4;

    move-result-object v0

    .line 72
    invoke-virtual {v0, p1}, Llw4;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid conditional user property value"

    .line 73
    invoke-virtual {p3, v0, p1, p2}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_7
    iget-object p2, p0, Lly4;->a:Lrx4;

    .line 74
    invoke-virtual {p2}, Lrx4;->a()Lqw4;

    move-result-object p2

    .line 75
    iget-object p2, p2, Lqw4;->f:Low4;

    .line 76
    iget-object p3, p0, Lly4;->a:Lrx4;

    .line 77
    invoke-virtual {p3}, Lrx4;->u()Llw4;

    move-result-object p3

    .line 78
    invoke-virtual {p3, p1}, Llw4;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Invalid conditional user property name"

    .line 79
    invoke-virtual {p2, p3, p1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 1
    iget-object v0, v0, Lrx4;->n:Lb20;

    .line 2
    invoke-interface {v0}, Lb20;->a()J

    move-result-wide v0

    .line 3
    invoke-static {p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    new-instance v2, Landroid/os/Bundle;

    .line 4
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "name"

    .line 5
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "creation_timestamp"

    .line 6
    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    if-eqz p2, :cond_0

    const-string p1, "expired_event_name"

    .line 7
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "expired_event_params"

    .line 8
    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget-object p1, p0, Lly4;->a:Lrx4;

    .line 9
    invoke-virtual {p1}, Lrx4;->m()Lox4;

    move-result-object p1

    new-instance p2, Ldz4;

    .line 10
    invoke-direct {p2, p0, v2}, Ldz4;-><init>(Lsz4;Landroid/os/Bundle;)V

    .line 11
    invoke-virtual {p1, p2}, Lox4;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final s()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 1
    iget-object v0, v0, Lrx4;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcf4;->b()Z

    iget-object v1, p0, Lly4;->a:Lrx4;

    .line 3
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 4
    sget-object v2, Lew4;->M0:Ldw4;

    invoke-virtual {v1, v0, v2}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "google_app_id"

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lly4;->a:Lrx4;

    .line 5
    iget-object v3, v1, Lrx4;->a:Landroid/content/Context;

    .line 6
    iget-object v1, v1, Lrx4;->s:Ljava/lang/String;

    .line 7
    invoke-static {v3, v2, v1}, Lzz4;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lly4;->a:Lrx4;

    .line 8
    iget-object v1, v1, Lrx4;->a:Landroid/content/Context;

    .line 9
    invoke-static {v1, v2}, Lzz4;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 10
    iget-object v2, p0, Lly4;->a:Lrx4;

    .line 11
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 12
    iget-object v2, v2, Lqw4;->f:Low4;

    const-string v3, "getGoogleAppId failed with exception"

    .line 13
    invoke-virtual {v2, v3, v1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public final u(Ljava/lang/Boolean;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lyv4;->d()V

    .line 2
    invoke-virtual {p0}, Lww4;->f()V

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 3
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lqw4;->m:Low4;

    const-string v1, "Setting app measurement enabled (FE)"

    .line 5
    invoke-virtual {v0, v1, p1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 6
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lex4;->p(Ljava/lang/Boolean;)V

    .line 8
    invoke-static {}, Lpc4;->b()Z

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 9
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 10
    sget-object v1, Lew4;->E0:Ldw4;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lly4;->a:Lrx4;

    .line 11
    invoke-virtual {p2}, Lrx4;->q()Lex4;

    move-result-object p2

    .line 12
    invoke-static {}, Lpc4;->b()Z

    iget-object v0, p2, Lly4;->a:Lrx4;

    .line 13
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 14
    invoke-virtual {v0, v2, v1}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {p2}, Lly4;->d()V

    invoke-virtual {p2}, Lex4;->n()Landroid/content/SharedPreferences;

    move-result-object p2

    .line 16
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "measurement_enabled_from_api"

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {p2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 19
    :goto_0
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 20
    :cond_1
    invoke-static {}, Lpc4;->b()Z

    iget-object p2, p0, Lly4;->a:Lrx4;

    .line 21
    iget-object p2, p2, Lrx4;->g:Lcs4;

    .line 22
    invoke-virtual {p2, v2, v1}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lly4;->a:Lrx4;

    .line 23
    invoke-virtual {p2}, Lrx4;->m()Lox4;

    move-result-object v0

    invoke-virtual {v0}, Lox4;->d()V

    iget-boolean p2, p2, Lrx4;->E:Z

    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    .line 24
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    return-void

    .line 25
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lsz4;->v()V

    return-void
.end method

.method public final v()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lyv4;->d()V

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 2
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lex4;->r:Ldx4;

    invoke-virtual {v0}, Ldx4;->a()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    const-string v4, "unset"

    .line 4
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v8, 0x0

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 5
    iget-object v0, v0, Lrx4;->n:Lb20;

    .line 6
    invoke-interface {v0}, Lb20;->a()J

    move-result-wide v9

    const-string v6, "app"

    const-string v7, "_npa"

    move-object v5, p0

    .line 7
    invoke-virtual/range {v5 .. v10}, Lsz4;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_1

    :cond_0
    const-string v4, "true"

    .line 8
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v3, v0, :cond_1

    move-wide v4, v1

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x1

    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 9
    iget-object v0, v0, Lrx4;->n:Lb20;

    .line 10
    invoke-interface {v0}, Lb20;->a()J

    move-result-wide v10

    const-string v7, "app"

    const-string v8, "_npa"

    move-object v6, p0

    .line 11
    invoke-virtual/range {v6 .. v11}, Lsz4;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 12
    :cond_2
    :goto_1
    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 13
    invoke-virtual {v0}, Lrx4;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lsz4;->o:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 14
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 15
    iget-object v0, v0, Lqw4;->m:Low4;

    const-string v3, "Recording app launch after enabling measurement for the first time (FE)"

    .line 16
    invoke-virtual {v0, v3}, Low4;->a(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lsz4;->n()V

    .line 18
    invoke-static {}, Lod4;->b()Z

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 19
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 20
    sget-object v3, Lew4;->p0:Ldw4;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 21
    invoke-virtual {v0}, Lrx4;->r()Lx15;

    move-result-object v0

    .line 22
    iget-object v0, v0, Lx15;->d:Lw15;

    invoke-virtual {v0}, Lw15;->a()V

    .line 23
    :cond_3
    sget-object v0, Lfd4;->f:Lfd4;

    .line 24
    invoke-virtual {v0}, Lfd4;->b()Lgd4;

    move-result-object v0

    invoke-interface {v0}, Lgd4;->a()Z

    .line 25
    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 26
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 27
    sget-object v3, Lew4;->s0:Ldw4;

    .line 28
    invoke-virtual {v0, v4, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 29
    iget-object v0, v0, Lrx4;->x:Lhx4;

    const-string v3, "null reference"

    .line 30
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    iget-object v3, v0, Lhx4;->a:Lrx4;

    .line 32
    invoke-virtual {v3}, Lrx4;->q()Lex4;

    move-result-object v3

    iget-object v3, v3, Lex4;->k:Lbx4;

    invoke-virtual {v3}, Lbx4;->a()J

    move-result-wide v5

    cmp-long v3, v5, v1

    if-gtz v3, :cond_4

    iget-object v1, v0, Lhx4;->a:Lrx4;

    .line 33
    iget-object v1, v1, Lrx4;->a:Landroid/content/Context;

    .line 34
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lhx4;->a(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 36
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 37
    sget-object v1, Lew4;->B0:Ldw4;

    .line 38
    invoke-virtual {v0, v4, v1}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 39
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    new-instance v1, Lxy4;

    .line 40
    invoke-direct {v1, p0}, Lxy4;-><init>(Lsz4;)V

    .line 41
    invoke-virtual {v0, v1}, Lox4;->q(Ljava/lang/Runnable;)V

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 42
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 43
    iget-object v0, v0, Lqw4;->m:Low4;

    const-string v1, "Updating Scion state (FE)"

    .line 44
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 45
    invoke-virtual {v0}, Lrx4;->z()Lh15;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lyv4;->d()V

    .line 47
    invoke-virtual {v0}, Lww4;->f()V

    .line 48
    invoke-virtual {v0, v3}, Lh15;->v(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v1

    new-instance v2, Lt05;

    .line 49
    invoke-direct {v2, v0, v1}, Lt05;-><init>(Lh15;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-virtual {v0, v2}, Lh15;->t(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final w()V
    .locals 2

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 1
    iget-object v0, v0, Lrx4;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsz4;->c:Lrz4;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 3
    iget-object v0, v0, Lrx4;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lsz4;->c:Lrz4;

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public final x(Landroid/os/Bundle;IJ)V
    .locals 3

    .line 1
    invoke-static {}, Lpc4;->b()Z

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 2
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 3
    sget-object v1, Lew4;->E0:Ldw4;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {p0}, Lww4;->f()V

    const-string v0, "ad_storage"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {v0}, Lds4;->k(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v2, v0

    goto :goto_2

    :cond_1
    :goto_1
    const-string v0, "analytics_storage"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {v0}, Lds4;->k(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    .line 9
    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 10
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 11
    iget-object v0, v0, Lqw4;->k:Low4;

    const-string v1, "Ignoring invalid consent setting"

    .line 12
    invoke-virtual {v0, v1, v2}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 13
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 14
    iget-object v0, v0, Lqw4;->k:Low4;

    const-string v1, "Valid consent values are \'granted\', \'denied\'"

    .line 15
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    .line 16
    :cond_3
    invoke-static {p1}, Lds4;->a(Landroid/os/Bundle;)Lds4;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lsz4;->y(Lds4;IJ)V

    :cond_4
    return-void
.end method

.method public final y(Lds4;IJ)V
    .locals 15

    move-object v10, p0

    move-object/from16 v0, p1

    .line 1
    invoke-static {}, Lpc4;->b()Z

    iget-object v1, v10, Lly4;->a:Lrx4;

    .line 2
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 3
    sget-object v2, Lew4;->E0:Ldw4;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4
    invoke-virtual {p0}, Lww4;->f()V

    iget-object v1, v10, Lly4;->a:Lrx4;

    .line 5
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 6
    sget-object v2, Lew4;->F0:Ldw4;

    .line 7
    invoke-virtual {v1, v3, v2}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1

    const/16 v4, 0x14

    if-eqz v1, :cond_1

    move/from16 v1, p2

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v6, 0x14

    goto :goto_2

    :cond_1
    move/from16 v1, p2

    .line 8
    :goto_0
    iget-object v5, v0, Lds4;->a:Ljava/lang/Boolean;

    if-nez v5, :cond_3

    .line 9
    iget-object v5, v0, Lds4;->b:Ljava/lang/Boolean;

    if-eqz v5, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, v10, Lly4;->a:Lrx4;

    .line 11
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 12
    iget-object v0, v0, Lqw4;->k:Low4;

    const-string v1, "Discarding empty consent settings"

    .line 13
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    move v6, v1

    .line 14
    :goto_2
    iget-object v1, v10, Lsz4;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v5, v10, Lsz4;->j:I

    invoke-static {v6, v5}, Lds4;->i(II)Z

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_7

    iget-object v5, v10, Lsz4;->i:Lds4;

    .line 15
    invoke-virtual {v0, v5}, Lds4;->f(Lds4;)Z

    move-result v5

    .line 16
    invoke-virtual/range {p1 .. p1}, Lds4;->e()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v10, Lsz4;->i:Lds4;

    .line 17
    invoke-virtual {v9}, Lds4;->e()Z

    move-result v9

    if-nez v9, :cond_4

    const/4 v8, 0x1

    :cond_4
    iget-object v9, v10, Lsz4;->i:Lds4;

    .line 18
    new-instance v11, Lds4;

    iget-object v12, v0, Lds4;->a:Ljava/lang/Boolean;

    if-nez v12, :cond_5

    .line 19
    iget-object v12, v9, Lds4;->a:Ljava/lang/Boolean;

    :cond_5
    iget-object v0, v0, Lds4;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 20
    iget-object v0, v9, Lds4;->b:Ljava/lang/Boolean;

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_6
    :goto_3
    invoke-direct {v11, v12, v0}, Lds4;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 21
    iput-object v11, v10, Lsz4;->i:Lds4;

    iput v6, v10, Lsz4;->j:I

    move v9, v8

    move v8, v5

    goto :goto_4

    :cond_7
    move-object v11, v0

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 22
    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_8

    iget-object v0, v10, Lly4;->a:Lrx4;

    .line 23
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 24
    iget-object v0, v0, Lqw4;->l:Low4;

    const-string v1, "Ignoring lower-priority consent settings, proposed settings"

    .line 25
    invoke-virtual {v0, v1, v11}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_8
    iget-object v0, v10, Lsz4;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 26
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v12

    if-nez v8, :cond_b

    iget-object v0, v10, Lly4;->a:Lrx4;

    .line 27
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 28
    invoke-virtual {v0, v3, v2}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x28

    if-eq v6, v0, :cond_9

    if-ne v6, v4, :cond_a

    goto :goto_5

    :cond_9
    move v4, v6

    :goto_5
    iget-object v0, v10, Lly4;->a:Lrx4;

    .line 29
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    new-instance v8, Loz4;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v11

    move-wide v5, v12

    move v7, v9

    .line 30
    invoke-direct/range {v1 .. v7}, Loz4;-><init>(Lsz4;Lds4;IJZ)V

    .line 31
    invoke-virtual {v0, v8}, Lox4;->s(Ljava/lang/Runnable;)V

    return-void

    :cond_a
    iget-object v0, v10, Lly4;->a:Lrx4;

    .line 32
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    new-instance v8, Lpz4;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v11

    move v4, v6

    move-wide v5, v12

    move v7, v9

    .line 33
    invoke-direct/range {v1 .. v7}, Lpz4;-><init>(Lsz4;Lds4;IJZ)V

    .line 34
    invoke-virtual {v0, v8}, Lox4;->q(Ljava/lang/Runnable;)V

    return-void

    :cond_b
    iget-object v0, v10, Lsz4;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 35
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, v10, Lly4;->a:Lrx4;

    .line 36
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    new-instance v14, Lnz4;

    move-object v1, v14

    move-object v2, p0

    move-object v3, v11

    move-wide/from16 v4, p3

    move-wide v7, v12

    .line 37
    invoke-direct/range {v1 .. v9}, Lnz4;-><init>(Lsz4;Lds4;JIJZ)V

    .line 38
    invoke-virtual {v0, v14}, Lox4;->s(Ljava/lang/Runnable;)V

    return-void

    .line 39
    :goto_6
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_c
    return-void
.end method

.method public final z(Lds4;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lyv4;->d()V

    .line 2
    invoke-virtual {p1}, Lds4;->e()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lds4;->d()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lly4;->a:Lrx4;

    .line 3
    invoke-virtual {p1}, Lrx4;->z()Lh15;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lh15;->p()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 5
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v3

    invoke-virtual {v3}, Lox4;->d()V

    iget-boolean v0, v0, Lrx4;->E:Z

    if-eq p1, v0, :cond_5

    .line 6
    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 7
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v3

    invoke-virtual {v3}, Lox4;->d()V

    iput-boolean p1, v0, Lrx4;->E:Z

    .line 8
    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 9
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v0

    .line 10
    invoke-static {}, Lpc4;->b()Z

    iget-object v3, v0, Lly4;->a:Lrx4;

    .line 11
    iget-object v3, v3, Lrx4;->g:Lcs4;

    .line 12
    sget-object v4, Lew4;->E0:Ldw4;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 13
    invoke-virtual {v0}, Lly4;->d()V

    invoke-virtual {v0}, Lex4;->n()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "measurement_enabled_from_api"

    .line 14
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 15
    invoke-virtual {v0}, Lex4;->n()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 16
    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :cond_3
    if-eqz p1, :cond_4

    if-eqz v5, :cond_4

    .line 17
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    :cond_4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 19
    invoke-virtual {p0, p1, v2}, Lsz4;->u(Ljava/lang/Boolean;Z)V

    :cond_5
    return-void
.end method
