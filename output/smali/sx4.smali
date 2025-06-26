.class public final synthetic Lsx4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lky4;

.field public final f:Lcom/google/android/gms/measurement/internal/zzp;

.field public final g:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lky4;Lcom/google/android/gms/measurement/internal/zzp;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsx4;->e:Lky4;

    iput-object p2, p0, Lsx4;->f:Lcom/google/android/gms/measurement/internal/zzp;

    iput-object p3, p0, Lsx4;->g:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lsx4;->e:Lky4;

    iget-object v1, p0, Lsx4;->f:Lcom/google/android/gms/measurement/internal/zzp;

    iget-object v2, p0, Lsx4;->g:Landroid/os/Bundle;

    .line 1
    iget-object v0, v0, Lky4;->e:Lj25;

    invoke-virtual {v0}, Lj25;->L()Lgs4;

    move-result-object v0

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-virtual {v0}, Lly4;->d()V

    invoke-virtual {v0}, Lb25;->f()V

    iget-object v3, v0, Lly4;->a:Lrx4;

    .line 2
    invoke-static {v1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    const-string v4, "dep"

    .line 3
    invoke-static {v4}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    const-string v4, ""

    .line 4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_3

    .line 5
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Landroid/os/Bundle;

    .line 6
    invoke-direct {v6, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 8
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_0

    .line 10
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v7

    .line 11
    iget-object v7, v7, Lqw4;->f:Low4;

    const-string v8, "Param name can\'t be null"

    .line 12
    invoke-virtual {v7, v8}, Low4;->a(Ljava/lang/String;)V

    .line 13
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v3}, Lrx4;->t()Lp25;

    move-result-object v8

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Lp25;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    .line 15
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v8

    .line 16
    iget-object v8, v8, Lqw4;->i:Low4;

    .line 17
    invoke-virtual {v3}, Lrx4;->u()Llw4;

    move-result-object v9

    invoke-virtual {v9, v7}, Llw4;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "Param value can\'t be null"

    .line 18
    invoke-virtual {v8, v9, v7}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {v3}, Lrx4;->t()Lp25;

    move-result-object v9

    invoke-virtual {v9, v6, v7, v8}, Lp25;->z(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 21
    :cond_2
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v2, v6}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    goto :goto_1

    .line 22
    :cond_3
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzaq;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    .line 23
    :goto_1
    iget-object v3, v0, Lb25;->b:Lj25;

    invoke-virtual {v3}, Lj25;->Q()Ll25;

    move-result-object v3

    .line 24
    invoke-static {}, Lz44;->C()Ly44;

    move-result-object v6

    .line 25
    iget-boolean v7, v6, Lz84;->g:Z

    if-eqz v7, :cond_4

    .line 26
    invoke-virtual {v6}, Lz84;->j()V

    const/4 v7, 0x0

    iput-boolean v7, v6, Lz84;->g:Z

    :cond_4
    iget-object v7, v6, Lz84;->f:Lc94;

    .line 27
    check-cast v7, Lz44;

    invoke-static {v7, v4, v5}, Lz44;->L(Lz44;J)V

    .line 28
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzaq;->e:Landroid/os/Bundle;

    .line 29
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 30
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 31
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 32
    invoke-static {}, Ld54;->E()Lc54;

    move-result-object v7

    invoke-virtual {v7, v5}, Lc54;->m(Ljava/lang/String;)Lc54;

    .line 33
    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/zzaq;->n(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v8, "null reference"

    .line 34
    invoke-static {v5, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    invoke-virtual {v3, v7, v5}, Ll25;->u(Lc54;Ljava/lang/Object;)V

    .line 36
    invoke-virtual {v6, v7}, Ly44;->r(Lc54;)Ly44;

    goto :goto_2

    .line 37
    :cond_5
    invoke-virtual {v6}, Lz84;->g()Lc94;

    move-result-object v2

    check-cast v2, Lz44;

    .line 38
    invoke-virtual {v2}, Lt74;->a()[B

    move-result-object v2

    iget-object v3, v0, Lly4;->a:Lrx4;

    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v3

    .line 39
    iget-object v3, v3, Lqw4;->n:Low4;

    .line 40
    iget-object v4, v0, Lly4;->a:Lrx4;

    invoke-virtual {v4}, Lrx4;->u()Llw4;

    move-result-object v4

    invoke-virtual {v4, v1}, Llw4;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    array-length v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Saving default event parameters, appId, data size"

    invoke-virtual {v3, v6, v4, v5}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "app_id"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "parameters"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_0
    invoke-virtual {v0}, Lgs4;->y()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v4, "default_event_params"

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_6

    iget-object v2, v0, Lly4;->a:Lrx4;

    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 41
    iget-object v2, v2, Lqw4;->f:Low4;

    const-string v3, "Failed to insert default event parameters (got -1). appId"

    .line 42
    invoke-static {v1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    iget-object v0, v0, Lly4;->a:Lrx4;

    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 43
    iget-object v0, v0, Lqw4;->f:Low4;

    .line 44
    invoke-static {v1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Error storing default event parameters. appId"

    invoke-virtual {v0, v3, v1, v2}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    :goto_3
    return-void
.end method
