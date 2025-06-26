.class public Lon6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lew6; = null

.field public static b:Z = false

.field public static c:Z = true

.field public static d:Lhw6;

.field public static e:Lkw6;

.field public static f:Lep6;

.field public static g:Lj4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj4<",
            "Lip6;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static i:Z

.field public static j:I

.field public static k:J

.field public static l:Ljava/lang/String;

.field public static m:I

.field public static n:I

.field public static o:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lew6;

    invoke-direct {v0}, Lew6;-><init>()V

    sput-object v0, Lon6;->a:Lew6;

    .line 2
    new-instance v0, Lj4;

    invoke-direct {v0}, Lj4;-><init>()V

    sput-object v0, Lon6;->g:Lj4;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lon6;->h:Ljava/util/Map;

    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lon6;->i:Z

    .line 5
    sput v0, Lon6;->j:I

    const-wide/16 v1, 0x0

    .line 6
    sput-wide v1, Lon6;->k:J

    const-string v1, "local"

    .line 7
    sput-object v1, Lon6;->l:Ljava/lang/String;

    .line 8
    sput v0, Lon6;->m:I

    .line 9
    sput v0, Lon6;->n:I

    .line 10
    sput v0, Lon6;->o:I

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-static {p0}, Liw6;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static declared-synchronized b()V
    .locals 2

    const-class v0, Lon6;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lon6;->g:Lj4;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lj4;->c()V

    .line 3
    :cond_0
    sget-object v1, Lon6;->h:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized c(Landroid/content/Context;JZ)Lip6;
    .locals 5

    const-class v0, Lon6;

    monitor-enter v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    cmp-long v4, p1, v1

    if-nez v4, :cond_0

    .line 1
    monitor-exit v0

    return-object v3

    .line 2
    :cond_0
    :try_start_0
    sget-object v1, Lon6;->g:Lj4;

    .line 3
    invoke-virtual {v1, p1, p2, v3}, Lj4;->g(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Lip6;

    if-nez v1, :cond_2

    .line 5
    invoke-static {p0, p1, p2, p3}, Lip6;->c(Landroid/content/Context;JZ)Lip6;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 6
    monitor-exit v0

    return-object v3

    .line 7
    :cond_1
    :try_start_1
    sget-object p0, Lon6;->g:Lj4;

    iget-wide p1, v1, Lip6;->e:J

    invoke-virtual {p0, p1, p2, v1}, Lj4;->i(JLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized d(Landroid/content/Context;Ljava/lang/String;)J
    .locals 11

    const-class v0, Lon6;

    monitor-enter v0

    const-wide/16 v1, 0x0

    if-nez p1, :cond_0

    .line 1
    monitor-exit v0

    return-wide v1

    .line 2
    :cond_0
    :try_start_0
    sget-object v3, Lon6;->h:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_1

    .line 3
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-nez v7, :cond_4

    .line 4
    :cond_1
    sget-object v4, Lip6;->A:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v9, v4

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lip6;->A:Landroid/net/Uri;

    sget-object v7, Lip6;->D:[Ljava/lang/String;

    const-string v8, "uid = ?"

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 7
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :cond_3
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 9
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 10
    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p1

    .line 12
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 13
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lhw6;->b()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const-string v0, "subscription."

    .line 3
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lhw6;->b:Z

    if-eqz p0, :cond_0

    const-string p0, "sort2"

    goto :goto_0

    :cond_0
    const-string p0, "sort"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "newest_item_time DESC"

    return-object p0

    :cond_2
    const-string p0, "newest_item_time ASC"

    return-object p0

    :cond_3
    const-string p0, "title COLLATE NOCASE DESC"

    return-object p0

    :cond_4
    const-string p0, "title COLLATE NOCASE ASC"

    return-object p0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object p0

    .line 2
    iget-boolean v0, p0, Lhw6;->h:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {p0}, Lhw6;->b()I

    move-result v2

    if-nez v2, :cond_1

    .line 5
    iget-boolean v2, p0, Lhw6;->b:Z

    if-eqz v2, :cond_0

    const-string v2, "sub_sort ASC, sub_sort2 ASC"

    goto :goto_0

    :cond_0
    const-string v2, "sub_sort2 ASC, sub_sort ASC"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", item.sub_id ASC"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v2, "sub_title COLLATE NOCASE ASC"

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :goto_1
    invoke-virtual {p0}, Lhw6;->c()I

    move-result p0

    if-ne p0, v1, :cond_2

    const-string p0, ", item.updated_time ASC, item._id DESC"

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, ", item.updated_time DESC, item._id ASC"

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :cond_3
    invoke-virtual {p0}, Lhw6;->c()I

    move-result p0

    if-ne p0, v1, :cond_4

    const-string p0, "item.updated_time ASC, item._id DESC"

    return-object p0

    :cond_4
    const-string p0, "item.updated_time DESC, item._id ASC"

    return-object p0
.end method

.method public static g(Landroid/content/Context;)Lhw6;
    .locals 1

    .line 1
    sget-object v0, Lon6;->d:Lhw6;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lhw6;->a(Landroid/content/Context;)Lhw6;

    move-result-object p0

    sput-object p0, Lon6;->d:Lhw6;

    .line 3
    :cond_0
    sget-object p0, Lon6;->d:Lhw6;

    return-object p0
.end method

.method public static h(Landroid/content/Context;)Lkw6;
    .locals 1

    .line 1
    sget-object v0, Lon6;->e:Lkw6;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lkw6;->a(Landroid/content/Context;)Lkw6;

    move-result-object p0

    sput-object p0, Lon6;->e:Lkw6;

    .line 3
    :cond_0
    sget-object p0, Lon6;->e:Lkw6;

    return-object p0
.end method

.method public static i(Landroid/content/Context;)Lep6;
    .locals 1

    .line 1
    sget-object v0, Lon6;->f:Lep6;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lep6;

    invoke-direct {v0, p0}, Lep6;-><init>(Landroid/content/Context;)V

    .line 3
    :cond_0
    sput-object v0, Lon6;->f:Lep6;

    return-object v0
.end method

.method public static j(Landroid/content/Context;)V
    .locals 4

    .line 1
    sget-object v0, Lon6;->d:Lhw6;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lhw6;->a(Landroid/content/Context;)Lhw6;

    move-result-object p0

    sput-object p0, Lon6;->d:Lhw6;

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "feed_only"

    .line 4
    invoke-static {p0, v2, v1}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 5
    iput-boolean v2, v0, Lhw6;->b:Z

    const-string v2, "item_list_view"

    .line 6
    invoke-static {p0, v2, v1}, Liw6;->m(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 7
    iput v2, v0, Lhw6;->c:I

    .line 8
    invoke-static {p0}, Liw6;->R(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, v0, Lhw6;->d:Z

    const/4 v2, 0x1

    const-string v3, "view_unread_only"

    .line 9
    invoke-static {p0, v3, v2}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 10
    iput-boolean v2, v0, Lhw6;->e:Z

    .line 11
    invoke-static {p0}, Liw6;->l(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Lhw6;->f:I

    .line 12
    invoke-static {p0}, Liw6;->x(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Lhw6;->g:I

    const-string v2, "item_group_by_feed"

    .line 13
    invoke-static {p0, v2, v1}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 14
    iput-boolean v2, v0, Lhw6;->h:Z

    .line 15
    invoke-static {p0}, Liw6;->a0(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, v0, Lhw6;->i:Z

    .line 16
    invoke-static {p0}, Liw6;->P(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, v0, Lhw6;->j:Z

    .line 17
    invoke-static {p0}, Liw6;->O(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, v0, Lhw6;->k:Z

    const-string v2, "show_feeds_after_mark_all"

    .line 18
    invoke-static {p0, v2, v1}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 19
    iput-boolean v2, v0, Lhw6;->l:Z

    .line 20
    invoke-static {p0}, Liw6;->N(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, v0, Lhw6;->m:Z

    .line 21
    invoke-static {p0}, Liw6;->j(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Lhw6;->n:I

    .line 22
    invoke-static {p0}, Liw6;->J(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Lhw6;->o:I

    .line 23
    invoke-static {p0}, Liw6;->s(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Lhw6;->p:I

    .line 24
    invoke-static {p0}, Liw6;->o(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Lhw6;->q:I

    .line 25
    invoke-static {p0}, Liw6;->p(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Lhw6;->r:I

    .line 26
    invoke-static {p0}, Liw6;->q(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Lhw6;->s:I

    .line 27
    invoke-static {p0}, Liw6;->r(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Lhw6;->t:I

    const-string v2, "offline_save_page_on_star"

    .line 28
    invoke-static {p0, v2, v1}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    .line 29
    iput-boolean p0, v0, Lhw6;->u:Z

    :goto_0
    return-void
.end method

.method public static declared-synchronized k(J)V
    .locals 4

    const-class v0, Lon6;

    monitor-enter v0

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-eqz v3, :cond_1

    .line 1
    :try_start_0
    sget-object v1, Lon6;->g:Lj4;

    invoke-virtual {v1, p0, p1}, Lj4;->h(J)I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v1, Lon6;->g:Lj4;

    invoke-virtual {v1, p0, p1}, Lj4;->j(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 4
    :cond_1
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static l()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lon6;->d:Lhw6;

    .line 2
    sput-object v0, Lon6;->e:Lkw6;

    return-void
.end method
