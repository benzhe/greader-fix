.class public final synthetic Lku;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltu$b;


# instance fields
.field public final a:Ltu;

.field public final b:Ljava/util/List;

.field public final c:Lds;


# direct methods
.method public constructor <init>(Ltu;Ljava/util/List;Lds;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lku;->a:Ltu;

    iput-object p2, p0, Lku;->b:Ljava/util/List;

    iput-object p3, p0, Lku;->c:Lds;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lku;->a:Ltu;

    iget-object v2, v0, Lku;->b:Ljava/util/List;

    iget-object v3, v0, Lku;->c:Lds;

    move-object/from16 v4, p1

    check-cast v4, Landroid/database/Cursor;

    .line 1
    sget-object v5, Ltu;->i:Luq;

    .line 2
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    .line 3
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x7

    .line 4
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 5
    :goto_1
    new-instance v10, Lvr$b;

    invoke-direct {v10}, Lvr$b;-><init>()V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 6
    iput-object v11, v10, Lvr$b;->f:Ljava/util/Map;

    .line 7
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lvr$b;->f(Ljava/lang/String;)Las$a;

    const/4 v11, 0x2

    .line 8
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lvr$b;->e(J)Las$a;

    const/4 v11, 0x3

    .line 9
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lvr$b;->g(J)Las$a;

    const/4 v11, 0x4

    if-eqz v8, :cond_2

    .line 10
    new-instance v5, Lzr;

    .line 11
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    .line 12
    sget-object v8, Ltu;->i:Luq;

    goto :goto_2

    .line 13
    :cond_1
    new-instance v9, Luq;

    invoke-direct {v9, v8}, Luq;-><init>(Ljava/lang/String;)V

    move-object v8, v9

    :goto_2
    const/4 v9, 0x5

    .line 14
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    invoke-direct {v5, v8, v9}, Lzr;-><init>(Luq;[B)V

    .line 15
    invoke-virtual {v10, v5}, Lvr$b;->d(Lzr;)Las$a;

    goto :goto_4

    .line 16
    :cond_2
    new-instance v8, Lzr;

    .line 17
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_3

    .line 18
    sget-object v11, Ltu;->i:Luq;

    goto :goto_3

    .line 19
    :cond_3
    new-instance v12, Luq;

    invoke-direct {v12, v11}, Luq;-><init>(Ljava/lang/String;)V

    move-object v11, v12

    .line 20
    :goto_3
    invoke-virtual {v1}, Ltu;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const-string v13, "bytes"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v14

    new-array v9, v9, [Ljava/lang/String;

    .line 21
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v5

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v13, "event_payloads"

    const-string v15, "event_id = ?"

    const-string v19, "sequence_num"

    move-object/from16 v16, v9

    .line 22
    invoke-virtual/range {v12 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    sget-object v9, Llu;->a:Llu;

    .line 23
    invoke-static {v5, v9}, Ltu;->i(Landroid/database/Cursor;Ltu$b;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 24
    invoke-direct {v8, v11, v5}, Lzr;-><init>(Luq;[B)V

    .line 25
    invoke-virtual {v10, v8}, Lvr$b;->d(Lzr;)Las$a;

    :goto_4
    const/4 v5, 0x6

    .line 26
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 27
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 28
    iput-object v5, v10, Lvr$b;->b:Ljava/lang/Integer;

    .line 29
    :cond_4
    invoke-virtual {v10}, Lvr$b;->b()Las;

    move-result-object v5

    .line 30
    new-instance v8, Lbu;

    invoke-direct {v8, v6, v7, v3, v5}, Lbu;-><init>(JLds;Las;)V

    .line 31
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    return-object v1
.end method
