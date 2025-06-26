.class public Lep6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lep6$f;,
        Lep6$h;,
        Lep6$g;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lrn6;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lep6;->a:Landroid/content/Context;

    return-void
.end method

.method public static o(Landroid/content/Context;ZLjava/lang/String;ZZLjava/lang/String;J)Landroid/database/Cursor;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p6, p7}, Lep6;->v(ZLjava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " AND "

    const-string p2, ""

    if-eqz p3, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-lez p3, :cond_0

    move-object p3, p1

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "item.cached > 0"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p4, :cond_3

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-lez p3, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, p2

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "(item.video <> \'\' OR item.audio <> \'\')"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->t:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    const/4 v5, 0x0

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static p(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2, p3, p5, p6}, Lep6;->v(ZLjava/lang/String;J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_0

    const-string p2, " AND "

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "item.sub_id IN (SELECT tag2sub.sub_id FROM tag2sub WHERE tag2sub.tag_uid = ?)"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    new-array v5, p2, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p1, v5, p2

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->t:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static q(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2, p3, p5, p6}, Lep6;->v(ZLjava/lang/String;J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_0

    const-string p2, " AND "

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "subscription.uid = ?"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    new-array v5, p2, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p1, v5, p2

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->t:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static r(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2, p3, p5, p6}, Lep6;->v(ZLjava/lang/String;J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_0

    const-string p2, " AND "

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "tag2item.item_uid = item.uid AND tag2item.tag_uid = ? AND tag2item.action >= 0"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    new-array v5, p2, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p1, v5, p2

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->t:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static s(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Landroid/database/Cursor;
    .locals 16

    move-object/from16 v1, p1

    .line 1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    const-string v0, "@"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "user/"

    const-string v4, "feed/"

    const-string v5, "podcast"

    const-string v6, "cached"

    if-eqz v2, :cond_5

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-le v0, v2, :cond_a

    add-int/lit8 v2, v0, 0x1

    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    .line 6
    invoke-virtual {v1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 7
    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v13, -0x1

    move-object/from16 v8, p0

    move/from16 v10, p2

    move-object v11, v2

    move-object/from16 v12, p3

    .line 8
    invoke-static/range {v8 .. v14}, Lep6;->q(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 9
    :cond_1
    invoke-virtual {v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v13, -0x1

    move-object/from16 v8, p0

    move/from16 v10, p2

    move-object v11, v2

    move-object/from16 v12, p3

    .line 10
    invoke-static/range {v8 .. v14}, Lep6;->p(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 11
    :cond_2
    invoke-virtual {v9, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-wide/16 v14, -0x1

    move-object/from16 v8, p0

    move/from16 v9, p2

    move-object v10, v2

    move-object/from16 v13, p3

    .line 12
    invoke-static/range {v8 .. v15}, Lep6;->o(Landroid/content/Context;ZLjava/lang/String;ZZLjava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 13
    :cond_3
    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-wide/16 v14, -0x1

    move-object/from16 v8, p0

    move/from16 v9, p2

    move-object v10, v2

    move-object/from16 v13, p3

    .line 14
    invoke-static/range {v8 .. v15}, Lep6;->o(Landroid/content/Context;ZLjava/lang/String;ZZLjava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v14, -0x1

    move-object/from16 v8, p0

    move/from16 v9, p2

    move-object v10, v2

    move-object/from16 v13, p3

    .line 15
    invoke-static/range {v8 .. v15}, Lep6;->o(Landroid/content/Context;ZLjava/lang/String;ZZLjava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 16
    :cond_5
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-wide/16 v12, -0x1

    move-object/from16 v6, p0

    move/from16 v7, p2

    move-object/from16 v11, p3

    .line 17
    invoke-static/range {v6 .. v13}, Lep6;->o(Landroid/content/Context;ZLjava/lang/String;ZZLjava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 18
    :cond_6
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-wide/16 v11, -0x1

    move-object/from16 v5, p0

    move/from16 v6, p2

    move-object/from16 v10, p3

    .line 19
    invoke-static/range {v5 .. v12}, Lep6;->o(Landroid/content/Context;ZLjava/lang/String;ZZLjava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 20
    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 21
    invoke-static/range {p1 .. p1}, Llp6;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v3, 0x0

    const-wide/16 v5, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    .line 22
    invoke-static/range {v0 .. v6}, Lep6;->r(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_8
    const/4 v3, 0x0

    const-wide/16 v5, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    .line 23
    invoke-static/range {v0 .. v6}, Lep6;->p(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 24
    :cond_9
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v3, 0x0

    const-wide/16 v5, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    .line 25
    invoke-static/range {v0 .. v6}, Lep6;->q(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_a
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v7, -0x1

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v6, p3

    .line 26
    invoke-static/range {v1 .. v8}, Lep6;->o(Landroid/content/Context;ZLjava/lang/String;ZZLjava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static t(Landroid/content/Context;Ljava/lang/String;IZ)[J
    .locals 3

    if-nez p2, :cond_0

    const/16 p2, 0x64

    .line 1
    :cond_0
    sget-object v0, Lap6;->I:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lon6;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " limit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p3, p2}, Lep6;->s(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_1

    return-object p1

    .line 2
    :cond_1
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 3
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    new-array p1, p1, [J

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    add-int/lit8 v0, p3, 0x1

    .line 4
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    aput-wide v1, p1, p3

    .line 5
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    move p3, v0

    goto :goto_0

    .line 6
    :cond_3
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 7
    throw p1
.end method

.method public static u(Landroid/content/Context;ZLjava/lang/String;ZZLjava/lang/String;J)Lvd;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p6, p7}, Lep6;->v(ZLjava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " AND "

    const-string p2, ""

    if-eqz p3, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-lez p3, :cond_0

    move-object p3, p1

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "item.cached > 0"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p4, :cond_3

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-lez p3, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, p2

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "(item.video <> \'\' OR item.audio <> \'\')"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_3
    new-instance p1, Lvd;

    sget-object v3, Lcom/noinnion/android/greader/provider/ReaderProvider;->t:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lvd;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static v(ZLjava/lang/String;J)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ")"

    if-eqz p0, :cond_1

    const-string p0, "(item.read = 0"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x0

    cmp-long p0, p2, v2

    if-lez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " OR item.read_time > "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_3

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\'"

    const-string p2, ""

    .line 5
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lep6;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_2

    const-string p1, " AND ("

    goto :goto_1

    :cond_2
    const-string p1, "("

    :goto_1
    invoke-static {v0, p1, p0, v1}, Ljo;->H(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static w(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \\| "

    .line 2
    invoke-static {p0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    if-ge v2, v1, :cond_7

    aget-object v4, p0, v2

    .line 4
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const-string v5, " OR "

    .line 6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v5, " & "

    .line 7
    invoke-static {v4, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    array-length v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_2
    if-ge v7, v6, :cond_5

    aget-object v9, v4, v7

    const-string v10, "|"

    const-string v11, ""

    .line 10
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 11
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_4

    :cond_2
    if-eqz v8, :cond_3

    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    const-string v10, " AND "

    .line 12
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const-string v10, "!"

    .line 13
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    const-string v13, "%\')"

    if-eqz v12, :cond_4

    const-string v12, "(item.title NOT LIKE \'%"

    .line 14
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "%\' OR item.content NOT LIKE \'%"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    const-string v10, "(item.title LIKE \'%"

    const-string v11, "%\' OR item.content LIKE \'%"

    .line 15
    invoke-static {v5, v10, v9, v11, v9}, Ljo;->J(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 16
    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "("

    .line 17
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 18
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static x(Landroid/content/Context;Ljava/lang/String;ZZ)Lvd;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tag2sub.sub_id = subscription._id"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "tag2sub.tag_uid = \""

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const-string p1, "subscription.hidden"

    const-string p3, " = 0"

    .line 5
    invoke-static {v0, v1, p1, p3}, Ljo;->H(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "subscription.unread_count"

    const-string p2, " > 0"

    .line 6
    invoke-static {v0, v1, p1, p2}, Ljo;->H(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    invoke-static {p0}, Lon6;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 8
    new-instance p1, Lvd;

    sget-object v4, Lip6;->A:Landroid/net/Uri;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lvd;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static y(Landroid/content/Context;ZZZZ)Lvd;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p3, :cond_0

    const-string p3, "hidden = 0"

    .line 2
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p3, " AND "

    const-string v1, ""

    if-eqz p2, :cond_2

    if-eqz p1, :cond_8

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p3, v1

    :goto_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " unread_count > 0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_2
    if-eqz p1, :cond_5

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_3

    goto :goto_1

    :cond_3
    move-object p3, v1

    :goto_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "(unread_count > 0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_4

    const-string v1, " OR type = 9"

    .line 5
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    if-eqz p4, :cond_6

    goto :goto_3

    .line 6
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p4

    if-lez p4, :cond_7

    goto :goto_2

    :cond_7
    move-object p3, v1

    :goto_2
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " type != "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x9

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_4
    if-eqz p2, :cond_9

    .line 7
    invoke-static {p0}, Lon6;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :goto_5
    move-object v7, p1

    goto :goto_7

    .line 8
    :cond_9
    invoke-static {p0}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lhw6;->b()I

    move-result p3

    const/4 p4, 0x1

    if-eq p3, p4, :cond_e

    const/4 p4, 0x2

    if-eq p3, p4, :cond_d

    const/4 p4, 0x3

    if-eq p3, p4, :cond_c

    const/4 p4, 0x4

    if-eq p3, p4, :cond_b

    .line 10
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean p1, p1, Lhw6;->b:Z

    if-eqz p1, :cond_a

    const-string p1, "sort2"

    goto :goto_6

    :cond_a
    const-string p1, "sort"

    :goto_6
    const-string p4, ", type"

    invoke-static {p3, p1, p4}, Ljo;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_b
    const-string p1, "type, newest_item_time DESC"

    goto :goto_5

    :cond_c
    const-string p1, "type, newest_item_time ASC"

    goto :goto_5

    :cond_d
    const-string p1, "type, title COLLATE NOCASE DESC"

    goto :goto_5

    :cond_e
    const-string p1, "type, title COLLATE NOCASE ASC"

    goto :goto_5

    .line 11
    :goto_7
    new-instance p1, Lvd;

    if-eqz p2, :cond_f

    sget-object p2, Lip6;->A:Landroid/net/Uri;

    goto :goto_8

    :cond_f
    sget-object p2, Lcom/noinnion/android/greader/provider/ReaderProvider;->s:Landroid/net/Uri;

    :goto_8
    move-object v3, p2

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lvd;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public A([J[J[JZZ)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    const-string v4, " = 0"

    const/4 v5, 0x1

    .line 1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    .line 2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v0, :cond_0

    .line 3
    array-length v9, v0

    if-lez v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 4
    array-length v10, v2

    if-lez v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-nez v9, :cond_2

    if-nez v10, :cond_2

    return-void

    .line 5
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 7
    iget-object v13, v1, Lep6;->a:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 8
    sget-object v15, Lcom/noinnion/android/greader/provider/ReaderProvider;->h:Landroid/net/Uri;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v13

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    const-string v15, "read_time"

    const-string v5, ")"

    const-string v7, ","

    const-string v14, " IN ("

    const-string v1, "_id"

    const-string v2, "keep_unread"

    move/from16 v20, v10

    const-string v10, "read"

    if-eqz v9, :cond_4

    .line 9
    :try_start_0
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v21, v9

    const-string v9, " AND "

    if-eqz v3, :cond_3

    .line 10
    :try_start_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_3
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v7}, Ln56;->p1(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v12, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 13
    invoke-virtual {v12, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v15, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 15
    sget-object v4, Lap6;->B:Landroid/net/Uri;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v11}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    invoke-virtual {v13, v4, v12, v9, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    move/from16 v21, v9

    :goto_2
    if-eqz v20, :cond_6

    const/4 v0, 0x0

    .line 16
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 17
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-static {v0, v7}, Ln56;->p1(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 19
    invoke-virtual {v12, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 20
    invoke-virtual {v12, v15, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v3, :cond_5

    .line 21
    invoke-virtual {v12, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 22
    :cond_5
    sget-object v1, Lap6;->B:Landroid/net/Uri;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v11}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    const/4 v4, 0x0

    invoke-virtual {v13, v1, v12, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_5

    :cond_6
    move-object/from16 v0, p2

    :goto_3
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    .line 23
    :try_start_2
    invoke-virtual {v1, v2}, Lep6;->Z([J)V

    .line 24
    sget-object v15, Lcom/noinnion/android/greader/provider/ReaderProvider;->i:Landroid/net/Uri;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v13

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 25
    sget-object v15, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v13

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 26
    iget-object v2, v1, Lep6;->a:Landroid/content/Context;

    const/4 v4, 0x1

    .line 27
    invoke-static {v2, v4, v4}, Ln56;->I1(Landroid/content/Context;ZZ)V

    if-eqz v21, :cond_7

    if-eqz p5, :cond_7

    .line 28
    :try_start_3
    invoke-virtual/range {p0 .. p1}, Lep6;->N([J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    nop

    :cond_7
    :goto_4
    if-eqz v20, :cond_8

    .line 29
    :try_start_4
    invoke-virtual {v1, v0, v3}, Lep6;->P([JZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    :cond_8
    return-void

    :catchall_3
    move-exception v0

    .line 30
    :goto_5
    sget-object v15, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v13

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 31
    throw v0
.end method

.method public B([J[J[JZZ)V
    .locals 1

    .line 1
    new-instance v0, Lep6$g;

    invoke-direct {v0, p0, p4, p5}, Lep6$g;-><init>(Lep6;ZZ)V

    const/4 p4, 0x3

    new-array p4, p4, [[J

    const/4 p5, 0x0

    aput-object p1, p4, p5

    const/4 p1, 0x1

    aput-object p2, p4, p1

    const/4 p1, 0x2

    aput-object p3, p4, p1

    .line 2
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 3
    invoke-virtual {v0, p1, p4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public C(Lip6;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    invoke-virtual {p0}, Lep6;->m()Lrn6;

    move-result-object v2

    invoke-virtual {v2, p2}, Lrn6;->getCategoryUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v3, Llp6;

    invoke-direct {v3}, Llp6;-><init>()V

    .line 5
    iput-object v2, v3, Llp6;->f:Ljava/lang/String;

    .line 6
    iput-object p2, v3, Llp6;->i:Ljava/lang/String;

    const-string p2, ""

    .line 7
    iput-object p2, v3, Llp6;->h:Ljava/lang/String;

    const/16 p2, 0xb

    .line 8
    iput p2, v3, Llp6;->g:I

    .line 9
    invoke-virtual {p0, v3, v0, v1}, Lep6;->U(Llp6;J)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v2, p2, v0

    .line 10
    invoke-virtual {p0, p1, p2}, Lep6;->a(Lip6;[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public D(Lap6;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    invoke-virtual {p0}, Lep6;->m()Lrn6;

    move-result-object v2

    invoke-virtual {v2, p2}, Lrn6;->getTagUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v3, Llp6;

    invoke-direct {v3}, Llp6;-><init>()V

    .line 5
    iput-object v2, v3, Llp6;->f:Ljava/lang/String;

    .line 6
    iput-object p2, v3, Llp6;->i:Ljava/lang/String;

    const-string p2, ""

    .line 7
    iput-object p2, v3, Llp6;->h:Ljava/lang/String;

    const/16 p2, 0xa

    .line 8
    iput p2, v3, Llp6;->g:I

    .line 9
    invoke-virtual {p0, v3, v0, v1}, Lep6;->U(Llp6;J)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v2, p2, v0

    .line 10
    invoke-virtual {p0, p1, p2}, Lep6;->c(Lap6;[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public E()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lep6;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->f:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 3
    invoke-virtual {p0}, Lep6;->Y()V

    .line 4
    iget-object v0, p0, Lep6;->a:Landroid/content/Context;

    const/4 v1, 0x1

    .line 5
    invoke-static {v0, v1, v1}, Ln56;->I1(Landroid/content/Context;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public F(Lip6;[Ljava/lang/String;)V
    .locals 10

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lep6;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->h:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 4
    :try_start_0
    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    aget-object v5, p2, v3

    const-string v6, "sub_id = ? AND tag_uid = ?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    .line 5
    iget-wide v8, p1, Lip6;->e:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    aput-object v5, v7, v4

    .line 6
    sget-object v4, Lkp6;->e:Landroid/net/Uri;

    invoke-virtual {v0, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array v1, v4, [J

    .line 7
    iget-wide v3, p1, Lip6;->e:J

    aput-wide v3, v1, v2

    invoke-virtual {p0, v1}, Lep6;->Z([J)V

    .line 8
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->i:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 10
    iget-object v0, p1, Lip6;->h:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p0, p1, v0, p2, v1}, Lep6;->K(Lip6;Ljava/lang/String;[Ljava/lang/String;I)V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 12
    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public G(J)V
    .locals 12

    .line 1
    iget-object v0, p0, Lep6;->a:Landroid/content/Context;

    const-string v1, "cache_auto_clean_read"

    .line 2
    invoke-static {v0, v1}, Liw6;->F(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 5
    :goto_0
    iget-object v2, p0, Lep6;->a:Landroid/content/Context;

    const-string v3, "cache_auto_clean_unread"

    .line 6
    invoke-static {v2, v3}, Liw6;->F(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-gez v0, :cond_2

    if-gez v2, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object v3, p0, Lep6;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 10
    sget-object v5, Lcom/noinnion/android/greader/provider/ReaderProvider;->h:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 11
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    .line 13
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v7, 0x5265c00

    if-ltz v0, :cond_3

    int-to-long v9, v0

    mul-long v9, v9, v7

    sub-long v9, v4, v9

    const-string v11, "(item.read = 1 AND ((item.read_time <> 0 AND item.read_time < "

    .line 14
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ") OR (item.read_time = 0 AND item.sync_time < "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ")))"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    const-string v9, ")"

    if-lez v2, :cond_5

    int-to-long v10, v2

    mul-long v10, v10, v7

    sub-long/2addr v4, v10

    if-ltz v0, :cond_4

    :try_start_1
    const-string v0, " OR "

    goto :goto_2

    :cond_4
    const-string v0, ""

    .line 15
    :goto_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(item.read = 0 AND item.sync_time < "

    .line 16
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :cond_5
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v0, p0, Lep6;->a:Landroid/content/Context;

    const-string v2, "cache_keep_starred"

    .line 19
    invoke-static {v0, v2, v1}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, " AND item.starred = 0"

    .line 20
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_6
    iget-object v0, p0, Lep6;->a:Landroid/content/Context;

    const-string v1, "cache_keep_cached"

    const/4 v2, 0x0

    .line 22
    invoke-static {v0, v1, v2}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, " AND item.cached = 0"

    .line 23
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :cond_7
    invoke-virtual {p0}, Lep6;->n()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_8

    const-string v0, " AND item.sync_time < "

    .line 25
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    :cond_8
    sget-object p1, Lap6;->B:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {v3, p1, p2, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_9

    .line 27
    sget-object p1, Lcom/noinnion/android/greader/provider/ReaderProvider;->r:Landroid/net/Uri;

    invoke-virtual {v3, p1, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 28
    invoke-virtual {p0}, Lep6;->Y()V

    .line 29
    :cond_9
    sget-object v5, Lcom/noinnion/android/greader/provider/ReaderProvider;->i:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    sget-object v5, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    return-void

    :catchall_0
    move-exception p1

    sget-object v5, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 31
    throw p1
.end method

.method public H(Lap6;[Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1
    array-length v0, p2

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lep6;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->h:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 4
    :try_start_0
    array-length v1, p2

    const/4 v7, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    const-string v4, "item_uid = ? AND tag_uid = ?"

    new-array v5, v8, [Ljava/lang/String;

    .line 5
    iget-object v6, p1, Lap6;->f:Ljava/lang/String;

    aput-object v6, v5, v7

    aput-object v3, v5, v9

    .line 6
    sget-object v3, Ljp6;->e:Landroid/net/Uri;

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-array v1, v9, [J

    .line 7
    iget-wide v2, p1, Lap6;->g:J

    aput-wide v2, v1, v7

    invoke-virtual {p0, v1}, Lep6;->Z([J)V

    .line 8
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->i:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 10
    iget-object v0, p0, Lep6;->a:Landroid/content/Context;

    iget-wide v1, p1, Lap6;->g:J

    invoke-static {v0, v1, v2, v7}, Lip6;->c(Landroid/content/Context;JZ)Lip6;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/String;

    .line 11
    iget-object p1, p1, Lap6;->f:Ljava/lang/String;

    aput-object p1, v1, v7

    if-eqz v0, :cond_2

    new-array p1, v9, [Ljava/lang/String;

    iget-object v0, v0, Lip6;->f:Ljava/lang/String;

    aput-object v0, p1, v7

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, v1, p1, p2, v8}, Lep6;->J([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 13
    throw p1

    :cond_3
    :goto_2
    return-void
.end method

.method public I(J)Lcw6;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    move-object/from16 v10, p0

    move-wide/from16 v11, p1

    const-string v0, "history._id"

    const-string v1, "history.type"

    const-string v2, "history.sync_time"

    const-string v3, "history.params"

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v16

    .line 2
    new-instance v0, Lvd;

    iget-object v14, v10, Lep6;->a:Landroid/content/Context;

    sget-object v15, Lzo6;->h:Landroid/net/Uri;

    const-string v17, "history.done = 0 AND history.type != 4"

    const/16 v18, 0x0

    const-string v19, "history.sync_time DESC"

    move-object v13, v0

    invoke-direct/range {v13 .. v19}, Lvd;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lvd;->k()Landroid/database/Cursor;

    move-result-object v1

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v1, :cond_0

    goto/16 :goto_c

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lep6;->m()Lrn6;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 5
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 6
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 7
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 8
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v13, "&"

    const-string v8, "&t="

    const/4 v15, 0x5

    if-eq v5, v9, :cond_e

    if-eq v5, v14, :cond_e

    const/4 v14, 0x2

    if-eq v5, v14, :cond_e

    if-ne v5, v15, :cond_1

    goto/16 :goto_7

    :cond_1
    const/4 v2, 0x6

    if-ne v5, v2, :cond_2

    .line 9
    :try_start_1
    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "&dest="

    .line 10
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v2, :cond_c

    if-le v3, v2, :cond_c

    const/4 v8, 0x2

    .line 11
    invoke-virtual {v4, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v2, v2, 0x3

    .line 12
    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x6

    .line 13
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-virtual {v0, v13, v2, v3}, Lrn6;->renameTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_5

    :cond_2
    const/4 v2, 0x7

    if-ne v5, v2, :cond_3

    .line 15
    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_c

    const/4 v3, 0x2

    .line 16
    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v2, v2, 0x3

    .line 17
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {v0, v8, v2}, Lrn6;->disableTag(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_5

    :cond_3
    const/16 v2, 0x8

    if-ne v5, v2, :cond_c

    .line 19
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    const/4 v14, 0x0

    .line 21
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_a

    .line 22
    invoke-virtual {v4, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-lez v15, :cond_4

    const/4 v9, 0x0

    .line 23
    invoke-virtual {v4, v9, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v9, v20

    goto :goto_2

    :cond_4
    move-object v9, v4

    :goto_2
    move-wide/from16 v20, v6

    const-string v6, "s="

    .line 24
    invoke-virtual {v9, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x2

    .line 25
    invoke-virtual {v9, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    :cond_5
    const-string v6, "i="

    .line 26
    invoke-virtual {v9, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x2

    .line 27
    invoke-virtual {v9, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_6
    const-string v6, "a="

    .line 28
    invoke-virtual {v9, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x2

    .line 29
    invoke-virtual {v9, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    const-string v6, "r="

    .line 30
    invoke-virtual {v9, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x2

    .line 31
    invoke-virtual {v9, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    if-lez v15, :cond_9

    add-int/lit8 v15, v15, 0x1

    .line 32
    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_9
    const-string v4, ""

    :goto_4
    move-wide/from16 v6, v20

    const/4 v9, 0x1

    goto :goto_1

    :cond_a
    move-wide/from16 v20, v6

    .line 33
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_b

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v8, v6, v7

    new-array v9, v4, [Ljava/lang/String;

    aput-object v14, v9, v7

    .line 34
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v0, v6, v9, v3, v4}, Lrn6;->editItemTag([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)Z

    .line 35
    :cond_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_d

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v8, v4, v6

    new-array v7, v3, [Ljava/lang/String;

    aput-object v14, v7, v6

    .line 36
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v4, v7, v2, v3}, Lrn6;->editItemTag([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)Z

    goto :goto_6

    :cond_c
    :goto_5
    move-wide/from16 v20, v6

    :cond_d
    :goto_6
    move v13, v5

    move-wide/from16 v14, v20

    goto/16 :goto_a

    :cond_e
    :goto_7
    move-wide/from16 v20, v6

    .line 37
    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_10

    const/4 v7, 0x2

    .line 38
    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v7, v6, 0x1

    .line 39
    invoke-virtual {v4, v13, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    add-int/lit8 v6, v6, 0x3

    if-lez v7, :cond_f

    goto :goto_8

    .line 40
    :cond_f
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    :goto_8
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_9

    :cond_10
    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_9
    if-ne v5, v15, :cond_13

    const-string v2, "&a="

    .line 41
    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "&r="

    .line 42
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v7, ";"

    if-lez v2, :cond_11

    add-int/lit8 v2, v2, 0x3

    .line 43
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    move-object v2, v0

    move-object v3, v8

    move-object v4, v6

    move v13, v5

    move-object v5, v8

    move-wide/from16 v14, v20

    move-object v6, v7

    move v7, v9

    .line 45
    invoke-virtual/range {v2 .. v7}, Lrn6;->editSubscription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Z

    goto :goto_a

    :cond_11
    move v13, v5

    move-wide/from16 v14, v20

    if-lez v3, :cond_12

    add-int/lit8 v2, v2, 0x3

    .line 46
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x5

    move-object v2, v0

    move-object v3, v8

    move-object v4, v6

    move-object v5, v8

    move-object v6, v7

    move v7, v9

    .line 48
    invoke-virtual/range {v2 .. v7}, Lrn6;->editSubscription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Z

    goto :goto_a

    :cond_12
    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v2, v0

    move-object v3, v8

    move-object v4, v6

    move-object v5, v8

    move-object v6, v7

    move v7, v9

    .line 49
    invoke-virtual/range {v2 .. v7}, Lrn6;->editSubscription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Z

    goto :goto_a

    :cond_13
    move v13, v5

    move-wide/from16 v14, v20

    .line 50
    invoke-virtual {v0, v8, v6, v2, v3}, Lrn6;->markAllAsRead(Ljava/lang/String;Ljava/lang/String;J)Z

    .line 51
    :goto_a
    invoke-virtual {v10, v14, v15}, Lep6;->f(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x1

    if-ne v13, v2, :cond_14

    goto :goto_b

    :cond_14
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v14, 0x3

    const/4 v15, 0x2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_13

    :catch_0
    move-exception v0

    .line 52
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :cond_15
    :goto_b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 54
    :goto_c
    invoke-virtual/range {p0 .. p2}, Lep6;->S(J)V

    .line 55
    iget-object v0, v10, Lep6;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v0, "item.uid"

    const-string v1, "tag2item.tag_uid"

    const-string v2, "tag2item.action"

    const-string v3, "tag2item._id"

    const-string v4, "item.sub_id"

    .line 56
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v23

    .line 57
    new-instance v0, Lvd;

    iget-object v1, v10, Lep6;->a:Landroid/content/Context;

    sget-object v22, Ljp6;->e:Landroid/net/Uri;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v24, "item.uid = tag2item.item_uid AND tag2item.action <> 0"

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    invoke-direct/range {v20 .. v26}, Lvd;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lvd;->k()Landroid/database/Cursor;

    move-result-object v14

    if-nez v14, :cond_16

    const/4 v15, 0x1

    goto :goto_f

    .line 58
    :cond_16
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->h:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v13

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 59
    :goto_d
    :try_start_4
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v1, 0x0

    .line 60
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    .line 61
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x2

    .line 62
    invoke-interface {v14, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v8, 0x3

    .line 63
    invoke-interface {v14, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v1, 0x4

    .line 64
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 65
    iget-object v1, v10, Lep6;->a:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v1, v8, v9, v7}, Lip6;->c(Landroid/content/Context;JZ)Lip6;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_d

    :cond_17
    const/4 v8, 0x1

    if-ne v0, v8, :cond_18

    const/4 v0, 0x1

    goto :goto_e

    :cond_18
    const/4 v0, 0x0

    .line 66
    :goto_e
    iget-object v5, v1, Lip6;->f:Ljava/lang/String;

    move-object/from16 v1, p0

    const/4 v9, 0x0

    move v7, v0

    const/4 v15, 0x1

    const/16 v17, 0x3

    move-wide/from16 v8, p1

    invoke-virtual/range {v1 .. v9}, Lep6;->V(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    goto :goto_d

    :cond_19
    const/4 v15, 0x1

    .line 67
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->i:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v13

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 68
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 69
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v13

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 70
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lep6;->M()Z

    .line 71
    new-instance v0, Lcw6;

    invoke-direct {v0}, Lcw6;-><init>()V

    .line 72
    iget-object v1, v10, Lep6;->a:Landroid/content/Context;

    const-string v2, "sync_notifiable_custom"

    .line 73
    invoke-static {v1, v2, v15}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 74
    new-instance v1, Lvd;

    iget-object v3, v10, Lep6;->a:Landroid/content/Context;

    sget-object v4, Lip6;->A:Landroid/net/Uri;

    sget-object v5, Lip6;->D:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v6, "notification = 1"

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lvd;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lvd;->k()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1a

    const/4 v2, 0x0

    goto :goto_11

    .line 75
    :cond_1a
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 76
    :goto_10
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v3, 0x0

    .line 77
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_10

    .line 78
    :cond_1b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 79
    :goto_11
    iput-object v2, v0, Lcw6;->b:Landroid/util/SparseIntArray;

    goto :goto_12

    :catchall_1
    move-exception v0

    .line 80
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 81
    throw v0

    .line 82
    :cond_1c
    :goto_12
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lep6;->m()Lrn6;

    move-result-object v7

    .line 83
    iget-object v1, v10, Lep6;->a:Landroid/content/Context;

    invoke-static {v1}, Liw6;->I(Landroid/content/Context;)I

    move-result v3

    .line 84
    new-instance v8, Lfp6;

    move-object v1, v8

    move-object/from16 v2, p0

    move-wide/from16 v4, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lfp6;-><init>(Lep6;IJLcw6;)V

    invoke-virtual {v7, v8, v11, v12}, Lrn6;->handleItemList(Lrn6$b;J)V

    .line 85
    iget-object v1, v10, Lep6;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->n:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catch Lgw6$b; {:try_start_6 .. :try_end_6} :catch_1

    .line 86
    iget-object v1, v10, Lep6;->a:Landroid/content/Context;

    const-string v2, "sync_server_reads"

    .line 87
    invoke-static {v1, v2, v15}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 88
    invoke-virtual/range {p0 .. p0}, Lep6;->m()Lrn6;

    move-result-object v1

    .line 89
    new-instance v2, Ldp6;

    invoke-direct {v2, v10}, Ldp6;-><init>(Lep6;)V

    invoke-virtual {v1, v2, v11, v12}, Lrn6;->handleItemIdList(Lrn6$a;J)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 90
    iget-object v1, v10, Lep6;->a:Landroid/content/Context;

    .line 91
    invoke-static {v1, v15, v15}, Ln56;->I1(Landroid/content/Context;ZZ)V

    .line 92
    :cond_1d
    iget-object v1, v10, Lep6;->a:Landroid/content/Context;

    const-string v2, "sync_include_starred"

    const/4 v3, 0x0

    .line 93
    invoke-static {v1, v2, v3}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 94
    iget v7, v0, Lcw6;->a:I

    const/4 v5, 0x1

    iget-object v1, v10, Lep6;->a:Landroid/content/Context;

    invoke-static {v1}, Liw6;->I(Landroid/content/Context;)I

    move-result v6

    const-string v2, "state/starred"

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    invoke-virtual/range {v1 .. v6}, Lep6;->W(Ljava/lang/String;JZI)I

    move-result v1

    add-int/2addr v1, v7

    iput v1, v0, Lcw6;->a:I

    :cond_1e
    return-object v0

    :catch_1
    move-exception v0

    .line 95
    new-instance v1, Lgw6$b;

    invoke-direct {v1, v0}, Lgw6$b;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_2
    move-exception v0

    .line 96
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 97
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v13

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 98
    throw v0

    .line 99
    :goto_13
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 100
    throw v0
.end method

.method public J([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lep6;->m()Lrn6;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lrn6;->editItemTag([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ","

    if-eqz p2, :cond_0

    .line 3
    array-length v2, p2

    if-lez v2, :cond_0

    const-string v2, "s="

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p2, "&i="

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    if-eq p4, p1, :cond_3

    const/4 p1, 0x2

    if-eq p4, p1, :cond_2

    const/4 p1, 0x3

    if-eq p4, p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "&n="

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string p1, "&r="

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string p1, "&a="

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 p1, 0x8

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lep6;->z(ILjava/lang/String;J)V

    :goto_1
    return-void
.end method

.method public final K(Lip6;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p3, :cond_1

    .line 2
    :try_start_0
    array-length v2, p3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v8, p4

    goto :goto_1

    :catch_0
    nop

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v2, 0x1

    const/4 v8, 0x1

    .line 3
    :goto_1
    invoke-virtual {p0}, Lep6;->m()Lrn6;

    move-result-object v3

    iget-object v4, p1, Lip6;->f:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v5, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v8}, Lrn6;->editSubscription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_2
    const-string v2, "s="

    .line 4
    invoke-static {v2}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5
    iget-object p1, p1, Lip6;->f:Ljava/lang/String;

    const-string v3, "&t="

    invoke-static {v2, p1, v3, p2}, Ljo;->H(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    if-eqz p3, :cond_5

    const/4 p2, 0x4

    const-string v3, ","

    if-eq p4, p2, :cond_4

    if-eq p4, p1, :cond_3

    const/4 p2, 0x6

    if-eq p4, p2, :cond_2

    goto :goto_3

    :cond_2
    const-string p2, "&n="

    .line 6
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    const-string p2, "&r="

    .line 7
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const-string p2, "&a="

    .line 8
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_5
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lep6;->z(ILjava/lang/String;J)V

    :goto_4
    return-void
.end method

.method public L(Ljava/util/List;JLcw6;I)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lap6;",
            ">;J",
            "Lcw6;",
            "I)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    move/from16 v2, p5

    .line 1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    move-object/from16 v7, p1

    .line 4
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lap6;

    if-lez v6, :cond_0

    const-string v9, ","

    .line 5
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v9, "\'"

    .line 6
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v8, Lap6;->f:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v7, p1

    .line 7
    iget-object v9, v1, Lep6;->a:Landroid/content/Context;

    const-string v6, "uid IN ("

    invoke-static {v6}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ")"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 8
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 9
    new-instance v16, Lvd;

    sget-object v10, Lap6;->B:Landroid/net/Uri;

    sget-object v11, Lap6;->J:[Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v8, v16

    invoke-direct/range {v8 .. v14}, Lvd;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lvd;->k()Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 11
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_1

    .line 12
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 13
    :goto_2
    iget-object v5, v1, Lep6;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 14
    sget-object v9, Lcom/noinnion/android/greader/provider/ReaderProvider;->h:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v5

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 15
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v10, " IN  ("

    const/4 v11, 0x0

    const-string v12, "sync_time"

    const/4 v13, 0x1

    if-lez v2, :cond_5

    :try_start_2
    const-string v14, "uid"

    .line 17
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v2, v13, :cond_4

    const-string v2, " AND read = 0"

    .line 18
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    :cond_4
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v12, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 20
    sget-object v2, Lap6;->B:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v2, v9, v13, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 21
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/ContentValues;

    .line 22
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v9, 0x0

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v13, "item_uid"

    if-eqz v11, :cond_1a

    :try_start_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lap6;

    .line 23
    iget-object v14, v11, Lap6;->f:Ljava/lang/String;

    if-eqz v14, :cond_18

    .line 24
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_6

    goto/16 :goto_c

    .line 25
    :cond_6
    iget-object v15, v1, Lep6;->a:Landroid/content/Context;

    move-object/from16 p1, v7

    iget-object v7, v11, Lap6;->z:Ljava/lang/String;

    move-object/from16 v16, v8

    invoke-static {v15, v7}, Lon6;->d(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v11, Lap6;->g:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-wide/16 v17, 0x0

    cmp-long v15, v7, v17

    if-lez v15, :cond_7

    .line 26
    :try_start_4
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 27
    :cond_7
    :try_start_5
    iget-object v7, v11, Lap6;->k:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const-string v8, ""

    if-eqz v7, :cond_8

    :try_start_6
    const-string v15, "http://news.google.com/news"

    invoke-virtual {v7, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 28
    iget-object v7, v11, Lap6;->k:Ljava/lang/String;

    const-string v15, "http://news.google.com/news/url.*?url="

    invoke-virtual {v7, v15, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v11, Lap6;->k:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 29
    :cond_8
    :try_start_7
    iget-object v7, v11, Lap6;->k:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v7, :cond_a

    :try_start_8
    const-string v15, "https://www.google.com/url?"

    invoke-virtual {v7, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 30
    iget-object v7, v11, Lap6;->k:Ljava/lang/String;

    const-string v15, "https://www.google.com/url\\?.*?url="

    invoke-virtual {v7, v15, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v11, Lap6;->k:Ljava/lang/String;

    const-string v8, "&"

    .line 31
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-le v7, v8, :cond_9

    .line 32
    iget-object v8, v11, Lap6;->k:Ljava/lang/String;

    add-int/lit8 v7, v7, -0x1

    const/4 v15, 0x0

    invoke-virtual {v8, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v11, Lap6;->k:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_9
    :goto_4
    const/4 v7, 0x1

    goto :goto_5

    :cond_a
    const/4 v7, 0x0

    .line 33
    :goto_5
    :try_start_9
    invoke-virtual {v11}, Lap6;->p()Z

    move-result v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/4 v15, 0x2

    if-nez v8, :cond_12

    .line 34
    :try_start_a
    iget-object v8, v11, Lap6;->i:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-nez v7, :cond_b

    const/16 v17, 0x1

    goto :goto_6

    :cond_b
    const/16 v17, 0x0

    :goto_6
    if-eqz v17, :cond_c

    :try_start_b
    const-string v17, "<img [^>]*?src=[\"\'](http.*?[\\.](jpeg|jpg|png|gif)).*?[\"\']"
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :cond_c
    :try_start_c
    const-string v17, "<img [^>]*?src=[\"\'](.*?)[\"\']"

    :goto_7
    move-object/from16 v1, v17

    .line 35
    invoke-static {v1, v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 36
    invoke-virtual {v1, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_d

    const/4 v8, 0x1

    .line 38
    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_d
    const/4 v1, 0x0

    :goto_8
    if-eqz v1, :cond_e

    const-string v8, "gif"

    .line 39
    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    const-string v7, "img/gif"

    .line 40
    invoke-virtual {v11, v1, v7}, Lap6;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_9

    :cond_e
    const-string v8, "image/thumbnail"

    if-eqz v1, :cond_10

    :try_start_d
    const-string v15, "png"

    .line 41
    invoke-virtual {v1, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_f

    const-string v15, "jpg"

    invoke-virtual {v1, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_f

    const-string v15, "jpeg"

    invoke-virtual {v1, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 42
    :cond_f
    invoke-virtual {v11, v1, v8}, Lap6;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_10
    if-eqz v7, :cond_12

    if-eqz v1, :cond_12

    const-string v7, "//"

    .line 43
    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 44
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "http:"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    :cond_11
    invoke-virtual {v11, v1, v8}, Lap6;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 46
    :catch_0
    :cond_12
    :goto_9
    :try_start_e
    invoke-virtual {v11}, Lap6;->s()Landroid/content/ContentValues;

    move-result-object v1

    .line 47
    invoke-virtual {v6, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    const-string v8, "read_time"

    if-nez v7, :cond_15

    .line 48
    :try_start_f
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v12, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 49
    iget-boolean v7, v11, Lap6;->v:Z

    if-eqz v7, :cond_13

    .line 50
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_13
    add-int/lit8 v7, v9, 0x1

    .line 51
    aput-object v1, v2, v9

    .line 52
    iget-wide v8, v11, Lap6;->g:J

    long-to-int v1, v8

    .line 53
    iget v8, v0, Lcw6;->a:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v0, Lcw6;->a:I

    if-lez v1, :cond_14

    .line 54
    iget-object v8, v0, Lcw6;->b:Landroid/util/SparseIntArray;

    if-eqz v8, :cond_14

    invoke-virtual {v8, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v8

    const/4 v9, -0x1

    if-le v8, v9, :cond_14

    .line 55
    iget-object v8, v0, Lcw6;->b:Landroid/util/SparseIntArray;

    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v1, v9}, Landroid/util/SparseIntArray;->put(II)V

    :cond_14
    move v9, v7

    goto :goto_a

    .line 56
    :cond_15
    iget-boolean v7, v11, Lap6;->r:Z

    if-eqz v7, :cond_16

    .line 57
    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v7, "read"

    .line 58
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v7, "uid = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v14, v8, v15

    .line 60
    sget-object v15, Lap6;->B:Landroid/net/Uri;

    invoke-virtual {v5, v15, v1, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 61
    :cond_16
    :goto_a
    iget-object v1, v11, Lap6;->y:Ljava/util/List;

    if-eqz v1, :cond_19

    .line 62
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_19

    const-string v7, "item_uid = ? AND tag_uid = ?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v14, v8, v11

    const/4 v11, 0x0

    const/4 v15, 0x1

    aput-object v11, v8, v15

    .line 63
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 64
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 65
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 66
    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tag_uid"

    .line 67
    invoke-virtual {v11, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v0, 0x1

    aput-object v15, v8, v0

    .line 69
    sget-object v0, Ljp6;->e:Landroid/net/Uri;

    invoke-virtual {v5, v0, v11, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_17

    .line 70
    invoke-virtual {v5, v0, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_17
    move-object/from16 v0, p4

    goto :goto_b

    :cond_18
    :goto_c
    move-object/from16 p1, v7

    move-object/from16 v16, v8

    :cond_19
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p4

    move-object/from16 v8, v16

    goto/16 :goto_3

    :cond_1a
    move-object/from16 v16, v8

    .line 71
    sget-object v0, Lcom/noinnion/android/greader/provider/ReaderProvider;->k:Landroid/net/Uri;

    invoke-virtual {v5, v0, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    const/4 v0, 0x0

    move-object/from16 v1, v16

    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 73
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v0, ") AND "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " <> ?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 74
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v0, v4

    .line 75
    sget-object v2, Ljp6;->e:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v2, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 76
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_1b

    .line 77
    invoke-static {v3}, Ln56;->B(Ljava/util/Set;)[J

    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-object/from16 v1, p0

    :try_start_10
    invoke-virtual {v1, v0}, Lep6;->Z([J)V

    .line 78
    iget-object v0, v1, Lep6;->a:Landroid/content/Context;

    const/4 v2, 0x1

    .line 79
    invoke-static {v0, v2, v2}, Ln56;->I1(Landroid/content/Context;ZZ)V

    goto :goto_d

    :cond_1b
    move-object/from16 v1, p0

    .line 80
    :goto_d
    sget-object v8, Lcom/noinnion/android/greader/provider/ReaderProvider;->i:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v5

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 81
    sget-object v8, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v5

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    return-void

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    :goto_e
    sget-object v8, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v5

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 82
    throw v0

    :catchall_2
    move-exception v0

    .line 83
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 84
    throw v0
.end method

.method public M()Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lep6;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item."

    .line 5
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "sync_time"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " < "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "read_time"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AND "

    const-string v4, "read"

    const-string v5, " = 1"

    .line 6
    invoke-static {v10, v3, v2, v4, v5}, Ljo;->J(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "subscription."

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "uid"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " IS NOT NULL"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v14, v12

    const/4 v13, 0x1

    :goto_0
    if-lez v3, :cond_b

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    const/4 v15, 0x0

    .line 11
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 12
    sget-object v3, Lap6;->B:Landroid/net/Uri;

    sget-object v4, Lap6;->G:[Ljava/lang/String;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v10}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    const/4 v6, 0x0

    const-string v7, " limit 250"

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    const/4 v7, 0x0

    goto :goto_1

    .line 13
    :cond_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v7, v3

    :goto_1
    if-nez v7, :cond_2

    if-eqz v2, :cond_1

    .line 14
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    return v15

    :cond_2
    const/4 v3, 0x1

    .line 15
    :goto_2
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_4

    if-eqz v14, :cond_3

    .line 16
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_3

    .line 17
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return v15

    .line 18
    :cond_3
    :try_start_2
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v14, v3

    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    const-string v4, ","

    .line 19
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :goto_3
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    .line 22
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 23
    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_6

    return v15

    .line 25
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lep6;->m()Lrn6;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lrn6;->markAsRead([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 26
    sget-object v3, Lcom/noinnion/android/greader/provider/ReaderProvider;->h:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    move-object v2, v8

    move v15, v7

    move-object v7, v13

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 27
    :try_start_3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "ids"

    .line 28
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget-object v3, Lcom/noinnion/android/greader/provider/ReaderProvider;->l:Landroid/net/Uri;

    invoke-virtual {v8, v3, v2, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 30
    sget-object v3, Lcom/noinnion/android/greader/provider/ReaderProvider;->i:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v2, 0xfa

    if-ge v15, v2, :cond_7

    .line 31
    sget-object v3, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    const/4 v0, 0x1

    return v0

    :cond_7
    sget-object v3, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    const/4 v13, 0x1

    move v3, v15

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    sget-object v3, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 32
    throw v0

    :cond_8
    return v15

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 33
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_9

    .line 34
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9
    return v15

    :goto_4
    if-eqz v2, :cond_a

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 35
    :cond_a
    throw v0

    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public N([J)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 1
    array-length v2, p1

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    return v0

    .line 2
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-object v3, p0, Lep6;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4
    array-length v4, p1

    div-int/lit16 v4, v4, 0xfa

    add-int/lit8 v10, v4, 0x1

    const/4 v4, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_a

    mul-int/lit16 v4, v11, 0xfa

    add-int/lit16 v5, v4, 0xfa

    sub-int/2addr v5, v1

    .line 5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    array-length v7, p1

    add-int/lit8 v7, v7, -0x1

    if-le v5, v7, :cond_2

    array-length v5, p1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    :goto_2
    move v7, v4

    :goto_3
    if-ge v7, v5, :cond_4

    if-le v7, v4, :cond_3

    const-string v8, ","

    .line 7
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_3
    aget-wide v8, p1, v7

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 9
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 10
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v4, "item._id"

    .line 11
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " IN ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    const-string v5, " AND "

    const-string v6, "subscription."

    const-string v7, "uid"

    invoke-static {v2, v4, v5, v6, v7}, Ljo;->J(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, " IS NOT NULL"

    .line 12
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    sget-object v5, Lap6;->B:Landroid/net/Uri;

    sget-object v6, Lap6;->G:[Ljava/lang/String;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    const/4 v8, 0x0

    const-string v9, " limit 250"

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 14
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_5

    goto/16 :goto_5

    .line 15
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 17
    :goto_4
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 18
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x2

    .line 19
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_4

    .line 20
    :cond_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 21
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_7

    return v0

    .line 22
    :cond_7
    invoke-virtual {p0}, Lep6;->m()Lrn6;

    move-result-object v4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lrn6;->markAsRead([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 23
    sget-object v5, Lcom/noinnion/android/greader/provider/ReaderProvider;->h:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 24
    :try_start_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "ids"

    .line 25
    invoke-virtual {v4, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    sget-object v5, Lcom/noinnion/android/greader/provider/ReaderProvider;->l:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v4, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 27
    sget-object v5, Lcom/noinnion/android/greader/provider/ReaderProvider;->i:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    sget-object v5, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    sget-object v5, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 29
    throw p1

    :cond_8
    return v0

    :catchall_1
    move-exception p1

    .line 30
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 31
    throw p1

    :cond_9
    :goto_5
    return v0

    :cond_a
    return v1
.end method

.method public O()V
    .locals 3

    .line 1
    new-instance v0, Lep6$h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lep6$h;-><init>(Lep6;Ldp6;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 2
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final P([JZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1
    array-length v1, p1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v1, ","

    .line 2
    invoke-static {p1, v1}, Ln56;->p1(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item._id"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    .line 5
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "subscription."

    const-string v2, "uid"

    const-string v3, " IS NOT NULL"

    invoke-static {v1, p1, v2, v3}, Ljo;->H(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lep6;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 7
    sget-object v3, Lap6;->B:Landroid/net/Uri;

    sget-object v4, Lap6;->G:[Ljava/lang/String;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 8
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    :goto_1
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    .line 12
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 13
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 14
    invoke-virtual {p0}, Lep6;->m()Lrn6;

    move-result-object p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p2}, Lrn6;->markAsUnread([Ljava/lang/String;[Ljava/lang/String;Z)Z

    return-void

    :catchall_0
    move-exception p2

    .line 15
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 16
    throw p2
.end method

.method public Q(Lip6;JZ)V
    .locals 10

    const-string v0, " AND "

    const-string v1, "read"

    .line 1
    iget-object v2, p0, Lep6;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2
    sget-object v4, Lcom/noinnion/android/greader/provider/ReaderProvider;->h:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 3
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v9, 0x1

    .line 4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "read_time"

    .line 5
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "sync_time"

    .line 6
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = 0 AND "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "keep_unread"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = 0"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sub_id"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p1, Lip6;->e:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-nez p4, :cond_0

    .line 10
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "updated_time"

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " < "

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_0
    sget-object p4, Lap6;->B:Landroid/net/Uri;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    const/4 v1, 0x0

    invoke-virtual {v2, p4, v3, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-array p4, v9, [J

    const/4 v0, 0x0

    .line 12
    iget-wide v3, p1, Lip6;->e:J

    aput-wide v3, p4, v0

    invoke-virtual {p0, p4}, Lep6;->Z([J)V

    .line 13
    sget-object v4, Lcom/noinnion/android/greader/provider/ReaderProvider;->i:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    sget-object v4, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 15
    iget-object p4, p0, Lep6;->a:Landroid/content/Context;

    .line 16
    invoke-static {p4, v9, v9}, Ln56;->I1(Landroid/content/Context;ZZ)V

    .line 17
    :try_start_1
    invoke-virtual {p0}, Lep6;->m()Lrn6;

    move-result-object p4

    iget-object v0, p1, Lip6;->f:Ljava/lang/String;

    iget-object v1, p1, Lip6;->h:Ljava/lang/String;

    invoke-virtual {p4, v0, v1, p2, p3}, Lrn6;->markAllAsRead(Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const/4 p4, 0x3

    const-string v0, "s="

    .line 18
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lip6;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&t= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lip6;->h:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p4, p1, p2, p3}, Lep6;->z(ILjava/lang/String;J)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 19
    sget-object v4, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 20
    throw p1
.end method

.method public R(Llp6;JZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lep6;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->h:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 3
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "tag_uid"

    .line 4
    iget-object v3, p1, Llp6;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sync_time"

    .line 5
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "all"

    .line 6
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 7
    sget-object p4, Lcom/noinnion/android/greader/provider/ReaderProvider;->m:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, p4, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8
    iget-object p4, p0, Lep6;->a:Landroid/content/Context;

    iget-object v1, p1, Llp6;->f:Ljava/lang/String;

    invoke-static {p4, v1}, Lkp6;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p4

    invoke-static {p4}, Ln56;->A(Ljava/util/List;)[J

    move-result-object p4

    invoke-virtual {p0, p4}, Lep6;->Z([J)V

    .line 9
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->i:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 11
    iget-object p4, p0, Lep6;->a:Landroid/content/Context;

    const/4 v0, 0x1

    .line 12
    invoke-static {p4, v0, v0}, Ln56;->I1(Landroid/content/Context;ZZ)V

    .line 13
    :try_start_1
    invoke-virtual {p0}, Lep6;->m()Lrn6;

    move-result-object p4

    iget-object v0, p1, Llp6;->f:Ljava/lang/String;

    iget-object v1, p1, Llp6;->i:Ljava/lang/String;

    invoke-virtual {p4, v0, v1, p2, p3}, Lrn6;->markAllAsRead(Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const/4 p4, 0x2

    const-string v0, "s="

    .line 14
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Llp6;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&t= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Llp6;->i:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p4, p1, p2, p3}, Lep6;->z(ILjava/lang/String;J)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 15
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 16
    throw p1
.end method

.method public S(J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    const-string v0, "sync_time <> ?"

    .line 1
    invoke-virtual {p0}, Lep6;->m()Lrn6;

    move-result-object v1

    .line 2
    new-instance v2, Lep6$a;

    invoke-direct {v2, p0, p1, p2}, Lep6$a;-><init>(Lep6;J)V

    new-instance v3, Lep6$b;

    invoke-direct {v3, p0, p1, p2}, Lep6$b;-><init>(Lep6;J)V

    new-instance v4, Lep6$c;

    invoke-direct {v4, p0}, Lep6$c;-><init>(Lep6;)V

    move-wide v5, p1

    invoke-virtual/range {v1 .. v6}, Lrn6;->handleReaderList(Lrn6$d;Lrn6$c;Lrn6$e;J)V

    .line 3
    iget-object v1, p0, Lep6;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4
    sget-object v3, Lcom/noinnion/android/greader/provider/ReaderProvider;->h:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    :try_start_0
    const-string v2, "sync_time <> ? AND type != 9"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 5
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    .line 6
    sget-object p1, Llp6;->n:Landroid/net/Uri;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7
    sget-object p2, Lip6;->A:Landroid/net/Uri;

    invoke-virtual {v1, p2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8
    sget-object p2, Lkp6;->e:Landroid/net/Uri;

    invoke-virtual {v1, p2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "uid IN ("

    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SELECT DISTINCT "

    .line 11
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "tag_uid"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " FROM "

    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "tag2sub"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") AND "

    .line 13
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "type = "

    .line 14
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "type"

    const/16 v3, 0xb

    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 17
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    const/4 p2, 0x0

    invoke-virtual {v1, p1, v0, v2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 18
    sget-object v3, Lcom/noinnion/android/greader/provider/ReaderProvider;->i:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    sget-object v3, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 20
    iget-object p1, p0, Lep6;->a:Landroid/content/Context;

    .line 21
    invoke-static {p1}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.noinnion.android.greader.reader.action.REFRESH_SUB_LIST"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lyd;->c(Landroid/content/Intent;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 22
    sget-object v3, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 23
    throw p1
.end method

.method public T(Lip6;JZ)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lep6;->m()Lrn6;

    move-result-object v0

    .line 2
    new-instance v7, Lcw6;

    invoke-direct {v7}, Lcw6;-><init>()V

    .line 3
    iget-object v1, p1, Lip6;->f:Ljava/lang/String;

    iget-wide v2, p1, Lip6;->e:J

    .line 4
    sget-object v4, Lon6;->a:Lew6;

    const-class v4, Lon6;

    monitor-enter v4

    if-eqz v1, :cond_1

    const-wide/16 v5, 0x0

    cmp-long v8, v2, v5

    if-nez v8, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    sget-object v5, Lon6;->h:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v4

    throw p1

    .line 7
    :cond_1
    :goto_0
    monitor-exit v4

    :goto_1
    if-nez p4, :cond_2

    .line 8
    new-instance p4, Lgp6;

    move-object v1, p4

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lgp6;-><init>(Lep6;Lip6;JLcw6;)V

    invoke-virtual {v0, p4, p2, p3}, Lrn6;->handleItemList(Lrn6$b;J)V

    :cond_2
    const/4 p2, 0x1

    new-array p3, p2, [J

    const/4 p4, 0x0

    .line 9
    iget-wide v0, p1, Lip6;->e:J

    aput-wide v0, p3, p4

    const/4 p1, 0x0

    .line 10
    new-instance p4, Landroid/content/ContentValues;

    invoke-direct {p4}, Landroid/content/ContentValues;-><init>()V

    const-string v0, ","

    .line 11
    invoke-static {p3, v0}, Ln56;->p1(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "subIds"

    invoke-virtual {p4, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p3, p0, Lep6;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    sget-object v0, Lcom/noinnion/android/greader/provider/ReaderProvider;->n:Landroid/net/Uri;

    invoke-virtual {p3, v0, p4, p1, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 13
    iget-object p1, p0, Lep6;->a:Landroid/content/Context;

    .line 14
    invoke-static {p1, p2, p2}, Ln56;->I1(Landroid/content/Context;ZZ)V

    .line 15
    iget p1, v7, Lcw6;->a:I

    return p1
.end method

.method public U(Llp6;J)V
    .locals 4

    .line 1
    iget-object v0, p1, Llp6;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lep6;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Llp6;->g()Landroid/content/ContentValues;

    move-result-object v1

    .line 4
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "sync_time"

    invoke-virtual {v1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5
    iget-object p2, p0, Lep6;->a:Landroid/content/Context;

    iget-object p1, p1, Llp6;->f:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Llp6;->b(Landroid/content/Context;Ljava/lang/String;Z)Llp6;

    move-result-object p1

    if-nez p1, :cond_1

    .line 6
    sget-object p1, Llp6;->n:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 7
    :cond_1
    sget-object p2, Llp6;->n:Landroid/net/Uri;

    iget-wide v2, p1, Llp6;->e:J

    invoke-static {p2, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    const-string p3, "type"

    .line 8
    invoke-virtual {v1, p3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 9
    iget-boolean p1, p1, Llp6;->m:Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p3, "hidden"

    invoke-virtual {v1, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x0

    .line 10
    invoke-virtual {v0, p2, v1, p1, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final V(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lep6;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3
    :try_start_0
    sget-object v2, Ljp6;->e:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p6, :cond_1

    .line 4
    invoke-virtual {p0}, Lep6;->m()Lrn6;

    move-result-object p6

    new-array v4, v3, [Ljava/lang/String;

    aput-object p3, v4, v2

    new-array p3, v3, [Ljava/lang/String;

    aput-object p4, p3, v2

    new-array p4, v3, [Ljava/lang/String;

    aput-object p5, p4, v2

    invoke-virtual {p6, v4, p3, p4, v3}, Lrn6;->editItemTag([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "action"

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "sync_time"

    .line 6
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {v1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7
    invoke-virtual {v0, p1, v1, p2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lep6;->m()Lrn6;

    move-result-object p6

    new-array p7, v3, [Ljava/lang/String;

    aput-object p3, p7, v2

    new-array p3, v3, [Ljava/lang/String;

    aput-object p4, p3, v2

    new-array p4, v3, [Ljava/lang/String;

    aput-object p5, p4, v2

    const/4 p5, 0x2

    invoke-virtual {p6, p7, p3, p4, p5}, Lrn6;->editItemTag([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 9
    invoke-virtual {v0, p1, p2, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public W(Ljava/lang/String;JZI)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lep6;->m()Lrn6;

    move-result-object v0

    .line 2
    new-instance v8, Lcw6;

    invoke-direct {v8}, Lcw6;-><init>()V

    .line 3
    new-instance v9, Lep6$d;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move v4, p5

    move-wide v5, p2

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lep6$d;-><init>(Lep6;Ljava/lang/String;IJLcw6;)V

    invoke-virtual {v0, v9, p2, p3}, Lrn6;->handleItemList(Lrn6$b;J)V

    if-nez p4, :cond_0

    .line 4
    new-instance p4, Lep6$e;

    move-object v1, p4

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lep6$e;-><init>(Lep6;Ljava/lang/String;JLcw6;)V

    invoke-virtual {v0, p4, p2, p3}, Lrn6;->handleItemList(Lrn6$b;J)V

    .line 5
    :cond_0
    invoke-static {p1}, Llp6;->d(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 6
    invoke-virtual {p0}, Lep6;->m()Lrn6;

    move-result-object p4

    new-instance p5, Lhp6;

    invoke-direct {p5, p0, p1}, Lhp6;-><init>(Lep6;Ljava/lang/String;)V

    invoke-virtual {p4, p5, p2, p3}, Lrn6;->handleItemIdList(Lrn6$a;J)Z

    .line 7
    iget-object p1, p0, Lep6;->a:Landroid/content/Context;

    const/4 p2, 0x1

    .line 8
    invoke-static {p1, p2, p2}, Ln56;->I1(Landroid/content/Context;ZZ)V

    .line 9
    :cond_1
    iget p1, v8, Lcw6;->a:I

    return p1
.end method

.method public X(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lep6;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lip6;->c(Landroid/content/Context;JZ)Lip6;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lep6;->m()Lrn6;

    move-result-object v2

    iget-object v3, v0, Lip6;->f:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x3

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v2 .. v7}, Lrn6;->editSubscription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result p3

    const-string p4, "sub_id = ?"

    .line 3
    iget-object v2, p0, Lep6;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4
    sget-object v4, Lcom/noinnion/android/greader/provider/ReaderProvider;->h:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    :try_start_0
    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    .line 5
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 6
    sget-object v6, Lip6;->A:Landroid/net/Uri;

    invoke-virtual {v2, v6, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7
    sget-object v3, Lap6;->B:Landroid/net/Uri;

    invoke-virtual {v2, v3, p4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8
    sget-object v3, Lkp6;->e:Landroid/net/Uri;

    invoke-virtual {v2, v3, p4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    new-array p4, v4, [J

    aput-wide p1, p4, v1

    .line 9
    invoke-virtual {p0, p4}, Lep6;->Z([J)V

    .line 10
    sget-object v4, Lcom/noinnion/android/greader/provider/ReaderProvider;->i:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    sget-object v4, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 12
    iget-wide p1, v0, Lip6;->e:J

    invoke-static {p1, p2}, Lon6;->k(J)V

    .line 13
    iget-object p1, v0, Lip6;->f:Ljava/lang/String;

    .line 14
    const-class p2, Lon6;

    monitor-enter p2

    if-eqz p1, :cond_2

    .line 15
    :try_start_1
    sget-object p4, Lon6;->h:Ljava/util/Map;

    invoke-interface {p4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    invoke-interface {p4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1

    .line 18
    :cond_2
    :goto_0
    monitor-exit p2

    :goto_1
    return p3

    :catchall_1
    move-exception p1

    .line 19
    sget-object v4, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 20
    throw p1
.end method

.method public Y()V
    .locals 3

    .line 1
    iget-object v0, p0, Lep6;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/noinnion/android/greader/provider/ReaderProvider;->o:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lep6;->e()I

    move-result v0

    .line 3
    iget-object v1, p0, Lep6;->a:Landroid/content/Context;

    const-string v2, "unread_count"

    .line 4
    invoke-static {v1, v2, v0}, Liw6;->T(Landroid/content/Context;Ljava/lang/String;I)V

    .line 5
    iget-object v1, p0, Lep6;->a:Landroid/content/Context;

    const-string v2, "com.noinnion.android.greader.reader/com.noinnion.android.greader.ui.login.LoginActivity"

    invoke-static {v1, v2, v0}, Ln56;->N1(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public Z([J)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, ","

    .line 3
    invoke-static {p1, v1}, Ln56;->p1(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "subIds"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lep6;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/noinnion/android/greader/provider/ReaderProvider;->o:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0}, Lep6;->e()I

    move-result p1

    .line 6
    iget-object v0, p0, Lep6;->a:Landroid/content/Context;

    const-string v1, "unread_count"

    .line 7
    invoke-static {v0, v1, p1}, Liw6;->T(Landroid/content/Context;Ljava/lang/String;I)V

    .line 8
    iget-object v0, p0, Lep6;->a:Landroid/content/Context;

    const-string v1, "com.noinnion.android.greader.reader/com.noinnion.android.greader.ui.login.LoginActivity"

    invoke-static {v0, v1, p1}, Ln56;->N1(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lep6;->Y()V

    :goto_1
    return-void
.end method

.method public a(Lip6;[Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 1
    array-length v3, v2

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3
    iget-object v5, v1, Lep6;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 4
    sget-object v7, Lcom/noinnion/android/greader/provider/ReaderProvider;->h:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v5

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 5
    :try_start_0
    array-length v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x1

    if-ge v8, v6, :cond_4

    aget-object v10, v2, v8

    .line 6
    iget-object v11, v1, Lep6;->a:Landroid/content/Context;

    invoke-static {v11, v10, v7}, Llp6;->b(Landroid/content/Context;Ljava/lang/String;Z)Llp6;

    move-result-object v11

    if-nez v11, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v12, "type"

    const/16 v13, 0xb

    .line 8
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9
    sget-object v12, Llp6;->n:Landroid/net/Uri;

    const-string v13, "uid = ?"

    new-array v14, v9, [Ljava/lang/String;

    aput-object v10, v14, v7

    invoke-virtual {v5, v12, v11, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v12, "sub_id = ? AND tag_uid = ?"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    .line 10
    iget-wide v14, v0, Lip6;->e:J

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v7

    aput-object v10, v13, v9

    .line 11
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    const-string v9, "sub_id"

    .line 12
    iget-wide v14, v0, Lip6;->e:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v11, v9, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "tag_uid"

    .line 13
    invoke-virtual {v11, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "sync_time"

    .line 14
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v11, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 15
    iget-wide v9, v0, Lip6;->e:J

    const-wide/16 v14, 0x0

    cmp-long v16, v9, v14

    if-eqz v16, :cond_2

    sget-object v9, Lkp6;->e:Landroid/net/Uri;

    invoke-virtual {v5, v9, v11, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_3

    .line 16
    :cond_2
    sget-object v9, Lkp6;->e:Landroid/net/Uri;

    invoke-virtual {v5, v9, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_3
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    new-array v3, v9, [J

    .line 17
    iget-wide v8, v0, Lip6;->e:J

    aput-wide v8, v3, v7

    invoke-virtual {v1, v3}, Lep6;->Z([J)V

    .line 18
    sget-object v7, Lcom/noinnion/android/greader/provider/ReaderProvider;->i:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v5

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    sget-object v7, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v5

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 20
    iget-object v3, v0, Lip6;->h:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-virtual {v1, v0, v3, v2, v4}, Lep6;->K(Lip6;Ljava/lang/String;[Ljava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    .line 21
    sget-object v7, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v5

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 22
    throw v0

    :cond_5
    :goto_2
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 2
    iget-object v0, p0, Lep6;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-string v1, "@"

    .line 4
    invoke-static {p2, v1, p3}, Ljo;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->h:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 6
    :try_start_0
    iget-object p3, p0, Lep6;->a:Landroid/content/Context;

    const-string v1, "uid"

    const/4 v2, 0x0

    invoke-static {p3, v1, p2, v2}, Llp6;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Llp6;

    move-result-object p3

    if-nez p3, :cond_0

    .line 7
    new-instance p3, Llp6;

    invoke-direct {p3}, Llp6;-><init>()V

    .line 8
    iput-object p2, p3, Llp6;->f:Ljava/lang/String;

    .line 9
    iput-object p1, p3, Llp6;->i:Ljava/lang/String;

    const-string p1, ""

    .line 10
    iput-object p1, p3, Llp6;->h:Ljava/lang/String;

    :cond_0
    const/16 p1, 0x9

    .line 11
    iput p1, p3, Llp6;->g:I

    .line 12
    invoke-virtual {p3}, Llp6;->g()Landroid/content/ContentValues;

    move-result-object p1

    const-string p2, "sync_time"

    .line 13
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 14
    iget-object p2, p0, Lep6;->a:Landroid/content/Context;

    iget-object p3, p3, Llp6;->f:Ljava/lang/String;

    invoke-static {p2, p3, v2}, Llp6;->b(Landroid/content/Context;Ljava/lang/String;Z)Llp6;

    move-result-object p2

    const/4 p3, 0x1

    if-nez p2, :cond_1

    .line 15
    sget-object p2, Llp6;->n:Landroid/net/Uri;

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 16
    :cond_1
    sget-object v1, Llp6;->n:Landroid/net/Uri;

    iget-wide v3, p2, Llp6;->e:J

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "type"

    .line 17
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v3, "hidden"

    .line 18
    iget-boolean p2, p2, Llp6;->m:Z

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p2, 0x0

    .line 19
    invoke-virtual {v0, v1, p1, p2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 20
    :goto_0
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->i:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 22
    iget-object p1, p0, Lep6;->a:Landroid/content/Context;

    .line 23
    invoke-static {p1, p3, p3}, Ln56;->I1(Landroid/content/Context;ZZ)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 24
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 25
    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public c(Lap6;[Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    .line 1
    array-length v3, v2

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3
    iget-object v5, v1, Lep6;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 4
    sget-object v7, Lcom/noinnion/android/greader/provider/ReaderProvider;->h:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v5

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 5
    :try_start_0
    array-length v6, v2

    const/4 v12, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v13, 0x1

    if-ge v7, v6, :cond_4

    aget-object v8, v2, v7

    .line 6
    iget-object v9, v1, Lep6;->a:Landroid/content/Context;

    const-string v10, "uid"

    invoke-static {v9, v10, v8, v12}, Llp6;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Llp6;

    move-result-object v9

    if-nez v9, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "item_uid = ? AND tag_uid = ?"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    .line 8
    iget-object v14, v0, Lap6;->f:Ljava/lang/String;

    aput-object v14, v11, v12

    aput-object v8, v11, v13

    .line 9
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    const-string v13, "item_uid"

    .line 10
    iget-object v14, v0, Lap6;->f:Ljava/lang/String;

    invoke-virtual {v9, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "tag_uid"

    .line 11
    invoke-virtual {v9, v13, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "sync_time"

    .line 12
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v9, v8, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 13
    iget-wide v13, v0, Lap6;->e:J

    const-wide/16 v15, 0x0

    cmp-long v8, v13, v15

    if-eqz v8, :cond_2

    sget-object v8, Ljp6;->e:Landroid/net/Uri;

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_3

    .line 14
    :cond_2
    sget-object v8, Ljp6;->e:Landroid/net/Uri;

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    new-array v3, v13, [J

    .line 15
    iget-wide v6, v0, Lap6;->g:J

    aput-wide v6, v3, v12

    invoke-virtual {v1, v3}, Lep6;->Z([J)V

    .line 16
    sget-object v7, Lcom/noinnion/android/greader/provider/ReaderProvider;->i:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v5

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    sget-object v7, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v5

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 18
    iget-object v3, v1, Lep6;->a:Landroid/content/Context;

    iget-wide v4, v0, Lap6;->g:J

    invoke-static {v3, v4, v5, v12}, Lip6;->c(Landroid/content/Context;JZ)Lip6;

    move-result-object v3

    new-array v4, v13, [Ljava/lang/String;

    .line 19
    iget-object v0, v0, Lap6;->f:Ljava/lang/String;

    aput-object v0, v4, v12

    if-eqz v3, :cond_5

    new-array v0, v13, [Ljava/lang/String;

    iget-object v3, v3, Lip6;->f:Ljava/lang/String;

    aput-object v3, v0, v12

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v4, v0, v2, v13}, Lep6;->J([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    .line 20
    sget-object v7, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v5

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 21
    throw v0

    :cond_6
    :goto_3
    return-void
.end method

.method public d()V
    .locals 8

    .line 1
    iget-object v0, p0, Lep6;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->h:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 3
    :try_start_0
    sget-object v1, Lzo6;->h:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->i:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    return-void

    :catchall_0
    move-exception v1

    move-object v7, v1

    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 6
    throw v7
.end method

.method public e()I
    .locals 7

    .line 1
    iget-object v0, p0, Lep6;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lap6;->B:Landroid/net/Uri;

    sget-object v3, Lap6;->K:[Ljava/lang/String;

    const-string v4, "read = 0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4
    throw v1
.end method

.method public final f(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lep6;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->h:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    :try_start_0
    const-string v1, "_id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    .line 4
    sget-object p1, Lzo6;->h:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->i:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    return-void

    :catchall_0
    move-exception p1

    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 7
    throw p1
.end method

.method public g(Llp6;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    const-string v0, "tag_uid = ?"

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Llp6;->e()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, Lep6;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3
    sget-object v3, Lcom/noinnion/android/greader/provider/ReaderProvider;->h:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    :try_start_0
    const-string v2, "uid = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 4
    iget-object v5, p1, Llp6;->f:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 5
    sget-object v4, Llp6;->n:Landroid/net/Uri;

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6
    sget-object v2, Lkp6;->e:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7
    sget-object v2, Ljp6;->e:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8
    sget-object v3, Lcom/noinnion/android/greader/provider/ReaderProvider;->i:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    sget-object v3, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 11
    :try_start_1
    invoke-virtual {p0}, Lep6;->m()Lrn6;

    move-result-object v2

    iget-object v3, p1, Llp6;->f:Ljava/lang/String;

    iget-object v4, p1, Llp6;->i:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lrn6;->disableTag(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x7

    const-string v3, "s="

    .line 12
    invoke-static {v3}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Llp6;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&t= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Llp6;->i:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1, v0, v1}, Lep6;->z(ILjava/lang/String;J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 13
    sget-object v3, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 14
    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public h(JI)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-eqz v4, :cond_0

    new-array v2, v0, [J

    aput-wide p1, v2, v1

    .line 1
    invoke-virtual {p0, v2, p3}, Lep6;->i([JI)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i([JI)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "_id"

    const-string v2, " IN ("

    .line 2
    invoke-static {v0, v2}, Ljo;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    .line 3
    invoke-static {p1, v2}, Ln56;->p1(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "cached"

    invoke-virtual {p1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6
    iget-object p2, p0, Lep6;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 7
    sget-object v3, Lcom/noinnion/android/greader/provider/ReaderProvider;->h:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 8
    :try_start_0
    sget-object v2, Lap6;->B:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p2, v2, p1, v0, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 9
    sget-object v3, Lcom/noinnion/android/greader/provider/ReaderProvider;->i:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    sget-object v3, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 11
    iget-object p1, p0, Lep6;->a:Landroid/content/Context;

    const/4 p2, 0x1

    invoke-static {p1, p2, v1}, Ln56;->I1(Landroid/content/Context;ZZ)V

    return p2

    :catchall_0
    move-exception p1

    .line 12
    sget-object v3, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 13
    throw p1
.end method

.method public j(Lap6;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lep6;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    invoke-static {v0, v3, v2, v1}, Llp6;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Llp6;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lep6$f;

    invoke-direct {v1, p0, p1, v0, p2}, Lep6$f;-><init>(Lep6;Lap6;Llp6;Z)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 3
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 4
    invoke-virtual {v1, p2, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public k(Lip6;Lip6;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 1
    iget-object v0, p2, Lip6;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object v0, p0, Lep6;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->h:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    :try_start_0
    const-string v1, "_id = ?"

    const/4 v7, 0x1

    new-array v2, v7, [Ljava/lang/String;

    .line 4
    iget-wide v3, p1, Lip6;->e:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 5
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "title"

    .line 6
    iget-object v6, p2, Lip6;->h:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "sync_excluded"

    .line 7
    iget-boolean v6, p2, Lip6;->p:Z

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "hidden"

    .line 8
    iget-boolean v6, p2, Lip6;->q:Z

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "notification"

    .line 9
    iget-boolean v6, p2, Lip6;->r:Z

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "image_fit"

    .line 10
    iget-boolean v6, p2, Lip6;->s:Z

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "javascript"

    .line 11
    iget-boolean v6, p2, Lip6;->t:Z

    if-eqz v6, :cond_5

    const/4 v4, 0x1

    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "offline_content"

    .line 12
    iget v5, p2, Lip6;->u:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "display_content"

    .line 13
    iget v5, p2, Lip6;->v:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "link_format"

    .line 14
    iget v5, p2, Lip6;->w:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "auto_readability"

    .line 15
    iget v5, p2, Lip6;->x:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "user_agent"

    .line 16
    iget v5, p2, Lip6;->y:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 17
    sget-object v4, Lip6;->A:Landroid/net/Uri;

    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 18
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->i:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 20
    iget-object v0, p0, Lep6;->a:Landroid/content/Context;

    .line 21
    invoke-static {v0, v7, v7}, Ln56;->I1(Landroid/content/Context;ZZ)V

    .line 22
    iget-object v0, p1, Lip6;->h:Ljava/lang/String;

    iget-object v1, p2, Lip6;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 23
    iget-object p2, p2, Lip6;->h:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v7}, Lep6;->K(Lip6;Ljava/lang/String;[Ljava/lang/String;I)V

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    .line 24
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 25
    throw p1

    :cond_7
    :goto_4
    return-void
.end method

.method public l(Llp6;Ljava/lang/String;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lep6;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->h:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    :try_start_0
    const-string v1, "uid = ?"

    const/4 v7, 0x1

    new-array v2, v7, [Ljava/lang/String;

    .line 4
    iget-object v3, p1, Llp6;->f:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 5
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "label"

    .line 6
    invoke-virtual {v3, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "sync_excluded"

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 7
    :goto_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v3, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "hidden"

    if-eqz p4, :cond_2

    const/4 v4, 0x1

    .line 8
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v3, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9
    sget-object p3, Llp6;->n:Landroid/net/Uri;

    invoke-virtual {v0, p3, v3, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p3

    if-lez p3, :cond_3

    .line 10
    iget-object p3, p0, Lep6;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    sget-object p4, Lcom/noinnion/android/greader/provider/ReaderProvider;->s:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p3, p4, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 11
    :cond_3
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->i:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 13
    iget-object p3, p0, Lep6;->a:Landroid/content/Context;

    .line 14
    invoke-static {p3, v7, v7}, Ln56;->I1(Landroid/content/Context;ZZ)V

    .line 15
    iget-object p3, p1, Llp6;->i:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    .line 17
    :try_start_1
    invoke-virtual {p0}, Lep6;->m()Lrn6;

    move-result-object v0

    iget-object v1, p1, Llp6;->f:Ljava/lang/String;

    iget-object v2, p1, Llp6;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Lrn6;->renameTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x6

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Llp6;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&t= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Llp6;->i:Ljava/lang/String;

    const-string v2, "&dest= "

    invoke-static {v1, p1, v2, p2}, Ljo;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p3, p4}, Lep6;->z(ILjava/lang/String;J)V

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 20
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 21
    throw p1

    :cond_5
    :goto_2
    return-void
.end method

.method public m()Lrn6;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgw6;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lep6;->b:Lrn6;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lep6;->a:Landroid/content/Context;

    invoke-static {v0}, Lrn6;->getClient(Landroid/content/Context;)Lrn6;

    move-result-object v0

    iput-object v0, p0, Lep6;->b:Lrn6;

    .line 3
    :cond_0
    iget-object v0, p0, Lep6;->b:Lrn6;

    return-object v0
.end method

.method public n()I
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lep6;->m()Lrn6;

    move-result-object v0

    invoke-virtual {v0}, Lrn6;->getClientService()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lgw6; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final z(ILjava/lang/String;J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lep6;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->h:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 3
    :try_start_0
    new-instance v1, Lzo6;

    invoke-direct {v1}, Lzo6;-><init>()V

    .line 4
    iput p1, v1, Lzo6;->e:I

    .line 5
    iput-object p2, v1, Lzo6;->f:Ljava/lang/String;

    .line 6
    iput-wide p3, v1, Lzo6;->g:J

    .line 7
    invoke-virtual {v1}, Lzo6;->a()Landroid/content/ContentValues;

    move-result-object p1

    .line 8
    sget-object p2, Lzo6;->h:Landroid/net/Uri;

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 9
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->i:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    return-void

    :catchall_0
    move-exception p1

    sget-object v2, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 11
    throw p1
.end method
