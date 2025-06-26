.class public Lj9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj9$b;,
        Lj9$c;,
        Lj9$d;
    }
.end annotation


# static fields
.field public static final a:Lk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk4<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lk9;

.field public static final c:Ljava/lang/Object;

.field public static final d:Lm4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm4<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lk9$c<",
            "Lj9$d;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lk4;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lk4;-><init>(I)V

    sput-object v0, Lj9;->a:Lk4;

    .line 2
    new-instance v0, Lk9;

    const-string v1, "fonts"

    const/16 v2, 0xa

    const/16 v3, 0x2710

    invoke-direct {v0, v1, v2, v3}, Lk9;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lj9;->b:Lk9;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lj9;->c:Ljava/lang/Object;

    .line 4
    new-instance v0, Lm4;

    invoke-direct {v0}, Lm4;-><init>()V

    sput-object v0, Lj9;->d:Lm4;

    .line 5
    new-instance v0, Lj9$a;

    invoke-direct {v0}, Lj9$a;-><init>()V

    sput-object v0, Lj9;->e:Ljava/util/Comparator;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/CancellationSignal;Lf9;)Lj9$b;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    move-object/from16 v0, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2
    iget-object v3, v0, Lf9;->a:Ljava/lang/String;

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    if-eqz v5, :cond_11

    .line 4
    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 5
    iget-object v7, v0, Lf9;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 7
    iget-object v3, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x40

    invoke-virtual {v1, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 8
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 10
    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_0

    .line 11
    aget-object v7, v1, v6

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 12
    :cond_0
    sget-object v1, Lj9;->e:Ljava/util/Comparator;

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 13
    iget-object v1, v0, Lf9;->d:Ljava/util/List;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    invoke-static {v2, v4}, Ld0$h;->V(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v1

    :goto_1
    const/4 v2, 0x0

    .line 15
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v2, v6, :cond_6

    .line 16
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    sget-object v9, Lj9;->e:Ljava/util/Comparator;

    invoke-static {v6, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 18
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v9, v10, :cond_2

    goto :goto_4

    :cond_2
    const/4 v9, 0x0

    .line 19
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 20
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    invoke-static {v10, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-nez v10, :cond_3

    :goto_4
    const/4 v6, 0x0

    goto :goto_5

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x1

    :goto_5
    if-eqz v6, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    move-object v5, v7

    :goto_6
    if-nez v5, :cond_7

    .line 21
    new-instance v0, Lj9$b;

    invoke-direct {v0, v8, v7}, Lj9$b;-><init>(I[Lj9$c;)V

    return-object v0

    .line 22
    :cond_7
    iget-object v1, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "content"

    invoke-virtual {v3, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 25
    invoke-virtual {v3, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 26
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 27
    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v6, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 28
    invoke-virtual {v5, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v5, "file"

    .line 29
    invoke-virtual {v1, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 31
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "_id"

    const-string v11, "file_id"

    const-string v12, "font_ttc_index"

    const-string v13, "font_variation_settings"

    const-string v14, "font_weight"

    const-string v15, "font_italic"

    const-string v16, "result_code"

    filled-new-array/range {v10 .. v16}, [Ljava/lang/String;

    move-result-object v11

    const-string v12, "query = ?"

    new-array v13, v8, [Ljava/lang/String;

    .line 32
    iget-object v0, v0, Lf9;->c:Ljava/lang/String;

    aput-object v0, v13, v4

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v3

    .line 33
    invoke-virtual/range {v9 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 34
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_d

    const-string v0, "result_code"

    .line 35
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "_id"

    .line 37
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "file_id"

    .line 38
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v9, "font_ttc_index"

    .line 39
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "font_weight"

    .line 40
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "font_italic"

    .line 41
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 42
    :goto_7
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_d

    const/4 v12, -0x1

    if-eq v0, v12, :cond_8

    .line 43
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v19, v13

    goto :goto_8

    :cond_8
    const/4 v13, 0x0

    const/16 v19, 0x0

    :goto_8
    if-eq v9, v12, :cond_9

    .line 44
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v16, v13

    goto :goto_9

    :cond_9
    const/4 v13, 0x0

    const/16 v16, 0x0

    :goto_9
    if-ne v6, v12, :cond_a

    .line 45
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 46
    invoke-static {v3, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    goto :goto_a

    .line 47
    :cond_a
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 48
    invoke-static {v1, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    :goto_a
    move-object v15, v13

    if-eq v10, v12, :cond_b

    .line 49
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v17, v13

    goto :goto_b

    :cond_b
    const/16 v13, 0x190

    const/16 v17, 0x190

    :goto_b
    if-eq v11, v12, :cond_c

    .line 50
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-ne v12, v8, :cond_c

    const/4 v12, 0x1

    const/16 v18, 0x1

    goto :goto_c

    :cond_c
    const/4 v12, 0x0

    const/16 v18, 0x0

    .line 51
    :goto_c
    new-instance v12, Lj9$c;

    move-object v14, v12

    invoke-direct/range {v14 .. v19}, Lj9$c;-><init>(Landroid/net/Uri;IIZI)V

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :cond_d
    if-eqz v7, :cond_e

    .line 52
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_e
    new-array v0, v4, [Lj9$c;

    .line 53
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj9$c;

    .line 54
    new-instance v1, Lj9$b;

    invoke-direct {v1, v4, v0}, Lj9$b;-><init>(I[Lj9$c;)V

    return-object v1

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_f

    .line 55
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 56
    :cond_f
    throw v0

    .line 57
    :cond_10
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string v2, "Found content provider "

    const-string v4, ", but package was not "

    invoke-static {v2, v3, v4}, Ljo;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 58
    iget-object v0, v0, Lf9;->b:Ljava/lang/String;

    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_11
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string v1, "No package found for authority: "

    invoke-static {v1, v3}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;Lf9;I)Lj9$d;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0, v0, p1}, Lj9;->a(Landroid/content/Context;Landroid/os/CancellationSignal;Lf9;)Lj9$b;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget v1, p1, Lj9$b;->a:I

    const/4 v2, -0x3

    if-nez v1, :cond_1

    .line 3
    iget-object p1, p1, Lj9$b;->b:[Lj9$c;

    .line 4
    sget-object v1, Lg8;->a:Ln8;

    invoke-virtual {v1, p0, v0, p1, p2}, Ln8;->b(Landroid/content/Context;Landroid/os/CancellationSignal;[Lj9$c;I)Landroid/graphics/Typeface;

    move-result-object p0

    .line 5
    new-instance p1, Lj9$d;

    if-eqz p0, :cond_0

    const/4 v2, 0x0

    .line 6
    :cond_0
    invoke-direct {p1, p0, v2}, Lj9$d;-><init>(Landroid/graphics/Typeface;I)V

    return-object p1

    :cond_1
    const/4 p0, 0x1

    if-ne v1, p0, :cond_2

    const/4 v2, -0x2

    .line 7
    :cond_2
    new-instance p0, Lj9$d;

    invoke-direct {p0, v0, v2}, Lj9$d;-><init>(Landroid/graphics/Typeface;I)V

    return-object p0

    .line 8
    :catch_0
    new-instance p0, Lj9$d;

    const/4 p1, -0x1

    invoke-direct {p0, v0, p1}, Lj9$d;-><init>(Landroid/graphics/Typeface;I)V

    return-object p0
.end method
