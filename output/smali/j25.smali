.class public final Lj25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lny4;


# static fields
.field public static volatile A:Lj25;


# instance fields
.field public final a:Lkx4;

.field public final b:Lvw4;

.field public c:Lgs4;

.field public d:Lyw4;

.field public e:La25;

.field public f:Lb35;

.field public final g:Ll25;

.field public h:Lyz4;

.field public i:Li15;

.field public final j:Lrx4;

.field public k:Z

.field public l:Z

.field public m:J

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public o:I

.field public p:I

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Ljava/nio/channels/FileLock;

.field public u:Ljava/nio/channels/FileChannel;

.field public v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public x:J

.field public final y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lds4;",
            ">;"
        }
    .end annotation
.end field

.field public final z:Lo25;


# direct methods
.method public constructor <init>(Lk25;Lrx4;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lj25;->k:Z

    new-instance p2, Lh25;

    .line 1
    invoke-direct {p2, p0}, Lh25;-><init>(Lj25;)V

    iput-object p2, p0, Lj25;->z:Lo25;

    .line 2
    iget-object p2, p1, Lk25;->a:Landroid/content/Context;

    const/4 v0, 0x0

    .line 3
    invoke-static {p2, v0, v0}, Lrx4;->d(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzy;Ljava/lang/Long;)Lrx4;

    move-result-object p2

    iput-object p2, p0, Lj25;->j:Lrx4;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lj25;->x:J

    new-instance v0, Ll25;

    .line 4
    invoke-direct {v0, p0}, Ll25;-><init>(Lj25;)V

    .line 5
    invoke-virtual {v0}, Lb25;->g()V

    iput-object v0, p0, Lj25;->g:Ll25;

    new-instance v0, Lvw4;

    .line 6
    invoke-direct {v0, p0}, Lvw4;-><init>(Lj25;)V

    .line 7
    invoke-virtual {v0}, Lb25;->g()V

    iput-object v0, p0, Lj25;->b:Lvw4;

    new-instance v0, Lkx4;

    .line 8
    invoke-direct {v0, p0}, Lkx4;-><init>(Lj25;)V

    .line 9
    invoke-virtual {v0}, Lb25;->g()V

    iput-object v0, p0, Lj25;->a:Lkx4;

    new-instance v0, Ljava/util/HashMap;

    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lj25;->y:Ljava/util/Map;

    .line 11
    invoke-virtual {p2}, Lrx4;->m()Lox4;

    move-result-object p2

    new-instance v0, Lc25;

    .line 12
    invoke-direct {v0, p0, p1}, Lc25;-><init>(Lj25;Lk25;)V

    .line 13
    invoke-virtual {p2, v0}, Lox4;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final I(Lb25;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    iget-boolean v0, p0, Lb25;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1b

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-static {v2, v1, p0}, Ljo;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Upload Component not created"

    .line 5
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static v(Landroid/content/Context;)Lj25;
    .locals 3

    const-string v0, "null reference"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null reference"

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lj25;->A:Lj25;

    if-nez v0, :cond_1

    const-class v0, Lj25;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lj25;->A:Lj25;

    if-nez v1, :cond_0

    new-instance v1, Lk25;

    .line 5
    invoke-direct {v1, p0}, Lk25;-><init>(Landroid/content/Context;)V

    new-instance p0, Lj25;

    const/4 v2, 0x0

    .line 6
    invoke-direct {p0, v1, v2}, Lj25;-><init>(Lk25;Lrx4;)V

    sput-object p0, Lj25;->A:Lj25;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lj25;->A:Lj25;

    return-object p0
.end method

.method public static final w(Ly44;ILjava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ly44;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "_err"

    if-ge v2, v3, :cond_1

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld54;

    invoke-virtual {v3}, Ld54;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Ld54;->E()Lc54;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v4}, Lc54;->m(Ljava/lang/String;)Lc54;

    int-to-long v2, p1

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lc54;->p(J)Lc54;

    .line 7
    invoke-virtual {v0}, Lz84;->g()Lc94;

    move-result-object p1

    check-cast p1, Ld54;

    .line 8
    invoke-static {}, Ld54;->E()Lc54;

    move-result-object v0

    const-string v2, "_ev"

    .line 9
    invoke-virtual {v0, v2}, Lc54;->m(Ljava/lang/String;)Lc54;

    .line 10
    invoke-virtual {v0, p2}, Lc54;->o(Ljava/lang/String;)Lc54;

    .line 11
    invoke-virtual {v0}, Lz84;->g()Lc94;

    move-result-object p2

    check-cast p2, Ld54;

    .line 12
    iget-boolean v0, p0, Lz84;->g:Z

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p0}, Lz84;->j()V

    iput-boolean v1, p0, Lz84;->g:Z

    :cond_2
    iget-object v0, p0, Lz84;->f:Lc94;

    .line 14
    check-cast v0, Lz44;

    invoke-static {v0, p1}, Lz44;->F(Lz44;Ld54;)V

    .line 15
    iget-boolean p1, p0, Lz84;->g:Z

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {p0}, Lz84;->j()V

    iput-boolean v1, p0, Lz84;->g:Z

    :cond_3
    iget-object p0, p0, Lz84;->f:Lc94;

    .line 17
    check-cast p0, Lz44;

    invoke-static {p0, p2}, Lz44;->F(Lz44;Ld54;)V

    return-void
.end method

.method public static final x(Ly44;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ly44;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld54;

    invoke-virtual {v2}, Ld54;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Ly44;->s(I)Ly44;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final A(Ly44;Ly44;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ly44;->t()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    invoke-static {v0}, Lbi;->b(Z)V

    .line 3
    invoke-virtual {p0}, Lj25;->Q()Ll25;

    .line 4
    invoke-virtual {p1}, Lz84;->g()Lc94;

    move-result-object v0

    check-cast v0, Lz44;

    const-string v1, "_sc"

    invoke-static {v0, v1}, Ll25;->L(Lz44;Ljava/lang/String;)Ld54;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ld54;->v()Ljava/lang/String;

    move-result-object v0

    .line 6
    :goto_0
    invoke-virtual {p0}, Lj25;->Q()Ll25;

    invoke-virtual {p2}, Lz84;->g()Lc94;

    move-result-object v2

    check-cast v2, Lz44;

    const-string v3, "_pc"

    invoke-static {v2, v3}, Ll25;->L(Lz44;Ljava/lang/String;)Ld54;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v2}, Ld54;->v()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0, p1, p2}, Lj25;->B(Ly44;Ly44;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final B(Ly44;Ly44;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ly44;->t()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    invoke-static {v0}, Lbi;->b(Z)V

    .line 3
    invoke-virtual {p0}, Lj25;->Q()Ll25;

    invoke-virtual {p1}, Lz84;->g()Lc94;

    move-result-object v0

    check-cast v0, Lz44;

    const-string v1, "_et"

    invoke-static {v0, v1}, Ll25;->L(Lz44;Ljava/lang/String;)Ld54;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ld54;->w()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ld54;->x()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ld54;->x()J

    move-result-wide v2

    .line 6
    invoke-virtual {p0}, Lj25;->Q()Ll25;

    invoke-virtual {p2}, Lz84;->g()Lc94;

    move-result-object v0

    check-cast v0, Lz44;

    invoke-static {v0, v1}, Ll25;->L(Lz44;Ljava/lang/String;)Ld54;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ld54;->x()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-lez v8, :cond_1

    invoke-virtual {v0}, Ld54;->x()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 7
    :cond_1
    invoke-virtual {p0}, Lj25;->Q()Ll25;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, v1, v0}, Ll25;->J(Ly44;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Lj25;->Q()Ll25;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "_fr"

    invoke-static {p1, v0, p2}, Ll25;->J(Ly44;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final C()Z
    .locals 7

    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lox4;->d()V

    .line 3
    invoke-virtual {p0}, Lj25;->S()V

    .line 4
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "select count(1) > 0 from raw_events"

    .line 5
    invoke-virtual {v0, v2, v1}, Lgs4;->t(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object v0

    invoke-virtual {v0}, Lgs4;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    return v5

    :cond_2
    :goto_1
    return v4
.end method

.method public final D()V
    .locals 19

    move-object/from16 v1, p0

    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lox4;->d()V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lj25;->S()V

    iget-wide v2, v1, Lj25;->m:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const-wide/32 v2, 0x36ee80

    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 4
    iget-object v0, v0, Lrx4;->n:Lb20;

    .line 5
    invoke-interface {v0}, Lb20;->b()J

    move-result-wide v6

    iget-wide v8, v1, Lj25;->m:J

    sub-long/2addr v6, v8

    .line 6
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sub-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 7
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 8
    iget-object v0, v0, Lqw4;->n:Low4;

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload has been suspended. Will update scheduling later in approximately ms"

    .line 10
    invoke-virtual {v0, v3, v2}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    invoke-virtual/range {p0 .. p0}, Lj25;->M()Lyw4;

    move-result-object v0

    invoke-virtual {v0}, Lyw4;->a()V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lj25;->N()La25;

    move-result-object v0

    invoke-virtual {v0}, La25;->i()V

    return-void

    :cond_0
    iput-wide v4, v1, Lj25;->m:J

    :cond_1
    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 13
    invoke-virtual {v0}, Lrx4;->i()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lj25;->C()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_f

    .line 14
    :cond_2
    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 15
    iget-object v0, v0, Lrx4;->n:Lb20;

    .line 16
    invoke-interface {v0}, Lb20;->a()J

    move-result-wide v2

    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 17
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 18
    sget-object v0, Lew4;->A:Ldw4;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ldw4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 19
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v0

    const-string v9, "select count(1) > 0 from raw_events where realtime = 1"

    .line 20
    invoke-virtual {v0, v9, v6}, Lgs4;->t(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v0, v9, v4

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_6

    .line 21
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v0

    const-string v9, "select count(1) > 0 from queue where has_realtime = 1"

    .line 22
    invoke-virtual {v0, v9, v6}, Lgs4;->t(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v0, v9, v4

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_8

    .line 23
    iget-object v9, v1, Lj25;->j:Lrx4;

    .line 24
    iget-object v9, v9, Lrx4;->g:Lcs4;

    const-string v10, "debug.firebase.analytics.app"

    const-string v13, ""

    .line 25
    invoke-virtual {v9, v10, v13}, Lcs4;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 26
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, ".none."

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, v1, Lj25;->j:Lrx4;

    .line 27
    iget-object v9, v9, Lrx4;->g:Lcs4;

    .line 28
    sget-object v9, Lew4;->v:Ldw4;

    .line 29
    invoke-virtual {v9, v6}, Ldw4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    goto :goto_4

    .line 30
    :cond_7
    iget-object v9, v1, Lj25;->j:Lrx4;

    .line 31
    iget-object v9, v9, Lrx4;->g:Lcs4;

    .line 32
    sget-object v9, Lew4;->u:Ldw4;

    .line 33
    invoke-virtual {v9, v6}, Ldw4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    goto :goto_4

    :cond_8
    iget-object v9, v1, Lj25;->j:Lrx4;

    .line 34
    iget-object v9, v9, Lrx4;->g:Lcs4;

    .line 35
    sget-object v9, Lew4;->t:Ldw4;

    .line 36
    invoke-virtual {v9, v6}, Ldw4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 37
    :goto_4
    iget-object v13, v1, Lj25;->j:Lrx4;

    .line 38
    invoke-virtual {v13}, Lrx4;->q()Lex4;

    move-result-object v13

    .line 39
    iget-object v13, v13, Lex4;->e:Lbx4;

    invoke-virtual {v13}, Lbx4;->a()J

    move-result-wide v13

    iget-object v15, v1, Lj25;->j:Lrx4;

    .line 40
    invoke-virtual {v15}, Lrx4;->q()Lex4;

    move-result-object v15

    .line 41
    iget-object v15, v15, Lex4;->f:Lbx4;

    invoke-virtual {v15}, Lbx4;->a()J

    move-result-wide v15

    .line 42
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v11

    const-string v12, "select max(bundle_end_timestamp) from queue"

    .line 43
    invoke-virtual {v11, v12, v6, v4, v5}, Lgs4;->u(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v11

    .line 44
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v1

    move-wide/from16 v17, v9

    const-string v9, "select max(timestamp) from raw_events"

    .line 45
    invoke-virtual {v1, v9, v6, v4, v5}, Lgs4;->u(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v9

    .line 46
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    cmp-long v1, v9, v4

    if-nez v1, :cond_9

    move-object/from16 v1, p0

    goto/16 :goto_6

    :cond_9
    sub-long/2addr v9, v2

    .line 47
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    sub-long v9, v2, v9

    sub-long/2addr v13, v2

    .line 48
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    sub-long/2addr v15, v2

    .line 49
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    sub-long v13, v2, v13

    sub-long/2addr v2, v11

    .line 50
    invoke-static {v2, v3, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-long/2addr v7, v9

    if-eqz v0, :cond_a

    cmp-long v0, v1, v4

    if-lez v0, :cond_a

    .line 51
    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    add-long v7, v7, v17

    .line 52
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lj25;->Q()Ll25;

    move-result-object v0

    move-wide/from16 v11, v17

    invoke-virtual {v0, v1, v2, v11, v12}, Ll25;->D(JJ)Z

    move-result v0

    if-nez v0, :cond_b

    add-long v7, v1, v11

    :cond_b
    cmp-long v0, v13, v4

    if-eqz v0, :cond_d

    cmp-long v0, v13, v9

    if-ltz v0, :cond_d

    const/4 v0, 0x0

    move-object/from16 v1, p0

    :goto_5
    iget-object v2, v1, Lj25;->j:Lrx4;

    .line 53
    iget-object v2, v2, Lrx4;->g:Lcs4;

    const/16 v2, 0x14

    .line 54
    sget-object v3, Lew4;->C:Ldw4;

    .line 55
    invoke-virtual {v3, v6}, Ldw4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v9, 0x0

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v0, v2, :cond_c

    iget-object v2, v1, Lj25;->j:Lrx4;

    .line 56
    iget-object v2, v2, Lrx4;->g:Lcs4;

    .line 57
    sget-object v2, Lew4;->B:Ldw4;

    .line 58
    invoke-virtual {v2, v6}, Ldw4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/16 v9, 0x1

    shl-long/2addr v9, v0

    mul-long v2, v2, v9

    add-long/2addr v7, v2

    cmp-long v2, v7, v13

    if-gtz v2, :cond_e

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_c
    :goto_6
    move-wide v7, v4

    goto :goto_7

    :cond_d
    move-object/from16 v1, p0

    :cond_e
    :goto_7
    cmp-long v0, v7, v4

    if-nez v0, :cond_f

    .line 59
    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 60
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 61
    iget-object v0, v0, Lqw4;->n:Low4;

    const-string v2, "Next upload time is 0"

    .line 62
    invoke-virtual {v0, v2}, Low4;->a(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Lj25;->M()Lyw4;

    move-result-object v0

    invoke-virtual {v0}, Lyw4;->a()V

    .line 64
    invoke-virtual/range {p0 .. p0}, Lj25;->N()La25;

    move-result-object v0

    invoke-virtual {v0}, La25;->i()V

    return-void

    .line 65
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lj25;->K()Lvw4;

    move-result-object v0

    invoke-virtual {v0}, Lvw4;->i()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 66
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v0

    .line 67
    iget-object v0, v0, Lex4;->g:Lbx4;

    invoke-virtual {v0}, Lbx4;->a()J

    move-result-wide v2

    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 68
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 69
    sget-object v0, Lew4;->r:Ldw4;

    .line 70
    invoke-virtual {v0, v6}, Ldw4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 71
    invoke-virtual/range {p0 .. p0}, Lj25;->Q()Ll25;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v9, v10}, Ll25;->D(JJ)Z

    move-result v0

    if-nez v0, :cond_10

    add-long/2addr v2, v9

    .line 72
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 73
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lj25;->M()Lyw4;

    move-result-object v0

    invoke-virtual {v0}, Lyw4;->a()V

    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 74
    iget-object v0, v0, Lrx4;->n:Lb20;

    .line 75
    invoke-interface {v0}, Lb20;->a()J

    move-result-wide v2

    sub-long/2addr v7, v2

    cmp-long v0, v7, v4

    if-gtz v0, :cond_11

    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 76
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 77
    sget-object v0, Lew4;->w:Ldw4;

    .line 78
    invoke-virtual {v0, v6}, Ldw4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 79
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v0

    .line 80
    iget-object v0, v0, Lex4;->e:Lbx4;

    iget-object v2, v1, Lj25;->j:Lrx4;

    .line 81
    iget-object v2, v2, Lrx4;->n:Lb20;

    .line 82
    invoke-interface {v2}, Lb20;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lbx4;->b(J)V

    :cond_11
    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 83
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 84
    iget-object v0, v0, Lqw4;->n:Low4;

    .line 85
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload scheduled in approximately ms"

    invoke-virtual {v0, v3, v2}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    invoke-virtual/range {p0 .. p0}, Lj25;->N()La25;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lb25;->f()V

    iget-object v2, v0, Lly4;->a:Lrx4;

    .line 88
    iget-object v3, v2, Lrx4;->f:Lc35;

    .line 89
    iget-object v2, v2, Lrx4;->a:Landroid/content/Context;

    .line 90
    invoke-static {v2}, Ljx4;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_12

    iget-object v3, v0, Lly4;->a:Lrx4;

    .line 91
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v3

    .line 92
    iget-object v3, v3, Lqw4;->m:Low4;

    const-string v9, "Receiver not registered/enabled"

    .line 93
    invoke-virtual {v3, v9}, Low4;->a(Ljava/lang/String;)V

    .line 94
    :cond_12
    invoke-static {v2}, Lp25;->D(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, v0, Lly4;->a:Lrx4;

    .line 95
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 96
    iget-object v2, v2, Lqw4;->m:Low4;

    const-string v3, "Service not registered/enabled"

    .line 97
    invoke-virtual {v2, v3}, Low4;->a(Ljava/lang/String;)V

    .line 98
    :cond_13
    invoke-virtual {v0}, La25;->i()V

    iget-object v2, v0, Lly4;->a:Lrx4;

    .line 99
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 100
    iget-object v2, v2, Lqw4;->n:Low4;

    .line 101
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v9, "Scheduling upload, millis"

    invoke-virtual {v2, v9, v3}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, Lly4;->a:Lrx4;

    .line 102
    iget-object v2, v2, Lrx4;->n:Lb20;

    .line 103
    invoke-interface {v2}, Lb20;->b()J

    move-result-wide v2

    add-long v11, v2, v7

    iget-object v2, v0, Lly4;->a:Lrx4;

    .line 104
    iget-object v2, v2, Lrx4;->g:Lcs4;

    .line 105
    sget-object v2, Lew4;->x:Ldw4;

    invoke-virtual {v2, v6}, Ldw4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    cmp-long v9, v7, v2

    if-gez v9, :cond_15

    iget-object v2, v0, La25;->e:Lis4;

    .line 106
    iget-wide v2, v2, Lis4;->c:J

    cmp-long v9, v2, v4

    if-eqz v9, :cond_14

    const/4 v2, 0x1

    goto :goto_8

    :cond_14
    const/4 v2, 0x0

    :goto_8
    if-nez v2, :cond_15

    .line 107
    iget-object v2, v0, La25;->e:Lis4;

    .line 108
    invoke-virtual {v2, v7, v8}, Lis4;->b(J)V

    :cond_15
    iget-object v2, v0, Lly4;->a:Lrx4;

    .line 109
    iget-object v3, v2, Lrx4;->f:Lc35;

    .line 110
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_1a

    .line 111
    iget-object v2, v2, Lrx4;->a:Landroid/content/Context;

    .line 112
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.google.android.gms.measurement.AppMeasurementJobService"

    .line 113
    invoke-direct {v3, v2, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, La25;->k()I

    move-result v0

    .line 115
    new-instance v4, Landroid/os/PersistableBundle;

    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    const-string v5, "action"

    const-string v6, "com.google.android.gms.measurement.UPLOAD"

    .line 116
    invoke-virtual {v4, v5, v6}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v5, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v5, v0, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 118
    invoke-virtual {v5, v7, v8}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    add-long/2addr v7, v7

    .line 119
    invoke-virtual {v0, v7, v8}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0, v4}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v3

    .line 122
    sget-object v0, Lr74;->a:Ljava/lang/reflect/Method;

    const-string v0, "jobscheduler"

    .line 123
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/job/JobScheduler;

    .line 124
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lr74;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_19

    const-string v0, "android.permission.UPDATE_DEVICE_STATS"

    .line 126
    invoke-virtual {v2, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_c

    .line 127
    :cond_16
    sget-object v0, Lr74;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_17

    :try_start_0
    const-class v2, Landroid/os/UserHandle;

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    .line 128
    invoke-virtual {v0, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_17

    .line 129
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    :goto_9
    const/4 v2, 0x6

    const-string v5, "JobSchedulerCompat"

    .line 130
    invoke-static {v5, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "myUserId invocation illegal"

    .line 131
    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v9, 0x0

    :goto_a
    const-string v0, "com.google.android.gms"

    const-string v2, "UploadAlarm"

    .line 132
    sget-object v5, Lr74;->a:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_18

    const/4 v6, 0x4

    :try_start_1
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v0, 0x2

    .line 133
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v0, 0x3

    aput-object v2, v6, v0

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1b

    .line 134
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_d

    :catch_2
    move-exception v0

    goto :goto_b

    :catch_3
    move-exception v0

    :goto_b
    const-string v5, "error calling scheduleAsPackage"

    .line 135
    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    :cond_18
    invoke-virtual {v4, v3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    goto :goto_d

    .line 137
    :cond_19
    :goto_c
    invoke-virtual {v4, v3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    goto :goto_d

    .line 138
    :cond_1a
    iget-object v9, v0, La25;->d:Landroid/app/AlarmManager;

    const/4 v10, 0x2

    .line 139
    sget-object v2, Lew4;->s:Ldw4;

    .line 140
    invoke-virtual {v2, v6}, Ldw4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 141
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 142
    invoke-virtual {v0}, La25;->l()Landroid/app/PendingIntent;

    move-result-object v15

    .line 143
    invoke-virtual/range {v9 .. v15}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    :cond_1b
    :goto_d
    return-void

    .line 144
    :cond_1c
    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 145
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 146
    iget-object v0, v0, Lqw4;->n:Low4;

    const-string v2, "No network"

    .line 147
    invoke-virtual {v0, v2}, Low4;->a(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p0 .. p0}, Lj25;->M()Lyw4;

    move-result-object v0

    .line 149
    iget-object v2, v0, Lyw4;->a:Lj25;

    .line 150
    invoke-virtual {v2}, Lj25;->S()V

    iget-object v2, v0, Lyw4;->a:Lj25;

    .line 151
    invoke-virtual {v2}, Lj25;->m()Lox4;

    move-result-object v2

    .line 152
    invoke-virtual {v2}, Lox4;->d()V

    iget-boolean v2, v0, Lyw4;->b:Z

    if-eqz v2, :cond_1d

    goto :goto_e

    :cond_1d
    iget-object v2, v0, Lyw4;->a:Lj25;

    .line 153
    iget-object v2, v2, Lj25;->j:Lrx4;

    .line 154
    iget-object v2, v2, Lrx4;->a:Landroid/content/Context;

    .line 155
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 156
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, v0, Lyw4;->a:Lj25;

    .line 158
    invoke-virtual {v2}, Lj25;->K()Lvw4;

    move-result-object v2

    invoke-virtual {v2}, Lvw4;->i()Z

    move-result v2

    iput-boolean v2, v0, Lyw4;->c:Z

    iget-object v2, v0, Lyw4;->a:Lj25;

    .line 159
    invoke-virtual {v2}, Lj25;->a()Lqw4;

    move-result-object v2

    .line 160
    iget-object v2, v2, Lqw4;->n:Low4;

    .line 161
    iget-boolean v3, v0, Lyw4;->c:Z

    .line 162
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Registering connectivity change receiver. Network connected"

    invoke-virtual {v2, v4, v3}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lyw4;->b:Z

    .line 163
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lj25;->N()La25;

    move-result-object v0

    invoke-virtual {v0}, La25;->i()V

    return-void

    .line 164
    :cond_1e
    :goto_f
    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 165
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 166
    iget-object v0, v0, Lqw4;->n:Low4;

    const-string v2, "Nothing to upload or uploading impossible"

    .line 167
    invoke-virtual {v0, v2}, Low4;->a(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p0 .. p0}, Lj25;->M()Lyw4;

    move-result-object v0

    invoke-virtual {v0}, Lyw4;->a()V

    .line 169
    invoke-virtual/range {p0 .. p0}, Lj25;->N()La25;

    move-result-object v0

    invoke-virtual {v0}, La25;->i()V

    return-void
.end method

.method public final E()V
    .locals 5

    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lox4;->d()V

    iget-boolean v0, p0, Lj25;->q:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lj25;->r:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lj25;->s:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 4
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lqw4;->n:Low4;

    const-string v1, "Stopping uploading service(s)"

    .line 6
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lj25;->n:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 8
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lj25;->n:Ljava/util/List;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 10
    :cond_3
    :goto_1
    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 11
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 12
    iget-object v0, v0, Lqw4;->n:Low4;

    .line 13
    iget-boolean v1, p0, Lj25;->q:Z

    .line 14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lj25;->r:Z

    .line 15
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lj25;->s:Z

    .line 16
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Not stopping services. fetch, network, upload"

    .line 17
    invoke-virtual {v0, v4, v1, v2, v3}, Low4;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final F(Lvx4;)Ljava/lang/Boolean;
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lvx4;->R()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 2
    iget-object v0, v0, Lrx4;->a:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Li20;->a(Landroid/content/Context;)Lh20;

    move-result-object v0

    invoke-virtual {p1}, Lvx4;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lh20;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 4
    invoke-virtual {p1}, Lvx4;->R()J

    move-result-wide v1

    int-to-long v3, v0

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    .line 5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 6
    :cond_0
    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 7
    iget-object v0, v0, Lrx4;->a:Landroid/content/Context;

    .line 8
    invoke-static {v0}, Li20;->a(Landroid/content/Context;)Lh20;

    move-result-object v0

    invoke-virtual {p1}, Lvx4;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lh20;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lvx4;->P()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lvx4;->P()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 11
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final G(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v1

    invoke-virtual {v1, v2}, Lgs4;->L(Ljava/lang/String;)Lvx4;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 2
    invoke-virtual {v1}, Lvx4;->P()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-virtual {v0, v1}, Lj25;->F(Lvx4;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 4
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, v0, Lj25;->j:Lrx4;

    .line 6
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 7
    iget-object v1, v1, Lqw4;->f:Low4;

    .line 8
    invoke-static/range {p1 .. p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "App version does not match; dropping. appId"

    .line 9
    invoke-virtual {v1, v4, v2}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3

    .line 10
    :cond_2
    :goto_0
    new-instance v30, Lcom/google/android/gms/measurement/internal/zzp;

    .line 11
    invoke-virtual {v1}, Lvx4;->B()Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-virtual {v1}, Lvx4;->P()Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-virtual {v1}, Lvx4;->R()J

    move-result-wide v6

    .line 14
    invoke-virtual {v1}, Lvx4;->T()Ljava/lang/String;

    move-result-object v8

    .line 15
    invoke-virtual {v1}, Lvx4;->V()J

    move-result-wide v9

    .line 16
    invoke-virtual {v1}, Lvx4;->b()J

    move-result-wide v15

    .line 17
    invoke-virtual {v1}, Lvx4;->f()Z

    move-result v13

    .line 18
    invoke-virtual {v1}, Lvx4;->J()Ljava/lang/String;

    move-result-object v17

    .line 19
    invoke-virtual {v1}, Lvx4;->q()J

    move-result-wide v23

    .line 20
    invoke-virtual {v1}, Lvx4;->s()Z

    move-result v21

    .line 21
    invoke-virtual {v1}, Lvx4;->D()Ljava/lang/String;

    move-result-object v25

    .line 22
    invoke-virtual {v1}, Lvx4;->u()Ljava/lang/Boolean;

    move-result-object v26

    .line 23
    invoke-virtual {v1}, Lvx4;->d()J

    move-result-wide v27

    .line 24
    invoke-virtual {v1}, Lvx4;->w()Ljava/util/List;

    move-result-object v29

    .line 25
    invoke-static {}, Lae4;->b()Z

    iget-object v11, v0, Lj25;->j:Lrx4;

    .line 26
    iget-object v11, v11, Lrx4;->g:Lcs4;

    .line 27
    sget-object v12, Lew4;->i0:Ldw4;

    invoke-virtual {v11, v2, v12}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 28
    invoke-virtual {v1}, Lvx4;->F()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v31, v1

    goto :goto_1

    :cond_3
    move-object/from16 v31, v3

    .line 29
    :goto_1
    invoke-static {}, Lpc4;->b()Z

    iget-object v1, v0, Lj25;->j:Lrx4;

    .line 30
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 31
    sget-object v11, Lew4;->G0:Ldw4;

    .line 32
    invoke-virtual {v1, v3, v11}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 33
    invoke-virtual/range {p0 .. p1}, Lj25;->U(Ljava/lang/String;)Lds4;

    move-result-object v1

    invoke-virtual {v1}, Lds4;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    const-string v1, ""

    :goto_2
    move-object/from16 v32, v1

    const/4 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v1, v30

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v5

    move-wide v5, v6

    move-object v7, v8

    move-wide v8, v9

    move-wide v10, v15

    move-object/from16 v15, v17

    move-wide/from16 v16, v23

    move-object/from16 v23, v25

    move-object/from16 v24, v26

    move-wide/from16 v25, v27

    move-object/from16 v27, v29

    move-object/from16 v28, v31

    move-object/from16 v29, v32

    .line 34
    invoke-direct/range {v1 .. v29}, Lcom/google/android/gms/measurement/internal/zzp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v30

    .line 35
    :cond_5
    :goto_3
    iget-object v1, v0, Lj25;->j:Lrx4;

    .line 36
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 37
    iget-object v1, v1, Lqw4;->m:Low4;

    const-string v4, "No app data available; dropping"

    .line 38
    invoke-virtual {v1, v4, v2}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3
.end method

.method public final H(Lcom/google/android/gms/measurement/internal/zzp;)Z
    .locals 3

    .line 1
    invoke-static {}, Lae4;->b()Z

    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 2
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 3
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    sget-object v2, Lew4;->i0:Ldw4;

    invoke-virtual {v0, v1, v2}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->y:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->u:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v2

    .line 7
    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->u:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v2
.end method

.method public final J()Lkx4;
    .locals 1

    iget-object v0, p0, Lj25;->a:Lkx4;

    .line 1
    invoke-static {v0}, Lj25;->I(Lb25;)V

    iget-object v0, p0, Lj25;->a:Lkx4;

    return-object v0
.end method

.method public final K()Lvw4;
    .locals 1

    iget-object v0, p0, Lj25;->b:Lvw4;

    .line 1
    invoke-static {v0}, Lj25;->I(Lb25;)V

    iget-object v0, p0, Lj25;->b:Lvw4;

    return-object v0
.end method

.method public final L()Lgs4;
    .locals 1

    iget-object v0, p0, Lj25;->c:Lgs4;

    .line 1
    invoke-static {v0}, Lj25;->I(Lb25;)V

    iget-object v0, p0, Lj25;->c:Lgs4;

    return-object v0
.end method

.method public final M()Lyw4;
    .locals 2

    iget-object v0, p0, Lj25;->d:Lyw4;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final N()La25;
    .locals 1

    iget-object v0, p0, Lj25;->e:La25;

    .line 1
    invoke-static {v0}, Lj25;->I(Lb25;)V

    iget-object v0, p0, Lj25;->e:La25;

    return-object v0
.end method

.method public final O()Lb35;
    .locals 1

    iget-object v0, p0, Lj25;->f:Lb35;

    .line 1
    invoke-static {v0}, Lj25;->I(Lb25;)V

    iget-object v0, p0, Lj25;->f:Lb35;

    return-object v0
.end method

.method public final P()Lyz4;
    .locals 1

    iget-object v0, p0, Lj25;->h:Lyz4;

    .line 1
    invoke-static {v0}, Lj25;->I(Lb25;)V

    iget-object v0, p0, Lj25;->h:Lyz4;

    return-object v0
.end method

.method public final Q()Ll25;
    .locals 1

    iget-object v0, p0, Lj25;->g:Ll25;

    .line 1
    invoke-static {v0}, Lj25;->I(Lb25;)V

    iget-object v0, p0, Lj25;->g:Ll25;

    return-object v0
.end method

.method public final R()Llw4;
    .locals 1

    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->u()Llw4;

    move-result-object v0

    return-object v0
.end method

.method public final S()V
    .locals 2

    iget-boolean v0, p0, Lj25;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UploadController is not initialized"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final T(Ljava/lang/String;Lds4;)V
    .locals 5

    .line 1
    invoke-static {}, Lpc4;->b()Z

    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 2
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 3
    sget-object v1, Lew4;->G0:Ldw4;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 4
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lox4;->d()V

    .line 6
    invoke-virtual {p0}, Lj25;->S()V

    iget-object v0, p0, Lj25;->y:Ljava/util/Map;

    .line 7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object v0

    .line 9
    invoke-static {}, Lpc4;->b()Z

    iget-object v3, v0, Lly4;->a:Lrx4;

    .line 10
    iget-object v3, v3, Lrx4;->g:Lcs4;

    .line 11
    invoke-virtual {v3, v2, v1}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "null reference"

    .line 12
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    invoke-virtual {v0}, Lly4;->d()V

    invoke-virtual {v0}, Lb25;->f()V

    new-instance v1, Landroid/content/ContentValues;

    .line 14
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_id"

    .line 15
    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Lds4;->c()Ljava/lang/String;

    move-result-object p2

    const-string v3, "consent_state"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :try_start_0
    invoke-virtual {v0}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v3, "consent_settings"

    const/4 v4, 0x5

    .line 18
    invoke-virtual {p2, v3, v2, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p2, v1, v3

    if-nez p2, :cond_0

    iget-object p2, v0, Lly4;->a:Lrx4;

    .line 19
    invoke-virtual {p2}, Lrx4;->a()Lqw4;

    move-result-object p2

    .line 20
    iget-object p2, p2, Lqw4;->f:Low4;

    const-string v1, "Failed to insert/update consent setting (got -1). appId"

    .line 21
    invoke-static {p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 22
    invoke-virtual {p2, v1, v2}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 23
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 24
    iget-object v0, v0, Lqw4;->f:Low4;

    .line 25
    invoke-static {p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Error storing consent setting. appId, error"

    .line 26
    invoke-virtual {v0, v1, p1, p2}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final U(Ljava/lang/String;)Lds4;
    .locals 6

    sget-object v0, Lds4;->c:Lds4;

    .line 1
    invoke-static {}, Lpc4;->b()Z

    iget-object v1, p0, Lj25;->j:Lrx4;

    .line 2
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 3
    sget-object v2, Lew4;->G0:Ldw4;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 4
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lox4;->d()V

    .line 6
    invoke-virtual {p0}, Lj25;->S()V

    iget-object v0, p0, Lj25;->y:Ljava/util/Map;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lds4;

    if-nez v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object v0

    const-string v1, "null reference"

    .line 9
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v0}, Lly4;->d()V

    invoke-virtual {v0}, Lb25;->f()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "select consent_state from consent_settings where app_id=? limit 1;"

    .line 11
    :try_start_0
    invoke-virtual {v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 12
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const-string v0, "G1"

    .line 15
    :goto_0
    invoke-static {v0}, Lds4;->b(Ljava/lang/String;)Lds4;

    move-result-object v0

    .line 16
    invoke-virtual {p0, p1, v0}, Lj25;->T(Ljava/lang/String;Lds4;)V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 17
    :try_start_1
    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 18
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 19
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v1, "Database error"

    .line 20
    invoke-virtual {v0, v1, v5, p1}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v3, :cond_1

    .line 22
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 23
    :cond_1
    throw p1

    :cond_2
    return-object v0
.end method

.method public final V()J
    .locals 8

    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 1
    iget-object v0, v0, Lrx4;->n:Lb20;

    .line 2
    invoke-interface {v0}, Lb20;->a()J

    move-result-wide v0

    iget-object v2, p0, Lj25;->j:Lrx4;

    .line 3
    invoke-virtual {v2}, Lrx4;->q()Lex4;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lmy4;->i()V

    invoke-virtual {v2}, Lly4;->d()V

    iget-object v3, v2, Lex4;->i:Lbx4;

    .line 5
    invoke-virtual {v3}, Lbx4;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    iget-object v3, v2, Lly4;->a:Lrx4;

    .line 6
    invoke-virtual {v3}, Lrx4;->t()Lp25;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Lp25;->d0()Ljava/security/SecureRandom;

    move-result-object v3

    const v4, 0x5265c00

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iget-object v2, v2, Lex4;->i:Lbx4;

    .line 8
    invoke-virtual {v2, v3, v4}, Lbx4;->b(J)V

    :cond_0
    add-long/2addr v0, v3

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final W(Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v2

    invoke-virtual {v2, v3}, Lgs4;->L(Ljava/lang/String;)Lvx4;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2
    invoke-virtual {v2}, Lvx4;->P()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-virtual {v0, v2}, Lj25;->F(Lvx4;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_1

    .line 4
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzas;->e:Ljava/lang/String;

    const-string v5, "_ui"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, Lj25;->j:Lrx4;

    .line 5
    invoke-virtual {v4}, Lrx4;->a()Lqw4;

    move-result-object v4

    .line 6
    iget-object v4, v4, Lqw4;->i:Low4;

    .line 7
    invoke-static/range {p2 .. p2}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Could not find package. appId"

    invoke-virtual {v4, v6, v5}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v1, v0, Lj25;->j:Lrx4;

    .line 9
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 10
    iget-object v1, v1, Lqw4;->f:Low4;

    .line 11
    invoke-static/range {p2 .. p2}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "App version does not match; dropping event. appId"

    .line 12
    invoke-virtual {v1, v3, v2}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 13
    :cond_2
    :goto_0
    new-instance v14, Lcom/google/android/gms/measurement/internal/zzp;

    .line 14
    invoke-virtual {v2}, Lvx4;->B()Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {v2}, Lvx4;->P()Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-virtual {v2}, Lvx4;->R()J

    move-result-wide v6

    .line 17
    invoke-virtual {v2}, Lvx4;->T()Ljava/lang/String;

    move-result-object v8

    .line 18
    invoke-virtual {v2}, Lvx4;->V()J

    move-result-wide v9

    .line 19
    invoke-virtual {v2}, Lvx4;->b()J

    move-result-wide v11

    .line 20
    invoke-virtual {v2}, Lvx4;->f()Z

    move-result v16

    .line 21
    invoke-virtual {v2}, Lvx4;->J()Ljava/lang/String;

    move-result-object v17

    .line 22
    invoke-virtual {v2}, Lvx4;->q()J

    move-result-wide v24

    .line 23
    invoke-virtual {v2}, Lvx4;->s()Z

    move-result v22

    .line 24
    invoke-virtual {v2}, Lvx4;->D()Ljava/lang/String;

    move-result-object v26

    .line 25
    invoke-virtual {v2}, Lvx4;->u()Ljava/lang/Boolean;

    move-result-object v27

    .line 26
    invoke-virtual {v2}, Lvx4;->d()J

    move-result-wide v28

    .line 27
    invoke-virtual {v2}, Lvx4;->w()Ljava/util/List;

    move-result-object v30

    .line 28
    invoke-static {}, Lae4;->b()Z

    iget-object v13, v0, Lj25;->j:Lrx4;

    .line 29
    iget-object v13, v13, Lrx4;->g:Lcs4;

    .line 30
    invoke-virtual {v2}, Lvx4;->y()Ljava/lang/String;

    move-result-object v15

    sget-object v1, Lew4;->i0:Ldw4;

    invoke-virtual {v13, v15, v1}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1

    const/4 v13, 0x0

    if-eqz v1, :cond_3

    .line 31
    invoke-virtual {v2}, Lvx4;->F()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v13

    .line 32
    :goto_1
    invoke-static {}, Lpc4;->b()Z

    iget-object v2, v0, Lj25;->j:Lrx4;

    .line 33
    iget-object v2, v2, Lrx4;->g:Lcs4;

    .line 34
    sget-object v15, Lew4;->G0:Ldw4;

    .line 35
    invoke-virtual {v2, v13, v15}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 36
    invoke-virtual {v0, v3}, Lj25;->U(Ljava/lang/String;)Lds4;

    move-result-object v2

    invoke-virtual {v2}, Lds4;->c()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    const-string v2, ""

    :goto_2
    move-object/from16 v31, v2

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object/from16 v32, v14

    move/from16 v14, v16

    move-object/from16 v16, v17

    move-wide/from16 v17, v24

    move-object/from16 v24, v26

    move-object/from16 v25, v27

    move-wide/from16 v26, v28

    move-object/from16 v28, v30

    move-object/from16 v29, v1

    move-object/from16 v30, v31

    .line 37
    invoke-direct/range {v2 .. v30}, Lcom/google/android/gms/measurement/internal/zzp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    .line 38
    invoke-virtual {v0, v1, v2}, Lj25;->b(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void

    .line 39
    :cond_5
    :goto_3
    iget-object v1, v0, Lj25;->j:Lrx4;

    .line 40
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 41
    iget-object v1, v1, Lqw4;->m:Low4;

    const-string v2, "No app data available; dropping event"

    .line 42
    invoke-virtual {v1, v2, v3}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final a()Lqw4;
    .locals 1

    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 8

    .line 1
    invoke-static {}, Lde4;->b()Z

    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 2
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 3
    sget-object v1, Lew4;->z0:Ldw4;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1}, Lrw4;->a(Lcom/google/android/gms/measurement/internal/zzas;)Lrw4;

    move-result-object p1

    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 5
    invoke-virtual {v0}, Lrx4;->t()Lp25;

    move-result-object v0

    iget-object v1, p1, Lrw4;->d:Landroid/os/Bundle;

    .line 6
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object v3

    iget-object v4, p2, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lgs4;->p(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 7
    invoke-virtual {v0, v1, v3}, Lp25;->v(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 8
    invoke-virtual {v0}, Lrx4;->t()Lp25;

    move-result-object v0

    iget-object v1, p0, Lj25;->j:Lrx4;

    .line 9
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 10
    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcs4;->i(Ljava/lang/String;)I

    move-result v1

    .line 11
    invoke-virtual {v0, p1, v1}, Lp25;->u(Lrw4;I)V

    .line 12
    invoke-virtual {p1}, Lrw4;->b()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 13
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 14
    sget-object v1, Lew4;->d0:Ldw4;

    .line 15
    invoke-virtual {v0, v2, v1}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzas;->e:Ljava/lang/String;

    const-string v1, "_cmp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzas;->f:Lcom/google/android/gms/measurement/internal/zzaq;

    .line 18
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzaq;->e:Landroid/os/Bundle;

    const-string v1, "_cis"

    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "referrer API v2"

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzas;->f:Lcom/google/android/gms/measurement/internal/zzaq;

    .line 22
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzaq;->e:Landroid/os/Bundle;

    const-string v1, "gclid"

    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 24
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 25
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkr;

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzas;->h:J

    const-string v3, "_lgclid"

    const-string v7, "auto"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, v0, p2}, Lj25;->p(Lcom/google/android/gms/measurement/internal/zzkr;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 27
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lj25;->c(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "null reference"

    .line 1
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-static {v3}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, v1, Lj25;->j:Lrx4;

    .line 3
    invoke-virtual {v3}, Lrx4;->m()Lox4;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Lox4;->d()V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lj25;->S()V

    .line 6
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    .line 7
    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzas;->h:J

    .line 8
    invoke-virtual/range {p0 .. p0}, Lj25;->Q()Ll25;

    invoke-static/range {p1 .. p2}, Ll25;->K(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 9
    :cond_0
    iget-boolean v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->l:Z

    if-nez v4, :cond_1

    .line 10
    invoke-virtual {v1, v2}, Lj25;->u(Lcom/google/android/gms/measurement/internal/zzp;)Lvx4;

    return-void

    .line 11
    :cond_1
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->x:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 12
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzas;->e:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 13
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzas;->f:Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->M0()Landroid/os/Bundle;

    move-result-object v4

    const-wide/16 v5, 0x1

    const-string v7, "ga_safelisted"

    .line 14
    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzas;

    .line 15
    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/zzas;->e:Ljava/lang/String;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v15, v4}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzas;->g:Ljava/lang/String;

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/zzas;->h:J

    move-object v13, v5

    move-object/from16 v16, v4

    move-wide/from16 v17, v6

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    move-object v0, v5

    goto :goto_0

    .line 16
    :cond_2
    iget-object v2, v1, Lj25;->j:Lrx4;

    .line 17
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 18
    iget-object v2, v2, Lqw4;->m:Low4;

    .line 19
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzas;->e:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzas;->g:Ljava/lang/String;

    const-string v5, "Dropping non-safelisted event. appId, event name, origin"

    .line 20
    invoke-virtual {v2, v5, v3, v4, v0}, Low4;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 21
    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v4

    invoke-virtual {v4}, Lgs4;->v()V

    .line 22
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v4

    .line 23
    invoke-static {v3}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    invoke-virtual {v4}, Lly4;->d()V

    invoke-virtual {v4}, Lb25;->f()V

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v13, 0x1

    cmp-long v9, v11, v5

    if-gez v9, :cond_4

    iget-object v4, v4, Lly4;->a:Lrx4;

    .line 25
    invoke-virtual {v4}, Lrx4;->a()Lqw4;

    move-result-object v4

    .line 26
    iget-object v4, v4, Lqw4;->i:Low4;

    const-string v5, "Invalid time querying timed out conditional properties"

    .line 27
    invoke-static {v3}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 28
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 29
    invoke-virtual {v4, v5, v6, v10}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_1

    :cond_4
    new-array v5, v8, [Ljava/lang/String;

    aput-object v3, v5, v7

    .line 31
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v13

    const-string v6, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    .line 32
    invoke-virtual {v4, v6, v5}, Lgs4;->K(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 33
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/zzaa;

    if-eqz v5, :cond_5

    iget-object v6, v1, Lj25;->j:Lrx4;

    .line 34
    invoke-virtual {v6}, Lrx4;->a()Lqw4;

    move-result-object v6

    .line 35
    iget-object v6, v6, Lqw4;->n:Low4;

    const-string v10, "User property timed out"

    .line 36
    iget-object v14, v5, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    iget-object v15, v1, Lj25;->j:Lrx4;

    .line 37
    invoke-virtual {v15}, Lrx4;->u()Llw4;

    move-result-object v15

    iget-object v13, v5, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 38
    iget-object v13, v13, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    invoke-virtual {v15, v13}, Llw4;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v15, v5, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 39
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzkr;->n()Ljava/lang/Object;

    move-result-object v15

    .line 40
    invoke-virtual {v6, v10, v14, v13, v15}, Low4;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzaa;->k:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz v6, :cond_6

    new-instance v10, Lcom/google/android/gms/measurement/internal/zzas;

    .line 41
    invoke-direct {v10, v6, v11, v12}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzas;J)V

    invoke-virtual {v1, v10, v2}, Lj25;->d(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 42
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v6

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    invoke-virtual {v6, v3, v5}, Lgs4;->I(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    goto :goto_2

    .line 43
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v4

    .line 44
    invoke-static {v3}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    invoke-virtual {v4}, Lly4;->d()V

    invoke-virtual {v4}, Lb25;->f()V

    if-gez v9, :cond_8

    iget-object v4, v4, Lly4;->a:Lrx4;

    .line 46
    invoke-virtual {v4}, Lrx4;->a()Lqw4;

    move-result-object v4

    .line 47
    iget-object v4, v4, Lqw4;->i:Low4;

    const-string v5, "Invalid time querying expired conditional properties"

    .line 48
    invoke-static {v3}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 49
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 50
    invoke-virtual {v4, v5, v6, v10}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_3

    :cond_8
    new-array v5, v8, [Ljava/lang/String;

    aput-object v3, v5, v7

    .line 52
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x1

    aput-object v6, v5, v10

    const-string v6, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    .line 53
    invoke-virtual {v4, v6, v5}, Lgs4;->K(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 54
    :goto_3
    new-instance v5, Ljava/util/ArrayList;

    .line 55
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/measurement/internal/zzaa;

    if-eqz v6, :cond_9

    iget-object v10, v1, Lj25;->j:Lrx4;

    .line 57
    invoke-virtual {v10}, Lrx4;->a()Lqw4;

    move-result-object v10

    .line 58
    iget-object v10, v10, Lqw4;->n:Low4;

    const-string v13, "User property expired"

    .line 59
    iget-object v14, v6, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    iget-object v15, v1, Lj25;->j:Lrx4;

    .line 60
    invoke-virtual {v15}, Lrx4;->u()Llw4;

    move-result-object v15

    iget-object v8, v6, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 61
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    invoke-virtual {v15, v8}, Llw4;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v15, v6, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 62
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzkr;->n()Ljava/lang/Object;

    move-result-object v15

    .line 63
    invoke-virtual {v10, v13, v14, v8, v15}, Low4;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v8

    iget-object v10, v6, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    invoke-virtual {v8, v3, v10}, Lgs4;->B(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v6, Lcom/google/android/gms/measurement/internal/zzaa;->o:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz v8, :cond_a

    .line 65
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v8

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    invoke-virtual {v8, v3, v6}, Lgs4;->I(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    goto :goto_4

    .line 67
    :cond_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/zzas;

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzas;

    .line 68
    invoke-direct {v6, v5, v11, v12}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzas;J)V

    invoke-virtual {v1, v6, v2}, Lj25;->d(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_5

    .line 69
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzas;->e:Ljava/lang/String;

    .line 70
    invoke-static {v3}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    invoke-static {v5}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    invoke-virtual {v4}, Lly4;->d()V

    invoke-virtual {v4}, Lb25;->f()V

    if-gez v9, :cond_d

    iget-object v6, v4, Lly4;->a:Lrx4;

    .line 73
    invoke-virtual {v6}, Lrx4;->a()Lqw4;

    move-result-object v6

    .line 74
    iget-object v6, v6, Lqw4;->i:Low4;

    const-string v7, "Invalid time querying triggered conditional properties"

    .line 75
    invoke-static {v3}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v4, Lly4;->a:Lrx4;

    .line 76
    invoke-virtual {v4}, Lrx4;->u()Llw4;

    move-result-object v4

    .line 77
    invoke-virtual {v4, v5}, Llw4;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 79
    invoke-virtual {v6, v7, v3, v4, v5}, Low4;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_6

    :cond_d
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v5, v6, v3

    .line 81
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v6, v5

    const-string v3, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    .line 82
    invoke-virtual {v4, v3, v6}, Lgs4;->K(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 83
    :goto_6
    new-instance v13, Ljava/util/ArrayList;

    .line 84
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lcom/google/android/gms/measurement/internal/zzaa;

    if-eqz v14, :cond_e

    iget-object v4, v14, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    new-instance v15, Ln25;

    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    iget-object v6, v14, Lcom/google/android/gms/measurement/internal/zzaa;->f:Ljava/lang/String;

    .line 86
    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    .line 87
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkr;->n()Ljava/lang/Object;

    move-result-object v10

    move-object v4, v15

    move-wide v8, v11

    invoke-direct/range {v4 .. v10}, Ln25;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 88
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v4

    invoke-virtual {v4, v15}, Lgs4;->C(Ln25;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, v1, Lj25;->j:Lrx4;

    .line 89
    invoke-virtual {v4}, Lrx4;->a()Lqw4;

    move-result-object v4

    .line 90
    iget-object v4, v4, Lqw4;->n:Low4;

    const-string v5, "User property triggered"

    .line 91
    iget-object v6, v14, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    iget-object v7, v1, Lj25;->j:Lrx4;

    .line 92
    invoke-virtual {v7}, Lrx4;->u()Llw4;

    move-result-object v7

    iget-object v8, v15, Ln25;->c:Ljava/lang/String;

    .line 93
    invoke-virtual {v7, v8}, Llw4;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v15, Ln25;->e:Ljava/lang/Object;

    .line 94
    invoke-virtual {v4, v5, v6, v7, v8}, Low4;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    .line 95
    :cond_f
    iget-object v4, v1, Lj25;->j:Lrx4;

    .line 96
    invoke-virtual {v4}, Lrx4;->a()Lqw4;

    move-result-object v4

    .line 97
    iget-object v4, v4, Lqw4;->f:Low4;

    const-string v5, "Too many active user properties, ignoring"

    .line 98
    iget-object v6, v14, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    invoke-static {v6}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v1, Lj25;->j:Lrx4;

    .line 99
    invoke-virtual {v7}, Lrx4;->u()Llw4;

    move-result-object v7

    iget-object v8, v15, Ln25;->c:Ljava/lang/String;

    .line 100
    invoke-virtual {v7, v8}, Llw4;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v15, Ln25;->e:Ljava/lang/Object;

    .line 101
    invoke-virtual {v4, v5, v6, v7, v8}, Low4;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    :goto_8
    iget-object v4, v14, Lcom/google/android/gms/measurement/internal/zzaa;->m:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz v4, :cond_10

    .line 103
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzkr;

    .line 104
    invoke-direct {v4, v15}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Ln25;)V

    iput-object v4, v14, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    const/4 v4, 0x1

    iput-boolean v4, v14, Lcom/google/android/gms/measurement/internal/zzaa;->i:Z

    .line 105
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v5

    invoke-virtual {v5, v14}, Lgs4;->G(Lcom/google/android/gms/measurement/internal/zzaa;)Z

    goto/16 :goto_7

    .line 106
    :cond_11
    invoke-virtual {v1, v0, v2}, Lj25;->d(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 107
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzas;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzas;

    .line 108
    invoke-direct {v4, v3, v11, v12}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzas;J)V

    invoke-virtual {v1, v4, v2}, Lj25;->d(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_9

    .line 109
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v0

    invoke-virtual {v0}, Lgs4;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v0

    invoke-virtual {v0}, Lgs4;->x()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v2

    invoke-virtual {v2}, Lgs4;->x()V

    .line 111
    throw v0
.end method

.method public final d(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "metadata_fingerprint"

    const-string v5, "app_id"

    const-string v6, "raw_events"

    const-string v7, "_sno"

    .line 1
    invoke-static/range {p2 .. p2}, Lbi;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-static {v8}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    iget-object v10, v1, Lj25;->j:Lrx4;

    .line 4
    invoke-virtual {v10}, Lrx4;->m()Lox4;

    move-result-object v10

    .line 5
    invoke-virtual {v10}, Lox4;->d()V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lj25;->S()V

    .line 7
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    .line 8
    invoke-virtual/range {p0 .. p0}, Lj25;->Q()Ll25;

    invoke-static/range {p1 .. p2}, Ll25;->K(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v11

    if-nez v11, :cond_0

    return-void

    .line 9
    :cond_0
    iget-boolean v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->l:Z

    if-nez v11, :cond_1

    .line 10
    invoke-virtual {v1, v3}, Lj25;->u(Lcom/google/android/gms/measurement/internal/zzp;)Lvx4;

    return-void

    .line 11
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lj25;->J()Lkx4;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzas;->e:Ljava/lang/String;

    invoke-virtual {v11, v10, v12}, Lkx4;->n(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    const-string v15, "_err"

    const/4 v12, 0x0

    if-eqz v11, :cond_5

    iget-object v3, v1, Lj25;->j:Lrx4;

    .line 12
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v3

    .line 13
    invoke-virtual {v3}, Lqw4;->p()Low4;

    move-result-object v3

    invoke-static {v10}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Lj25;->j:Lrx4;

    .line 14
    invoke-virtual {v5}, Lrx4;->u()Llw4;

    move-result-object v5

    .line 15
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzas;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Llw4;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Dropping blacklisted event. appId"

    .line 16
    invoke-virtual {v3, v6, v4, v5}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    invoke-virtual/range {p0 .. p0}, Lj25;->J()Lkx4;

    move-result-object v3

    invoke-virtual {v3, v10}, Lkx4;->r(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 18
    invoke-virtual/range {p0 .. p0}, Lj25;->J()Lkx4;

    move-result-object v3

    invoke-virtual {v3, v10}, Lkx4;->s(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 19
    :cond_2
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzas;->e:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v1, Lj25;->j:Lrx4;

    .line 20
    invoke-virtual {v3}, Lrx4;->t()Lp25;

    move-result-object v11

    iget-object v12, v1, Lj25;->z:Lo25;

    const/16 v14, 0xb

    .line 21
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzas;->e:Ljava/lang/String;

    const/16 v17, 0x0

    const-string v15, "_ev"

    move-object v13, v10

    move-object/from16 v16, v2

    .line 22
    invoke-virtual/range {v11 .. v17}, Lp25;->A(Lo25;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 23
    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v2

    invoke-virtual {v2, v10}, Lgs4;->L(Ljava/lang/String;)Lvx4;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 24
    invoke-virtual {v2}, Lvx4;->l()J

    move-result-wide v3

    invoke-virtual {v2}, Lvx4;->j()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-object v5, v1, Lj25;->j:Lrx4;

    .line 25
    invoke-virtual {v5}, Lrx4;->e()Lb20;

    move-result-object v5

    .line 26
    invoke-interface {v5}, Lb20;->a()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 27
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    iget-object v5, v1, Lj25;->j:Lrx4;

    .line 28
    invoke-virtual {v5}, Lrx4;->p()Lcs4;

    .line 29
    sget-object v5, Lew4;->z:Ldw4;

    invoke-virtual {v5, v12}, Ldw4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_4

    iget-object v3, v1, Lj25;->j:Lrx4;

    .line 30
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v3

    .line 31
    invoke-virtual {v3}, Lqw4;->r()Low4;

    move-result-object v3

    const-string v4, "Fetching config for blacklisted app"

    invoke-virtual {v3, v4}, Low4;->a(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1, v2}, Lj25;->i(Lvx4;)V

    :cond_4
    return-void

    .line 33
    :cond_5
    invoke-static {}, Lmc4;->b()Z

    iget-object v11, v1, Lj25;->j:Lrx4;

    .line 34
    invoke-virtual {v11}, Lrx4;->p()Lcs4;

    move-result-object v11

    .line 35
    sget-object v13, Lew4;->v0:Ldw4;

    invoke-virtual {v11, v12, v13}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 36
    invoke-static/range {p1 .. p1}, Lrw4;->a(Lcom/google/android/gms/measurement/internal/zzas;)Lrw4;

    move-result-object v2

    iget-object v11, v1, Lj25;->j:Lrx4;

    .line 37
    invoke-virtual {v11}, Lrx4;->t()Lp25;

    move-result-object v11

    iget-object v12, v1, Lj25;->j:Lrx4;

    .line 38
    invoke-virtual {v12}, Lrx4;->p()Lcs4;

    move-result-object v12

    .line 39
    invoke-virtual {v12, v10}, Lcs4;->i(Ljava/lang/String;)I

    move-result v12

    .line 40
    invoke-virtual {v11, v2, v12}, Lp25;->u(Lrw4;I)V

    .line 41
    invoke-virtual {v2}, Lrw4;->b()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    :cond_6
    iget-object v11, v1, Lj25;->j:Lrx4;

    .line 42
    invoke-virtual {v11}, Lrx4;->a()Lqw4;

    move-result-object v11

    .line 43
    invoke-virtual {v11}, Lqw4;->v()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    .line 44
    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, v1, Lj25;->j:Lrx4;

    .line 45
    invoke-virtual {v11}, Lrx4;->a()Lqw4;

    move-result-object v11

    .line 46
    invoke-virtual {v11}, Lqw4;->s()Low4;

    move-result-object v11

    iget-object v12, v1, Lj25;->j:Lrx4;

    .line 47
    invoke-virtual {v12}, Lrx4;->u()Llw4;

    move-result-object v12

    .line 48
    invoke-virtual {v12}, Llw4;->n()Z

    move-result v13

    if-nez v13, :cond_7

    .line 49
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_7
    const-string v13, "origin="

    invoke-static {v13}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 50
    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzas;->g:Ljava/lang/String;

    .line 51
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",name="

    .line 52
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzas;->e:Ljava/lang/String;

    .line 53
    invoke-virtual {v12, v14}, Llw4;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 54
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",params="

    .line 55
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzas;->f:Lcom/google/android/gms/measurement/internal/zzaq;

    if-nez v14, :cond_8

    const/4 v12, 0x0

    goto :goto_1

    .line 56
    :cond_8
    invoke-virtual {v12}, Llw4;->n()Z

    move-result v16

    if-nez v16, :cond_9

    .line 57
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzaq;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 58
    :cond_9
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzaq;->M0()Landroid/os/Bundle;

    move-result-object v14

    .line 59
    invoke-virtual {v12, v14}, Llw4;->s(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v12

    .line 60
    :goto_1
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_2
    const-string v13, "Logging event"

    .line 62
    invoke-virtual {v11, v13, v12}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v11

    invoke-virtual {v11}, Lgs4;->v()V

    .line 64
    :try_start_0
    invoke-virtual {v1, v3}, Lj25;->u(Lcom/google/android/gms/measurement/internal/zzp;)Lvx4;

    const-string v11, "ecommerce_purchase"

    .line 65
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzas;->e:Ljava/lang/String;

    .line 66
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v12, "refund"

    const/16 v28, 0x1

    if-nez v11, :cond_c

    :try_start_1
    const-string v11, "purchase"

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzas;->e:Ljava/lang/String;

    .line 67
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->e:Ljava/lang/String;

    .line 68
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    goto :goto_3

    :cond_b
    const/4 v11, 0x0

    goto :goto_4

    :cond_c
    :goto_3
    const/4 v11, 0x1

    :goto_4
    const-string v13, "_iap"

    .line 69
    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzas;->e:Ljava/lang/String;

    .line 70
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    if-eqz v11, :cond_d

    const/4 v11, 0x1

    goto :goto_5

    :cond_d
    move-object/from16 v31, v4

    move-wide/from16 v29, v8

    move-object v4, v15

    goto/16 :goto_e

    .line 71
    :cond_e
    :goto_5
    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzas;->f:Lcom/google/android/gms/measurement/internal/zzaq;

    const-string v14, "currency"

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzaq;->L0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v11, :cond_11

    .line 72
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->f:Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzaq;->K0()Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    const-wide v18, 0x412e848000000000L    # 1000000.0

    mul-double v16, v16, v18

    const-wide/16 v20, 0x0

    cmpl-double v11, v16, v20

    if-nez v11, :cond_f

    .line 73
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->f:Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzaq;->C()Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v20, v15

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    long-to-double v14, v14

    mul-double v16, v14, v18

    goto :goto_6

    :cond_f
    move-object/from16 v20, v15

    :goto_6
    const-wide/high16 v14, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v11, v16, v14

    if-gtz v11, :cond_10

    const-wide/high16 v14, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v11, v16, v14

    if-ltz v11, :cond_10

    .line 74
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    .line 75
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->e:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    neg-long v14, v14

    goto :goto_7

    .line 76
    :cond_10
    iget-object v2, v1, Lj25;->j:Lrx4;

    .line 77
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 78
    invoke-virtual {v2}, Lqw4;->p()Low4;

    move-result-object v2

    const-string v3, "Data lost. Currency value is too big. appId"

    invoke-static {v10}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 79
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 80
    invoke-virtual {v2, v3, v4, v5}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v2

    invoke-virtual {v2}, Lgs4;->w()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v2

    invoke-virtual {v2}, Lgs4;->x()V

    return-void

    :cond_11
    move-object/from16 v20, v15

    .line 83
    :try_start_2
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->f:Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzaq;->C()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 84
    :cond_12
    :goto_7
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_16

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 85
    invoke-virtual {v13, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "[A-Z]{3}"

    .line 86
    invoke-virtual {v11, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_16

    const-string v12, "_ltv_"

    .line 87
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_13

    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :goto_8
    move-object v13, v11

    goto :goto_9

    .line 88
    :cond_13
    new-instance v11, Ljava/lang/String;

    .line 89
    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_8

    .line 90
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v11

    invoke-virtual {v11, v10, v13}, Lgs4;->D(Ljava/lang/String;Ljava/lang/String;)Ln25;

    move-result-object v11

    if-eqz v11, :cond_15

    iget-object v11, v11, Ln25;->e:Ljava/lang/Object;

    .line 91
    instance-of v12, v11, Ljava/lang/Long;

    if-nez v12, :cond_14

    goto :goto_b

    .line 92
    :cond_14
    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    new-instance v18, Ln25;

    move-object/from16 v16, v13

    .line 93
    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzas;->g:Ljava/lang/String;

    move-wide/from16 v29, v8

    iget-object v8, v1, Lj25;->j:Lrx4;

    .line 94
    invoke-virtual {v8}, Lrx4;->e()Lb20;

    move-result-object v8

    .line 95
    invoke-interface {v8}, Lb20;->a()J

    move-result-wide v8

    add-long/2addr v11, v14

    .line 96
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v11, v18

    move-object v12, v10

    move-object/from16 v14, v16

    move-object/from16 v31, v4

    move-object/from16 v4, v20

    move-wide v15, v8

    invoke-direct/range {v11 .. v17}, Ln25;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_a
    move-object/from16 v8, v18

    goto/16 :goto_d

    :cond_15
    :goto_b
    move-object/from16 v31, v4

    move-wide/from16 v29, v8

    move-object/from16 v16, v13

    move-object/from16 v4, v20

    const/4 v8, 0x0

    .line 97
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v9

    iget-object v11, v1, Lj25;->j:Lrx4;

    .line 98
    invoke-virtual {v11}, Lrx4;->p()Lcs4;

    move-result-object v11

    sget-object v12, Lew4;->E:Ldw4;

    .line 99
    invoke-virtual {v11, v10, v12}, Lcs4;->p(Ljava/lang/String;Ldw4;)I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    .line 100
    invoke-static {v10}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    invoke-virtual {v9}, Lly4;->d()V

    invoke-virtual {v9}, Lb25;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v9}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    aput-object v10, v13, v8

    aput-object v10, v13, v28

    .line 102
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x2

    aput-object v8, v13, v11

    const-string v8, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    .line 103
    invoke-virtual {v12, v8, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_c

    :catch_0
    move-exception v0

    move-object v8, v0

    .line 104
    :try_start_4
    iget-object v9, v9, Lly4;->a:Lrx4;

    .line 105
    invoke-virtual {v9}, Lrx4;->a()Lqw4;

    move-result-object v9

    .line 106
    invoke-virtual {v9}, Lqw4;->n()Low4;

    move-result-object v9

    const-string v11, "Error pruning currencies. appId"

    invoke-static {v10}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v9, v11, v12, v8}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    :goto_c
    new-instance v18, Ln25;

    .line 108
    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzas;->g:Ljava/lang/String;

    iget-object v8, v1, Lj25;->j:Lrx4;

    .line 109
    invoke-virtual {v8}, Lrx4;->e()Lb20;

    move-result-object v8

    .line 110
    invoke-interface {v8}, Lb20;->a()J

    move-result-wide v8

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v11, v18

    move-object v12, v10

    move-object/from16 v14, v16

    move-wide v15, v8

    invoke-direct/range {v11 .. v17}, Ln25;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_a

    .line 111
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v9

    invoke-virtual {v9, v8}, Lgs4;->C(Ln25;)Z

    move-result v9

    if-nez v9, :cond_17

    iget-object v9, v1, Lj25;->j:Lrx4;

    .line 112
    invoke-virtual {v9}, Lrx4;->a()Lqw4;

    move-result-object v9

    .line 113
    invoke-virtual {v9}, Lqw4;->n()Low4;

    move-result-object v9

    const-string v11, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static {v10}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    iget-object v13, v1, Lj25;->j:Lrx4;

    .line 114
    invoke-virtual {v13}, Lrx4;->u()Llw4;

    move-result-object v13

    iget-object v14, v8, Ln25;->c:Ljava/lang/String;

    .line 115
    invoke-virtual {v13, v14}, Llw4;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v8, v8, Ln25;->e:Ljava/lang/Object;

    .line 116
    invoke-virtual {v9, v11, v12, v13, v8}, Low4;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v8, v1, Lj25;->j:Lrx4;

    .line 117
    invoke-virtual {v8}, Lrx4;->t()Lp25;

    move-result-object v11

    iget-object v12, v1, Lj25;->z:Lo25;

    const/16 v14, 0x9

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v10

    .line 118
    invoke-virtual/range {v11 .. v17}, Lp25;->A(Lo25;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_e

    :cond_16
    move-object/from16 v31, v4

    move-wide/from16 v29, v8

    move-object/from16 v4, v20

    .line 119
    :cond_17
    :goto_e
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzas;->e:Ljava/lang/String;

    invoke-static {v8}, Lp25;->e0(Ljava/lang/String;)Z

    move-result v8

    .line 120
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzas;->e:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iget-object v9, v1, Lj25;->j:Lrx4;

    .line 121
    invoke-virtual {v9}, Lrx4;->t()Lp25;

    .line 122
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzas;->f:Lcom/google/android/gms/measurement/internal/zzaq;

    if-nez v9, :cond_18

    const-wide/16 v11, 0x0

    goto :goto_10

    .line 123
    :cond_18
    iget-object v11, v9, Lcom/google/android/gms/measurement/internal/zzaq;->e:Landroid/os/Bundle;

    .line 124
    invoke-virtual {v11}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const-wide/16 v12, 0x0

    .line 125
    :cond_19
    :goto_f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 126
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 127
    invoke-virtual {v9, v14}, Lcom/google/android/gms/measurement/internal/zzaq;->n(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 128
    instance-of v15, v14, [Landroid/os/Parcelable;

    if-eqz v15, :cond_19

    .line 129
    check-cast v14, [Landroid/os/Parcelable;

    array-length v14, v14

    int-to-long v14, v14

    add-long/2addr v12, v14

    goto :goto_f

    :cond_1a
    move-wide v11, v12

    :goto_10
    const-wide/16 v22, 0x1

    add-long v15, v11, v22

    .line 130
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v11

    .line 131
    invoke-virtual/range {p0 .. p0}, Lj25;->V()J

    move-result-wide v12

    const/16 v17, 0x1

    const/16 v19, 0x0

    const/16 v21, 0x0

    const-wide/16 v24, 0x0

    move-object v14, v10

    move/from16 v18, v8

    move/from16 v20, v4

    .line 132
    invoke-virtual/range {v11 .. v21}, Lgs4;->O(JLjava/lang/String;JZZZZZ)Les4;

    move-result-object v9

    iget-wide v11, v9, Les4;->b:J

    iget-object v13, v1, Lj25;->j:Lrx4;

    .line 133
    invoke-virtual {v13}, Lrx4;->p()Lcs4;

    sget-object v13, Lew4;->k:Ldw4;

    const/4 v14, 0x0

    .line 134
    invoke-virtual {v13, v14}, Ldw4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-long v13, v13

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x3e8

    cmp-long v15, v11, v24

    if-lez v15, :cond_1c

    rem-long/2addr v11, v13

    cmp-long v2, v11, v22

    if-nez v2, :cond_1b

    iget-object v2, v1, Lj25;->j:Lrx4;

    .line 135
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 136
    invoke-virtual {v2}, Lqw4;->n()Low4;

    move-result-object v2

    const-string v3, "Data loss. Too many events logged. appId, count"

    invoke-static {v10}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v9, Les4;->b:J

    .line 137
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 138
    invoke-virtual {v2, v3, v4, v5}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v2

    invoke-virtual {v2}, Lgs4;->w()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 140
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v2

    invoke-virtual {v2}, Lgs4;->x()V

    return-void

    :cond_1c
    if-eqz v8, :cond_1e

    :try_start_5
    iget-wide v11, v9, Les4;->a:J

    iget-object v13, v1, Lj25;->j:Lrx4;

    .line 141
    invoke-virtual {v13}, Lrx4;->p()Lcs4;

    sget-object v13, Lew4;->m:Ldw4;

    const/4 v14, 0x0

    .line 142
    invoke-virtual {v13, v14}, Ldw4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-long v13, v13

    sub-long/2addr v11, v13

    cmp-long v13, v11, v24

    if-lez v13, :cond_1e

    const-wide/16 v3, 0x3e8

    rem-long/2addr v11, v3

    cmp-long v3, v11, v22

    if-nez v3, :cond_1d

    iget-object v3, v1, Lj25;->j:Lrx4;

    .line 143
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v3

    .line 144
    invoke-virtual {v3}, Lqw4;->n()Low4;

    move-result-object v3

    const-string v4, "Data loss. Too many public events logged. appId, count"

    invoke-static {v10}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v6, v9, Les4;->a:J

    .line 145
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 146
    invoke-virtual {v3, v4, v5, v6}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    iget-object v3, v1, Lj25;->j:Lrx4;

    .line 147
    invoke-virtual {v3}, Lrx4;->t()Lp25;

    move-result-object v11

    iget-object v12, v1, Lj25;->z:Lo25;

    const/16 v14, 0x10

    const-string v15, "_ev"

    .line 148
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzas;->e:Ljava/lang/String;

    const/16 v17, 0x0

    move-object v13, v10

    move-object/from16 v16, v2

    .line 149
    invoke-virtual/range {v11 .. v17}, Lp25;->A(Lo25;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 150
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v2

    invoke-virtual {v2}, Lgs4;->w()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 151
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v2

    invoke-virtual {v2}, Lgs4;->x()V

    return-void

    :cond_1e
    const v11, 0xf4240

    if-eqz v4, :cond_20

    :try_start_6
    iget-wide v12, v9, Les4;->d:J

    iget-object v4, v1, Lj25;->j:Lrx4;

    .line 152
    invoke-virtual {v4}, Lrx4;->p()Lcs4;

    move-result-object v4

    .line 153
    iget-object v14, v3, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    sget-object v15, Lew4;->l:Ldw4;

    invoke-virtual {v4, v14, v15}, Lcs4;->p(Ljava/lang/String;Ldw4;)I

    move-result v4

    .line 154
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v14, 0x0

    .line 155
    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v14, v4

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x0

    cmp-long v4, v12, v14

    if-lez v4, :cond_20

    cmp-long v2, v12, v22

    if-nez v2, :cond_1f

    iget-object v2, v1, Lj25;->j:Lrx4;

    .line 156
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 157
    invoke-virtual {v2}, Lqw4;->n()Low4;

    move-result-object v2

    const-string v3, "Too many error events logged. appId, count"

    invoke-static {v10}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v9, Les4;->d:J

    .line 158
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 159
    invoke-virtual {v2, v3, v4, v5}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v2

    invoke-virtual {v2}, Lgs4;->w()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 161
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v2

    invoke-virtual {v2}, Lgs4;->x()V

    return-void

    .line 162
    :cond_20
    :try_start_7
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzas;->f:Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->M0()Landroid/os/Bundle;

    move-result-object v4

    iget-object v9, v1, Lj25;->j:Lrx4;

    .line 163
    invoke-virtual {v9}, Lrx4;->t()Lp25;

    move-result-object v9

    const-string v12, "_o"

    .line 164
    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzas;->g:Ljava/lang/String;

    invoke-virtual {v9, v4, v12, v13}, Lp25;->z(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v9, v1, Lj25;->j:Lrx4;

    .line 165
    invoke-virtual {v9}, Lrx4;->t()Lp25;

    move-result-object v9

    .line 166
    invoke-virtual {v9, v10}, Lp25;->H(Ljava/lang/String;)Z

    move-result v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v15, "_r"

    if-eqz v9, :cond_21

    :try_start_8
    iget-object v9, v1, Lj25;->j:Lrx4;

    .line 167
    invoke-virtual {v9}, Lrx4;->t()Lp25;

    move-result-object v9

    .line 168
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v13, "_dbg"

    invoke-virtual {v9, v4, v13, v12}, Lp25;->z(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v9, v1, Lj25;->j:Lrx4;

    .line 169
    invoke-virtual {v9}, Lrx4;->t()Lp25;

    move-result-object v9

    .line 170
    invoke-virtual {v9, v4, v15, v12}, Lp25;->z(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_21
    const-string v9, "_s"

    .line 171
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzas;->e:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 172
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v9

    iget-object v12, v3, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    .line 173
    invoke-virtual {v9, v12, v7}, Lgs4;->D(Ljava/lang/String;Ljava/lang/String;)Ln25;

    move-result-object v9

    if-eqz v9, :cond_22

    iget-object v12, v9, Ln25;->e:Ljava/lang/Object;

    .line 174
    instance-of v12, v12, Ljava/lang/Long;

    if-eqz v12, :cond_22

    iget-object v12, v1, Lj25;->j:Lrx4;

    .line 175
    invoke-virtual {v12}, Lrx4;->t()Lp25;

    move-result-object v12

    iget-object v9, v9, Ln25;->e:Ljava/lang/Object;

    .line 176
    invoke-virtual {v12, v4, v7, v9}, Lp25;->z(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v7

    .line 178
    invoke-static {v10}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    invoke-virtual {v7}, Lly4;->d()V

    invoke-virtual {v7}, Lb25;->f()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-virtual {v7}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    iget-object v12, v7, Lly4;->a:Lrx4;

    .line 180
    invoke-virtual {v12}, Lrx4;->p()Lcs4;

    move-result-object v12

    sget-object v13, Lew4;->p:Ldw4;

    .line 181
    invoke-virtual {v12, v10, v13}, Lcs4;->p(Ljava/lang/String;Ldw4;)I

    move-result v12

    .line 182
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v12, 0x0

    .line 183
    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 184
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    aput-object v10, v13, v12

    aput-object v11, v13, v28

    const-string v11, "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)"

    .line 185
    invoke-virtual {v9, v6, v11, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    int-to-long v11, v7

    goto :goto_11

    :catch_1
    move-exception v0

    move-object v9, v0

    .line 186
    :try_start_a
    iget-object v7, v7, Lly4;->a:Lrx4;

    .line 187
    invoke-virtual {v7}, Lrx4;->a()Lqw4;

    move-result-object v7

    .line 188
    invoke-virtual {v7}, Lqw4;->n()Low4;

    move-result-object v7

    const-string v11, "Error deleting over the limit events. appId"

    invoke-static {v10}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 189
    invoke-virtual {v7, v11, v12, v9}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v11, 0x0

    :goto_11
    const-wide/16 v13, 0x0

    cmp-long v7, v11, v13

    if-lez v7, :cond_23

    .line 190
    iget-object v7, v1, Lj25;->j:Lrx4;

    .line 191
    invoke-virtual {v7}, Lrx4;->a()Lqw4;

    move-result-object v7

    .line 192
    invoke-virtual {v7}, Lqw4;->p()Low4;

    move-result-object v7

    const-string v9, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v10}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 193
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 194
    invoke-virtual {v7, v9, v13, v11}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    new-instance v7, Lks4;

    iget-object v12, v1, Lj25;->j:Lrx4;

    .line 195
    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzas;->g:Ljava/lang/String;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzas;->e:Ljava/lang/String;

    move-object/from16 v32, v5

    move-object/from16 v33, v6

    iget-wide v5, v2, Lcom/google/android/gms/measurement/internal/zzas;->h:J

    const-wide/16 v18, 0x0

    move-object v11, v7

    move-object v14, v10

    move-object v2, v15

    move-object v15, v9

    move-wide/from16 v16, v5

    move-object/from16 v20, v4

    invoke-direct/range {v11 .. v20}, Lks4;-><init>(Lrx4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 196
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v4

    iget-object v5, v7, Lks4;->b:Ljava/lang/String;

    invoke-virtual {v4, v10, v5}, Lgs4;->z(Ljava/lang/String;Ljava/lang/String;)Lls4;

    move-result-object v4

    if-nez v4, :cond_25

    .line 197
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v4

    invoke-virtual {v4, v10}, Lgs4;->l(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v6, v1, Lj25;->j:Lrx4;

    .line 198
    invoke-virtual {v6}, Lrx4;->p()Lcs4;

    move-result-object v6

    .line 199
    invoke-virtual {v6, v10}, Lcs4;->k(Ljava/lang/String;)I

    move-result v6

    int-to-long v11, v6

    cmp-long v6, v4, v11

    if-ltz v6, :cond_24

    if-eqz v8, :cond_24

    iget-object v2, v1, Lj25;->j:Lrx4;

    .line 200
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 201
    invoke-virtual {v2}, Lqw4;->n()Low4;

    move-result-object v2

    const-string v3, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v10}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Lj25;->j:Lrx4;

    .line 202
    invoke-virtual {v5}, Lrx4;->u()Llw4;

    move-result-object v5

    iget-object v6, v7, Lks4;->b:Ljava/lang/String;

    .line 203
    invoke-virtual {v5, v6}, Llw4;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lj25;->j:Lrx4;

    .line 204
    invoke-virtual {v6}, Lrx4;->p()Lcs4;

    move-result-object v6

    .line 205
    invoke-virtual {v6, v10}, Lcs4;->k(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 206
    invoke-virtual {v2, v3, v4, v5, v6}, Low4;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Lj25;->j:Lrx4;

    .line 207
    invoke-virtual {v2}, Lrx4;->t()Lp25;

    move-result-object v11

    iget-object v12, v1, Lj25;->z:Lo25;

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v10

    .line 208
    invoke-virtual/range {v11 .. v17}, Lp25;->A(Lo25;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 209
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v2

    invoke-virtual {v2}, Lgs4;->x()V

    return-void

    :cond_24
    :try_start_b
    new-instance v4, Lls4;

    iget-object v13, v7, Lks4;->b:Ljava/lang/String;

    iget-wide v5, v7, Lks4;->d:J

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object v11, v4

    move-object v12, v10

    move-wide/from16 v20, v5

    .line 210
    invoke-direct/range {v11 .. v27}, Lls4;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_12

    .line 211
    :cond_25
    iget-object v5, v1, Lj25;->j:Lrx4;

    iget-wide v8, v4, Lls4;->f:J

    .line 212
    invoke-virtual {v7, v5, v8, v9}, Lks4;->a(Lrx4;J)Lks4;

    move-result-object v7

    iget-wide v5, v7, Lks4;->d:J

    .line 213
    invoke-virtual {v4, v5, v6}, Lls4;->a(J)Lls4;

    move-result-object v4

    .line 214
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v5

    invoke-virtual {v5, v4}, Lgs4;->A(Lls4;)V

    iget-object v4, v1, Lj25;->j:Lrx4;

    .line 215
    invoke-virtual {v4}, Lrx4;->m()Lox4;

    move-result-object v4

    .line 216
    invoke-virtual {v4}, Lox4;->d()V

    .line 217
    invoke-virtual/range {p0 .. p0}, Lj25;->S()V

    .line 218
    invoke-static {v7}, Lbi;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-static/range {p2 .. p2}, Lbi;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v7, Lks4;->a:Ljava/lang/String;

    .line 220
    invoke-static {v4}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, v7, Lks4;->a:Ljava/lang/String;

    .line 221
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lbi;->b(Z)V

    .line 222
    invoke-static {}, Lh54;->C0()Lg54;

    move-result-object v4

    invoke-virtual {v4}, Lg54;->O()Lg54;

    invoke-virtual {v4}, Lg54;->m()Lg54;

    .line 223
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 224
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lg54;->u(Ljava/lang/String;)Lg54;

    .line 225
    :cond_26
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->h:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_27

    .line 226
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lg54;->s(Ljava/lang/String;)Lg54;

    .line 227
    :cond_27
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->g:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_28

    .line 228
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lg54;->v(Ljava/lang/String;)Lg54;

    .line 229
    :cond_28
    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->n:J

    const-wide/32 v8, -0x80000000

    cmp-long v10, v5, v8

    if-eqz v10, :cond_29

    long-to-int v6, v5

    .line 230
    invoke-virtual {v4, v6}, Lg54;->Q(I)Lg54;

    .line 231
    :cond_29
    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->i:J

    invoke-virtual {v4, v5, v6}, Lg54;->w(J)Lg54;

    .line 232
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->f:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 233
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lg54;->K(Ljava/lang/String;)Lg54;

    .line 234
    :cond_2a
    invoke-static {}, Lpc4;->b()Z

    iget-object v5, v1, Lj25;->j:Lrx4;

    .line 235
    invoke-virtual {v5}, Lrx4;->p()Lcs4;

    move-result-object v5

    sget-object v6, Lew4;->G0:Ldw4;

    const/4 v8, 0x0

    .line 236
    invoke-virtual {v5, v8, v6}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 237
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    .line 238
    invoke-virtual {v1, v5}, Lj25;->U(Ljava/lang/String;)Lds4;

    move-result-object v5

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzp;->z:Ljava/lang/String;

    .line 239
    invoke-static {v6}, Lds4;->b(Ljava/lang/String;)Lds4;

    move-result-object v6

    invoke-virtual {v5, v6}, Lds4;->h(Lds4;)Lds4;

    move-result-object v5

    .line 240
    invoke-virtual {v5}, Lds4;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lg54;->e0(Ljava/lang/String;)Lg54;

    .line 241
    :cond_2b
    invoke-static {}, Lae4;->b()Z

    iget-object v5, v1, Lj25;->j:Lrx4;

    .line 242
    invoke-virtual {v5}, Lrx4;->p()Lcs4;

    move-result-object v5

    .line 243
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    sget-object v8, Lew4;->i0:Ldw4;

    invoke-virtual {v5, v6, v8}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 244
    invoke-virtual {v4}, Lg54;->J()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2c

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->y:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 245
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->y:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lg54;->c0(Ljava/lang/String;)Lg54;

    .line 246
    :cond_2c
    invoke-virtual {v4}, Lg54;->J()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 247
    invoke-virtual {v4}, Lg54;->b0()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2e

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->u:Ljava/lang/String;

    .line 248
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2e

    .line 249
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->u:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lg54;->X(Ljava/lang/String;)Lg54;

    goto :goto_13

    .line 250
    :cond_2d
    invoke-virtual {v4}, Lg54;->J()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2e

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->u:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2e

    .line 251
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->u:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lg54;->X(Ljava/lang/String;)Lg54;

    .line 252
    :cond_2e
    :goto_13
    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->j:J

    const-wide/16 v8, 0x0

    cmp-long v10, v5, v8

    if-eqz v10, :cond_2f

    .line 253
    invoke-virtual {v4, v5, v6}, Lg54;->F(J)Lg54;

    .line 254
    :cond_2f
    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->w:J

    invoke-virtual {v4, v5, v6}, Lg54;->Z(J)Lg54;

    .line 255
    invoke-virtual/range {p0 .. p0}, Lj25;->Q()Ll25;

    move-result-object v5

    iget-object v6, v5, Lb25;->b:Lj25;

    iget-object v6, v6, Lj25;->j:Lrx4;

    .line 256
    invoke-virtual {v6}, Lrx4;->j()Landroid/content/Context;

    move-result-object v6

    .line 257
    invoke-static {v6}, Lew4;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_33

    .line 258
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v8

    if-nez v8, :cond_30

    goto/16 :goto_16

    .line 259
    :cond_30
    new-instance v8, Ljava/util/ArrayList;

    .line 260
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sget-object v9, Lew4;->P:Ldw4;

    const/4 v10, 0x0

    .line 261
    invoke-virtual {v9, v10}, Ldw4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 262
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_31
    :goto_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_32

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 263
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "measurement.id."

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v11, :cond_31

    .line 264
    :try_start_c
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_31

    .line 265
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v10, v9, :cond_31

    iget-object v10, v5, Lly4;->a:Lrx4;

    .line 267
    invoke-virtual {v10}, Lrx4;->a()Lqw4;

    move-result-object v10

    .line 268
    invoke-virtual {v10}, Lqw4;->p()Low4;

    move-result-object v10

    const-string v11, "Too many experiment IDs. Number of IDs"

    .line 269
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_15

    :catch_2
    move-exception v0

    move-object v10, v0

    .line 270
    :try_start_d
    iget-object v11, v5, Lly4;->a:Lrx4;

    .line 271
    invoke-virtual {v11}, Lrx4;->a()Lqw4;

    move-result-object v11

    .line 272
    invoke-virtual {v11}, Lqw4;->p()Low4;

    move-result-object v11

    const-string v12, "Experiment ID NumberFormatException"

    invoke-virtual {v11, v12, v10}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_14

    .line 273
    :cond_32
    :goto_15
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_34

    :cond_33
    :goto_16
    const/4 v8, 0x0

    :cond_34
    if-eqz v8, :cond_35

    .line 274
    invoke-virtual {v4, v8}, Lg54;->Y(Ljava/lang/Iterable;)Lg54;

    .line 275
    :cond_35
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    .line 276
    invoke-virtual {v1, v5}, Lj25;->U(Ljava/lang/String;)Lds4;

    move-result-object v5

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzp;->z:Ljava/lang/String;

    .line 277
    invoke-static {v6}, Lds4;->b(Ljava/lang/String;)Lds4;

    move-result-object v6

    invoke-virtual {v5, v6}, Lds4;->h(Lds4;)Lds4;

    move-result-object v5

    .line 278
    invoke-static {}, Lpc4;->b()Z

    iget-object v6, v1, Lj25;->j:Lrx4;

    .line 279
    invoke-virtual {v6}, Lrx4;->p()Lcs4;

    move-result-object v6

    sget-object v8, Lew4;->G0:Ldw4;

    const/4 v9, 0x0

    .line 280
    invoke-virtual {v6, v9, v8}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 281
    invoke-virtual {v5}, Lds4;->d()Z

    move-result v6

    if-eqz v6, :cond_37

    :cond_36
    iget-object v6, v1, Lj25;->i:Li15;

    .line 282
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    .line 283
    invoke-virtual {v6, v9, v5}, Li15;->i(Ljava/lang/String;Lds4;)Landroid/util/Pair;

    move-result-object v6

    .line 284
    iget-object v9, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_37

    .line 285
    iget-boolean v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->s:Z

    if-eqz v9, :cond_37

    .line 286
    iget-object v9, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v4, v9}, Lg54;->y(Ljava/lang/String;)Lg54;

    .line 287
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v6, :cond_37

    .line 288
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v4, v6}, Lg54;->A(Z)Lg54;

    :cond_37
    iget-object v6, v1, Lj25;->j:Lrx4;

    .line 289
    invoke-virtual {v6}, Lrx4;->A()Ljs4;

    move-result-object v6

    .line 290
    invoke-virtual {v6}, Lmy4;->i()V

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lg54;->p(Ljava/lang/String;)Lg54;

    iget-object v6, v1, Lj25;->j:Lrx4;

    .line 291
    invoke-virtual {v6}, Lrx4;->A()Ljs4;

    move-result-object v6

    .line 292
    invoke-virtual {v6}, Lmy4;->i()V

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lg54;->o(Ljava/lang/String;)Lg54;

    iget-object v6, v1, Lj25;->j:Lrx4;

    .line 293
    invoke-virtual {v6}, Lrx4;->A()Ljs4;

    move-result-object v6

    .line 294
    invoke-virtual {v6}, Ljs4;->n()J

    move-result-wide v9

    long-to-int v6, v9

    invoke-virtual {v4, v6}, Lg54;->r(I)Lg54;

    iget-object v6, v1, Lj25;->j:Lrx4;

    .line 295
    invoke-virtual {v6}, Lrx4;->A()Ljs4;

    move-result-object v6

    .line 296
    invoke-virtual {v6}, Ljs4;->p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lg54;->q(Ljava/lang/String;)Lg54;

    iget-object v6, v1, Lj25;->j:Lrx4;

    .line 297
    invoke-virtual {v6}, Lrx4;->p()Lcs4;

    move-result-object v6

    sget-object v9, Lew4;->x0:Ldw4;

    const/4 v10, 0x0

    .line 298
    invoke-virtual {v6, v10, v9}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v6

    if-nez v6, :cond_38

    .line 299
    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->p:J

    invoke-virtual {v4, v10, v11}, Lg54;->T(J)Lg54;

    :cond_38
    iget-object v6, v1, Lj25;->j:Lrx4;

    .line 300
    invoke-virtual {v6}, Lrx4;->g()Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 301
    invoke-static {}, Lpc4;->b()Z

    iget-object v6, v1, Lj25;->j:Lrx4;

    .line 302
    invoke-virtual {v6}, Lrx4;->p()Lcs4;

    move-result-object v6

    const/4 v10, 0x0

    .line 303
    invoke-virtual {v6, v10, v8}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 304
    invoke-virtual {v4}, Lg54;->t()Ljava/lang/String;

    goto :goto_17

    .line 305
    :cond_39
    invoke-virtual {v4}, Lg54;->t()Ljava/lang/String;

    :goto_17
    const/4 v6, 0x0

    .line 306
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3a

    goto :goto_18

    .line 307
    :cond_3a
    invoke-virtual {v4}, Lg54;->U()Lg54;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    throw v6

    .line 308
    :cond_3b
    :goto_18
    :try_start_e
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v6

    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-virtual {v6, v10}, Lgs4;->L(Ljava/lang/String;)Lvx4;

    move-result-object v6

    if-nez v6, :cond_40

    new-instance v6, Lvx4;

    iget-object v10, v1, Lj25;->j:Lrx4;

    .line 309
    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-direct {v6, v10, v11}, Lvx4;-><init>(Lrx4;Ljava/lang/String;)V

    .line 310
    invoke-static {}, Lpc4;->b()Z

    iget-object v10, v1, Lj25;->j:Lrx4;

    .line 311
    invoke-virtual {v10}, Lrx4;->p()Lcs4;

    move-result-object v10

    const/4 v11, 0x0

    .line 312
    invoke-virtual {v10, v11, v8}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 313
    invoke-virtual {v1, v5}, Lj25;->f(Lds4;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lvx4;->A(Ljava/lang/String;)V

    goto :goto_19

    .line 314
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lj25;->g()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lvx4;->A(Ljava/lang/String;)V

    .line 315
    :goto_19
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    invoke-virtual {v6, v10}, Lvx4;->K(Ljava/lang/String;)V

    .line 316
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->f:Ljava/lang/String;

    invoke-virtual {v6, v10}, Lvx4;->C(Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lpc4;->b()Z

    iget-object v10, v1, Lj25;->j:Lrx4;

    .line 318
    invoke-virtual {v10}, Lrx4;->p()Lcs4;

    move-result-object v10

    const/4 v11, 0x0

    .line 319
    invoke-virtual {v10, v11, v8}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v10

    if-eqz v10, :cond_3d

    .line 320
    invoke-virtual {v5}, Lds4;->d()Z

    move-result v10

    if-eqz v10, :cond_3e

    :cond_3d
    iget-object v10, v1, Lj25;->i:Li15;

    .line 321
    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-virtual {v10, v11}, Li15;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 322
    invoke-virtual {v6, v10}, Lvx4;->I(Ljava/lang/String;)V

    :cond_3e
    const-wide/16 v10, 0x0

    .line 323
    invoke-virtual {v6, v10, v11}, Lvx4;->h(J)V

    .line 324
    invoke-virtual {v6, v10, v11}, Lvx4;->M(J)V

    .line 325
    invoke-virtual {v6, v10, v11}, Lvx4;->O(J)V

    .line 326
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->g:Ljava/lang/String;

    invoke-virtual {v6, v10}, Lvx4;->Q(Ljava/lang/String;)V

    .line 327
    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->n:J

    invoke-virtual {v6, v10, v11}, Lvx4;->S(J)V

    .line 328
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->h:Ljava/lang/String;

    invoke-virtual {v6, v10}, Lvx4;->U(Ljava/lang/String;)V

    .line 329
    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->i:J

    invoke-virtual {v6, v10, v11}, Lvx4;->a(J)V

    .line 330
    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->j:J

    invoke-virtual {v6, v10, v11}, Lvx4;->c(J)V

    .line 331
    iget-boolean v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->l:Z

    invoke-virtual {v6, v10}, Lvx4;->g(Z)V

    iget-object v10, v1, Lj25;->j:Lrx4;

    .line 332
    invoke-virtual {v10}, Lrx4;->p()Lcs4;

    move-result-object v10

    const/4 v11, 0x0

    .line 333
    invoke-virtual {v10, v11, v9}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v9

    if-nez v9, :cond_3f

    .line 334
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->p:J

    invoke-virtual {v6, v9, v10}, Lvx4;->r(J)V

    .line 335
    :cond_3f
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->w:J

    invoke-virtual {v6, v9, v10}, Lvx4;->e(J)V

    .line 336
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v9

    invoke-virtual {v9, v6}, Lgs4;->M(Lvx4;)V

    .line 337
    :cond_40
    invoke-static {}, Lpc4;->b()Z

    iget-object v9, v1, Lj25;->j:Lrx4;

    .line 338
    invoke-virtual {v9}, Lrx4;->p()Lcs4;

    move-result-object v9

    const/4 v10, 0x0

    .line 339
    invoke-virtual {v9, v10, v8}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v8

    if-eqz v8, :cond_41

    .line 340
    invoke-virtual {v5}, Lds4;->e()Z

    move-result v5

    if-eqz v5, :cond_42

    .line 341
    :cond_41
    invoke-virtual {v6}, Lvx4;->z()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_42

    .line 342
    invoke-virtual {v6}, Lvx4;->z()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lg54;->D(Ljava/lang/String;)Lg54;

    .line 343
    :cond_42
    invoke-virtual {v6}, Lvx4;->J()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_43

    .line 344
    invoke-virtual {v6}, Lvx4;->J()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lg54;->P(Ljava/lang/String;)Lg54;

    .line 345
    :cond_43
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v5

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lgs4;->E(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    .line 346
    :goto_1a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_44

    .line 347
    invoke-static {}, Lr54;->B()Lq54;

    move-result-object v6

    .line 348
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ln25;

    iget-object v8, v8, Ln25;->c:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lq54;->o(Ljava/lang/String;)Lq54;

    .line 349
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ln25;

    iget-wide v8, v8, Ln25;->d:J

    invoke-virtual {v6, v8, v9}, Lq54;->m(J)Lq54;

    .line 350
    invoke-virtual/range {p0 .. p0}, Lj25;->Q()Ll25;

    move-result-object v8

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ln25;

    iget-object v9, v9, Ln25;->e:Ljava/lang/Object;

    invoke-virtual {v8, v6, v9}, Ll25;->t(Lq54;Ljava/lang/Object;)V

    .line 351
    invoke-virtual {v4, v6}, Lg54;->s0(Lq54;)Lg54;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 352
    :cond_44
    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v3

    invoke-virtual {v4}, Lz84;->g()Lc94;

    move-result-object v5

    check-cast v5, Lh54;

    invoke-virtual {v3}, Lly4;->d()V

    invoke-virtual {v3}, Lb25;->f()V

    .line 353
    invoke-static {v5}, Lbi;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-virtual {v5}, Lh54;->s()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 355
    invoke-virtual {v5}, Lt74;->a()[B

    move-result-object v6

    iget-object v8, v3, Lb25;->b:Lj25;

    .line 356
    invoke-virtual {v8}, Lj25;->Q()Ll25;

    move-result-object v8

    .line 357
    invoke-virtual {v8, v6}, Ll25;->E([B)J

    move-result-wide v8

    new-instance v10, Landroid/content/ContentValues;

    .line 358
    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 359
    invoke-virtual {v5}, Lh54;->s()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, v32

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v13, v31

    invoke-virtual {v10, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v11, "metadata"

    .line 361
    invoke-virtual {v10, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 362
    :try_start_10
    invoke-virtual {v3}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v11, "raw_events_metadata"

    const/4 v14, 0x4

    const/4 v15, 0x0

    .line 363
    invoke-virtual {v6, v11, v15, v10, v14}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 364
    :try_start_11
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v3

    iget-object v4, v7, Lks4;->f:Lcom/google/android/gms/measurement/internal/zzaq;

    .line 365
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzaq;->e:Landroid/os/Bundle;

    .line 366
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 367
    :cond_45
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_46

    .line 368
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 369
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    goto :goto_1b

    .line 370
    :cond_46
    invoke-virtual/range {p0 .. p0}, Lj25;->J()Lkx4;

    move-result-object v2

    iget-object v4, v7, Lks4;->a:Ljava/lang/String;

    iget-object v5, v7, Lks4;->b:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lkx4;->p(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 371
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v14

    .line 372
    invoke-virtual/range {p0 .. p0}, Lj25;->V()J

    move-result-wide v15

    iget-object v4, v7, Lks4;->a:Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v4

    invoke-virtual/range {v14 .. v19}, Lgs4;->N(JLjava/lang/String;ZZ)Les4;

    move-result-object v4

    if-eqz v2, :cond_47

    iget-wide v4, v4, Les4;->e:J

    iget-object v2, v1, Lj25;->j:Lrx4;

    .line 373
    invoke-virtual {v2}, Lrx4;->p()Lcs4;

    move-result-object v2

    iget-object v6, v7, Lks4;->a:Ljava/lang/String;

    sget-object v10, Lew4;->o:Ldw4;

    .line 374
    invoke-virtual {v2, v6, v10}, Lcs4;->p(Ljava/lang/String;Ldw4;)I

    move-result v2

    int-to-long v10, v2

    cmp-long v2, v4, v10

    if-gez v2, :cond_47

    goto :goto_1b

    :cond_47
    const/16 v28, 0x0

    .line 375
    :goto_1b
    invoke-virtual {v3}, Lly4;->d()V

    invoke-virtual {v3}, Lb25;->f()V

    .line 376
    invoke-static {v7}, Lbi;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v7, Lks4;->a:Ljava/lang/String;

    .line 377
    invoke-static {v2}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v3, Lb25;->b:Lj25;

    .line 378
    invoke-virtual {v2}, Lj25;->Q()Ll25;

    move-result-object v2

    .line 379
    invoke-virtual {v2, v7}, Ll25;->v(Lks4;)Lz44;

    move-result-object v2

    invoke-virtual {v2}, Lt74;->a()[B

    move-result-object v2

    new-instance v4, Landroid/content/ContentValues;

    .line 380
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    iget-object v5, v7, Lks4;->a:Ljava/lang/String;

    .line 381
    invoke-virtual {v4, v12, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "name"

    iget-object v6, v7, Lks4;->b:Ljava/lang/String;

    .line 382
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "timestamp"

    iget-wide v10, v7, Lks4;->d:J

    .line 383
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 384
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v13, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "data"

    .line 385
    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v2, "realtime"

    .line 386
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 387
    :try_start_12
    invoke-virtual {v3}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v5, 0x0

    move-object/from16 v6, v33

    .line 388
    invoke-virtual {v2, v6, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v8, -0x1

    cmp-long v2, v4, v8

    if-nez v2, :cond_48

    iget-object v2, v3, Lly4;->a:Lrx4;

    .line 389
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 390
    invoke-virtual {v2}, Lqw4;->n()Low4;

    move-result-object v2

    const-string v4, "Failed to insert raw event (got -1). appId"

    iget-object v5, v7, Lks4;->a:Ljava/lang/String;

    invoke-static {v5}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 391
    invoke-virtual {v2, v4, v5}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_1d

    :cond_48
    const-wide/16 v2, 0x0

    .line 392
    :try_start_13
    iput-wide v2, v1, Lj25;->m:J

    goto :goto_1d

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 393
    iget-object v3, v3, Lly4;->a:Lrx4;

    .line 394
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v3

    .line 395
    invoke-virtual {v3}, Lqw4;->n()Low4;

    move-result-object v3

    const-string v4, "Error storing raw event. appId"

    iget-object v5, v7, Lks4;->a:Ljava/lang/String;

    invoke-static {v5}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 396
    invoke-virtual {v3, v4, v5, v2}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_1d

    :catch_4
    move-exception v0

    move-object v2, v0

    goto :goto_1c

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 397
    :try_start_14
    iget-object v3, v3, Lly4;->a:Lrx4;

    .line 398
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v3

    .line 399
    invoke-virtual {v3}, Lqw4;->n()Low4;

    move-result-object v3

    const-string v6, "Error storing raw event metadata. appId"

    .line 400
    invoke-virtual {v5}, Lh54;->s()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 401
    invoke-virtual {v3, v6, v5, v2}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 402
    throw v2
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 403
    :goto_1c
    :try_start_15
    iget-object v3, v1, Lj25;->j:Lrx4;

    .line 404
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v3

    .line 405
    invoke-virtual {v3}, Lqw4;->n()Low4;

    move-result-object v3

    const-string v5, "Data loss. Failed to insert raw event metadata. appId"

    .line 406
    invoke-virtual {v4}, Lg54;->t()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 407
    invoke-virtual {v3, v5, v4, v2}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 408
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v2

    invoke-virtual {v2}, Lgs4;->w()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 409
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v2

    invoke-virtual {v2}, Lgs4;->x()V

    .line 410
    invoke-virtual/range {p0 .. p0}, Lj25;->D()V

    iget-object v2, v1, Lj25;->j:Lrx4;

    .line 411
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 412
    invoke-virtual {v2}, Lqw4;->s()Low4;

    move-result-object v2

    .line 413
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, v3, v29

    const-wide/32 v5, 0x7a120

    add-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Background event processing time, ms"

    .line 414
    invoke-virtual {v2, v4, v3}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 415
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v3

    invoke-virtual {v3}, Lgs4;->x()V

    .line 416
    throw v2
.end method

.method public final e()Lb20;
    .locals 1

    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 1
    iget-object v0, v0, Lrx4;->n:Lb20;

    return-object v0
.end method

.method public final f(Lds4;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lpc4;->b()Z

    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 2
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 3
    sget-object v1, Lew4;->G0:Ldw4;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lds4;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-object v2

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lj25;->g()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final g()Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x10

    new-array v0, v0, [B

    iget-object v1, p0, Lj25;->j:Lrx4;

    .line 1
    invoke-virtual {v1}, Lrx4;->t()Lp25;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lp25;->d0()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/math/BigInteger;

    .line 3
    invoke-direct {v4, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v0, 0x0

    aput-object v4, v3, v0

    const-string v0, "%032x"

    invoke-static {v1, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .locals 22

    move-object/from16 v1, p0

    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lox4;->d()V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lj25;->S()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lj25;->s:Z

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 4
    invoke-virtual {v0}, Lrx4;->o()Lc35;

    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 5
    invoke-virtual {v0}, Lrx4;->z()Lh15;

    move-result-object v0

    invoke-virtual {v0}, Lh15;->k()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 6
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lqw4;->p()Low4;

    move-result-object v0

    const-string v2, "Upload data called on the client side before use of service was decided"

    .line 8
    invoke-virtual {v0, v2}, Low4;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    iput-boolean v3, v1, Lj25;->s:Z

    goto/16 :goto_1f

    .line 9
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 10
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lqw4;->n()Low4;

    move-result-object v0

    const-string v2, "Upload called in the client side when service should be used"

    invoke-virtual {v0, v2}, Low4;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    iput-boolean v3, v1, Lj25;->s:Z

    goto/16 :goto_1f

    .line 12
    :cond_1
    :try_start_2
    iget-wide v4, v1, Lj25;->m:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 13
    invoke-virtual/range {p0 .. p0}, Lj25;->D()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    iput-boolean v3, v1, Lj25;->s:Z

    goto/16 :goto_1f

    .line 14
    :cond_2
    :try_start_3
    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 15
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lox4;->d()V

    iget-object v0, v1, Lj25;->v:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 17
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lqw4;->s()Low4;

    move-result-object v0

    const-string v2, "Uploading requested multiple times"

    invoke-virtual {v0, v2}, Low4;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    iput-boolean v3, v1, Lj25;->s:Z

    goto/16 :goto_1f

    .line 19
    :cond_3
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lj25;->K()Lvw4;

    move-result-object v0

    invoke-virtual {v0}, Lvw4;->i()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 20
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lqw4;->s()Low4;

    move-result-object v0

    const-string v2, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v2}, Low4;->a(Ljava/lang/String;)V

    .line 22
    invoke-virtual/range {p0 .. p0}, Lj25;->D()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    iput-boolean v3, v1, Lj25;->s:Z

    goto/16 :goto_1f

    .line 23
    :cond_4
    :try_start_5
    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 24
    invoke-virtual {v0}, Lrx4;->e()Lb20;

    move-result-object v0

    .line 25
    invoke-interface {v0}, Lb20;->a()J

    move-result-wide v4

    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 26
    invoke-virtual {v0}, Lrx4;->p()Lcs4;

    move-result-object v0

    .line 27
    sget-object v8, Lew4;->Q:Ldw4;

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v8}, Lcs4;->p(Ljava/lang/String;Ldw4;)I

    move-result v0

    iget-object v8, v1, Lj25;->j:Lrx4;

    .line 28
    invoke-virtual {v8}, Lrx4;->p()Lcs4;

    .line 29
    invoke-static {}, Lcs4;->B()J

    move-result-wide v10

    sub-long v10, v4, v10

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v0, :cond_5

    .line 30
    invoke-virtual {v1, v9, v10, v11}, Lj25;->y(Ljava/lang/String;J)Z

    move-result v12

    if-eqz v12, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 31
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v0

    .line 32
    iget-object v0, v0, Lex4;->e:Lbx4;

    invoke-virtual {v0}, Lbx4;->a()J

    move-result-wide v10

    cmp-long v0, v10, v6

    if-eqz v0, :cond_6

    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 33
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lqw4;->r()Low4;

    move-result-object v0

    const-string v6, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v7, v4, v10

    .line 35
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 36
    invoke-virtual {v0, v6, v7}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v0

    invoke-virtual {v0}, Lgs4;->P()Ljava/lang/String;

    move-result-object v6

    .line 38
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v7, -0x1

    if-nez v0, :cond_29

    iget-wide v10, v1, Lj25;->x:J

    cmp-long v0, v10, v7

    if-nez v0, :cond_a

    .line 39
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :try_start_6
    invoke-virtual {v10}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v11, "select rowid from raw_events order by rowid desc limit 1;"

    .line 40
    invoke-virtual {v0, v11, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 41
    :try_start_7
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    .line 42
    :cond_7
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v11, v9

    .line 43
    :goto_1
    :try_start_8
    iget-object v10, v10, Lly4;->a:Lrx4;

    .line 44
    invoke-virtual {v10}, Lrx4;->a()Lqw4;

    move-result-object v10

    .line 45
    invoke-virtual {v10}, Lqw4;->n()Low4;

    move-result-object v10

    const-string v12, "Error querying raw events"

    invoke-virtual {v10, v12, v0}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v11, :cond_8

    .line 46
    :goto_2
    :try_start_9
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_8
    iput-wide v7, v1, Lj25;->x:J

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v9, v11

    :goto_3
    if-eqz v9, :cond_9

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 47
    :cond_9
    throw v0

    .line 48
    :cond_a
    :goto_4
    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 49
    invoke-virtual {v0}, Lrx4;->p()Lcs4;

    move-result-object v0

    sget-object v7, Lew4;->g:Ldw4;

    .line 50
    invoke-virtual {v0, v6, v7}, Lcs4;->p(Ljava/lang/String;Ldw4;)I

    move-result v0

    iget-object v7, v1, Lj25;->j:Lrx4;

    .line 51
    invoke-virtual {v7}, Lrx4;->p()Lcs4;

    move-result-object v7

    sget-object v8, Lew4;->h:Ldw4;

    .line 52
    invoke-virtual {v7, v6, v8}, Lcs4;->p(Ljava/lang/String;Ldw4;)I

    move-result v7

    .line 53
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 54
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v8

    invoke-virtual {v8}, Lly4;->d()V

    invoke-virtual {v8}, Lb25;->f()V

    if-lez v0, :cond_b

    const/4 v10, 0x1

    goto :goto_5

    :cond_b
    const/4 v10, 0x0

    .line 55
    :goto_5
    invoke-static {v10}, Lbi;->b(Z)V

    if-lez v7, :cond_c

    const/4 v10, 0x1

    goto :goto_6

    :cond_c
    const/4 v10, 0x0

    .line 56
    :goto_6
    invoke-static {v10}, Lbi;->b(Z)V

    .line 57
    invoke-static {v6}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 58
    :try_start_a
    invoke-virtual {v8}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    const-string v12, "rowid"

    const-string v13, "data"

    const-string v14, "retry_count"

    filled-new-array {v12, v13, v14}, [Ljava/lang/String;

    move-result-object v13

    new-array v15, v2, [Ljava/lang/String;

    aput-object v6, v15, v3

    const-string v12, "queue"

    const-string v14, "app_id=?"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "rowid"

    .line 59
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .line 60
    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 61
    :try_start_b
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_d

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 63
    :try_start_c
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move-wide/from16 v20, v4

    goto/16 :goto_e

    .line 64
    :cond_d
    :try_start_d
    new-instance v12, Ljava/util/ArrayList;

    .line 65
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    .line 66
    :goto_7
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 67
    :try_start_e
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iget-object v2, v8, Lb25;->b:Lj25;

    .line 68
    invoke-virtual {v2}, Lj25;->Q()Ll25;

    move-result-object v2
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    new-instance v9, Ljava/io/ByteArrayInputStream;

    .line 69
    invoke-direct {v9, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    .line 70
    invoke-direct {v0, v9}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 71
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v10, 0x400

    new-array v10, v10, [B
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    move-wide/from16 v20, v4

    .line 72
    :goto_8
    :try_start_10
    invoke-virtual {v0, v10}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_10

    .line 73
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 74
    invoke-virtual {v9}, Ljava/io/ByteArrayInputStream;->close()V

    .line 75
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 76
    :try_start_11
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    array-length v2, v0
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    add-int/2addr v2, v13

    if-le v2, v7, :cond_e

    goto/16 :goto_c

    .line 77
    :cond_e
    :try_start_12
    invoke-static {}, Lh54;->C0()Lg54;

    move-result-object v2

    invoke-static {v2, v0}, Ll25;->G(Ls74;[B)Ls74;

    move-result-object v2

    check-cast v2, Lg54;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    const/4 v3, 0x2

    .line 78
    :try_start_13
    invoke-interface {v11, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_f

    .line 79
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lg54;->W(I)Lg54;

    .line 80
    :cond_f
    array-length v0, v0

    add-int/2addr v13, v0

    .line 81
    invoke-virtual {v2}, Lz84;->g()Lc94;

    move-result-object v0

    check-cast v0, Lh54;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :catch_2
    move-exception v0

    .line 82
    iget-object v2, v8, Lly4;->a:Lrx4;

    .line 83
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 84
    invoke-virtual {v2}, Lqw4;->n()Low4;

    move-result-object v2

    const-string v3, "Failed to merge queued bundle. appId"

    invoke-static {v6}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 85
    invoke-virtual {v2, v3, v4, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto :goto_b

    :cond_10
    const/4 v5, 0x0

    .line 86
    :try_start_14
    invoke-virtual {v3, v10, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    move-wide/from16 v20, v4

    .line 87
    :goto_9
    :try_start_15
    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 88
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 89
    invoke-virtual {v2}, Lqw4;->n()Low4;

    move-result-object v2

    const-string v3, "Failed to ungzip content"

    invoke-virtual {v2, v3, v0}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    throw v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :catch_5
    move-exception v0

    goto :goto_a

    :catch_6
    move-exception v0

    move-wide/from16 v20, v4

    .line 91
    :goto_a
    :try_start_16
    iget-object v2, v8, Lly4;->a:Lrx4;

    .line 92
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 93
    invoke-virtual {v2}, Lqw4;->n()Low4;

    move-result-object v2

    const-string v3, "Failed to unzip queued bundle. appId"

    invoke-static {v6}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 94
    invoke-virtual {v2, v3, v4, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    :goto_b
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    if-eqz v0, :cond_12

    if-le v13, v7, :cond_11

    goto :goto_c

    :cond_11
    move-wide/from16 v4, v20

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto/16 :goto_7

    .line 96
    :cond_12
    :goto_c
    :try_start_17
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    move-object v0, v12

    goto :goto_e

    :catch_7
    move-exception v0

    goto :goto_d

    :catch_8
    move-exception v0

    move-wide/from16 v20, v4

    goto :goto_d

    :catchall_2
    move-exception v0

    const/4 v9, 0x0

    goto/16 :goto_1b

    :catch_9
    move-exception v0

    move-wide/from16 v20, v4

    const/4 v11, 0x0

    .line 97
    :goto_d
    :try_start_18
    iget-object v2, v8, Lly4;->a:Lrx4;

    .line 98
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 99
    invoke-virtual {v2}, Lqw4;->n()Low4;

    move-result-object v2

    const-string v3, "Error querying bundles. appId"

    invoke-static {v6}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    if-eqz v11, :cond_13

    .line 101
    :try_start_19
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 102
    :cond_13
    :goto_e
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 103
    invoke-static {}, Lpc4;->b()Z

    iget-object v2, v1, Lj25;->j:Lrx4;

    .line 104
    invoke-virtual {v2}, Lrx4;->p()Lcs4;

    move-result-object v2

    sget-object v3, Lew4;->G0:Ldw4;

    const/4 v4, 0x0

    .line 105
    invoke-virtual {v2, v4, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 106
    invoke-virtual {v1, v6}, Lj25;->U(Ljava/lang/String;)Lds4;

    move-result-object v2

    invoke-virtual {v2}, Lds4;->d()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 107
    :cond_14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 108
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lh54;

    .line 109
    invoke-virtual {v3}, Lh54;->y()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 110
    invoke-virtual {v3}, Lh54;->y()Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :cond_16
    const/4 v2, 0x0

    :goto_f
    if-eqz v2, :cond_19

    const/4 v3, 0x0

    .line 111
    :goto_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_19

    .line 112
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lh54;

    .line 113
    invoke-virtual {v4}, Lh54;->y()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_17

    goto :goto_11

    .line 114
    :cond_17
    invoke-virtual {v4}, Lh54;->y()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    const/4 v4, 0x0

    .line 115
    invoke-interface {v0, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_12

    :cond_18
    :goto_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 116
    :cond_19
    :goto_12
    invoke-static {}, Lf54;->u()Le54;

    move-result-object v2

    .line 117
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    .line 118
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v5, v1, Lj25;->j:Lrx4;

    .line 119
    invoke-virtual {v5}, Lrx4;->p()Lcs4;

    move-result-object v5

    .line 120
    invoke-virtual {v5, v6}, Lcs4;->y(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 121
    invoke-static {}, Lpc4;->b()Z

    iget-object v5, v1, Lj25;->j:Lrx4;

    .line 122
    invoke-virtual {v5}, Lrx4;->p()Lcs4;

    move-result-object v5

    sget-object v7, Lew4;->G0:Ldw4;

    const/4 v8, 0x0

    .line 123
    invoke-virtual {v5, v8, v7}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 124
    invoke-virtual {v1, v6}, Lj25;->U(Ljava/lang/String;)Lds4;

    move-result-object v5

    invoke-virtual {v5}, Lds4;->d()Z

    move-result v5

    if-eqz v5, :cond_1b

    :cond_1a
    const/4 v5, 0x1

    goto :goto_13

    :cond_1b
    const/4 v5, 0x0

    .line 125
    :goto_13
    invoke-static {}, Lpc4;->b()Z

    iget-object v7, v1, Lj25;->j:Lrx4;

    .line 126
    invoke-virtual {v7}, Lrx4;->p()Lcs4;

    move-result-object v7

    sget-object v8, Lew4;->G0:Ldw4;

    const/4 v9, 0x0

    .line 127
    invoke-virtual {v7, v9, v8}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 128
    invoke-virtual {v1, v6}, Lj25;->U(Ljava/lang/String;)Lds4;

    move-result-object v7

    invoke-virtual {v7}, Lds4;->d()Z

    move-result v7

    if-eqz v7, :cond_1c

    goto :goto_14

    :cond_1c
    const/4 v7, 0x0

    goto :goto_15

    :cond_1d
    :goto_14
    const/4 v7, 0x1

    .line 129
    :goto_15
    invoke-static {}, Lpc4;->b()Z

    iget-object v9, v1, Lj25;->j:Lrx4;

    .line 130
    invoke-virtual {v9}, Lrx4;->p()Lcs4;

    move-result-object v9

    const/4 v10, 0x0

    .line 131
    invoke-virtual {v9, v10, v8}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 132
    invoke-virtual {v1, v6}, Lj25;->U(Ljava/lang/String;)Lds4;

    move-result-object v8

    invoke-virtual {v8}, Lds4;->e()Z

    move-result v8

    if-eqz v8, :cond_1e

    goto :goto_16

    :cond_1e
    const/4 v8, 0x0

    goto :goto_17

    :cond_1f
    :goto_16
    const/4 v8, 0x1

    :goto_17
    const/4 v9, 0x0

    :goto_18
    if-ge v9, v3, :cond_24

    .line 133
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lh54;

    invoke-virtual {v10}, Lc94;->n()Lz84;

    move-result-object v10

    check-cast v10, Lg54;

    .line 134
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, v1, Lj25;->j:Lrx4;

    .line 135
    invoke-virtual {v11}, Lrx4;->p()Lcs4;

    move-result-object v11

    .line 136
    invoke-virtual {v11}, Lcs4;->l()J

    invoke-virtual {v10}, Lg54;->x()Lg54;

    move-wide/from16 v11, v20

    .line 137
    invoke-virtual {v10, v11, v12}, Lg54;->u0(J)Lg54;

    iget-object v13, v1, Lj25;->j:Lrx4;

    .line 138
    invoke-virtual {v13}, Lrx4;->o()Lc35;

    const/4 v13, 0x0

    .line 139
    invoke-virtual {v10, v13}, Lg54;->L(Z)Lg54;

    if-nez v5, :cond_20

    .line 140
    invoke-virtual {v10}, Lg54;->V()Lg54;

    .line 141
    :cond_20
    invoke-static {}, Lpc4;->b()Z

    iget-object v13, v1, Lj25;->j:Lrx4;

    .line 142
    invoke-virtual {v13}, Lrx4;->p()Lcs4;

    move-result-object v13

    sget-object v14, Lew4;->G0:Ldw4;

    const/4 v15, 0x0

    .line 143
    invoke-virtual {v13, v15, v14}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v13

    if-eqz v13, :cond_22

    if-nez v7, :cond_21

    .line 144
    invoke-virtual {v10}, Lg54;->z()Lg54;

    .line 145
    invoke-virtual {v10}, Lg54;->B()Lg54;

    :cond_21
    if-nez v8, :cond_22

    .line 146
    invoke-virtual {v10}, Lg54;->E()Lg54;

    :cond_22
    iget-object v13, v1, Lj25;->j:Lrx4;

    .line 147
    invoke-virtual {v13}, Lrx4;->p()Lcs4;

    move-result-object v13

    sget-object v14, Lew4;->W:Ldw4;

    .line 148
    invoke-virtual {v13, v6, v14}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v13

    if-eqz v13, :cond_23

    .line 149
    invoke-virtual {v10}, Lz84;->g()Lc94;

    move-result-object v13

    check-cast v13, Lh54;

    invoke-virtual {v13}, Lt74;->a()[B

    move-result-object v13

    .line 150
    invoke-virtual/range {p0 .. p0}, Lj25;->Q()Ll25;

    move-result-object v14

    invoke-virtual {v14, v13}, Ll25;->E([B)J

    move-result-wide v13

    invoke-virtual {v10, v13, v14}, Lg54;->a0(J)Lg54;

    .line 151
    :cond_23
    invoke-virtual {v2, v10}, Le54;->o(Lg54;)Le54;

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v20, v11

    goto/16 :goto_18

    :cond_24
    move-wide/from16 v11, v20

    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 152
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lqw4;->v()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    .line 154
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 155
    invoke-virtual/range {p0 .. p0}, Lj25;->Q()Ll25;

    move-result-object v0

    invoke-virtual {v2}, Lz84;->g()Lc94;

    move-result-object v5

    check-cast v5, Lf54;

    invoke-virtual {v0, v5}, Ll25;->w(Lf54;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_25
    const/4 v0, 0x0

    .line 156
    :goto_19
    invoke-virtual/range {p0 .. p0}, Lj25;->Q()Ll25;

    invoke-virtual {v2}, Lz84;->g()Lc94;

    move-result-object v5

    check-cast v5, Lf54;

    .line 157
    invoke-virtual {v5}, Lt74;->a()[B

    move-result-object v14

    iget-object v5, v1, Lj25;->j:Lrx4;

    .line 158
    invoke-virtual {v5}, Lrx4;->p()Lcs4;

    sget-object v5, Lew4;->q:Ldw4;

    const/4 v9, 0x0

    .line 159
    invoke-virtual {v5, v9}, Ldw4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 160
    :try_start_1a
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    invoke-static {v7}, Lbi;->b(Z)V

    iget-object v7, v1, Lj25;->v:Ljava/util/List;

    if-eqz v7, :cond_26

    iget-object v4, v1, Lj25;->j:Lrx4;

    .line 162
    invoke-virtual {v4}, Lrx4;->a()Lqw4;

    move-result-object v4

    .line 163
    invoke-virtual {v4}, Lqw4;->n()Low4;

    move-result-object v4

    const-string v7, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v4, v7}, Low4;->a(Ljava/lang/String;)V

    goto :goto_1a

    .line 164
    :cond_26
    new-instance v7, Ljava/util/ArrayList;

    .line 165
    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v1, Lj25;->v:Ljava/util/List;

    .line 166
    :goto_1a
    iget-object v4, v1, Lj25;->j:Lrx4;

    .line 167
    invoke-virtual {v4}, Lrx4;->q()Lex4;

    move-result-object v4

    .line 168
    iget-object v4, v4, Lex4;->f:Lbx4;

    invoke-virtual {v4, v11, v12}, Lbx4;->b(J)V

    const-string v4, "?"

    if-lez v3, :cond_27

    .line 169
    invoke-virtual {v2}, Le54;->m()Lh54;

    move-result-object v2

    invoke-virtual {v2}, Lh54;->s()Ljava/lang/String;

    move-result-object v4

    :cond_27
    iget-object v2, v1, Lj25;->j:Lrx4;

    .line 170
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 171
    invoke-virtual {v2}, Lqw4;->s()Low4;

    move-result-object v2

    const-string v3, "Uploading data. app, uncompressed size, data"

    array-length v7, v14

    .line 172
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v3, v4, v7, v0}, Low4;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lj25;->r:Z

    .line 173
    invoke-virtual/range {p0 .. p0}, Lj25;->K()Lvw4;

    move-result-object v11

    new-instance v0, Ld25;

    invoke-direct {v0, v1, v6}, Ld25;-><init>(Lj25;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v11}, Lly4;->d()V

    invoke-virtual {v11}, Lb25;->f()V

    .line 175
    invoke-static {v13}, Lbi;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-static {v14}, Lbi;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-static {v0}, Lbi;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v11, Lly4;->a:Lrx4;

    .line 178
    invoke-virtual {v2}, Lrx4;->m()Lox4;

    move-result-object v2

    new-instance v3, Luw4;

    const/4 v15, 0x0

    move-object v10, v3

    move-object v12, v6

    move-object/from16 v16, v0

    .line 179
    invoke-direct/range {v10 .. v16}, Luw4;-><init>(Lvw4;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lsw4;)V

    .line 180
    invoke-virtual {v2, v3}, Lox4;->t(Ljava/lang/Runnable;)V
    :try_end_1a
    .catch Ljava/net/MalformedURLException; {:try_start_1a .. :try_end_1a} :catch_a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    goto/16 :goto_1e

    .line 181
    :catch_a
    :try_start_1b
    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 182
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lqw4;->n()Low4;

    move-result-object v0

    const-string v2, "Failed to parse upload URL. Not uploading. appId"

    invoke-static {v6}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 184
    invoke-virtual {v0, v2, v3, v5}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1e

    :catchall_3
    move-exception v0

    move-object v9, v11

    :goto_1b
    if-eqz v9, :cond_28

    .line 185
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 186
    :cond_28
    throw v0

    :cond_29
    move-wide v11, v4

    .line 187
    iput-wide v7, v1, Lj25;->x:J

    .line 188
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v2

    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 189
    invoke-virtual {v0}, Lrx4;->p()Lcs4;

    .line 190
    invoke-static {}, Lcs4;->B()J

    move-result-wide v3

    sub-long v4, v11, v3

    invoke-virtual {v2}, Lly4;->d()V

    invoke-virtual {v2}, Lb25;->f()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    :try_start_1c
    invoke-virtual {v2}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 191
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"

    .line 192
    invoke-virtual {v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_1c} :catch_c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    .line 193
    :try_start_1d
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, v2, Lly4;->a:Lrx4;

    .line 194
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lqw4;->s()Low4;

    move-result-object v0

    const-string v3, "No expired configs for apps with pending events"

    invoke-virtual {v0, v3}, Low4;->a(Ljava/lang/String;)V

    goto :goto_1d

    :cond_2a
    const/4 v3, 0x0

    .line 196
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d .. :try_end_1d} :catch_b
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    move-object v9, v0

    goto :goto_1d

    :catch_b
    move-exception v0

    goto :goto_1c

    :catchall_4
    move-exception v0

    goto :goto_20

    :catch_c
    move-exception v0

    move-object v4, v9

    .line 197
    :goto_1c
    :try_start_1e
    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 198
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 199
    invoke-virtual {v2}, Lqw4;->n()Low4;

    move-result-object v2

    const-string v3, "Error selecting expired configs"

    invoke-virtual {v2, v3, v0}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    if-eqz v4, :cond_2b

    .line 200
    :goto_1d
    :try_start_1f
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 201
    :cond_2b
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 202
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v0

    invoke-virtual {v0, v9}, Lgs4;->L(Ljava/lang/String;)Lvx4;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 203
    invoke-virtual {v1, v0}, Lj25;->i(Lvx4;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    :cond_2c
    :goto_1e
    const/4 v2, 0x0

    .line 204
    iput-boolean v2, v1, Lj25;->s:Z

    .line 205
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lj25;->E()V

    return-void

    :catchall_5
    move-exception v0

    move-object v9, v4

    :goto_20
    if-eqz v9, :cond_2d

    .line 206
    :try_start_20
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_2d
    throw v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    :catchall_6
    move-exception v0

    const/4 v2, 0x0

    .line 208
    iput-boolean v2, v1, Lj25;->s:Z

    .line 209
    invoke-virtual/range {p0 .. p0}, Lj25;->E()V

    .line 210
    throw v0
.end method

.method public final i(Lvx4;)V
    .locals 12

    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lox4;->d()V

    .line 3
    invoke-static {}, Lae4;->b()Z

    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 4
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 5
    invoke-virtual {p1}, Lvx4;->y()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lew4;->i0:Ldw4;

    invoke-virtual {v0, v1, v2}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lvx4;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p1}, Lvx4;->F()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1}, Lvx4;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lvx4;->y()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xcc

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lj25;->k(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    .line 10
    :cond_1
    invoke-virtual {p1}, Lvx4;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p1}, Lvx4;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p1}, Lvx4;->y()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xcc

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lj25;->k(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    .line 13
    :cond_2
    :goto_0
    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 14
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 15
    new-instance v1, Landroid/net/Uri$Builder;

    .line 16
    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 17
    invoke-virtual {p1}, Lvx4;->B()Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 19
    invoke-static {}, Lae4;->b()Z

    iget-object v3, v0, Lly4;->a:Lrx4;

    .line 20
    iget-object v3, v3, Lrx4;->g:Lcs4;

    .line 21
    invoke-virtual {p1}, Lvx4;->y()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 22
    invoke-virtual {p1}, Lvx4;->F()Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 24
    invoke-virtual {p1}, Lvx4;->D()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 25
    :cond_3
    invoke-virtual {p1}, Lvx4;->D()Ljava/lang/String;

    move-result-object v3

    .line 26
    :cond_4
    :goto_1
    sget-object v2, Lew4;->e:Ldw4;

    const/4 v4, 0x0

    .line 27
    invoke-virtual {v2, v4}, Ldw4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    sget-object v5, Lew4;->f:Ldw4;

    .line 28
    invoke-virtual {v5, v4}, Ldw4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "config/app/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 29
    :cond_5
    new-instance v3, Ljava/lang/String;

    .line 30
    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 31
    :goto_2
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 32
    invoke-virtual {p1}, Lvx4;->z()Ljava/lang/String;

    move-result-object v3

    const-string v5, "app_instance_id"

    invoke-virtual {v2, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "platform"

    const-string v5, "android"

    .line 33
    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 34
    invoke-virtual {v0}, Lcs4;->l()J

    const-wide/32 v5, 0x9088

    .line 35
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v3, "gmp_version"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 36
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lj25;->j:Lrx4;

    .line 38
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 39
    iget-object v1, v1, Lqw4;->n:Low4;

    const-string v2, "Fetching remote configuration"

    .line 40
    invoke-virtual {p1}, Lvx4;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p0}, Lj25;->J()Lkx4;

    move-result-object v1

    invoke-virtual {p1}, Lvx4;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkx4;->i(Ljava/lang/String;)Ln44;

    move-result-object v1

    .line 42
    invoke-virtual {p0}, Lj25;->J()Lkx4;

    move-result-object v2

    invoke-virtual {p1}, Lvx4;->y()Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-virtual {v2}, Lly4;->d()V

    iget-object v2, v2, Lkx4;->i:Ljava/util/Map;

    .line 44
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 45
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 46
    new-instance v4, Lf4;

    invoke-direct {v4}, Lf4;-><init>()V

    const-string v1, "If-Modified-Since"

    .line 47
    invoke-virtual {v4, v1, v2}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move-object v10, v4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lj25;->q:Z

    .line 48
    invoke-virtual {p0}, Lj25;->K()Lvw4;

    move-result-object v6

    .line 49
    invoke-virtual {p1}, Lvx4;->y()Ljava/lang/String;

    move-result-object v7

    new-instance v11, Le25;

    invoke-direct {v11, p0}, Le25;-><init>(Lj25;)V

    .line 50
    invoke-virtual {v6}, Lly4;->d()V

    invoke-virtual {v6}, Lb25;->f()V

    .line 51
    iget-object v1, v6, Lly4;->a:Lrx4;

    .line 52
    invoke-virtual {v1}, Lrx4;->m()Lox4;

    move-result-object v1

    new-instance v2, Luw4;

    const/4 v9, 0x0

    move-object v5, v2

    .line 53
    invoke-direct/range {v5 .. v11}, Luw4;-><init>(Lvw4;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lsw4;)V

    .line 54
    invoke-virtual {v1, v2}, Lox4;->t(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 55
    :catch_0
    iget-object v1, p0, Lj25;->j:Lrx4;

    .line 56
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 57
    iget-object v1, v1, Lqw4;->f:Low4;

    .line 58
    invoke-virtual {p1}, Lvx4;->y()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to parse config URL. Not fetching. appId"

    .line 59
    invoke-virtual {v1, v2, p1, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final j()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 1
    iget-object v0, v0, Lrx4;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final k(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lox4;->d()V

    .line 3
    invoke-virtual {p0}, Lj25;->S()V

    .line 4
    invoke-static {p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array p4, v0, [B

    :cond_0
    iget-object v1, p0, Lj25;->j:Lrx4;

    .line 5
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 6
    iget-object v1, v1, Lqw4;->n:Low4;

    .line 7
    array-length v2, p4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "onConfigFetched. Response size"

    invoke-virtual {v1, v3, v2}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object v1

    invoke-virtual {v1}, Lgs4;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object v1

    invoke-virtual {v1, p1}, Lgs4;->L(Ljava/lang/String;)Lvx4;

    move-result-object v1

    const/16 v3, 0xc8

    const/16 v4, 0x130

    if-eq p2, v3, :cond_1

    const/16 v3, 0xcc

    if-eq p2, v3, :cond_1

    if-ne p2, v4, :cond_2

    const/16 p2, 0x130

    :cond_1
    if-nez p3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v1, :cond_3

    iget-object p2, p0, Lj25;->j:Lrx4;

    .line 10
    invoke-virtual {p2}, Lrx4;->a()Lqw4;

    move-result-object p2

    .line 11
    iget-object p2, p2, Lqw4;->i:Low4;

    const-string p3, "App does not exist in onConfigFetched. appId"

    .line 12
    invoke-static {p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    invoke-virtual {p2, p3, p1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_3
    const/16 v5, 0x194

    const/4 v6, 0x0

    if-nez v3, :cond_7

    if-ne p2, v5, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    iget-object p4, p0, Lj25;->j:Lrx4;

    .line 15
    iget-object p4, p4, Lrx4;->n:Lb20;

    .line 16
    invoke-interface {p4}, Lb20;->a()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lvx4;->m(J)V

    .line 17
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object p4

    invoke-virtual {p4, v1}, Lgs4;->M(Lvx4;)V

    iget-object p4, p0, Lj25;->j:Lrx4;

    .line 18
    invoke-virtual {p4}, Lrx4;->a()Lqw4;

    move-result-object p4

    .line 19
    iget-object p4, p4, Lqw4;->n:Low4;

    const-string p5, "Fetching config failed. code, error"

    .line 20
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lj25;->J()Lkx4;

    move-result-object p3

    .line 22
    invoke-virtual {p3}, Lly4;->d()V

    iget-object p3, p3, Lkx4;->i:Ljava/util/Map;

    .line 23
    invoke-interface {p3, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object p1, p0, Lj25;->j:Lrx4;

    .line 25
    invoke-virtual {p1}, Lrx4;->q()Lex4;

    move-result-object p1

    .line 26
    iget-object p1, p1, Lex4;->f:Lbx4;

    iget-object p3, p0, Lj25;->j:Lrx4;

    .line 27
    iget-object p3, p3, Lrx4;->n:Lb20;

    .line 28
    invoke-interface {p3}, Lb20;->a()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lbx4;->b(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_5

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_6

    :cond_5
    iget-object p1, p0, Lj25;->j:Lrx4;

    .line 29
    invoke-virtual {p1}, Lrx4;->q()Lex4;

    move-result-object p1

    .line 30
    iget-object p1, p1, Lex4;->g:Lbx4;

    iget-object p2, p0, Lj25;->j:Lrx4;

    .line 31
    iget-object p2, p2, Lrx4;->n:Lb20;

    .line 32
    invoke-interface {p2}, Lb20;->a()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lbx4;->b(J)V

    .line 33
    :cond_6
    invoke-virtual {p0}, Lj25;->D()V

    goto/16 :goto_7

    :cond_7
    :goto_1
    if-eqz p5, :cond_8

    const-string p3, "Last-Modified"

    .line 34
    invoke-interface {p5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    goto :goto_2

    :cond_8
    move-object p3, v6

    :goto_2
    if-eqz p3, :cond_9

    .line 35
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p5

    if-lez p5, :cond_9

    .line 36
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_3

    :cond_9
    move-object p3, v6

    :goto_3
    if-eq p2, v5, :cond_b

    if-ne p2, v4, :cond_a

    goto :goto_4

    .line 37
    :cond_a
    invoke-virtual {p0}, Lj25;->J()Lkx4;

    move-result-object p5

    invoke-virtual {p5, p1, p4, p3}, Lkx4;->l(Ljava/lang/String;[BLjava/lang/String;)Z

    goto :goto_5

    .line 38
    :cond_b
    :goto_4
    invoke-virtual {p0}, Lj25;->J()Lkx4;

    move-result-object p3

    invoke-virtual {p3, p1}, Lkx4;->i(Ljava/lang/String;)Ln44;

    move-result-object p3

    if-nez p3, :cond_c

    .line 39
    invoke-virtual {p0}, Lj25;->J()Lkx4;

    move-result-object p3

    invoke-virtual {p3, p1, v6, v6}, Lkx4;->l(Ljava/lang/String;[BLjava/lang/String;)Z

    .line 40
    :cond_c
    :goto_5
    iget-object p3, p0, Lj25;->j:Lrx4;

    .line 41
    iget-object p3, p3, Lrx4;->n:Lb20;

    .line 42
    invoke-interface {p3}, Lb20;->a()J

    move-result-wide p3

    invoke-virtual {v1, p3, p4}, Lvx4;->k(J)V

    .line 43
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object p3

    invoke-virtual {p3, v1}, Lgs4;->M(Lvx4;)V

    if-ne p2, v5, :cond_d

    iget-object p2, p0, Lj25;->j:Lrx4;

    .line 44
    invoke-virtual {p2}, Lrx4;->a()Lqw4;

    move-result-object p2

    .line 45
    iget-object p2, p2, Lqw4;->k:Low4;

    const-string p3, "Config not found. Using empty config. appId"

    .line 46
    invoke-virtual {p2, p3, p1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 47
    :cond_d
    iget-object p1, p0, Lj25;->j:Lrx4;

    .line 48
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 49
    iget-object p1, p1, Lqw4;->n:Low4;

    const-string p3, "Successfully fetched config. Got network response. code, size"

    .line 50
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 51
    invoke-virtual {p1, p3, p2, v2}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    :goto_6
    invoke-virtual {p0}, Lj25;->K()Lvw4;

    move-result-object p1

    invoke-virtual {p1}, Lvw4;->i()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lj25;->C()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 53
    invoke-virtual {p0}, Lj25;->h()V

    goto :goto_7

    .line 54
    :cond_e
    invoke-virtual {p0}, Lj25;->D()V

    .line 55
    :goto_7
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object p1

    invoke-virtual {p1}, Lgs4;->w()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :try_start_2
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object p1

    invoke-virtual {p1}, Lgs4;->x()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput-boolean v0, p0, Lj25;->q:Z

    .line 57
    invoke-virtual {p0}, Lj25;->E()V

    return-void

    .line 58
    :goto_8
    :try_start_3
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object p2

    invoke-virtual {p2}, Lgs4;->x()V

    .line 59
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 60
    iput-boolean v0, p0, Lj25;->q:Z

    .line 61
    invoke-virtual {p0}, Lj25;->E()V

    .line 62
    throw p1
.end method

.method public final l()V
    .locals 10

    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lox4;->d()V

    .line 3
    invoke-virtual {p0}, Lj25;->S()V

    iget-boolean v0, p0, Lj25;->l:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj25;->l:Z

    .line 4
    iget-object v1, p0, Lj25;->j:Lrx4;

    .line 5
    invoke-virtual {v1}, Lrx4;->m()Lox4;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lox4;->d()V

    iget-object v1, p0, Lj25;->j:Lrx4;

    .line 7
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 8
    sget-object v2, Lew4;->h0:Ldw4;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1

    const-string v2, "Storage concurrent access okay"

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj25;->t:Ljava/nio/channels/FileLock;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    iget-object v1, p0, Lj25;->j:Lrx4;

    .line 11
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 12
    iget-object v1, v1, Lqw4;->n:Low4;

    .line 13
    invoke-virtual {v1, v2}, Low4;->a(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    goto :goto_3

    .line 14
    :cond_1
    :goto_1
    iget-object v1, p0, Lj25;->c:Lgs4;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 15
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 16
    iget-object v1, p0, Lj25;->j:Lrx4;

    .line 17
    iget-object v1, v1, Lrx4;->a:Landroid/content/Context;

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v5, Ljava/io/File;

    const-string v6, "google_app_measurement.db"

    .line 19
    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    .line 20
    invoke-direct {v1, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lj25;->u:Ljava/nio/channels/FileChannel;

    .line 21
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v1

    iput-object v1, p0, Lj25;->t:Ljava/nio/channels/FileLock;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lj25;->j:Lrx4;

    .line 22
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 23
    iget-object v1, v1, Lqw4;->n:Low4;

    .line 24
    invoke-virtual {v1, v2}, Low4;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lj25;->j:Lrx4;

    .line 25
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 26
    iget-object v1, v1, Lqw4;->f:Low4;

    const-string v2, "Storage concurrent data access panic"

    .line 27
    invoke-virtual {v1, v2}, Low4;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 28
    iget-object v2, p0, Lj25;->j:Lrx4;

    .line 29
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 30
    iget-object v2, v2, Lqw4;->i:Low4;

    const-string v5, "Storage lock already acquired"

    .line 31
    invoke-virtual {v2, v5, v1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    move-exception v1

    .line 32
    iget-object v2, p0, Lj25;->j:Lrx4;

    .line 33
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 34
    iget-object v2, v2, Lqw4;->f:Low4;

    const-string v5, "Failed to access storage lock file"

    .line 35
    invoke-virtual {v2, v5, v1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :catch_2
    move-exception v1

    .line 36
    iget-object v2, p0, Lj25;->j:Lrx4;

    .line 37
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 38
    iget-object v2, v2, Lqw4;->f:Low4;

    const-string v5, "Failed to acquire storage lock"

    .line 39
    invoke-virtual {v2, v5, v1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_b

    .line 40
    iget-object v1, p0, Lj25;->u:Ljava/nio/channels/FileChannel;

    iget-object v2, p0, Lj25;->j:Lrx4;

    .line 41
    invoke-virtual {v2}, Lrx4;->m()Lox4;

    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lox4;->d()V

    const-wide/16 v5, 0x0

    const-string v2, "Bad channel to read from"

    const/4 v7, 0x4

    if-eqz v1, :cond_5

    .line 43
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_4

    .line 44
    :cond_3
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 45
    :try_start_1
    invoke-virtual {v1, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 46
    invoke-virtual {v1, v8}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-eq v1, v7, :cond_4

    const/4 v8, -0x1

    if-eq v1, v8, :cond_6

    iget-object v8, p0, Lj25;->j:Lrx4;

    .line 47
    invoke-virtual {v8}, Lrx4;->a()Lqw4;

    move-result-object v8

    .line 48
    iget-object v8, v8, Lqw4;->i:Low4;

    const-string v9, "Unexpected data length. Bytes read"

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v9, v1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 50
    :cond_4
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 51
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_5

    :catch_3
    move-exception v1

    .line 52
    iget-object v8, p0, Lj25;->j:Lrx4;

    .line 53
    invoke-virtual {v8}, Lrx4;->a()Lqw4;

    move-result-object v8

    .line 54
    iget-object v8, v8, Lqw4;->f:Low4;

    const-string v9, "Failed to read from channel"

    .line 55
    invoke-virtual {v8, v9, v1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 56
    :cond_5
    :goto_4
    iget-object v1, p0, Lj25;->j:Lrx4;

    .line 57
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 58
    iget-object v1, v1, Lqw4;->f:Low4;

    .line 59
    invoke-virtual {v1, v2}, Low4;->a(Ljava/lang/String;)V

    :cond_6
    :goto_5
    iget-object v1, p0, Lj25;->j:Lrx4;

    .line 60
    invoke-virtual {v1}, Lrx4;->b()Liw4;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lww4;->f()V

    iget v1, v1, Liw4;->e:I

    .line 62
    iget-object v8, p0, Lj25;->j:Lrx4;

    .line 63
    invoke-virtual {v8}, Lrx4;->m()Lox4;

    move-result-object v8

    .line 64
    invoke-virtual {v8}, Lox4;->d()V

    if-le v4, v1, :cond_7

    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 65
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 66
    iget-object v0, v0, Lqw4;->f:Low4;

    .line 67
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    .line 69
    invoke-virtual {v0, v3, v2, v1}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_7
    if-ge v4, v1, :cond_b

    iget-object v8, p0, Lj25;->u:Ljava/nio/channels/FileChannel;

    iget-object v9, p0, Lj25;->j:Lrx4;

    .line 70
    invoke-virtual {v9}, Lrx4;->m()Lox4;

    move-result-object v9

    .line 71
    invoke-virtual {v9}, Lox4;->d()V

    if-eqz v8, :cond_a

    .line 72
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_6

    .line 73
    :cond_8
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 74
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 75
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 76
    :try_start_2
    invoke-virtual {v8, v5, v6}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    iget-object v5, p0, Lj25;->j:Lrx4;

    .line 77
    iget-object v5, v5, Lrx4;->g:Lcs4;

    .line 78
    sget-object v6, Lew4;->r0:Ldw4;

    invoke-virtual {v5, v3, v6}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v3

    .line 79
    invoke-virtual {v8, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 80
    invoke-virtual {v8, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 81
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    const-wide/16 v5, 0x4

    cmp-long v0, v2, v5

    if-eqz v0, :cond_9

    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 82
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 83
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v2, "Error writing to channel. Bytes written"

    .line 84
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_9
    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 85
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 86
    iget-object v0, v0, Lqw4;->n:Low4;

    .line 87
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgraded. Previous, current version"

    invoke-virtual {v0, v3, v2, v1}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catch_4
    move-exception v0

    .line 88
    iget-object v2, p0, Lj25;->j:Lrx4;

    .line 89
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 90
    iget-object v2, v2, Lqw4;->f:Low4;

    const-string v3, "Failed to write to channel"

    .line 91
    invoke-virtual {v2, v3, v0}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    .line 92
    :cond_a
    :goto_6
    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 93
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 94
    iget-object v0, v0, Lqw4;->f:Low4;

    .line 95
    invoke-virtual {v0, v2}, Low4;->a(Ljava/lang/String;)V

    :goto_7
    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 96
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 97
    iget-object v0, v0, Lqw4;->f:Low4;

    .line 98
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgrade failed. Previous, current version"

    .line 100
    invoke-virtual {v0, v3, v2, v1}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method public final m()Lox4;
    .locals 1

    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    return-object v0
.end method

.method public final n(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 7

    const-string v0, "app_id=?"

    iget-object v1, p0, Lj25;->v:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lj25;->w:Ljava/util/List;

    iget-object v2, p0, Lj25;->v:Ljava/util/List;

    .line 2
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    :cond_0
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    .line 4
    invoke-static {v2}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-virtual {v1}, Lly4;->d()V

    invoke-virtual {v1}, Lb25;->f()V

    :try_start_0
    invoke-virtual {v1}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v5, "apps"

    .line 6
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    const-string v6, "events"

    .line 7
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "user_attributes"

    .line 8
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "conditional_properties"

    .line 9
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "raw_events"

    .line 10
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "raw_events_metadata"

    .line 11
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "queue"

    .line 12
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "audience_filter_values"

    .line 13
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "main_event_params"

    .line 14
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "default_event_params"

    .line 15
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v5, v0

    if-lez v5, :cond_1

    iget-object v0, v1, Lly4;->a:Lrx4;

    .line 16
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 17
    iget-object v0, v0, Lqw4;->n:Low4;

    const-string v3, "Reset analytics data. app, records"

    .line 18
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 20
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 21
    iget-object v1, v1, Lqw4;->f:Low4;

    .line 22
    invoke-static {v2}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Error resetting analytics data. appId, error"

    .line 23
    invoke-virtual {v1, v3, v2, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    :cond_1
    :goto_0
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->l:Z

    if-eqz v0, :cond_2

    .line 25
    invoke-virtual {p0, p1}, Lj25;->r(Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_2
    return-void
.end method

.method public final o()Lc35;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final p(Lcom/google/android/gms/measurement/internal/zzkr;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 13

    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lox4;->d()V

    .line 3
    invoke-virtual {p0}, Lj25;->S()V

    .line 4
    invoke-virtual {p0, p2}, Lj25;->H(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->l:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 6
    invoke-virtual {v0}, Lrx4;->t()Lp25;

    move-result-object v0

    .line 7
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lp25;->l0(Ljava/lang/String;)I

    move-result v5

    const/4 v0, 0x1

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-eqz v5, :cond_2

    iget-object v3, p0, Lj25;->j:Lrx4;

    .line 8
    invoke-virtual {v3}, Lrx4;->t()Lp25;

    move-result-object v3

    .line 9
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    iget-object v6, p0, Lj25;->j:Lrx4;

    .line 10
    iget-object v6, v6, Lrx4;->g:Lcs4;

    .line 11
    invoke-virtual {v3, v4, v1, v0}, Lp25;->q(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v7

    .line 12
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    move v8, p1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    iget-object p1, p0, Lj25;->j:Lrx4;

    .line 13
    invoke-virtual {p1}, Lrx4;->t()Lp25;

    move-result-object v2

    iget-object v3, p0, Lj25;->z:Lo25;

    .line 14
    iget-object v4, p2, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    const-string v6, "_ev"

    .line 15
    invoke-virtual/range {v2 .. v8}, Lp25;->A(Lo25;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_2
    iget-object v3, p0, Lj25;->j:Lrx4;

    .line 16
    invoke-virtual {v3}, Lrx4;->t()Lp25;

    move-result-object v3

    .line 17
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkr;->n()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lp25;->x(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v9

    if-eqz v9, :cond_5

    iget-object v3, p0, Lj25;->j:Lrx4;

    .line 18
    invoke-virtual {v3}, Lrx4;->t()Lp25;

    move-result-object v3

    .line 19
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    iget-object v5, p0, Lj25;->j:Lrx4;

    .line 20
    iget-object v5, v5, Lrx4;->g:Lcs4;

    .line 21
    invoke-virtual {v3, v4, v1, v0}, Lp25;->q(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v11

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkr;->n()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 23
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_3

    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 24
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v12, v2

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    :goto_1
    iget-object p1, p0, Lj25;->j:Lrx4;

    .line 26
    invoke-virtual {p1}, Lrx4;->t()Lp25;

    move-result-object v6

    iget-object v7, p0, Lj25;->z:Lo25;

    .line 27
    iget-object v8, p2, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    const-string v10, "_ev"

    .line 28
    invoke-virtual/range {v6 .. v12}, Lp25;->A(Lo25;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_5
    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 29
    invoke-virtual {v0}, Lrx4;->t()Lp25;

    move-result-object v0

    .line 30
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkr;->n()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lp25;->y(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    return-void

    .line 32
    :cond_6
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    const-string v2, "_sid"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 33
    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzkr;->g:J

    iget-object v7, p1, Lcom/google/android/gms/measurement/internal/zzkr;->j:Ljava/lang/String;

    .line 34
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    const-string v3, "_sno"

    .line 35
    invoke-virtual {v1, v2, v3}, Lgs4;->D(Ljava/lang/String;Ljava/lang/String;)Ln25;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v2, v1, Ln25;->e:Ljava/lang/Object;

    .line 36
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_7

    .line 37
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_8

    .line 38
    iget-object v2, p0, Lj25;->j:Lrx4;

    .line 39
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 40
    iget-object v2, v2, Lqw4;->i:Low4;

    .line 41
    iget-object v1, v1, Ln25;->e:Ljava/lang/Object;

    const-string v3, "Retrieved last session number from database does not contain a valid (long) value"

    .line 42
    invoke-virtual {v2, v3, v1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    :cond_8
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    const-string v3, "_s"

    .line 44
    invoke-virtual {v1, v2, v3}, Lgs4;->z(Ljava/lang/String;Ljava/lang/String;)Lls4;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-wide v1, v1, Lls4;->c:J

    iget-object v3, p0, Lj25;->j:Lrx4;

    .line 45
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v3

    .line 46
    iget-object v3, v3, Lqw4;->n:Low4;

    .line 47
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "Backfill the session number. Last used session number"

    invoke-virtual {v3, v8, v6}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_9
    const-wide/16 v1, 0x0

    .line 48
    :goto_2
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzkr;

    const-wide/16 v9, 0x1

    add-long/2addr v1, v9

    .line 49
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "_sno"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, v8, p2}, Lj25;->p(Lcom/google/android/gms/measurement/internal/zzkr;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_a
    new-instance v1, Ln25;

    .line 51
    iget-object v4, p2, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzkr;->j:Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    iget-wide v7, p1, Lcom/google/android/gms/measurement/internal/zzkr;->g:J

    move-object v3, v1

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Ln25;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object p1, p0, Lj25;->j:Lrx4;

    .line 52
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 53
    iget-object p1, p1, Lqw4;->n:Low4;

    .line 54
    iget-object v2, p0, Lj25;->j:Lrx4;

    .line 55
    invoke-virtual {v2}, Lrx4;->u()Llw4;

    move-result-object v2

    iget-object v3, v1, Ln25;->c:Ljava/lang/String;

    .line 56
    invoke-virtual {v2, v3}, Llw4;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Setting user property"

    .line 57
    invoke-virtual {p1, v3, v2, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object p1

    invoke-virtual {p1}, Lgs4;->v()V

    .line 59
    :try_start_0
    invoke-virtual {p0, p2}, Lj25;->u(Lcom/google/android/gms/measurement/internal/zzp;)Lvx4;

    .line 60
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object p1

    invoke-virtual {p1, v1}, Lgs4;->C(Ln25;)Z

    move-result p1

    .line 61
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object v0

    invoke-virtual {v0}, Lgs4;->w()V

    if-nez p1, :cond_b

    iget-object p1, p0, Lj25;->j:Lrx4;

    .line 62
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 63
    iget-object p1, p1, Lqw4;->f:Low4;

    const-string v0, "Too many unique user properties are set. Ignoring user property"

    .line 64
    iget-object v2, p0, Lj25;->j:Lrx4;

    .line 65
    invoke-virtual {v2}, Lrx4;->u()Llw4;

    move-result-object v2

    iget-object v3, v1, Ln25;->c:Ljava/lang/String;

    .line 66
    invoke-virtual {v2, v3}, Llw4;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Ln25;->e:Ljava/lang/Object;

    .line 67
    invoke-virtual {p1, v0, v2, v1}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lj25;->j:Lrx4;

    .line 68
    invoke-virtual {p1}, Lrx4;->t()Lp25;

    move-result-object v0

    iget-object v1, p0, Lj25;->z:Lo25;

    .line 69
    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 70
    invoke-virtual/range {v0 .. v6}, Lp25;->A(Lo25;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_b
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object p1

    invoke-virtual {p1}, Lgs4;->x()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object p2

    invoke-virtual {p2}, Lgs4;->x()V

    .line 72
    throw p1

    .line 73
    :cond_c
    invoke-virtual {p0, p2}, Lj25;->u(Lcom/google/android/gms/measurement/internal/zzp;)Lvx4;

    return-void
.end method

.method public final q(Lcom/google/android/gms/measurement/internal/zzkr;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 7

    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lox4;->d()V

    .line 3
    invoke-virtual {p0}, Lj25;->S()V

    .line 4
    invoke-virtual {p0, p2}, Lj25;->H(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->l:Z

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0, p2}, Lj25;->u(Lcom/google/android/gms/measurement/internal/zzp;)Lvx4;

    return-void

    .line 7
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    const-string v1, "_npa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->v:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object p1, p0, Lj25;->j:Lrx4;

    .line 8
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 9
    iget-object p1, p1, Lqw4;->m:Low4;

    const-string v0, "Falling back to manifest metadata value for ad personalization"

    .line 10
    invoke-virtual {p1, v0}, Low4;->a(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 11
    iget-object v0, v0, Lrx4;->n:Lb20;

    .line 12
    invoke-interface {v0}, Lb20;->a()J

    move-result-wide v3

    const/4 v0, 0x1

    .line 13
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzp;->v:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_2

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v2, "_npa"

    const-string v6, "auto"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, p1, p2}, Lj25;->p(Lcom/google/android/gms/measurement/internal/zzkr;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void

    :cond_3
    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 15
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 16
    iget-object v0, v0, Lqw4;->m:Low4;

    .line 17
    iget-object v1, p0, Lj25;->j:Lrx4;

    .line 18
    invoke-virtual {v1}, Lrx4;->u()Llw4;

    move-result-object v1

    .line 19
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Llw4;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Removing user property"

    .line 20
    invoke-virtual {v0, v2, v1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object v0

    invoke-virtual {v0}, Lgs4;->v()V

    .line 22
    :try_start_0
    invoke-virtual {p0, p2}, Lj25;->u(Lcom/google/android/gms/measurement/internal/zzp;)Lvx4;

    .line 23
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lgs4;->B(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object p2

    invoke-virtual {p2}, Lgs4;->w()V

    iget-object p2, p0, Lj25;->j:Lrx4;

    .line 25
    invoke-virtual {p2}, Lrx4;->a()Lqw4;

    move-result-object p2

    .line 26
    iget-object p2, p2, Lqw4;->m:Low4;

    const-string v0, "User property removed"

    .line 27
    iget-object v1, p0, Lj25;->j:Lrx4;

    .line 28
    invoke-virtual {v1}, Lrx4;->u()Llw4;

    move-result-object v1

    .line 29
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    invoke-virtual {v1, p1}, Llw4;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-virtual {p2, v0, p1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object p1

    invoke-virtual {p1}, Lgs4;->x()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object p2

    invoke-virtual {p2}, Lgs4;->x()V

    .line 32
    throw p1
.end method

.method public final r(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "_sysu"

    const-string v4, "_sys"

    const-string v5, "_pfo"

    const-string v6, "_uwa"

    const-string v0, "app_id=?"

    iget-object v7, v1, Lj25;->j:Lrx4;

    .line 1
    invoke-virtual {v7}, Lrx4;->m()Lox4;

    move-result-object v7

    .line 2
    invoke-virtual {v7}, Lox4;->d()V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lj25;->S()V

    const-string v7, "null reference"

    .line 4
    invoke-static {v2, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-static {v7}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-virtual/range {p0 .. p1}, Lj25;->H(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v7

    if-nez v7, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lgs4;->L(Ljava/lang/String;)Lvx4;

    move-result-object v7

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_1

    .line 8
    invoke-virtual {v7}, Lvx4;->B()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzp;->f:Ljava/lang/String;

    .line 9
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 10
    invoke-virtual {v7, v8, v9}, Lvx4;->k(J)V

    .line 11
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v10

    invoke-virtual {v10, v7}, Lgs4;->M(Lvx4;)V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lj25;->J()Lkx4;

    move-result-object v7

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    .line 13
    invoke-virtual {v7}, Lly4;->d()V

    iget-object v7, v7, Lkx4;->g:Ljava/util/Map;

    .line 14
    invoke-interface {v7, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_1
    iget-boolean v7, v2, Lcom/google/android/gms/measurement/internal/zzp;->l:Z

    if-nez v7, :cond_2

    .line 16
    invoke-virtual/range {p0 .. p1}, Lj25;->u(Lcom/google/android/gms/measurement/internal/zzp;)Lvx4;

    return-void

    .line 17
    :cond_2
    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/zzp;->q:J

    cmp-long v7, v10, v8

    if-nez v7, :cond_3

    iget-object v7, v1, Lj25;->j:Lrx4;

    .line 18
    iget-object v7, v7, Lrx4;->n:Lb20;

    .line 19
    invoke-interface {v7}, Lb20;->a()J

    move-result-wide v10

    :cond_3
    iget-object v7, v1, Lj25;->j:Lrx4;

    .line 20
    invoke-virtual {v7}, Lrx4;->A()Ljs4;

    move-result-object v7

    .line 21
    invoke-virtual {v7}, Lly4;->d()V

    const/4 v14, 0x0

    iput-object v14, v7, Ljs4;->f:Ljava/lang/Boolean;

    iput-wide v8, v7, Ljs4;->g:J

    .line 22
    iget v7, v2, Lcom/google/android/gms/measurement/internal/zzp;->r:I

    const/4 v13, 0x1

    if-eqz v7, :cond_5

    if-eq v7, v13, :cond_4

    iget-object v12, v1, Lj25;->j:Lrx4;

    .line 23
    invoke-virtual {v12}, Lrx4;->a()Lqw4;

    move-result-object v12

    .line 24
    iget-object v12, v12, Lqw4;->i:Low4;

    .line 25
    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-static {v14}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 26
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v15, "Incorrect app type, assuming installed app. appId, appType"

    .line 27
    invoke-virtual {v12, v15, v14, v7}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x0

    goto :goto_0

    :cond_4
    const/4 v7, 0x1

    .line 28
    :cond_5
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v12

    invoke-virtual {v12}, Lgs4;->v()V

    .line 29
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v12

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    const-string v15, "_npa"

    .line 30
    invoke-virtual {v12, v14, v15}, Lgs4;->D(Ljava/lang/String;Ljava/lang/String;)Ln25;

    move-result-object v14

    if-eqz v14, :cond_6

    const-string v12, "auto"

    iget-object v15, v14, Ln25;->b:Ljava/lang/String;

    .line 31
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 32
    :cond_6
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzp;->v:Ljava/lang/Boolean;

    if-eqz v12, :cond_9

    .line 33
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzkr;

    const-string v18, "_npa"

    .line 34
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eq v13, v12, :cond_7

    const-wide/16 v19, 0x0

    goto :goto_1

    :cond_7
    const-wide/16 v19, 0x1

    :goto_1
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v20, "auto"

    move-object v12, v15

    const/4 v8, 0x1

    move-object/from16 v13, v18

    move-object v9, v14

    move-object v8, v15

    move-wide v14, v10

    move-object/from16 v16, v19

    move-object/from16 v17, v20

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    if-eqz v9, :cond_8

    iget-object v9, v9, Ln25;->e:Ljava/lang/Object;

    iget-object v12, v8, Lcom/google/android/gms/measurement/internal/zzkr;->h:Ljava/lang/Long;

    .line 35
    invoke-virtual {v9, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 36
    :cond_8
    invoke-virtual {v1, v8, v2}, Lj25;->p(Lcom/google/android/gms/measurement/internal/zzkr;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_2

    :cond_9
    move-object v9, v14

    if-eqz v9, :cond_a

    .line 37
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzkr;

    const-string v13, "_npa"

    const/16 v16, 0x0

    const-string v17, "auto"

    move-object v12, v8

    move-wide v14, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1, v8, v2}, Lj25;->q(Lcom/google/android/gms/measurement/internal/zzkr;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 39
    :cond_a
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lgs4;->L(Ljava/lang/String;)Lvx4;

    move-result-object v14

    if-eqz v14, :cond_c

    iget-object v8, v1, Lj25;->j:Lrx4;

    .line 40
    invoke-virtual {v8}, Lrx4;->t()Lp25;

    move-result-object v8

    .line 41
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzp;->f:Ljava/lang/String;

    .line 42
    invoke-virtual {v14}, Lvx4;->B()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzp;->u:Ljava/lang/String;

    .line 43
    invoke-virtual {v14}, Lvx4;->D()Ljava/lang/String;

    move-result-object v15

    .line 44
    invoke-virtual {v8, v9, v12, v13, v15}, Lp25;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, v1, Lj25;->j:Lrx4;

    .line 45
    invoke-virtual {v8}, Lrx4;->a()Lqw4;

    move-result-object v8

    .line 46
    iget-object v8, v8, Lqw4;->i:Low4;

    const-string v9, "New GMP App Id passed in. Removing cached database data. appId"

    .line 47
    invoke-virtual {v14}, Lvx4;->y()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 48
    invoke-virtual {v8, v9, v12}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v8

    invoke-virtual {v14}, Lvx4;->y()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lb25;->f()V

    invoke-virtual {v8}, Lly4;->d()V

    .line 50
    invoke-static {v9}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :try_start_1
    invoke-virtual {v8}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v9, v14, v13

    const-string v13, "events"

    .line 52
    invoke-virtual {v12, v13, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    const-string v15, "user_attributes"

    .line 53
    invoke-virtual {v12, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v13, v15

    const-string v15, "conditional_properties"

    .line 54
    invoke-virtual {v12, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v13, v15

    const-string v15, "apps"

    .line 55
    invoke-virtual {v12, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v13, v15

    const-string v15, "raw_events"

    .line 56
    invoke-virtual {v12, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v13, v15

    const-string v15, "raw_events_metadata"

    .line 57
    invoke-virtual {v12, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v13, v15

    const-string v15, "event_filters"

    .line 58
    invoke-virtual {v12, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v13, v15

    const-string v15, "property_filters"

    .line 59
    invoke-virtual {v12, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v13, v15

    const-string v15, "audience_filter_values"

    .line 60
    invoke-virtual {v12, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v13, v15

    const-string v15, "consent_settings"

    .line 61
    invoke-virtual {v12, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v13, v0

    if-lez v13, :cond_b

    iget-object v0, v8, Lly4;->a:Lrx4;

    .line 62
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 63
    iget-object v0, v0, Lqw4;->n:Low4;

    const-string v12, "Deleted application data. app, records"

    .line 64
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v12, v9, v13}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 65
    :try_start_2
    iget-object v8, v8, Lly4;->a:Lrx4;

    .line 66
    invoke-virtual {v8}, Lrx4;->a()Lqw4;

    move-result-object v8

    .line 67
    iget-object v8, v8, Lqw4;->f:Low4;

    const-string v12, "Error deleting application data. appId, error"

    .line 68
    invoke-static {v9}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 69
    invoke-virtual {v8, v12, v9, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    :goto_3
    const/4 v14, 0x0

    :cond_c
    if-eqz v14, :cond_f

    .line 70
    invoke-virtual {v14}, Lvx4;->R()J

    move-result-wide v8

    const-wide/32 v12, -0x80000000

    cmp-long v0, v8, v12

    if-eqz v0, :cond_d

    .line 71
    invoke-virtual {v14}, Lvx4;->R()J

    move-result-wide v8

    iget-wide v12, v2, Lcom/google/android/gms/measurement/internal/zzp;->n:J

    cmp-long v0, v8, v12

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_4

    :cond_d
    const/4 v0, 0x0

    .line 72
    :goto_4
    invoke-virtual {v14}, Lvx4;->R()J

    move-result-wide v8

    const-wide/32 v12, -0x80000000

    cmp-long v15, v8, v12

    if-nez v15, :cond_e

    .line 73
    invoke-virtual {v14}, Lvx4;->P()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 74
    invoke-virtual {v14}, Lvx4;->P()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzp;->g:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    const/4 v15, 0x1

    goto :goto_5

    :cond_e
    const/4 v15, 0x0

    :goto_5
    or-int/2addr v0, v15

    if-eqz v0, :cond_f

    new-instance v0, Landroid/os/Bundle;

    .line 75
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v8, "_pv"

    .line 76
    invoke-virtual {v14}, Lvx4;->P()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzas;

    const-string v13, "_au"

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v14, v0}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v8

    move-wide/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    .line 78
    invoke-virtual {v1, v8, v2}, Lj25;->c(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 79
    :cond_f
    invoke-virtual/range {p0 .. p1}, Lj25;->u(Lcom/google/android/gms/measurement/internal/zzp;)Lvx4;

    if-nez v7, :cond_10

    .line 80
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v0

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    const-string v8, "_f"

    .line 81
    invoke-virtual {v0, v7, v8}, Lgs4;->z(Ljava/lang/String;Ljava/lang/String;)Lls4;

    move-result-object v0

    const/4 v15, 0x0

    goto :goto_6

    .line 82
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v0

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    const-string v8, "_v"

    .line 83
    invoke-virtual {v0, v7, v8}, Lgs4;->z(Ljava/lang/String;Ljava/lang/String;)Lls4;

    move-result-object v0

    const/4 v15, 0x1

    :goto_6
    if-nez v0, :cond_1d

    const-wide/32 v7, 0x36ee80

    .line 84
    div-long v12, v10, v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v16, 0x1

    add-long v12, v12, v16

    mul-long v12, v12, v7

    const-string v0, "_dac"

    const-string v7, "_r"

    const-string v8, "_c"

    const-string v9, "_et"

    if-nez v15, :cond_1b

    .line 85
    :try_start_3
    new-instance v14, Lcom/google/android/gms/measurement/internal/zzkr;

    const-string v15, "_fot"

    .line 86
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v17, "auto"

    move-object v12, v14

    move-object v13, v15

    move-object/from16 v19, v0

    move-object v0, v14

    move-wide v14, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1, v0, v2}, Lj25;->p(Lcom/google/android/gms/measurement/internal/zzkr;Lcom/google/android/gms/measurement/internal/zzp;)V

    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 88
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lox4;->d()V

    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 90
    iget-object v0, v0, Lrx4;->x:Lhx4;

    .line 91
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    .line 92
    invoke-virtual {v0, v12}, Lhx4;->a(Ljava/lang/String;)V

    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 93
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lox4;->d()V

    .line 95
    invoke-virtual/range {p0 .. p0}, Lj25;->S()V

    new-instance v14, Landroid/os/Bundle;

    .line 96
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v12, 0x1

    .line 97
    invoke-virtual {v14, v8, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 98
    invoke-virtual {v14, v7, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v7, 0x0

    .line 99
    invoke-virtual {v14, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 100
    invoke-virtual {v14, v5, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 101
    invoke-virtual {v14, v4, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 102
    invoke-virtual {v14, v3, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 103
    invoke-virtual {v14, v9, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 104
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->t:Z

    if-eqz v0, :cond_11

    move-object/from16 v0, v19

    .line 105
    invoke-virtual {v14, v0, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 106
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v0

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    .line 107
    invoke-static {v7}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    invoke-virtual {v0}, Lly4;->d()V

    invoke-virtual {v0}, Lb25;->f()V

    const-string v8, "first_open_count"

    invoke-virtual {v0, v7, v8}, Lgs4;->k(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 109
    iget-object v0, v0, Lrx4;->a:Landroid/content/Context;

    .line 110
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_12

    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 111
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 112
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v3, "PackageManager is null, first open report might be inaccurate. appId"

    .line 113
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-static {v4}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 114
    invoke-virtual {v0, v3, v4}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v14

    goto/16 :goto_d

    .line 115
    :cond_12
    :try_start_4
    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 116
    iget-object v0, v0, Lrx4;->a:Landroid/content/Context;

    .line 117
    invoke-static {v0}, Li20;->a(Landroid/content/Context;)Lh20;

    move-result-object v0

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Lh20;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    :catch_1
    move-exception v0

    .line 118
    :try_start_5
    iget-object v12, v1, Lj25;->j:Lrx4;

    .line 119
    invoke-virtual {v12}, Lrx4;->a()Lqw4;

    move-result-object v12

    .line 120
    iget-object v12, v12, Lqw4;->f:Low4;

    const-string v13, "Package info is null, first open report might be inaccurate. appId"

    .line 121
    iget-object v15, v2, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-static {v15}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 122
    invoke-virtual {v12, v13, v15, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_17

    .line 123
    iget-wide v12, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v15, 0x0

    cmp-long v17, v12, v15

    if-eqz v17, :cond_17

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    .line 124
    iget-wide v3, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v12, v3

    if-eqz v0, :cond_15

    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 125
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 126
    sget-object v3, Lew4;->m0:Ldw4;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-wide/16 v12, 0x0

    cmp-long v0, v7, v12

    if-nez v0, :cond_14

    const-wide/16 v12, 0x1

    .line 127
    invoke-virtual {v14, v6, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_8

    :cond_13
    const-wide/16 v12, 0x1

    .line 128
    invoke-virtual {v14, v6, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_14
    :goto_8
    const/4 v15, 0x0

    goto :goto_9

    :cond_15
    const/4 v4, 0x0

    const/4 v15, 0x1

    .line 129
    :goto_9
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkr;

    const-string v13, "_fi"

    const/4 v3, 0x1

    if-eq v3, v15, :cond_16

    const-wide/16 v15, 0x0

    goto :goto_a

    :cond_16
    const-wide/16 v15, 0x1

    .line 130
    :goto_a
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v17, "auto"

    move-object v12, v0

    move-object v3, v14

    move-wide v14, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v1, v0, v2}, Lj25;->p(Lcom/google/android/gms/measurement/internal/zzkr;Lcom/google/android/gms/measurement/internal/zzp;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_b

    :cond_17
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object v3, v14

    const/4 v4, 0x0

    :goto_b
    :try_start_6
    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 132
    iget-object v0, v0, Lrx4;->a:Landroid/content/Context;

    .line 133
    invoke-static {v0}, Li20;->a(Landroid/content/Context;)Lh20;

    move-result-object v0

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v0, v6, v12}, Lh20;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_c

    :catch_2
    move-exception v0

    .line 134
    :try_start_7
    iget-object v6, v1, Lj25;->j:Lrx4;

    .line 135
    invoke-virtual {v6}, Lrx4;->a()Lqw4;

    move-result-object v6

    .line 136
    iget-object v6, v6, Lqw4;->f:Low4;

    const-string v12, "Application info is null, first open report might be inaccurate. appId"

    .line 137
    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-static {v13}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 138
    invoke-virtual {v6, v12, v13, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v14, v4

    :goto_c
    if-eqz v14, :cond_19

    .line 139
    iget v0, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v0, v4

    if-eqz v0, :cond_18

    move-object/from16 v4, v20

    const-wide/16 v12, 0x1

    .line 140
    invoke-virtual {v3, v4, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 141
    :cond_18
    iget v0, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_19

    move-object/from16 v4, v19

    const-wide/16 v12, 0x1

    .line 142
    invoke-virtual {v3, v4, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_19
    :goto_d
    const-wide/16 v12, 0x0

    cmp-long v0, v7, v12

    if-ltz v0, :cond_1a

    .line 143
    invoke-virtual {v3, v5, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 144
    :cond_1a
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzas;

    const-string v13, "_f"

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v14, v3}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v0

    move-wide/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    .line 145
    invoke-virtual {v1, v0, v2}, Lj25;->b(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_e

    .line 146
    :cond_1b
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzkr;

    const-string v4, "_fvt"

    .line 147
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v17, "auto"

    move-object v12, v3

    move-object v13, v4

    move-wide v14, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1, v3, v2}, Lj25;->p(Lcom/google/android/gms/measurement/internal/zzkr;Lcom/google/android/gms/measurement/internal/zzp;)V

    iget-object v3, v1, Lj25;->j:Lrx4;

    .line 149
    invoke-virtual {v3}, Lrx4;->m()Lox4;

    move-result-object v3

    .line 150
    invoke-virtual {v3}, Lox4;->d()V

    .line 151
    invoke-virtual/range {p0 .. p0}, Lj25;->S()V

    new-instance v3, Landroid/os/Bundle;

    .line 152
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v4, 0x1

    .line 153
    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 154
    invoke-virtual {v3, v7, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 155
    invoke-virtual {v3, v9, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 156
    iget-boolean v6, v2, Lcom/google/android/gms/measurement/internal/zzp;->t:Z

    if-eqz v6, :cond_1c

    .line 157
    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 158
    :cond_1c
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzas;

    const-string v13, "_v"

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v14, v3}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v0

    move-wide/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    .line 159
    invoke-virtual {v1, v0, v2}, Lj25;->b(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 160
    :goto_e
    iget-object v0, v1, Lj25;->j:Lrx4;

    .line 161
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 162
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    sget-object v4, Lew4;->T:Ldw4;

    invoke-virtual {v0, v3, v4}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-nez v0, :cond_1e

    new-instance v0, Landroid/os/Bundle;

    .line 163
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v3, 0x1

    .line 164
    invoke-virtual {v0, v9, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v5, "_fr"

    .line 165
    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzas;

    const-string v13, "_e"

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzaq;

    .line 166
    invoke-direct {v14, v0}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v3

    move-wide/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    .line 167
    invoke-virtual {v1, v3, v2}, Lj25;->b(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_f

    .line 168
    :cond_1d
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->m:Z

    if-eqz v0, :cond_1e

    new-instance v0, Landroid/os/Bundle;

    .line 169
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 170
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzas;

    const-string v13, "_cd"

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v14, v0}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v3

    move-wide/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    .line 171
    invoke-virtual {v1, v3, v2}, Lj25;->b(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 172
    :cond_1e
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v0

    invoke-virtual {v0}, Lgs4;->w()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 173
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v0

    invoke-virtual {v0}, Lgs4;->x()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v2

    invoke-virtual {v2}, Lgs4;->x()V

    .line 174
    throw v0
.end method

.method public final s(Lcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 10

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    .line 3
    invoke-static {v1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->f:Ljava/lang/String;

    .line 4
    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 6
    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 8
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    invoke-static {v0}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 9
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lox4;->d()V

    .line 11
    invoke-virtual {p0}, Lj25;->S()V

    .line 12
    invoke-virtual {p0, p2}, Lj25;->H(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 13
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->l:Z

    if-nez v0, :cond_1

    .line 14
    invoke-virtual {p0, p2}, Lj25;->u(Lcom/google/android/gms/measurement/internal/zzp;)Lvx4;

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaa;

    .line 15
    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Lcom/google/android/gms/measurement/internal/zzaa;)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->i:Z

    .line 16
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object v1

    invoke-virtual {v1}, Lgs4;->v()V

    .line 17
    :try_start_0
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lgs4;->H(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzaa;->f:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->f:Ljava/lang/String;

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lj25;->j:Lrx4;

    .line 19
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 20
    iget-object v2, v2, Lqw4;->i:Low4;

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    .line 21
    iget-object v4, p0, Lj25;->j:Lrx4;

    .line 22
    invoke-virtual {v4}, Lrx4;->u()Llw4;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 23
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Llw4;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzaa;->f:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzaa;->f:Ljava/lang/String;

    .line 24
    invoke-virtual {v2, v3, v4, v5, v6}, Low4;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->i:Z

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->f:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->f:Ljava/lang/String;

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->h:J

    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->h:J

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->l:J

    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->l:J

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->j:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->j:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->m:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->m:Lcom/google/android/gms/measurement/internal/zzas;

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->i:Z

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 25
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-wide v6, v4, Lcom/google/android/gms/measurement/internal/zzkr;->g:J

    .line 26
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkr;->n()Ljava/lang/Object;

    move-result-object v8

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkr;->j:Ljava/lang/String;

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    goto :goto_0

    .line 27
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->j:Ljava/lang/String;

    .line 28
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 29
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzaa;->h:J

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkr;->n()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkr;->j:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->i:Z

    const/4 p1, 0x1

    .line 31
    :cond_4
    :goto_0
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->i:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    new-instance v9, Ln25;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzaa;->f:Ljava/lang/String;

    .line 32
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzkr;->g:J

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkr;->n()Ljava/lang/Object;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Ln25;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 34
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object v1

    invoke-virtual {v1, v9}, Lgs4;->C(Ln25;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lj25;->j:Lrx4;

    .line 35
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 36
    iget-object v1, v1, Lqw4;->m:Low4;

    const-string v2, "User property updated immediately"

    .line 37
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    iget-object v4, p0, Lj25;->j:Lrx4;

    .line 38
    invoke-virtual {v4}, Lrx4;->u()Llw4;

    move-result-object v4

    iget-object v5, v9, Ln25;->c:Ljava/lang/String;

    .line 39
    invoke-virtual {v4, v5}, Llw4;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Ln25;->e:Ljava/lang/Object;

    .line 40
    invoke-virtual {v1, v2, v3, v4, v5}, Low4;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 41
    :cond_5
    iget-object v1, p0, Lj25;->j:Lrx4;

    .line 42
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 43
    iget-object v1, v1, Lqw4;->f:Low4;

    const-string v2, "(2)Too many active user properties, ignoring"

    .line 44
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    invoke-static {v3}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lj25;->j:Lrx4;

    .line 45
    invoke-virtual {v4}, Lrx4;->u()Llw4;

    move-result-object v4

    iget-object v5, v9, Ln25;->c:Ljava/lang/String;

    .line 46
    invoke-virtual {v4, v5}, Llw4;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Ln25;->e:Ljava/lang/Object;

    .line 47
    invoke-virtual {v1, v2, v3, v4, v5}, Low4;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    if-eqz p1, :cond_6

    .line 48
    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->m:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz p1, :cond_6

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzas;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->h:J

    .line 49
    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzas;J)V

    .line 50
    invoke-virtual {p0, v1, p2}, Lj25;->d(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 51
    :cond_6
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object p1

    invoke-virtual {p1, v0}, Lgs4;->G(Lcom/google/android/gms/measurement/internal/zzaa;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lj25;->j:Lrx4;

    .line 52
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 53
    iget-object p1, p1, Lqw4;->m:Low4;

    const-string p2, "Conditional property added"

    .line 54
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    iget-object v2, p0, Lj25;->j:Lrx4;

    .line 55
    invoke-virtual {v2}, Lrx4;->u()Llw4;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 56
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Llw4;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkr;->n()Ljava/lang/Object;

    move-result-object v0

    .line 58
    invoke-virtual {p1, p2, v1, v2, v0}, Low4;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 59
    :cond_7
    iget-object p1, p0, Lj25;->j:Lrx4;

    .line 60
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 61
    iget-object p1, p1, Lqw4;->f:Low4;

    const-string p2, "Too many conditional properties, ignoring"

    .line 62
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    invoke-static {v1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lj25;->j:Lrx4;

    .line 63
    invoke-virtual {v2}, Lrx4;->u()Llw4;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 64
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Llw4;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkr;->n()Ljava/lang/Object;

    move-result-object v0

    .line 66
    invoke-virtual {p1, p2, v1, v2, v0}, Low4;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    :goto_2
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object p1

    invoke-virtual {p1}, Lgs4;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object p1

    invoke-virtual {p1}, Lgs4;->x()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object p2

    invoke-virtual {p2}, Lgs4;->x()V

    .line 69
    throw p1
.end method

.method public final t(Lcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 11

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    .line 3
    invoke-static {v1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 4
    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 6
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    invoke-static {v0}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 7
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lox4;->d()V

    .line 9
    invoke-virtual {p0}, Lj25;->S()V

    .line 10
    invoke-virtual {p0, p2}, Lj25;->H(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 11
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->l:Z

    if-nez v0, :cond_1

    .line 12
    invoke-virtual {p0, p2}, Lj25;->u(Lcom/google/android/gms/measurement/internal/zzp;)Lvx4;

    return-void

    .line 13
    :cond_1
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object v0

    invoke-virtual {v0}, Lgs4;->v()V

    .line 14
    :try_start_0
    invoke-virtual {p0, p2}, Lj25;->u(Lcom/google/android/gms/measurement/internal/zzp;)Lvx4;

    .line 15
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lgs4;->H(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lj25;->j:Lrx4;

    .line 16
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 17
    iget-object v1, v1, Lqw4;->m:Low4;

    const-string v2, "Removing conditional user property"

    .line 18
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    iget-object v4, p0, Lj25;->j:Lrx4;

    .line 19
    invoke-virtual {v4}, Lrx4;->u()Llw4;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 20
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Llw4;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 21
    invoke-virtual {v1, v2, v3, v4}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lgs4;->I(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->i:Z

    if-eqz v1, :cond_2

    .line 23
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lgs4;->B(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->o:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzas;->f:Lcom/google/android/gms/measurement/internal/zzaq;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->M0()Landroid/os/Bundle;

    move-result-object v1

    move-object v3, v1

    goto :goto_0

    :cond_3
    move-object v3, v2

    :goto_0
    iget-object v1, p0, Lj25;->j:Lrx4;

    .line 25
    invoke-virtual {v1}, Lrx4;->t()Lp25;

    move-result-object v1

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->o:Lcom/google/android/gms/measurement/internal/zzas;

    .line 26
    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzas;->e:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzaa;->f:Ljava/lang/String;

    iget-wide v7, p1, Lcom/google/android/gms/measurement/internal/zzas;->h:J

    .line 27
    invoke-static {}, Ltb4;->b()Z

    iget-object p1, p0, Lj25;->j:Lrx4;

    .line 28
    iget-object p1, p1, Lrx4;->g:Lcs4;

    .line 29
    sget-object v0, Lew4;->J0:Ldw4;

    invoke-virtual {p1, v2, v0}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v9

    const/4 p1, 0x1

    const/4 v10, 0x0

    move-object v0, v1

    move-object v1, v4

    move-object v2, v5

    move-object v4, v6

    move-wide v5, v7

    move v7, p1

    move v8, v10

    .line 30
    invoke-virtual/range {v0 .. v9}, Lp25;->J(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZZ)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    .line 31
    invoke-virtual {p0, p1, p2}, Lj25;->d(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_1

    .line 32
    :cond_4
    iget-object p2, p0, Lj25;->j:Lrx4;

    .line 33
    invoke-virtual {p2}, Lrx4;->a()Lqw4;

    move-result-object p2

    .line 34
    iget-object p2, p2, Lqw4;->i:Low4;

    const-string v0, "Conditional user property doesn\'t exist"

    .line 35
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    invoke-static {v1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lj25;->j:Lrx4;

    .line 36
    invoke-virtual {v2}, Lrx4;->u()Llw4;

    move-result-object v2

    .line 37
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 38
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkr;->f:Ljava/lang/String;

    invoke-virtual {v2, p1}, Llw4;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-virtual {p2, v0, v1, p1}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object p1

    invoke-virtual {p1}, Lgs4;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object p1

    invoke-virtual {p1}, Lgs4;->x()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object p2

    invoke-virtual {p2}, Lgs4;->x()V

    .line 42
    throw p1
.end method

.method public final u(Lcom/google/android/gms/measurement/internal/zzp;)Lvx4;
    .locals 13

    iget-object v0, p0, Lj25;->j:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lox4;->d()V

    .line 3
    invoke-virtual {p0}, Lj25;->S()V

    const-string v0, "null reference"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-static {v0}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgs4;->L(Ljava/lang/String;)Lvx4;

    move-result-object v0

    sget-object v1, Lds4;->c:Lds4;

    .line 7
    invoke-static {}, Lpc4;->b()Z

    iget-object v2, p0, Lj25;->j:Lrx4;

    .line 8
    iget-object v2, v2, Lrx4;->g:Lcs4;

    .line 9
    sget-object v3, Lew4;->G0:Ldw4;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    .line 11
    invoke-virtual {p0, v2}, Lj25;->U(Ljava/lang/String;)Lds4;

    move-result-object v2

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzp;->z:Ljava/lang/String;

    .line 12
    invoke-static {v5}, Lds4;->b(Ljava/lang/String;)Lds4;

    move-result-object v5

    invoke-virtual {v2, v5}, Lds4;->h(Lds4;)Lds4;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 13
    :goto_0
    invoke-static {}, Lpc4;->b()Z

    iget-object v5, p0, Lj25;->j:Lrx4;

    .line 14
    iget-object v5, v5, Lrx4;->g:Lcs4;

    .line 15
    invoke-virtual {v5, v4, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 16
    invoke-virtual {v2}, Lds4;->d()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, ""

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v5, p0, Lj25;->i:Li15;

    .line 17
    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Li15;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 18
    :goto_2
    sget-object v6, Lld4;->f:Lld4;

    .line 19
    invoke-virtual {v6}, Lld4;->b()Lmd4;

    move-result-object v6

    invoke-interface {v6}, Lmd4;->a()Z

    .line 20
    iget-object v6, p0, Lj25;->j:Lrx4;

    .line 21
    iget-object v6, v6, Lrx4;->g:Lcs4;

    .line 22
    sget-object v7, Lew4;->n0:Ldw4;

    .line 23
    invoke-virtual {v6, v4, v7}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v6

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_12

    if-nez v0, :cond_5

    new-instance v0, Lvx4;

    iget-object v1, p0, Lj25;->j:Lrx4;

    .line 24
    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v6}, Lvx4;-><init>(Lrx4;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lpc4;->b()Z

    iget-object v1, p0, Lj25;->j:Lrx4;

    .line 26
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 27
    invoke-virtual {v1, v4, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 28
    invoke-virtual {v2}, Lds4;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 29
    invoke-virtual {p0, v2}, Lj25;->f(Lds4;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvx4;->A(Ljava/lang/String;)V

    .line 30
    :cond_3
    invoke-virtual {v2}, Lds4;->d()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 31
    invoke-virtual {v0, v5}, Lvx4;->I(Ljava/lang/String;)V

    goto :goto_3

    .line 32
    :cond_4
    invoke-virtual {p0}, Lj25;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvx4;->A(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, v5}, Lvx4;->I(Ljava/lang/String;)V

    goto :goto_3

    .line 34
    :cond_5
    invoke-static {}, Lpc4;->b()Z

    iget-object v1, p0, Lj25;->j:Lrx4;

    .line 35
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 36
    invoke-virtual {v1, v4, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 37
    invoke-virtual {v2}, Lds4;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 38
    :cond_6
    invoke-virtual {v0}, Lvx4;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 39
    invoke-virtual {v0, v5}, Lvx4;->I(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lpc4;->b()Z

    iget-object v1, p0, Lj25;->j:Lrx4;

    .line 41
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 42
    invoke-virtual {v1, v4, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 43
    invoke-virtual {p0, v2}, Lj25;->f(Lds4;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvx4;->A(Ljava/lang/String;)V

    goto :goto_3

    .line 44
    :cond_7
    invoke-virtual {p0}, Lj25;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvx4;->A(Ljava/lang/String;)V

    goto :goto_3

    .line 45
    :cond_8
    invoke-static {}, Lpc4;->b()Z

    iget-object v1, p0, Lj25;->j:Lrx4;

    .line 46
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 47
    invoke-virtual {v1, v4, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 48
    invoke-virtual {v0}, Lvx4;->z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 49
    invoke-virtual {v2}, Lds4;->e()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 50
    invoke-virtual {p0, v2}, Lj25;->f(Lds4;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvx4;->A(Ljava/lang/String;)V

    .line 51
    :cond_9
    :goto_3
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvx4;->C(Ljava/lang/String;)V

    .line 52
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvx4;->E(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lae4;->b()Z

    iget-object v1, p0, Lj25;->j:Lrx4;

    .line 54
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 55
    invoke-virtual {v0}, Lvx4;->y()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lew4;->i0:Ldw4;

    invoke-virtual {v1, v2, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 56
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvx4;->G(Ljava/lang/String;)V

    .line 57
    :cond_a
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 58
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvx4;->K(Ljava/lang/String;)V

    .line 59
    :cond_b
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->i:J

    cmp-long v3, v1, v7

    if-eqz v3, :cond_c

    .line 60
    invoke-virtual {v0, v1, v2}, Lvx4;->a(J)V

    .line 61
    :cond_c
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 62
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvx4;->Q(Ljava/lang/String;)V

    .line 63
    :cond_d
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->n:J

    invoke-virtual {v0, v1, v2}, Lvx4;->S(J)V

    .line 64
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->h:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 65
    invoke-virtual {v0, v1}, Lvx4;->U(Ljava/lang/String;)V

    .line 66
    :cond_e
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->j:J

    invoke-virtual {v0, v1, v2}, Lvx4;->c(J)V

    .line 67
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->l:Z

    invoke-virtual {v0, v1}, Lvx4;->g(Z)V

    .line 68
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 69
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvx4;->p(Ljava/lang/String;)V

    :cond_f
    iget-object v1, p0, Lj25;->j:Lrx4;

    .line 70
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 71
    sget-object v2, Lew4;->x0:Ldw4;

    .line 72
    invoke-virtual {v1, v4, v2}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 73
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->p:J

    invoke-virtual {v0, v1, v2}, Lvx4;->r(J)V

    .line 74
    :cond_10
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->s:Z

    invoke-virtual {v0, v1}, Lvx4;->t(Z)V

    .line 75
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->v:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lvx4;->v(Ljava/lang/Boolean;)V

    .line 76
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->w:J

    invoke-virtual {v0, v1, v2}, Lvx4;->e(J)V

    .line 77
    iget-object p1, v0, Lvx4;->a:Lrx4;

    .line 78
    invoke-virtual {p1}, Lrx4;->m()Lox4;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lox4;->d()V

    iget-boolean p1, v0, Lvx4;->D:Z

    if-eqz p1, :cond_11

    .line 80
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object p1

    invoke-virtual {p1, v0}, Lgs4;->M(Lvx4;)V

    :cond_11
    return-object v0

    .line 81
    :cond_12
    invoke-static {}, Lpc4;->b()Z

    iget-object v2, p0, Lj25;->j:Lrx4;

    .line 82
    iget-object v2, v2, Lrx4;->g:Lcs4;

    .line 83
    invoke-virtual {v2, v4, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 84
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    .line 85
    invoke-virtual {p0, v1}, Lj25;->U(Ljava/lang/String;)Lds4;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->z:Ljava/lang/String;

    .line 86
    invoke-static {v2}, Lds4;->b(Ljava/lang/String;)Lds4;

    move-result-object v2

    invoke-virtual {v1, v2}, Lds4;->h(Lds4;)Lds4;

    move-result-object v1

    :cond_13
    const/4 v2, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_16

    new-instance v0, Lvx4;

    iget-object v2, p0, Lj25;->j:Lrx4;

    .line 87
    iget-object v9, p1, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-direct {v0, v2, v9}, Lvx4;-><init>(Lrx4;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lpc4;->b()Z

    iget-object v2, p0, Lj25;->j:Lrx4;

    .line 89
    iget-object v2, v2, Lrx4;->g:Lcs4;

    .line 90
    invoke-virtual {v2, v4, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 91
    invoke-virtual {v1}, Lds4;->e()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 92
    invoke-virtual {p0, v1}, Lj25;->f(Lds4;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lvx4;->A(Ljava/lang/String;)V

    .line 93
    :cond_14
    invoke-virtual {v1}, Lds4;->d()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 94
    invoke-virtual {v0, v5}, Lvx4;->I(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 95
    :cond_15
    invoke-virtual {p0}, Lj25;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvx4;->A(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, v5}, Lvx4;->I(Ljava/lang/String;)V

    goto :goto_4

    .line 97
    :cond_16
    invoke-static {}, Lpc4;->b()Z

    iget-object v9, p0, Lj25;->j:Lrx4;

    .line 98
    iget-object v9, v9, Lrx4;->g:Lcs4;

    .line 99
    invoke-virtual {v9, v4, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 100
    invoke-virtual {v1}, Lds4;->d()Z

    move-result v9

    if-eqz v9, :cond_19

    .line 101
    :cond_17
    invoke-virtual {v0}, Lvx4;->H()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_19

    .line 102
    invoke-virtual {v0, v5}, Lvx4;->I(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lpc4;->b()Z

    iget-object v2, p0, Lj25;->j:Lrx4;

    .line 104
    iget-object v2, v2, Lrx4;->g:Lcs4;

    .line 105
    invoke-virtual {v2, v4, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 106
    invoke-virtual {v1}, Lds4;->e()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 107
    invoke-virtual {p0, v1}, Lj25;->f(Lds4;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvx4;->A(Ljava/lang/String;)V

    goto :goto_4

    .line 108
    :cond_18
    invoke-virtual {p0}, Lj25;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvx4;->A(Ljava/lang/String;)V

    goto :goto_4

    .line 109
    :cond_19
    invoke-static {}, Lpc4;->b()Z

    iget-object v5, p0, Lj25;->j:Lrx4;

    .line 110
    iget-object v5, v5, Lrx4;->g:Lcs4;

    .line 111
    invoke-virtual {v5, v4, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 112
    invoke-virtual {v0}, Lvx4;->z()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 113
    invoke-virtual {v1}, Lds4;->e()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 114
    invoke-virtual {p0, v1}, Lj25;->f(Lds4;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvx4;->A(Ljava/lang/String;)V

    :cond_1a
    :goto_4
    const/4 v2, 0x1

    .line 115
    :cond_1b
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->f:Ljava/lang/String;

    invoke-virtual {v0}, Lvx4;->B()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 116
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvx4;->C(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 117
    :cond_1c
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->u:Ljava/lang/String;

    invoke-virtual {v0}, Lvx4;->D()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 118
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvx4;->E(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 119
    :cond_1d
    invoke-static {}, Lae4;->b()Z

    iget-object v1, p0, Lj25;->j:Lrx4;

    .line 120
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 121
    invoke-virtual {v0}, Lvx4;->y()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lew4;->i0:Ldw4;

    invoke-virtual {v1, v3, v5}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 122
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->y:Ljava/lang/String;

    invoke-virtual {v0}, Lvx4;->F()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 123
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvx4;->G(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 124
    :cond_1e
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    .line 125
    invoke-virtual {v0}, Lvx4;->J()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 126
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvx4;->K(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 127
    :cond_1f
    iget-wide v9, p1, Lcom/google/android/gms/measurement/internal/zzp;->i:J

    cmp-long v1, v9, v7

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Lvx4;->V()J

    move-result-wide v11

    cmp-long v1, v9, v11

    if-eqz v1, :cond_20

    .line 128
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->i:J

    invoke-virtual {v0, v1, v2}, Lvx4;->a(J)V

    const/4 v2, 0x1

    .line 129
    :cond_20
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->g:Ljava/lang/String;

    .line 130
    invoke-virtual {v0}, Lvx4;->P()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 131
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvx4;->Q(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 132
    :cond_21
    iget-wide v9, p1, Lcom/google/android/gms/measurement/internal/zzp;->n:J

    invoke-virtual {v0}, Lvx4;->R()J

    move-result-wide v11

    cmp-long v1, v9, v11

    if-eqz v1, :cond_22

    .line 133
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->n:J

    invoke-virtual {v0, v1, v2}, Lvx4;->S(J)V

    const/4 v2, 0x1

    .line 134
    :cond_22
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->h:Ljava/lang/String;

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Lvx4;->T()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 135
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvx4;->U(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 136
    :cond_23
    iget-wide v9, p1, Lcom/google/android/gms/measurement/internal/zzp;->j:J

    invoke-virtual {v0}, Lvx4;->b()J

    move-result-wide v11

    cmp-long v1, v9, v11

    if-eqz v1, :cond_24

    .line 137
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->j:J

    invoke-virtual {v0, v1, v2}, Lvx4;->c(J)V

    const/4 v2, 0x1

    .line 138
    :cond_24
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->l:Z

    invoke-virtual {v0}, Lvx4;->f()Z

    move-result v3

    if-eq v1, v3, :cond_25

    .line 139
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->l:Z

    invoke-virtual {v0, v1}, Lvx4;->g(Z)V

    const/4 v2, 0x1

    .line 140
    :cond_25
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->k:Ljava/lang/String;

    .line 141
    iget-object v3, v0, Lvx4;->a:Lrx4;

    .line 142
    invoke-virtual {v3}, Lrx4;->m()Lox4;

    move-result-object v3

    .line 143
    invoke-virtual {v3}, Lox4;->d()V

    iget-object v3, v0, Lvx4;->C:Ljava/lang/String;

    .line 144
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 145
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvx4;->p(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_26
    iget-object v1, p0, Lj25;->j:Lrx4;

    .line 146
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 147
    sget-object v3, Lew4;->x0:Ldw4;

    .line 148
    invoke-virtual {v1, v4, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 149
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzp;->p:J

    invoke-virtual {v0}, Lvx4;->q()J

    move-result-wide v9

    cmp-long v1, v3, v9

    if-eqz v1, :cond_27

    .line 150
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->p:J

    invoke-virtual {v0, v1, v2}, Lvx4;->r(J)V

    const/4 v2, 0x1

    .line 151
    :cond_27
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->s:Z

    invoke-virtual {v0}, Lvx4;->s()Z

    move-result v3

    if-eq v1, v3, :cond_28

    .line 152
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->s:Z

    invoke-virtual {v0, v1}, Lvx4;->t(Z)V

    const/4 v2, 0x1

    .line 153
    :cond_28
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->v:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lvx4;->u()Ljava/lang/Boolean;

    move-result-object v3

    if-eq v1, v3, :cond_29

    .line 154
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->v:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lvx4;->v(Ljava/lang/Boolean;)V

    goto :goto_5

    :cond_29
    move v6, v2

    .line 155
    :goto_5
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->w:J

    cmp-long v3, v1, v7

    if-eqz v3, :cond_2a

    .line 156
    invoke-virtual {v0}, Lvx4;->d()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2a

    .line 157
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->w:J

    invoke-virtual {v0, v1, v2}, Lvx4;->e(J)V

    goto :goto_6

    :cond_2a
    if-eqz v6, :cond_2b

    .line 158
    :goto_6
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object p1

    invoke-virtual {p1, v0}, Lgs4;->M(Lvx4;)V

    :cond_2b
    return-object v0
.end method

.method public final y(Ljava/lang/String;J)Z
    .locals 46

    move-object/from16 v1, p0

    const-string v2, "_si"

    const-string v3, "_sc"

    const-string v4, "_sn"

    const-string v5, "_npa"

    const-string v6, "_ai"

    .line 1
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v7

    invoke-virtual {v7}, Lgs4;->v()V

    :try_start_0
    new-instance v7, Li25;

    .line 2
    invoke-direct {v7, v1}, Li25;-><init>(Lj25;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v8

    const/4 v9, 0x0

    iget-wide v12, v1, Lj25;->x:J

    move-wide/from16 v10, p2

    move-object v14, v7

    .line 4
    invoke-virtual/range {v8 .. v14}, Lgs4;->r(Ljava/lang/String;JJLi25;)V

    iget-object v8, v7, Li25;->c:Ljava/util/List;

    if-eqz v8, :cond_6a

    .line 5
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    goto/16 :goto_39

    .line 6
    :cond_0
    iget-object v8, v7, Li25;->a:Lh54;

    .line 7
    invoke-virtual {v8}, Lc94;->n()Lz84;

    move-result-object v8

    check-cast v8, Lg54;

    invoke-virtual {v8}, Lg54;->l0()Lg54;

    iget-object v10, v1, Lj25;->j:Lrx4;

    .line 8
    invoke-virtual {v10}, Lrx4;->p()Lcs4;

    move-result-object v10

    iget-object v11, v7, Li25;->a:Lh54;

    .line 9
    invoke-virtual {v11}, Lh54;->s()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lew4;->T:Ldw4;

    invoke-virtual {v10, v11, v12}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v10

    const/4 v9, -0x1

    const/4 v11, -0x1

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_0
    iget-object v12, v7, Li25;->c:Ljava/util/List;

    .line 10
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v13, "_fr"

    move-object/from16 v21, v5

    const-string v5, "_et"

    move-wide/from16 v22, v15

    const-string v15, "_e"

    move/from16 v16, v10

    move/from16 v24, v11

    if-ge v14, v12, :cond_32

    :try_start_1
    iget-object v11, v7, Li25;->c:Ljava/util/List;

    .line 11
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lz44;

    invoke-virtual {v11}, Lc94;->n()Lz84;

    move-result-object v11

    check-cast v11, Ly44;

    .line 12
    invoke-virtual/range {p0 .. p0}, Lj25;->J()Lkx4;

    move-result-object v12

    iget-object v10, v7, Li25;->a:Lh54;

    .line 13
    invoke-virtual {v10}, Lh54;->s()Ljava/lang/String;

    move-result-object v10

    move/from16 v28, v14

    invoke-virtual {v11}, Ly44;->t()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v10, v14}, Lkx4;->n(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v12, "_err"

    if-eqz v10, :cond_3

    :try_start_2
    iget-object v5, v1, Lj25;->j:Lrx4;

    .line 14
    invoke-virtual {v5}, Lrx4;->a()Lqw4;

    move-result-object v5

    .line 15
    invoke-virtual {v5}, Lqw4;->p()Low4;

    move-result-object v5

    const-string v10, "Dropping blacklisted raw event. appId"

    iget-object v13, v7, Li25;->a:Lh54;

    .line 16
    invoke-virtual {v13}, Lh54;->s()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    iget-object v14, v1, Lj25;->j:Lrx4;

    .line 17
    invoke-virtual {v14}, Lrx4;->u()Llw4;

    move-result-object v14

    .line 18
    invoke-virtual {v11}, Ly44;->t()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Llw4;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 19
    invoke-virtual {v5, v10, v13, v14}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    invoke-virtual/range {p0 .. p0}, Lj25;->J()Lkx4;

    move-result-object v5

    iget-object v10, v7, Li25;->a:Lh54;

    invoke-virtual {v10}, Lh54;->s()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lkx4;->r(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 21
    invoke-virtual/range {p0 .. p0}, Lj25;->J()Lkx4;

    move-result-object v5

    iget-object v10, v7, Li25;->a:Lh54;

    .line 22
    invoke-virtual {v10}, Lh54;->s()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lkx4;->s(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {v11}, Ly44;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v1, Lj25;->j:Lrx4;

    .line 24
    invoke-virtual {v5}, Lrx4;->t()Lp25;

    move-result-object v29

    iget-object v5, v1, Lj25;->z:Lo25;

    iget-object v10, v7, Li25;->a:Lh54;

    .line 25
    invoke-virtual {v10}, Lh54;->s()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0xb

    const-string v33, "_ev"

    .line 26
    invoke-virtual {v11}, Ly44;->t()Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    move-object/from16 v30, v5

    .line 27
    invoke-virtual/range {v29 .. v35}, Lp25;->A(Lo25;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_2
    :goto_1
    move-object v12, v3

    move-object/from16 v30, v6

    move v13, v9

    move-wide/from16 v5, v22

    move/from16 v11, v24

    move/from16 v14, v28

    move-object v3, v2

    move-object v9, v4

    goto/16 :goto_1a

    .line 28
    :cond_3
    invoke-static {}, Ltb4;->b()Z

    iget-object v10, v1, Lj25;->j:Lrx4;

    .line 29
    invoke-virtual {v10}, Lrx4;->p()Lcs4;

    move-result-object v10

    iget-object v14, v7, Li25;->a:Lh54;

    .line 30
    invoke-virtual {v14}, Lh54;->s()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v29, v2

    sget-object v2, Lew4;->J0:Ldw4;

    invoke-virtual {v10, v14, v2}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 31
    invoke-virtual {v11}, Ly44;->t()Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-static {v6}, Loy4;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 33
    invoke-virtual {v11, v6}, Ly44;->u(Ljava/lang/String;)Ly44;

    iget-object v2, v1, Lj25;->j:Lrx4;

    .line 34
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lqw4;->s()Low4;

    move-result-object v2

    const-string v10, "Renaming ad_impression to _ai"

    invoke-virtual {v2, v10}, Low4;->a(Ljava/lang/String;)V

    iget-object v2, v1, Lj25;->j:Lrx4;

    .line 36
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lqw4;->v()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x5

    .line 38
    invoke-static {v2, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    .line 39
    :goto_2
    invoke-virtual {v11}, Ly44;->o()I

    move-result v10

    if-ge v2, v10, :cond_5

    const-string v10, "ad_platform"

    .line 40
    invoke-virtual {v11, v2}, Ly44;->p(I)Ld54;

    move-result-object v14

    invoke-virtual {v14}, Ld54;->t()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 41
    invoke-virtual {v11, v2}, Ly44;->p(I)Ld54;

    move-result-object v10

    invoke-virtual {v10}, Ld54;->v()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "admob"

    .line 42
    invoke-virtual {v11, v2}, Ly44;->p(I)Ld54;

    move-result-object v14

    invoke-virtual {v14}, Ld54;->v()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, v1, Lj25;->j:Lrx4;

    .line 43
    invoke-virtual {v10}, Lrx4;->a()Lqw4;

    move-result-object v10

    .line 44
    invoke-virtual {v10}, Lqw4;->q()Low4;

    move-result-object v10

    const-string v14, "AdMob ad impression logged from app. Potentially duplicative."

    .line 45
    invoke-virtual {v10, v14}, Low4;->a(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 46
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lj25;->J()Lkx4;

    move-result-object v2

    iget-object v10, v7, Li25;->a:Lh54;

    .line 47
    invoke-virtual {v10}, Lh54;->s()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11}, Ly44;->t()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v10, v14}, Lkx4;->p(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v10, "_c"

    if-nez v2, :cond_a

    .line 48
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lj25;->Q()Ll25;

    invoke-virtual {v11}, Ly44;->t()Ljava/lang/String;

    move-result-object v14

    .line 49
    invoke-static {v14}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v30, v6

    .line 50
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v31, v3

    const v3, 0x171c4

    if-eq v6, v3, :cond_8

    const v3, 0x17331

    if-eq v6, v3, :cond_7

    const v3, 0x17333

    if-eq v6, v3, :cond_6

    goto :goto_3

    :cond_6
    const-string v3, "_ui"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    const-string v3, "_ug"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x2

    goto :goto_4

    :cond_8
    const-string v3, "_in"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v3, -0x1

    :goto_4
    if-eqz v3, :cond_b

    const/4 v6, 0x1

    if-eq v3, v6, :cond_b

    const/4 v6, 0x2

    if-eq v3, v6, :cond_b

    move-object/from16 v25, v4

    move-object/from16 v32, v5

    move-object/from16 v33, v8

    move/from16 v34, v9

    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_a
    move-object/from16 v31, v3

    move-object/from16 v30, v6

    :cond_b
    move-object/from16 v25, v4

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x0

    .line 51
    :goto_5
    :try_start_4
    invoke-virtual {v11}, Ly44;->o()I

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v32, v5

    const-string v5, "_r"

    if-ge v3, v4, :cond_e

    .line 52
    :try_start_5
    invoke-virtual {v11, v3}, Ly44;->p(I)Ld54;

    move-result-object v4

    invoke-virtual {v4}, Ld54;->t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 53
    invoke-virtual {v11, v3}, Ly44;->p(I)Ld54;

    move-result-object v4

    invoke-virtual {v4}, Lc94;->n()Lz84;

    move-result-object v4

    check-cast v4, Lc54;

    const-wide/16 v5, 0x1

    .line 54
    invoke-virtual {v4, v5, v6}, Lc54;->p(J)Lc54;

    .line 55
    invoke-virtual {v4}, Lz84;->g()Lc94;

    move-result-object v4

    check-cast v4, Ld54;

    .line 56
    invoke-virtual {v11, v3, v4}, Ly44;->q(ILd54;)Ly44;

    move-object/from16 v33, v8

    move/from16 v34, v9

    const/4 v6, 0x1

    goto :goto_6

    .line 57
    :cond_c
    invoke-virtual {v11, v3}, Ly44;->p(I)Ld54;

    move-result-object v4

    invoke-virtual {v4}, Ld54;->t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 58
    invoke-virtual {v11, v3}, Ly44;->p(I)Ld54;

    move-result-object v4

    invoke-virtual {v4}, Lc94;->n()Lz84;

    move-result-object v4

    check-cast v4, Lc54;

    move-object/from16 v33, v8

    move/from16 v34, v9

    const-wide/16 v8, 0x1

    .line 59
    invoke-virtual {v4, v8, v9}, Lc54;->p(J)Lc54;

    .line 60
    invoke-virtual {v4}, Lz84;->g()Lc94;

    move-result-object v4

    check-cast v4, Ld54;

    .line 61
    invoke-virtual {v11, v3, v4}, Ly44;->q(ILd54;)Ly44;

    const/4 v14, 0x1

    goto :goto_6

    :cond_d
    move-object/from16 v33, v8

    move/from16 v34, v9

    :goto_6
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v5, v32

    move-object/from16 v8, v33

    move/from16 v9, v34

    goto :goto_5

    :cond_e
    move-object/from16 v33, v8

    move/from16 v34, v9

    if-nez v6, :cond_f

    if-eqz v2, :cond_f

    iget-object v3, v1, Lj25;->j:Lrx4;

    .line 62
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v3

    .line 63
    invoke-virtual {v3}, Lqw4;->s()Low4;

    move-result-object v3

    const-string v4, "Marking event as conversion"

    iget-object v6, v1, Lj25;->j:Lrx4;

    .line 64
    invoke-virtual {v6}, Lrx4;->u()Llw4;

    move-result-object v6

    .line 65
    invoke-virtual {v11}, Ly44;->t()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Llw4;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 66
    invoke-virtual {v3, v4, v6}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    invoke-static {}, Ld54;->E()Lc54;

    move-result-object v3

    .line 68
    invoke-virtual {v3, v10}, Lc54;->m(Ljava/lang/String;)Lc54;

    const-wide/16 v8, 0x1

    .line 69
    invoke-virtual {v3, v8, v9}, Lc54;->p(J)Lc54;

    .line 70
    invoke-virtual {v11, v3}, Ly44;->r(Lc54;)Ly44;

    :cond_f
    if-nez v14, :cond_10

    iget-object v3, v1, Lj25;->j:Lrx4;

    .line 71
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v3

    .line 72
    invoke-virtual {v3}, Lqw4;->s()Low4;

    move-result-object v3

    const-string v4, "Marking event as real-time"

    iget-object v6, v1, Lj25;->j:Lrx4;

    .line 73
    invoke-virtual {v6}, Lrx4;->u()Llw4;

    move-result-object v6

    .line 74
    invoke-virtual {v11}, Ly44;->t()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Llw4;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 75
    invoke-virtual {v3, v4, v6}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    invoke-static {}, Ld54;->E()Lc54;

    move-result-object v3

    .line 77
    invoke-virtual {v3, v5}, Lc54;->m(Ljava/lang/String;)Lc54;

    const-wide/16 v8, 0x1

    .line 78
    invoke-virtual {v3, v8, v9}, Lc54;->p(J)Lc54;

    .line 79
    invoke-virtual {v11, v3}, Ly44;->r(Lc54;)Ly44;

    .line 80
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v35

    .line 81
    invoke-virtual/range {p0 .. p0}, Lj25;->V()J

    move-result-wide v36

    iget-object v3, v7, Li25;->a:Lh54;

    .line 82
    invoke-virtual {v3}, Lh54;->s()Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    const/16 v40, 0x1

    .line 83
    invoke-virtual/range {v35 .. v40}, Lgs4;->N(JLjava/lang/String;ZZ)Les4;

    move-result-object v3

    iget-wide v3, v3, Les4;->e:J

    iget-object v6, v1, Lj25;->j:Lrx4;

    .line 84
    invoke-virtual {v6}, Lrx4;->p()Lcs4;

    move-result-object v6

    iget-object v8, v7, Li25;->a:Lh54;

    .line 85
    invoke-virtual {v8}, Lh54;->s()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lew4;->o:Ldw4;

    invoke-virtual {v6, v8, v9}, Lcs4;->p(Ljava/lang/String;Ldw4;)I

    move-result v6

    int-to-long v8, v6

    cmp-long v6, v3, v8

    if-lez v6, :cond_11

    .line 86
    invoke-static {v11, v5}, Lj25;->x(Ly44;Ljava/lang/String;)V

    goto :goto_7

    :cond_11
    const/16 v20, 0x1

    .line 87
    :goto_7
    invoke-virtual {v11}, Ly44;->t()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lp25;->e0(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    if-eqz v2, :cond_18

    .line 88
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v35

    .line 89
    invoke-virtual/range {p0 .. p0}, Lj25;->V()J

    move-result-wide v36

    iget-object v3, v7, Li25;->a:Lh54;

    .line 90
    invoke-virtual {v3}, Lh54;->s()Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x1

    const/16 v40, 0x0

    .line 91
    invoke-virtual/range {v35 .. v40}, Lgs4;->N(JLjava/lang/String;ZZ)Les4;

    move-result-object v3

    iget-wide v3, v3, Les4;->c:J

    iget-object v5, v1, Lj25;->j:Lrx4;

    .line 92
    invoke-virtual {v5}, Lrx4;->p()Lcs4;

    move-result-object v5

    iget-object v6, v7, Li25;->a:Lh54;

    .line 93
    invoke-virtual {v6}, Lh54;->s()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lew4;->n:Ldw4;

    invoke-virtual {v5, v6, v8}, Lcs4;->p(Ljava/lang/String;Ldw4;)I

    move-result v5

    int-to-long v5, v5

    cmp-long v8, v3, v5

    if-lez v8, :cond_18

    iget-object v3, v1, Lj25;->j:Lrx4;

    .line 94
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v3

    .line 95
    invoke-virtual {v3}, Lqw4;->p()Low4;

    move-result-object v3

    const-string v4, "Too many conversions. Not logging as conversion. appId"

    iget-object v5, v7, Li25;->a:Lh54;

    .line 96
    invoke-virtual {v5}, Lh54;->s()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 97
    invoke-virtual {v3, v4, v5}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 98
    :goto_8
    invoke-virtual {v11}, Ly44;->o()I

    move-result v8

    if-ge v4, v8, :cond_14

    .line 99
    invoke-virtual {v11, v4}, Ly44;->p(I)Ld54;

    move-result-object v8

    .line 100
    invoke-virtual {v8}, Ld54;->t()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 101
    invoke-virtual {v8}, Lc94;->n()Lz84;

    move-result-object v3

    check-cast v3, Lc54;

    move v6, v4

    goto :goto_9

    .line 102
    :cond_12
    invoke-virtual {v8}, Ld54;->t()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    const/4 v5, 0x1

    :cond_13
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_14
    if-eqz v5, :cond_16

    if-eqz v3, :cond_15

    .line 103
    invoke-virtual {v11, v6}, Ly44;->s(I)Ly44;

    goto :goto_a

    :cond_15
    const/4 v3, 0x0

    :cond_16
    if-eqz v3, :cond_17

    .line 104
    invoke-virtual {v3}, Lz84;->k()Lz84;

    move-result-object v3

    check-cast v3, Lc54;

    .line 105
    invoke-virtual {v3, v12}, Lc54;->m(Ljava/lang/String;)Lc54;

    const-wide/16 v4, 0xa

    .line 106
    invoke-virtual {v3, v4, v5}, Lc54;->p(J)Lc54;

    .line 107
    invoke-virtual {v3}, Lz84;->g()Lc94;

    move-result-object v3

    check-cast v3, Ld54;

    .line 108
    invoke-virtual {v11, v6, v3}, Ly44;->q(ILd54;)Ly44;

    goto :goto_a

    :cond_17
    iget-object v3, v1, Lj25;->j:Lrx4;

    .line 109
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v3

    .line 110
    invoke-virtual {v3}, Lqw4;->n()Low4;

    move-result-object v3

    const-string v4, "Did not find conversion parameter. appId"

    iget-object v5, v7, Li25;->a:Lh54;

    .line 111
    invoke-virtual {v5}, Lh54;->s()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 112
    invoke-virtual {v3, v4, v5}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_18
    :goto_a
    if-eqz v2, :cond_20

    .line 113
    new-instance v2, Ljava/util/ArrayList;

    .line 114
    invoke-virtual {v11}, Ly44;->m()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    .line 115
    :goto_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v8, "currency"

    const-string v9, "value"

    if-ge v3, v6, :cond_1b

    .line 116
    :try_start_6
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld54;

    invoke-virtual {v6}, Ld54;->t()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    move v4, v3

    goto :goto_c

    .line 117
    :cond_19
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld54;

    invoke-virtual {v6}, Ld54;->t()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    move v5, v3

    :cond_1a
    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_1b
    const/4 v3, -0x1

    if-ne v4, v3, :cond_1c

    goto/16 :goto_10

    .line 118
    :cond_1c
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld54;

    invoke-virtual {v3}, Ld54;->w()Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld54;

    invoke-virtual {v3}, Ld54;->A()Z

    move-result v3

    if-nez v3, :cond_1d

    iget-object v2, v1, Lj25;->j:Lrx4;

    .line 119
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 120
    invoke-virtual {v2}, Lqw4;->q()Low4;

    move-result-object v2

    const-string v3, "Value must be specified with a numeric type."

    invoke-virtual {v2, v3}, Low4;->a(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v11, v4}, Ly44;->s(I)Ly44;

    .line 122
    invoke-static {v11, v10}, Lj25;->x(Ly44;Ljava/lang/String;)V

    const/16 v2, 0x12

    .line 123
    invoke-static {v11, v2, v9}, Lj25;->w(Ly44;ILjava/lang/String;)V

    goto :goto_f

    :cond_1d
    const/4 v3, -0x1

    if-ne v5, v3, :cond_1e

    goto :goto_e

    .line 124
    :cond_1e
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld54;

    invoke-virtual {v2}, Ld54;->v()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1f

    const/4 v5, 0x0

    .line 126
    :goto_d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_21

    .line 127
    invoke-virtual {v2, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    .line 128
    invoke-static {v6}, Ljava/lang/Character;->isLetter(I)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 129
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_d

    .line 130
    :cond_1f
    :goto_e
    iget-object v2, v1, Lj25;->j:Lrx4;

    .line 131
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 132
    invoke-virtual {v2}, Lqw4;->q()Low4;

    move-result-object v2

    const-string v5, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    .line 133
    invoke-virtual {v2, v5}, Low4;->a(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v11, v4}, Ly44;->s(I)Ly44;

    .line 135
    invoke-static {v11, v10}, Lj25;->x(Ly44;Ljava/lang/String;)V

    const/16 v2, 0x13

    .line 136
    invoke-static {v11, v2, v8}, Lj25;->w(Ly44;ILjava/lang/String;)V

    goto :goto_10

    :cond_20
    :goto_f
    const/4 v3, -0x1

    .line 137
    :cond_21
    :goto_10
    invoke-virtual {v11}, Ly44;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v4, 0x3e8

    if-eqz v2, :cond_24

    .line 138
    invoke-virtual/range {p0 .. p0}, Lj25;->Q()Ll25;

    invoke-virtual {v11}, Lz84;->g()Lc94;

    move-result-object v2

    check-cast v2, Lz44;

    invoke-static {v2, v13}, Ll25;->L(Lz44;Ljava/lang/String;)Ld54;

    move-result-object v2

    if-nez v2, :cond_23

    if-eqz v18, :cond_22

    .line 139
    invoke-virtual/range {v18 .. v18}, Ly44;->v()J

    move-result-wide v8

    invoke-virtual {v11}, Ly44;->v()J

    move-result-wide v12

    sub-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    cmp-long v2, v8, v4

    if-gtz v2, :cond_22

    .line 140
    invoke-virtual/range {v18 .. v18}, Lz84;->k()Lz84;

    move-result-object v2

    check-cast v2, Ly44;

    .line 141
    invoke-virtual {v1, v11, v2}, Lj25;->A(Ly44;Ly44;)Z

    move-result v4

    if-eqz v4, :cond_22

    move-object/from16 v8, v33

    move/from16 v13, v34

    .line 142
    invoke-virtual {v8, v13, v2}, Lg54;->i0(ILy44;)Lg54;

    const/4 v2, 0x0

    const/16 v18, 0x0

    goto :goto_11

    :cond_22
    move-object/from16 v8, v33

    move/from16 v13, v34

    move-object v2, v11

    move/from16 v24, v19

    :goto_11
    move-object/from16 v17, v2

    :goto_12
    move/from16 v4, v24

    move-object/from16 v9, v25

    move-object/from16 v3, v29

    move-object/from16 v12, v31

    move-object/from16 v6, v32

    goto/16 :goto_17

    :cond_23
    move-object/from16 v8, v33

    move/from16 v13, v34

    goto :goto_12

    :cond_24
    move-object/from16 v8, v33

    move/from16 v13, v34

    const-string v2, "_vs"

    .line 143
    invoke-virtual {v11}, Ly44;->t()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 144
    invoke-virtual/range {p0 .. p0}, Lj25;->Q()Ll25;

    invoke-virtual {v11}, Lz84;->g()Lc94;

    move-result-object v2

    check-cast v2, Lz44;

    move-object/from16 v6, v32

    invoke-static {v2, v6}, Ll25;->L(Lz44;Ljava/lang/String;)Ld54;

    move-result-object v2

    if-nez v2, :cond_28

    if-eqz v17, :cond_26

    .line 145
    invoke-virtual/range {v17 .. v17}, Ly44;->v()J

    move-result-wide v9

    invoke-virtual {v11}, Ly44;->v()J

    move-result-wide v26

    sub-long v9, v9, v26

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    cmp-long v2, v9, v4

    if-gtz v2, :cond_26

    .line 146
    invoke-virtual/range {v17 .. v17}, Lz84;->k()Lz84;

    move-result-object v2

    check-cast v2, Ly44;

    .line 147
    invoke-virtual {v1, v2, v11}, Lj25;->A(Ly44;Ly44;)Z

    move-result v4

    if-eqz v4, :cond_25

    move/from16 v4, v24

    .line 148
    invoke-virtual {v8, v4, v2}, Lg54;->i0(ILy44;)Lg54;

    move v9, v13

    const/4 v2, 0x0

    const/16 v17, 0x0

    goto :goto_13

    :cond_25
    move/from16 v4, v24

    move-object v2, v11

    move/from16 v9, v19

    :goto_13
    move-object/from16 v18, v2

    goto :goto_14

    :cond_26
    move/from16 v4, v24

    move-object/from16 v18, v11

    move/from16 v9, v19

    :goto_14
    move v13, v9

    :cond_27
    :goto_15
    move-object/from16 v9, v25

    move-object/from16 v3, v29

    move-object/from16 v12, v31

    goto/16 :goto_17

    :cond_28
    move/from16 v4, v24

    goto :goto_15

    :cond_29
    move/from16 v4, v24

    move-object/from16 v6, v32

    iget-object v2, v1, Lj25;->j:Lrx4;

    .line 149
    invoke-virtual {v2}, Lrx4;->p()Lcs4;

    move-result-object v2

    iget-object v5, v7, Li25;->a:Lh54;

    .line 150
    invoke-virtual {v5}, Lh54;->s()Ljava/lang/String;

    move-result-object v5

    sget-object v9, Lew4;->l0:Ldw4;

    invoke-virtual {v2, v5, v9}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v2

    if-eqz v2, :cond_27

    const-string v2, "_ab"

    .line 151
    invoke-virtual {v11}, Ly44;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 152
    invoke-virtual/range {p0 .. p0}, Lj25;->Q()Ll25;

    invoke-virtual {v11}, Lz84;->g()Lc94;

    move-result-object v2

    check-cast v2, Lz44;

    invoke-static {v2, v6}, Ll25;->L(Lz44;Ljava/lang/String;)Ld54;

    move-result-object v2

    if-nez v2, :cond_27

    if-eqz v17, :cond_27

    .line 153
    invoke-virtual/range {v17 .. v17}, Ly44;->v()J

    move-result-wide v9

    invoke-virtual {v11}, Ly44;->v()J

    move-result-wide v26

    sub-long v9, v9, v26

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/16 v26, 0xfa0

    cmp-long v2, v9, v26

    if-gtz v2, :cond_27

    .line 154
    invoke-virtual/range {v17 .. v17}, Lz84;->k()Lz84;

    move-result-object v2

    check-cast v2, Ly44;

    .line 155
    invoke-virtual {v1, v2, v11}, Lj25;->B(Ly44;Ly44;)V

    .line 156
    invoke-virtual {v2}, Ly44;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 157
    invoke-static {v5}, Lbi;->b(Z)V

    .line 158
    invoke-virtual/range {p0 .. p0}, Lj25;->Q()Ll25;

    invoke-virtual {v2}, Lz84;->g()Lc94;

    move-result-object v5

    check-cast v5, Lz44;

    move-object/from16 v9, v25

    invoke-static {v5, v9}, Ll25;->L(Lz44;Ljava/lang/String;)Ld54;

    move-result-object v5

    .line 159
    invoke-virtual/range {p0 .. p0}, Lj25;->Q()Ll25;

    .line 160
    invoke-virtual {v2}, Lz84;->g()Lc94;

    move-result-object v10

    check-cast v10, Lz44;

    move-object/from16 v12, v31

    invoke-static {v10, v12}, Ll25;->L(Lz44;Ljava/lang/String;)Ld54;

    move-result-object v10

    .line 161
    invoke-virtual/range {p0 .. p0}, Lj25;->Q()Ll25;

    invoke-virtual {v2}, Lz84;->g()Lc94;

    move-result-object v14

    check-cast v14, Lz44;

    move-object/from16 v3, v29

    invoke-static {v14, v3}, Ll25;->L(Lz44;Ljava/lang/String;)Ld54;

    move-result-object v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v17, ""

    if-eqz v5, :cond_2a

    :try_start_7
    invoke-virtual {v5}, Ld54;->v()Ljava/lang/String;

    move-result-object v5

    goto :goto_16

    :cond_2a
    move-object/from16 v5, v17

    .line 162
    :goto_16
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_2b

    .line 163
    invoke-virtual/range {p0 .. p0}, Lj25;->Q()Ll25;

    invoke-static {v11, v9, v5}, Ll25;->J(Ly44;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2b
    if-eqz v10, :cond_2c

    invoke-virtual {v10}, Ld54;->v()Ljava/lang/String;

    move-result-object v17

    :cond_2c
    move-object/from16 v5, v17

    .line 164
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2d

    .line 165
    invoke-virtual/range {p0 .. p0}, Lj25;->Q()Ll25;

    invoke-static {v11, v12, v5}, Ll25;->J(Ly44;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2d
    if-eqz v14, :cond_2e

    .line 166
    invoke-virtual/range {p0 .. p0}, Lj25;->Q()Ll25;

    invoke-virtual {v14}, Ld54;->x()J

    move-result-wide v24

    .line 167
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v11, v3, v5}, Ll25;->J(Ly44;Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    :cond_2e
    invoke-virtual {v8, v4, v2}, Lg54;->i0(ILy44;)Lg54;

    const/16 v17, 0x0

    :goto_17
    if-nez v16, :cond_31

    .line 169
    invoke-virtual {v11}, Ly44;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 170
    invoke-virtual {v11}, Ly44;->o()I

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, v1, Lj25;->j:Lrx4;

    .line 171
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 172
    invoke-virtual {v2}, Lqw4;->p()Low4;

    move-result-object v2

    const-string v5, "Engagement event does not contain any parameters. appId"

    iget-object v6, v7, Li25;->a:Lh54;

    .line 173
    invoke-virtual {v6}, Lh54;->s()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 174
    invoke-virtual {v2, v5, v6}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_18

    .line 175
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lj25;->Q()Ll25;

    .line 176
    invoke-virtual {v11}, Lz84;->g()Lc94;

    move-result-object v2

    check-cast v2, Lz44;

    invoke-static {v2, v6}, Ll25;->i(Lz44;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_30

    iget-object v2, v1, Lj25;->j:Lrx4;

    .line 177
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 178
    invoke-virtual {v2}, Lqw4;->p()Low4;

    move-result-object v2

    const-string v5, "Engagement event does not include duration. appId"

    iget-object v6, v7, Li25;->a:Lh54;

    .line 179
    invoke-virtual {v6}, Lh54;->s()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 180
    invoke-virtual {v2, v5, v6}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_18

    .line 181
    :cond_30
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long v5, v22, v5

    goto :goto_19

    :cond_31
    :goto_18
    move-wide/from16 v5, v22

    .line 182
    :goto_19
    iget-object v2, v7, Li25;->c:Ljava/util/List;

    .line 183
    invoke-virtual {v11}, Lz84;->g()Lc94;

    move-result-object v10

    check-cast v10, Lz44;

    move/from16 v14, v28

    invoke-interface {v2, v14, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v19, v19, 0x1

    .line 184
    invoke-virtual {v8, v11}, Lg54;->j0(Ly44;)Lg54;

    move v11, v4

    :goto_1a
    add-int/lit8 v14, v14, 0x1

    move-object v2, v3

    move-object v4, v9

    move-object v3, v12

    move v9, v13

    move/from16 v10, v16

    move-wide v15, v5

    move-object/from16 v5, v21

    move-object/from16 v6, v30

    goto/16 :goto_0

    :cond_32
    move-object v6, v5

    if-eqz v16, :cond_36

    move/from16 v3, v19

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v3, :cond_36

    .line 185
    invoke-virtual {v8, v2}, Lg54;->h0(I)Lz44;

    move-result-object v4

    .line 186
    invoke-virtual {v4}, Lz44;->v()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 187
    invoke-virtual/range {p0 .. p0}, Lj25;->Q()Ll25;

    invoke-static {v4, v13}, Ll25;->L(Lz44;Ljava/lang/String;)Ld54;

    move-result-object v5

    if-eqz v5, :cond_33

    .line 188
    invoke-virtual {v8, v2}, Lg54;->m0(I)Lg54;

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    .line 189
    :cond_33
    invoke-virtual/range {p0 .. p0}, Lj25;->Q()Ll25;

    invoke-static {v4, v6}, Ll25;->L(Lz44;Ljava/lang/String;)Ld54;

    move-result-object v4

    if-eqz v4, :cond_35

    invoke-virtual {v4}, Ld54;->w()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-virtual {v4}, Ld54;->x()J

    move-result-wide v4

    .line 190
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_1c

    :cond_34
    const/4 v4, 0x0

    :goto_1c
    if-eqz v4, :cond_35

    .line 191
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    if-lez v5, :cond_35

    .line 192
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long v22, v22, v4

    :cond_35
    :goto_1d
    const/4 v4, 0x1

    add-int/2addr v2, v4

    goto :goto_1b

    :cond_36
    move-wide/from16 v2, v22

    const/4 v4, 0x0

    .line 193
    invoke-virtual {v1, v8, v2, v3, v4}, Lj25;->z(Lg54;JZ)V

    .line 194
    invoke-virtual {v8}, Lg54;->f0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_37
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v6, "_se"

    if-eqz v5, :cond_38

    :try_start_8
    const-string v5, "_s"

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lz44;

    .line 195
    invoke-virtual {v9}, Lz44;->v()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 196
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v4

    .line 197
    invoke-virtual {v8}, Lg54;->t()Ljava/lang/String;

    move-result-object v5

    .line 198
    invoke-virtual {v4, v5, v6}, Lgs4;->B(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    const-string v4, "_sid"

    .line 199
    invoke-static {v8, v4}, Ll25;->H(Lg54;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_39

    const/4 v4, 0x1

    .line 200
    invoke-virtual {v1, v8, v2, v3, v4}, Lj25;->z(Lg54;JZ)V

    goto :goto_1e

    .line 201
    :cond_39
    invoke-static {v8, v6}, Ll25;->H(Lg54;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3a

    .line 202
    invoke-virtual {v8, v2}, Lg54;->t0(I)Lg54;

    iget-object v2, v1, Lj25;->j:Lrx4;

    .line 203
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 204
    invoke-virtual {v2}, Lqw4;->n()Low4;

    move-result-object v2

    const-string v3, "Session engagement user property is in the bundle without session ID. appId"

    iget-object v4, v7, Li25;->a:Lh54;

    .line 205
    invoke-virtual {v4}, Lh54;->s()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 206
    invoke-virtual {v2, v3, v4}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    :cond_3a
    :goto_1e
    invoke-virtual/range {p0 .. p0}, Lj25;->Q()Ll25;

    move-result-object v2

    iget-object v3, v2, Lly4;->a:Lrx4;

    .line 208
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v3

    .line 209
    invoke-virtual {v3}, Lqw4;->s()Low4;

    move-result-object v3

    const-string v4, "Checking account type status for ad personalization signals"

    invoke-virtual {v3, v4}, Low4;->a(Ljava/lang/String;)V

    iget-object v3, v2, Lb25;->b:Lj25;

    .line 210
    invoke-virtual {v3}, Lj25;->J()Lkx4;

    move-result-object v3

    .line 211
    invoke-virtual {v8}, Lg54;->t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkx4;->k(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    iget-object v3, v2, Lb25;->b:Lj25;

    .line 212
    invoke-virtual {v3}, Lj25;->L()Lgs4;

    move-result-object v3

    .line 213
    invoke-virtual {v8}, Lg54;->t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgs4;->L(Ljava/lang/String;)Lvx4;

    move-result-object v3

    if-eqz v3, :cond_3d

    .line 214
    invoke-virtual {v3}, Lvx4;->s()Z

    move-result v3

    if-eqz v3, :cond_3d

    iget-object v3, v2, Lly4;->a:Lrx4;

    .line 215
    invoke-virtual {v3}, Lrx4;->A()Ljs4;

    move-result-object v3

    .line 216
    invoke-virtual {v3}, Ljs4;->r()Z

    move-result v3

    if-eqz v3, :cond_3d

    iget-object v3, v2, Lly4;->a:Lrx4;

    .line 217
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v3

    .line 218
    invoke-virtual {v3}, Lqw4;->r()Low4;

    move-result-object v3

    const-string v4, "Turning off ad personalization due to account type"

    invoke-virtual {v3, v4}, Low4;->a(Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lr54;->B()Lq54;

    move-result-object v3

    move-object/from16 v4, v21

    .line 220
    invoke-virtual {v3, v4}, Lq54;->o(Ljava/lang/String;)Lq54;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 221
    invoke-virtual {v2}, Lrx4;->A()Ljs4;

    move-result-object v2

    .line 222
    invoke-virtual {v2}, Ljs4;->q()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lq54;->m(J)Lq54;

    const-wide/16 v5, 0x1

    .line 223
    invoke-virtual {v3, v5, v6}, Lq54;->p(J)Lq54;

    .line 224
    invoke-virtual {v3}, Lz84;->g()Lc94;

    move-result-object v2

    check-cast v2, Lr54;

    const/4 v3, 0x0

    .line 225
    :goto_1f
    invoke-virtual {v8}, Lg54;->o0()I

    move-result v5

    if-ge v3, v5, :cond_3c

    .line 226
    invoke-virtual {v8, v3}, Lg54;->p0(I)Lr54;

    move-result-object v5

    invoke-virtual {v5}, Lr54;->u()Ljava/lang/String;

    move-result-object v5

    .line 227
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 228
    invoke-virtual {v8, v3, v2}, Lg54;->q0(ILr54;)Lg54;

    goto :goto_20

    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 229
    :cond_3c
    invoke-virtual {v8, v2}, Lg54;->r0(Lr54;)Lg54;

    :cond_3d
    :goto_20
    const-wide v2, 0x7fffffffffffffffL

    .line 230
    invoke-virtual {v8, v2, v3}, Lg54;->w0(J)Lg54;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-virtual {v8, v2, v3}, Lg54;->y0(J)Lg54;

    const/4 v2, 0x0

    .line 231
    :goto_21
    invoke-virtual {v8}, Lg54;->g0()I

    move-result v3

    if-ge v2, v3, :cond_40

    .line 232
    invoke-virtual {v8, v2}, Lg54;->h0(I)Lz44;

    move-result-object v3

    .line 233
    invoke-virtual {v3}, Lz44;->x()J

    move-result-wide v4

    invoke-virtual {v8}, Lg54;->v0()J

    move-result-wide v9

    cmp-long v6, v4, v9

    if-gez v6, :cond_3e

    .line 234
    invoke-virtual {v3}, Lz44;->x()J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Lg54;->w0(J)Lg54;

    .line 235
    :cond_3e
    invoke-virtual {v3}, Lz44;->x()J

    move-result-wide v4

    invoke-virtual {v8}, Lg54;->x0()J

    move-result-wide v9

    cmp-long v6, v4, v9

    if-lez v6, :cond_3f

    .line 236
    invoke-virtual {v3}, Lz44;->x()J

    move-result-wide v3

    invoke-virtual {v8, v3, v4}, Lg54;->y0(J)Lg54;

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 237
    :cond_40
    invoke-virtual {v8}, Lg54;->R()Lg54;

    .line 238
    invoke-virtual {v8}, Lg54;->N()Lg54;

    .line 239
    invoke-virtual/range {p0 .. p0}, Lj25;->O()Lb35;

    move-result-object v9

    .line 240
    invoke-virtual {v8}, Lg54;->t()Ljava/lang/String;

    move-result-object v10

    .line 241
    invoke-virtual {v8}, Lg54;->f0()Ljava/util/List;

    move-result-object v11

    .line 242
    invoke-virtual {v8}, Lg54;->n0()Ljava/util/List;

    move-result-object v12

    .line 243
    invoke-virtual {v8}, Lg54;->v0()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 244
    invoke-virtual {v8}, Lg54;->x0()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 245
    invoke-virtual/range {v9 .. v14}, Lb35;->i(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v2

    .line 246
    invoke-virtual {v8, v2}, Lg54;->M(Ljava/lang/Iterable;)Lg54;

    iget-object v2, v1, Lj25;->j:Lrx4;

    .line 247
    invoke-virtual {v2}, Lrx4;->p()Lcs4;

    move-result-object v2

    iget-object v3, v7, Li25;->a:Lh54;

    .line 248
    invoke-virtual {v3}, Lh54;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcs4;->z(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    new-instance v2, Ljava/util/HashMap;

    .line 249
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    .line 250
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v1, Lj25;->j:Lrx4;

    .line 251
    invoke-virtual {v4}, Lrx4;->t()Lp25;

    move-result-object v4

    .line 252
    invoke-virtual {v4}, Lp25;->d0()Ljava/security/SecureRandom;

    move-result-object v4

    move-object v6, v1

    const/4 v5, 0x0

    .line 253
    :goto_22
    invoke-virtual {v8}, Lg54;->g0()I

    move-result v9

    if-ge v5, v9, :cond_56

    .line 254
    invoke-virtual {v8, v5}, Lg54;->h0(I)Lz44;

    move-result-object v9

    invoke-virtual {v9}, Lc94;->n()Lz84;

    move-result-object v9

    check-cast v9, Ly44;

    .line 255
    invoke-virtual {v9}, Ly44;->t()Ljava/lang/String;

    move-result-object v10

    const-string v11, "_ep"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v11, "_sr"

    const-string v12, "_efs"

    if-eqz v10, :cond_45

    .line 256
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lj25;->Q()Ll25;

    invoke-virtual {v9}, Lz84;->g()Lc94;

    move-result-object v10

    check-cast v10, Lz44;

    const-string v13, "_en"

    invoke-static {v10, v13}, Ll25;->i(Lz44;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 257
    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lls4;

    if-nez v13, :cond_41

    .line 258
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v13

    iget-object v14, v7, Li25;->a:Lh54;

    invoke-virtual {v14}, Lh54;->s()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v10}, Lgs4;->z(Ljava/lang/String;Ljava/lang/String;)Lls4;

    move-result-object v13

    .line 259
    invoke-virtual {v2, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_41
    iget-object v10, v13, Lls4;->i:Ljava/lang/Long;

    if-nez v10, :cond_44

    .line 261
    iget-object v10, v13, Lls4;->j:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x1

    cmp-long v10, v14, v16

    if-lez v10, :cond_42

    .line 262
    invoke-virtual/range {p0 .. p0}, Lj25;->Q()Ll25;

    iget-object v10, v13, Lls4;->j:Ljava/lang/Long;

    .line 263
    invoke-static {v9, v11, v10}, Ll25;->J(Ly44;Ljava/lang/String;Ljava/lang/Object;)V

    .line 264
    :cond_42
    iget-object v10, v13, Lls4;->k:Ljava/lang/Boolean;

    if-eqz v10, :cond_43

    .line 265
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_43

    .line 266
    invoke-virtual/range {p0 .. p0}, Lj25;->Q()Ll25;

    const-wide/16 v10, 0x1

    .line 267
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v9, v12, v13}, Ll25;->J(Ly44;Ljava/lang/String;Ljava/lang/Object;)V

    .line 268
    :cond_43
    invoke-virtual {v9}, Lz84;->g()Lc94;

    move-result-object v10

    check-cast v10, Lz44;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_44
    invoke-virtual {v8, v5, v9}, Lg54;->i0(ILy44;)Lg54;

    goto/16 :goto_27

    .line 270
    :cond_45
    invoke-virtual/range {p0 .. p0}, Lj25;->J()Lkx4;

    move-result-object v10

    iget-object v13, v7, Li25;->a:Lh54;

    .line 271
    invoke-virtual {v13}, Lh54;->s()Ljava/lang/String;

    move-result-object v13

    const-string v14, "measurement.account.time_zone_offset_minutes"

    invoke-virtual {v10, v13, v14}, Lkx4;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 272
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v15, :cond_46

    .line 273
    :try_start_a
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_23

    :catch_0
    move-exception v0

    move-object v14, v0

    .line 274
    :try_start_b
    iget-object v10, v10, Lly4;->a:Lrx4;

    .line 275
    invoke-virtual {v10}, Lrx4;->a()Lqw4;

    move-result-object v10

    .line 276
    invoke-virtual {v10}, Lqw4;->p()Low4;

    move-result-object v10

    const-string v15, "Unable to parse timezone offset. appId"

    invoke-static {v13}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 277
    invoke-virtual {v10, v15, v13, v14}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_46
    const-wide/16 v13, 0x0

    .line 278
    :goto_23
    iget-object v10, v6, Lj25;->j:Lrx4;

    .line 279
    invoke-virtual {v10}, Lrx4;->t()Lp25;

    move-result-object v10

    move-object/from16 p3, v11

    move-object v15, v12

    .line 280
    invoke-virtual {v9}, Ly44;->v()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12, v13, v14}, Lp25;->N(JJ)J

    move-result-wide v10

    .line 281
    invoke-virtual {v9}, Lz84;->g()Lc94;

    move-result-object v12

    check-cast v12, Lz44;

    move-object/from16 v18, v15

    const-wide/16 v16, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-wide/from16 v16, v13

    const-string v13, "_dbg"

    .line 282
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_49

    .line 283
    invoke-virtual {v12}, Lz44;->s()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_24
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_49

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ld54;

    move-object/from16 v19, v12

    .line 284
    invoke-virtual {v14}, Ld54;->t()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_48

    .line 285
    invoke-virtual {v14}, Ld54;->x()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_47

    goto :goto_25

    :cond_47
    const/4 v12, 0x1

    goto :goto_26

    :cond_48
    move-object/from16 v12, v19

    goto :goto_24

    .line 286
    :cond_49
    :goto_25
    invoke-virtual/range {p0 .. p0}, Lj25;->J()Lkx4;

    move-result-object v12

    iget-object v13, v7, Li25;->a:Lh54;

    .line 287
    invoke-virtual {v13}, Lh54;->s()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Ly44;->t()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lkx4;->q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    :goto_26
    if-gtz v12, :cond_4a

    iget-object v10, v6, Lj25;->j:Lrx4;

    .line 288
    invoke-virtual {v10}, Lrx4;->a()Lqw4;

    move-result-object v10

    .line 289
    invoke-virtual {v10}, Lqw4;->p()Low4;

    move-result-object v10

    const-string v11, "Sample rate must be positive. event, rate"

    .line 290
    invoke-virtual {v9}, Ly44;->t()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v13, v12}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 291
    invoke-virtual {v9}, Lz84;->g()Lc94;

    move-result-object v10

    check-cast v10, Lz44;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {v8, v5, v9}, Lg54;->i0(ILy44;)Lg54;

    :goto_27
    move-object/from16 v19, v4

    move v4, v5

    move-object/from16 p3, v7

    move-object v7, v2

    const-wide/16 v1, 0x1

    goto/16 :goto_2d

    .line 293
    :cond_4a
    invoke-virtual {v9}, Ly44;->t()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lls4;

    if-nez v13, :cond_4b

    .line 294
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v13

    iget-object v14, v7, Li25;->a:Lh54;

    invoke-virtual {v14}, Lh54;->s()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9}, Ly44;->t()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lgs4;->z(Ljava/lang/String;Ljava/lang/String;)Lls4;

    move-result-object v13

    if-nez v13, :cond_4b

    iget-object v6, v6, Lj25;->j:Lrx4;

    .line 295
    invoke-virtual {v6}, Lrx4;->a()Lqw4;

    move-result-object v6

    .line 296
    invoke-virtual {v6}, Lqw4;->p()Low4;

    move-result-object v6

    const-string v13, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v14, v7, Li25;->a:Lh54;

    .line 297
    invoke-virtual {v14}, Lh54;->s()Ljava/lang/String;

    move-result-object v14

    .line 298
    invoke-virtual {v9}, Ly44;->t()Ljava/lang/String;

    move-result-object v15

    .line 299
    invoke-virtual {v6, v13, v14, v15}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Lls4;

    iget-object v6, v7, Li25;->a:Lh54;

    .line 300
    invoke-virtual {v6}, Lh54;->s()Ljava/lang/String;

    move-result-object v29

    .line 301
    invoke-virtual {v9}, Ly44;->t()Ljava/lang/String;

    move-result-object v30

    const-wide/16 v31, 0x1

    const-wide/16 v33, 0x1

    const-wide/16 v35, 0x1

    .line 302
    invoke-virtual {v9}, Ly44;->v()J

    move-result-wide v37

    const-wide/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v28, v13

    invoke-direct/range {v28 .. v44}, Lls4;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 303
    :cond_4b
    invoke-virtual/range {p0 .. p0}, Lj25;->Q()Ll25;

    invoke-virtual {v9}, Lz84;->g()Lc94;

    move-result-object v6

    check-cast v6, Lz44;

    const-string v14, "_eid"

    invoke-static {v6, v14}, Ll25;->i(Lz44;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_4c

    const/4 v14, 0x1

    goto :goto_28

    :cond_4c
    const/4 v14, 0x0

    .line 304
    :goto_28
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v15, 0x1

    if-ne v12, v15, :cond_4f

    .line 305
    invoke-virtual {v9}, Lz84;->g()Lc94;

    move-result-object v6

    check-cast v6, Lz44;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4e

    iget-object v6, v13, Lls4;->i:Ljava/lang/Long;

    if-nez v6, :cond_4d

    iget-object v6, v13, Lls4;->j:Ljava/lang/Long;

    if-nez v6, :cond_4d

    iget-object v6, v13, Lls4;->k:Ljava/lang/Boolean;

    if-eqz v6, :cond_4e

    :cond_4d
    const/4 v6, 0x0

    .line 307
    invoke-virtual {v13, v6, v6, v6}, Lls4;->c(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lls4;

    move-result-object v10

    .line 308
    invoke-virtual {v9}, Ly44;->t()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :cond_4e
    invoke-virtual {v8, v5, v9}, Lg54;->i0(ILy44;)Lg54;

    move-object/from16 v19, v4

    move v4, v5

    move-object/from16 p3, v7

    move-object v7, v2

    const-wide/16 v1, 0x1

    goto/16 :goto_2c

    .line 310
    :cond_4f
    invoke-virtual {v4, v12}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v15

    if-nez v15, :cond_51

    .line 311
    invoke-virtual/range {p0 .. p0}, Lj25;->Q()Ll25;

    move-object v15, v7

    int-to-long v6, v12

    .line 312
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v7, p3

    invoke-static {v9, v7, v6}, Ll25;->J(Ly44;Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    invoke-virtual {v9}, Lz84;->g()Lc94;

    move-result-object v7

    check-cast v7, Lz44;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_50

    const/4 v7, 0x0

    .line 315
    invoke-virtual {v13, v7, v6, v7}, Lls4;->c(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lls4;

    move-result-object v13

    .line 316
    :cond_50
    invoke-virtual {v9}, Ly44;->t()Ljava/lang/String;

    move-result-object v6

    move-object/from16 p3, v15

    .line 317
    invoke-virtual {v9}, Ly44;->v()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15, v10, v11}, Lls4;->b(JJ)Lls4;

    move-result-object v7

    .line 318
    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v2

    move-object/from16 v19, v4

    move v4, v5

    const-wide/16 v1, 0x1

    goto/16 :goto_2b

    :cond_51
    move-object/from16 v45, v7

    move-object/from16 v7, p3

    move-object/from16 p3, v45

    .line 319
    iget-object v15, v13, Lls4;->h:Ljava/lang/Long;

    if-eqz v15, :cond_52

    .line 320
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    move-object/from16 v22, v2

    move-object/from16 v19, v4

    move/from16 v21, v5

    goto :goto_29

    .line 321
    :cond_52
    iget-object v15, v1, Lj25;->j:Lrx4;

    .line 322
    invoke-virtual {v15}, Lrx4;->t()Lp25;

    move-result-object v15

    move-object/from16 v19, v4

    move/from16 v21, v5

    .line 323
    invoke-virtual {v9}, Ly44;->w()J

    move-result-wide v4

    move-object/from16 v22, v2

    move-wide/from16 v1, v16

    invoke-virtual {v15, v4, v5, v1, v2}, Lp25;->N(JJ)J

    move-result-wide v15

    :goto_29
    cmp-long v1, v15, v10

    if-eqz v1, :cond_54

    .line 324
    invoke-virtual/range {p0 .. p0}, Lj25;->Q()Ll25;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v5, v18

    invoke-static {v9, v5, v4}, Ll25;->J(Ly44;Ljava/lang/String;Ljava/lang/Object;)V

    .line 325
    invoke-virtual/range {p0 .. p0}, Lj25;->Q()Ll25;

    int-to-long v4, v12

    .line 326
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v9, v7, v4}, Ll25;->J(Ly44;Ljava/lang/String;Ljava/lang/Object;)V

    .line 327
    invoke-virtual {v9}, Lz84;->g()Lc94;

    move-result-object v5

    check-cast v5, Lz44;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 329
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-virtual {v13, v6, v4, v5}, Lls4;->c(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lls4;

    move-result-object v13

    .line 330
    :cond_53
    invoke-virtual {v9}, Ly44;->t()Ljava/lang/String;

    move-result-object v4

    .line 331
    invoke-virtual {v9}, Ly44;->v()J

    move-result-wide v5

    invoke-virtual {v13, v5, v6, v10, v11}, Lls4;->b(JJ)Lls4;

    move-result-object v5

    move-object/from16 v7, v22

    .line 332
    invoke-virtual {v7, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    :cond_54
    move-object/from16 v7, v22

    const-wide/16 v1, 0x1

    .line 333
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_55

    .line 334
    invoke-virtual {v9}, Ly44;->t()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v13, v6, v5, v5}, Lls4;->c(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lls4;

    move-result-object v6

    .line 335
    invoke-virtual {v7, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_55
    :goto_2a
    move/from16 v4, v21

    .line 336
    :goto_2b
    invoke-virtual {v8, v4, v9}, Lg54;->i0(ILy44;)Lg54;

    :goto_2c
    move-object/from16 v6, p0

    :goto_2d
    add-int/lit8 v5, v4, 0x1

    move-object/from16 v1, p0

    move-object v2, v7

    move-object/from16 v4, v19

    move-object/from16 v7, p3

    goto/16 :goto_22

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_3a

    :cond_56
    move-object/from16 p3, v7

    move-object v7, v2

    .line 337
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v8}, Lg54;->g0()I

    move-result v2

    if-ge v1, v2, :cond_57

    .line 338
    invoke-virtual {v8}, Lg54;->l0()Lg54;

    invoke-virtual {v8, v3}, Lg54;->k0(Ljava/lang/Iterable;)Lg54;

    .line 339
    :cond_57
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 340
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lls4;

    invoke-virtual {v3, v2}, Lgs4;->A(Lls4;)V

    goto :goto_2e

    :cond_58
    move-object/from16 p3, v7

    move-object/from16 v6, p0

    :cond_59
    move-object/from16 v1, p3

    iget-object v2, v1, Li25;->a:Lh54;

    .line 341
    invoke-virtual {v2}, Lh54;->s()Ljava/lang/String;

    move-result-object v2

    .line 342
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v3

    invoke-virtual {v3, v2}, Lgs4;->L(Ljava/lang/String;)Lvx4;

    move-result-object v3

    if-nez v3, :cond_5a

    iget-object v3, v6, Lj25;->j:Lrx4;

    .line 343
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v3

    .line 344
    invoke-virtual {v3}, Lqw4;->n()Low4;

    move-result-object v3

    const-string v4, "Bundling raw events w/o app info. appId"

    iget-object v5, v1, Li25;->a:Lh54;

    .line 345
    invoke-virtual {v5}, Lh54;->s()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 346
    invoke-virtual {v3, v4, v5}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_33

    .line 347
    :cond_5a
    invoke-virtual {v8}, Lg54;->g0()I

    move-result v4

    if-lez v4, :cond_5f

    .line 348
    invoke-virtual {v3}, Lvx4;->N()J

    move-result-wide v4

    const-wide/16 v9, 0x0

    cmp-long v7, v4, v9

    if-eqz v7, :cond_5b

    .line 349
    invoke-virtual {v8, v4, v5}, Lg54;->B0(J)Lg54;

    goto :goto_2f

    .line 350
    :cond_5b
    invoke-virtual {v8}, Lg54;->C0()Lg54;

    .line 351
    :goto_2f
    invoke-virtual {v3}, Lvx4;->L()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-nez v7, :cond_5c

    goto :goto_30

    :cond_5c
    move-wide v4, v9

    :goto_30
    cmp-long v7, v4, v11

    if-eqz v7, :cond_5d

    .line 352
    invoke-virtual {v8, v4, v5}, Lg54;->z0(J)Lg54;

    goto :goto_31

    .line 353
    :cond_5d
    invoke-virtual {v8}, Lg54;->A0()Lg54;

    .line 354
    :goto_31
    invoke-virtual {v3}, Lvx4;->n()V

    .line 355
    invoke-virtual {v3}, Lvx4;->i()J

    move-result-wide v4

    long-to-int v5, v4

    invoke-virtual {v8, v5}, Lg54;->G(I)Lg54;

    .line 356
    invoke-virtual {v8}, Lg54;->v0()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lvx4;->M(J)V

    .line 357
    invoke-virtual {v8}, Lg54;->x0()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lvx4;->O(J)V

    .line 358
    invoke-virtual {v3}, Lvx4;->o()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5e

    .line 359
    invoke-virtual {v8, v4}, Lg54;->H(Ljava/lang/String;)Lg54;

    goto :goto_32

    .line 360
    :cond_5e
    invoke-virtual {v8}, Lg54;->I()Lg54;

    .line 361
    :goto_32
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v4

    invoke-virtual {v4, v3}, Lgs4;->M(Lvx4;)V

    .line 362
    :cond_5f
    :goto_33
    invoke-virtual {v8}, Lg54;->g0()I

    move-result v3

    if-lez v3, :cond_66

    iget-object v3, v6, Lj25;->j:Lrx4;

    .line 363
    invoke-virtual {v3}, Lrx4;->o()Lc35;

    .line 364
    invoke-virtual/range {p0 .. p0}, Lj25;->J()Lkx4;

    move-result-object v3

    iget-object v4, v1, Li25;->a:Lh54;

    invoke-virtual {v4}, Lh54;->s()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkx4;->i(Ljava/lang/String;)Ln44;

    move-result-object v3

    const-wide/16 v4, -0x1

    if-eqz v3, :cond_61

    invoke-virtual {v3}, Ln44;->s()Z

    move-result v7

    if-nez v7, :cond_60

    goto :goto_34

    .line 365
    :cond_60
    invoke-virtual {v3}, Ln44;->t()J

    move-result-wide v6

    .line 366
    invoke-virtual {v8, v6, v7}, Lg54;->S(J)Lg54;

    goto :goto_35

    .line 367
    :cond_61
    :goto_34
    iget-object v3, v1, Li25;->a:Lh54;

    .line 368
    invoke-virtual {v3}, Lh54;->H()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 369
    invoke-virtual {v8, v4, v5}, Lg54;->S(J)Lg54;

    goto :goto_35

    .line 370
    :cond_62
    iget-object v3, v6, Lj25;->j:Lrx4;

    .line 371
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v3

    .line 372
    invoke-virtual {v3}, Lqw4;->p()Low4;

    move-result-object v3

    const-string v6, "Did not find measurement config or missing version info. appId"

    iget-object v7, v1, Li25;->a:Lh54;

    .line 373
    invoke-virtual {v7}, Lh54;->s()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 374
    invoke-virtual {v3, v6, v7}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 375
    :goto_35
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v3

    invoke-virtual {v8}, Lz84;->g()Lc94;

    move-result-object v6

    check-cast v6, Lh54;

    invoke-virtual {v3}, Lly4;->d()V

    invoke-virtual {v3}, Lb25;->f()V

    .line 376
    invoke-static {v6}, Lbi;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    invoke-virtual {v6}, Lh54;->s()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 378
    invoke-virtual {v6}, Lh54;->s1()Z

    move-result v7

    invoke-static {v7}, Lbi;->l(Z)V

    .line 379
    invoke-virtual {v3}, Lgs4;->Q()V

    iget-object v7, v3, Lly4;->a:Lrx4;

    .line 380
    invoke-virtual {v7}, Lrx4;->e()Lb20;

    move-result-object v7

    .line 381
    invoke-interface {v7}, Lb20;->a()J

    move-result-wide v7

    .line 382
    invoke-virtual {v6}, Lh54;->t1()J

    move-result-wide v9

    iget-object v11, v3, Lly4;->a:Lrx4;

    .line 383
    invoke-virtual {v11}, Lrx4;->p()Lcs4;

    .line 384
    invoke-static {}, Lcs4;->f()J

    move-result-wide v11

    sub-long v11, v7, v11

    cmp-long v13, v9, v11

    if-ltz v13, :cond_63

    .line 385
    invoke-virtual {v6}, Lh54;->t1()J

    move-result-wide v9

    iget-object v11, v3, Lly4;->a:Lrx4;

    .line 386
    invoke-virtual {v11}, Lrx4;->p()Lcs4;

    .line 387
    invoke-static {}, Lcs4;->f()J

    move-result-wide v11

    add-long/2addr v11, v7

    cmp-long v13, v9, v11

    if-lez v13, :cond_64

    :cond_63
    iget-object v9, v3, Lly4;->a:Lrx4;

    .line 388
    invoke-virtual {v9}, Lrx4;->a()Lqw4;

    move-result-object v9

    .line 389
    invoke-virtual {v9}, Lqw4;->p()Low4;

    move-result-object v9

    const-string v10, "Storing bundle outside of the max uploading time span. appId, now, timestamp"

    .line 390
    invoke-virtual {v6}, Lh54;->s()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 391
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 392
    invoke-virtual {v6}, Lh54;->t1()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 393
    invoke-virtual {v9, v10, v11, v7, v8}, Low4;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 394
    :cond_64
    invoke-virtual {v6}, Lt74;->a()[B

    move-result-object v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    iget-object v8, v3, Lb25;->b:Lj25;

    .line 395
    invoke-virtual {v8}, Lj25;->Q()Ll25;

    move-result-object v8

    .line 396
    invoke-virtual {v8, v7}, Ll25;->F([B)[B

    move-result-object v7
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    iget-object v8, v3, Lly4;->a:Lrx4;

    .line 397
    invoke-virtual {v8}, Lrx4;->a()Lqw4;

    move-result-object v8

    .line 398
    invoke-virtual {v8}, Lqw4;->s()Low4;

    move-result-object v8

    const-string v9, "Saving bundle, size"

    array-length v10, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v8, Landroid/content/ContentValues;

    .line 399
    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "app_id"

    .line 400
    invoke-virtual {v6}, Lh54;->s()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "bundle_end_timestamp"

    .line 401
    invoke-virtual {v6}, Lh54;->t1()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "data"

    .line 402
    invoke-virtual {v8, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v7, "has_realtime"

    .line 403
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 404
    invoke-virtual {v6}, Lh54;->u0()Z

    move-result v7

    if-eqz v7, :cond_65

    const-string v7, "retry_count"

    .line 405
    invoke-virtual {v6}, Lh54;->v0()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 406
    :cond_65
    :try_start_e
    invoke-virtual {v3}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    const-string v9, "queue"

    const/4 v10, 0x0

    .line 407
    invoke-virtual {v7, v9, v10, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7

    cmp-long v9, v7, v4

    if-nez v9, :cond_66

    iget-object v4, v3, Lly4;->a:Lrx4;

    .line 408
    invoke-virtual {v4}, Lrx4;->a()Lqw4;

    move-result-object v4

    .line 409
    invoke-virtual {v4}, Lqw4;->n()Low4;

    move-result-object v4

    const-string v5, "Failed to insert bundle (got -1). appId"

    .line 410
    invoke-virtual {v6}, Lh54;->s()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_36

    :catch_1
    move-exception v0

    move-object v4, v0

    .line 411
    :try_start_f
    iget-object v3, v3, Lly4;->a:Lrx4;

    .line 412
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v3

    .line 413
    invoke-virtual {v3}, Lqw4;->n()Low4;

    move-result-object v3

    const-string v5, "Error storing bundle. appId"

    .line 414
    invoke-virtual {v6}, Lh54;->s()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v4}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_36

    :catch_2
    move-exception v0

    move-object v4, v0

    .line 415
    iget-object v3, v3, Lly4;->a:Lrx4;

    .line 416
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v3

    .line 417
    invoke-virtual {v3}, Lqw4;->n()Low4;

    move-result-object v3

    const-string v5, "Data loss. Failed to serialize bundle. appId"

    .line 418
    invoke-virtual {v6}, Lh54;->s()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 419
    invoke-virtual {v3, v5, v6, v4}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 420
    :cond_66
    :goto_36
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v3

    iget-object v1, v1, Li25;->b:Ljava/util/List;

    .line 421
    invoke-static {v1}, Lbi;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    invoke-virtual {v3}, Lly4;->d()V

    invoke-virtual {v3}, Lb25;->f()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rowid in ("

    .line 423
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 424
    :goto_37
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_68

    if-eqz v5, :cond_67

    const-string v6, ","

    .line 425
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    :cond_67
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    :cond_68
    const-string v5, ")"

    .line 427
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v3}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "raw_events"

    .line 429
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 430
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_69

    iget-object v3, v3, Lly4;->a:Lrx4;

    .line 431
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v3

    .line 432
    invoke-virtual {v3}, Lqw4;->n()Low4;

    move-result-object v3

    const-string v5, "Deleted fewer rows from raw events table than expected"

    .line 433
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 434
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 435
    invoke-virtual {v3, v5, v4, v1}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 436
    :cond_69
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v1

    invoke-virtual {v1}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    const/4 v4, 0x2

    :try_start_10
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const-string v5, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    .line 437
    invoke-virtual {v3, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_38

    :catch_3
    move-exception v0

    move-object v3, v0

    .line 438
    :try_start_11
    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 439
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 440
    invoke-virtual {v1}, Lqw4;->n()Low4;

    move-result-object v1

    const-string v4, "Failed to remove unused event metadata. appId"

    invoke-static {v2}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 441
    invoke-virtual {v1, v4, v2, v3}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 442
    :goto_38
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v1

    invoke-virtual {v1}, Lgs4;->w()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 443
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v1

    invoke-virtual {v1}, Lgs4;->x()V

    const/4 v1, 0x1

    return v1

    .line 444
    :cond_6a
    :goto_39
    :try_start_12
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v1

    invoke-virtual {v1}, Lgs4;->w()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 445
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v1

    invoke-virtual {v1}, Lgs4;->x()V

    const/4 v1, 0x0

    return v1

    :goto_3a
    invoke-virtual/range {p0 .. p0}, Lj25;->L()Lgs4;

    move-result-object v2

    invoke-virtual {v2}, Lgs4;->x()V

    .line 446
    throw v1
.end method

.method public final z(Lg54;JZ)V
    .locals 10

    const/4 v0, 0x1

    if-eq v0, p4, :cond_0

    const-string v1, "_lte"

    goto :goto_0

    :cond_0
    const-string v1, "_se"

    .line 1
    :goto_0
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object v2

    invoke-virtual {p1}, Lg54;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lgs4;->D(Ljava/lang/String;Ljava/lang/String;)Ln25;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v2, Ln25;->e:Ljava/lang/Object;

    if-nez v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance v9, Ln25;

    .line 3
    invoke-virtual {p1}, Lg54;->t()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lj25;->j:Lrx4;

    .line 4
    iget-object v4, v4, Lrx4;->n:Lb20;

    .line 5
    invoke-interface {v4}, Lb20;->a()J

    move-result-wide v6

    iget-object v2, v2, Ln25;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v4, "auto"

    move-object v2, v9

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Ln25;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_2

    .line 7
    :cond_2
    :goto_1
    new-instance v9, Ln25;

    .line 8
    invoke-virtual {p1}, Lg54;->t()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lj25;->j:Lrx4;

    .line 9
    iget-object v2, v2, Lrx4;->n:Lb20;

    .line 10
    invoke-interface {v2}, Lb20;->a()J

    move-result-wide v6

    .line 11
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v4, "auto"

    move-object v2, v9

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Ln25;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 12
    :goto_2
    invoke-static {}, Lr54;->B()Lq54;

    move-result-object v2

    .line 13
    invoke-virtual {v2, v1}, Lq54;->o(Ljava/lang/String;)Lq54;

    iget-object v3, p0, Lj25;->j:Lrx4;

    .line 14
    iget-object v3, v3, Lrx4;->n:Lb20;

    .line 15
    invoke-interface {v3}, Lb20;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lq54;->m(J)Lq54;

    iget-object v3, v9, Ln25;->e:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 16
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lq54;->p(J)Lq54;

    .line 17
    invoke-virtual {v2}, Lz84;->g()Lc94;

    move-result-object v2

    check-cast v2, Lr54;

    .line 18
    invoke-static {p1, v1}, Ll25;->H(Lg54;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    if-ltz v1, :cond_4

    .line 19
    iget-boolean v4, p1, Lz84;->g:Z

    if-eqz v4, :cond_3

    .line 20
    invoke-virtual {p1}, Lz84;->j()V

    iput-boolean v3, p1, Lz84;->g:Z

    :cond_3
    iget-object p1, p1, Lz84;->f:Lc94;

    .line 21
    check-cast p1, Lh54;

    invoke-static {p1, v1, v2}, Lh54;->K0(Lh54;ILr54;)V

    goto :goto_3

    .line 22
    :cond_4
    iget-boolean v1, p1, Lz84;->g:Z

    if-eqz v1, :cond_5

    .line 23
    invoke-virtual {p1}, Lz84;->j()V

    iput-boolean v3, p1, Lz84;->g:Z

    :cond_5
    iget-object p1, p1, Lz84;->f:Lc94;

    .line 24
    check-cast p1, Lh54;

    invoke-static {p1, v2}, Lh54;->L0(Lh54;Lr54;)V

    :goto_3
    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-lez p1, :cond_7

    .line 25
    invoke-virtual {p0}, Lj25;->L()Lgs4;

    move-result-object p1

    invoke-virtual {p1, v9}, Lgs4;->C(Ln25;)Z

    if-eq v0, p4, :cond_6

    const-string p1, "lifetime"

    goto :goto_4

    :cond_6
    const-string p1, "session-scoped"

    :goto_4
    iget-object p2, p0, Lj25;->j:Lrx4;

    .line 26
    invoke-virtual {p2}, Lrx4;->a()Lqw4;

    move-result-object p2

    .line 27
    iget-object p2, p2, Lqw4;->n:Low4;

    .line 28
    iget-object p3, v9, Ln25;->e:Ljava/lang/Object;

    const-string p4, "Updated engagement user property. scope, value"

    .line 29
    invoke-virtual {p2, p4, p1, p3}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    return-void
.end method
