.class public Lcom/noinnion/android/greader/provider/ReaderProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/provider/ReaderProvider$a;
    }
.end annotation


# static fields
.field public static final f:Landroid/net/Uri;

.field public static final g:Landroid/net/Uri;

.field public static final h:Landroid/net/Uri;

.field public static final i:Landroid/net/Uri;

.field public static final j:Landroid/net/Uri;

.field public static final k:Landroid/net/Uri;

.field public static final l:Landroid/net/Uri;

.field public static final m:Landroid/net/Uri;

.field public static final n:Landroid/net/Uri;

.field public static final o:Landroid/net/Uri;

.field public static final p:Landroid/net/Uri;

.field public static final q:Landroid/net/Uri;

.field public static final r:Landroid/net/Uri;

.field public static final s:Landroid/net/Uri;

.field public static final t:Landroid/net/Uri;

.field public static final u:Landroid/content/UriMatcher;


# instance fields
.field public e:Lcom/noinnion/android/greader/provider/ReaderProvider$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "content://com.noinnion.android.greader.reader.provider/reconnect_db"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/noinnion/android/greader/provider/ReaderProvider;->f:Landroid/net/Uri;

    const-string v0, "content://com.noinnion.android.greader.reader.provider/raw_query"

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/noinnion/android/greader/provider/ReaderProvider;->g:Landroid/net/Uri;

    const-string v0, "content://com.noinnion.android.greader.reader.provider/begin_txn"

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/noinnion/android/greader/provider/ReaderProvider;->h:Landroid/net/Uri;

    const-string v0, "content://com.noinnion.android.greader.reader.provider/success_txn"

    .line 4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/noinnion/android/greader/provider/ReaderProvider;->i:Landroid/net/Uri;

    const-string v0, "content://com.noinnion.android.greader.reader.provider/end_txn"

    .line 5
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/noinnion/android/greader/provider/ReaderProvider;->j:Landroid/net/Uri;

    const-string v0, "content://com.noinnion.android.greader.reader.provider/items_insert"

    .line 6
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/noinnion/android/greader/provider/ReaderProvider;->k:Landroid/net/Uri;

    const-string v0, "content://com.noinnion.android.greader.reader.provider/update_mark_read"

    .line 7
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/noinnion/android/greader/provider/ReaderProvider;->l:Landroid/net/Uri;

    const-string v0, "content://com.noinnion.android.greader.reader.provider/update_mark_tag"

    .line 8
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/noinnion/android/greader/provider/ReaderProvider;->m:Landroid/net/Uri;

    const-string v0, "content://com.noinnion.android.greader.reader.provider/update_newest_time"

    .line 9
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/noinnion/android/greader/provider/ReaderProvider;->n:Landroid/net/Uri;

    const-string v0, "content://com.noinnion.android.greader.reader.provider/update_unreads"

    .line 10
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/noinnion/android/greader/provider/ReaderProvider;->o:Landroid/net/Uri;

    const-string v0, "content://com.noinnion.android.greader.reader.provider/update_reads"

    .line 11
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/noinnion/android/greader/provider/ReaderProvider;->p:Landroid/net/Uri;

    const-string v0, "content://com.noinnion.android.greader.reader.provider/update_starred"

    .line 12
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/noinnion/android/greader/provider/ReaderProvider;->q:Landroid/net/Uri;

    const-string v0, "content://com.noinnion.android.greader.reader.provider/update_tag2item"

    .line 13
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/noinnion/android/greader/provider/ReaderProvider;->r:Landroid/net/Uri;

    const-string v0, "content://com.noinnion.android.greader.reader.provider/tags_subs"

    .line 14
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/noinnion/android/greader/provider/ReaderProvider;->s:Landroid/net/Uri;

    const-string v0, "content://com.noinnion.android.greader.reader.provider/items_subs"

    .line 15
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/noinnion/android/greader/provider/ReaderProvider;->t:Landroid/net/Uri;

    .line 16
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/noinnion/android/greader/provider/ReaderProvider;->u:Landroid/content/UriMatcher;

    const-string v1, "com.noinnion.android.greader.reader.provider"

    const-string v2, "reconnect_db"

    const/4 v3, 0x4

    .line 17
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "raw_query"

    const/4 v3, 0x5

    .line 18
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "begin_txn"

    const/4 v3, 0x1

    .line 19
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "success_txn"

    const/4 v3, 0x2

    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "end_txn"

    const/4 v3, 0x3

    .line 21
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "subscription/#"

    const/16 v3, 0xa

    .line 22
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "subscription"

    const/16 v3, 0xb

    .line 23
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "tag/#"

    const/16 v3, 0x14

    .line 24
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "tag"

    const/16 v3, 0x15

    .line 25
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "tag2sub/#"

    const/16 v3, 0x1e

    .line 26
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "tag2sub"

    const/16 v3, 0x1f

    .line 27
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "tags_subs"

    const/16 v3, 0x20

    .line 28
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "item/#"

    const/16 v3, 0x28

    .line 29
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v4, "item"

    const/16 v5, 0x29

    .line 30
    invoke-virtual {v0, v1, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 31
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "items_subs"

    const/16 v3, 0x2a

    .line 32
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "items_insert"

    const/16 v3, 0x2c

    .line 33
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "item_sync"

    const/16 v3, 0x2d

    .line 34
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "items_sync_insert"

    const/16 v3, 0x2e

    .line 35
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "tag2item/#"

    const/16 v3, 0x32

    .line 36
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "tag2item"

    const/16 v3, 0x33

    .line 37
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "history/#"

    const/16 v3, 0x3c

    .line 38
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "history"

    const/16 v3, 0x3d

    .line 39
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "update_mark_read"

    const/16 v3, 0x4b

    .line 40
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "update_mark_tag"

    const/16 v3, 0x49

    .line 41
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "update_newest_time"

    const/16 v3, 0x46

    .line 42
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "update_unreads"

    const/16 v3, 0x47

    .line 43
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "update_reads"

    const/16 v3, 0x48

    .line 44
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "update_starred"

    const/16 v3, 0x4a

    .line 45
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "update_tag2item"

    const/16 v3, 0x4c

    .line 46
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p2, :cond_0

    const-string p2, "CREATE INDEX idx_"

    .line 2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p2, "DROP INDEX idx_"

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    array-length p2, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_1

    aget-object v3, p1, v2

    const-string v4, "_"

    .line 6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-string p2, " on "

    const-string v2, "("

    .line 8
    invoke-static {v0, p2, p0, v2}, Ljo;->H(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :goto_2
    array-length p0, p1

    if-ge v1, p0, :cond_3

    if-lez v1, :cond_2

    const-string p0, ", "

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_2
    aget-object p0, p1, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const-string p0, ")"

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "_id"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = ?"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " AND "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    return-object p0
.end method

.method public static c(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    array-length v1, p1

    if-lez v1, :cond_0

    .line 3
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    return-object p1
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/provider/ReaderProvider;->e:Lcom/noinnion/android/greader/provider/ReaderProvider$a;

    invoke-virtual {v0}, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/noinnion/android/greader/provider/ReaderProvider;->u:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x2c

    const-string v3, "uid"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_3

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_2

    const-string p1, "INSERT INTO item_sync (uid) VALUES (?) "

    .line 3
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    .line 4
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    aget-object v2, p2, v4

    if-nez v2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v5, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return v1

    .line 8
    :cond_2
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    const-string p1, "INSERT INTO item (uid, sub_id, title, content, author, link, image, video, audio, sharer, published_time, read, read_time, starred, sync_time, updated_time) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    .line 9
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    .line 10
    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v4, v0, :cond_5

    aget-object v2, p2, v4

    if-nez v2, :cond_4

    goto/16 :goto_3

    .line 11
    :cond_4
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v6, 0x2

    const-string v7, "sub_id"

    .line 12
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {p1, v6, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v6, 0x3

    const-string v7, "title"

    .line 13
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v6, 0x4

    const-string v7, "content"

    .line 14
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v6, 0x5

    const-string v7, "author"

    .line 15
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v6, 0x6

    const-string v7, "link"

    .line 16
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v6, 0x7

    const-string v7, "image"

    .line 17
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/16 v6, 0x8

    const-string v7, "video"

    .line 18
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/16 v6, 0x9

    const-string v7, "audio"

    .line 19
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/16 v6, 0xa

    const-string v7, "sharer"

    .line 20
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/16 v6, 0xb

    const-string v7, "published_time"

    .line 21
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p1, v6, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v6, 0xc

    const-string v7, "read"

    .line 22
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {p1, v6, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v6, 0xd

    const-string v7, "read_time"

    .line 23
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p1, v6, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v6, 0xe

    const-string v7, "starred"

    .line 24
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {p1, v6, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v6, 0xf

    const-string v7, "sync_time"

    .line 25
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p1, v6, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v6, 0x10

    const-string v7, "updated_time"

    .line 26
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p1, v6, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 27
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catch_0
    move-exception v2

    .line 28
    invoke-virtual {v2}, Landroid/database/SQLException;->printStackTrace()V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 29
    :cond_5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return v1
.end method

.method public final d(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/provider/ReaderProvider;->e:Lcom/noinnion/android/greader/provider/ReaderProvider$a;

    invoke-virtual {v0}, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/noinnion/android/greader/provider/ReaderProvider;->u:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0xa

    const-string v3, "history"

    const-string v4, "tag2item"

    const-string v5, "item"

    const-string v6, "tag2sub"

    const-string v7, "tag"

    const-string v8, "subscription"

    const/4 v9, 0x1

    if-eq v1, v2, :cond_17

    const/16 v2, 0xb

    if-eq v1, v2, :cond_18

    const/16 v2, 0x14

    if-eq v1, v2, :cond_15

    const/16 v2, 0x15

    if-eq v1, v2, :cond_16

    const/16 v2, 0x1e

    if-eq v1, v2, :cond_13

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_14

    const/16 v2, 0x28

    if-eq v1, v2, :cond_11

    const/16 v2, 0x29

    if-eq v1, v2, :cond_12

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_10

    const/16 v2, 0x32

    if-eq v1, v2, :cond_e

    const/16 v2, 0x33

    if-eq v1, v2, :cond_f

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_d

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_19

    const-string p3, " )"

    const/4 p4, 0x3

    const-string p5, "subIds"

    const-string v2, "tag_uid"

    const-string v3, "ids"

    const/4 v4, 0x2

    const-string v5, ")"

    const/4 v6, 0x0

    const/4 v7, 0x0

    packed-switch v1, :pswitch_data_0

    .line 3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown URI "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    const-string p1, "DELETE FROM tag2item WHERE item_uid IN ( SELECT tag2item.item_uid FROM tag2item LEFT OUTER JOIN item ON tag2item.item_uid = item.uid WHERE item._id IS NULL )"

    .line 4
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return v7

    :pswitch_1
    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6
    :cond_0
    sget-object p1, Lap6;->B:Landroid/net/Uri;

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "UPDATE item SET sync_time = read_time WHERE _id IN ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return v7

    :pswitch_2
    if-nez p2, :cond_1

    return v7

    .line 9
    :cond_1
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array p5, p4, [Ljava/lang/String;

    const-string v1, "UPDATE item SET starred = 0 WHERE item.starred = 1 AND item.uid NOT IN ( "

    .line 11
    invoke-static {v1, p1, p3}, Ljo;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p5, v7

    const-string v1, "UPDATE item SET starred = 1 WHERE item.starred = 0 AND item.uid IN ( "

    invoke-static {v1, p1, p3}, Ljo;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p5, v9

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM tag2item WHERE tag2item.tag_uid = \'"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' AND tag2item.item_uid NOT IN ( "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ) "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p5, v4

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p4, :cond_2

    .line 12
    aget-object p2, p5, p1

    .line 13
    invoke-virtual {v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return v7

    .line 14
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "sync_time"

    .line 15
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    const-string p5, "all"

    .line 16
    invoke-virtual {p2, p5}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 17
    sget-object p5, Llp6;->n:Landroid/net/Uri;

    .line 18
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE item SET read = 1, read_time = "

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", sync_time = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " WHERE _id IN ( SELECT item._id FROM item LEFT JOIN tag2sub ON item.sub_id = tag2sub.sub_id WHERE item.read = 0 AND item.keep_unread = 0 AND tag2sub.tag_uid = \""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3e8

    const-string v7, " < "

    const-string v8, "updated_time"

    const-string v9, " AND "

    if-nez p2, :cond_3

    .line 21
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v5, p3, v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    .line 23
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " WHERE read = 0 AND keep_unread = 0 AND uid IN ( SELECT tag2item.item_uid FROM tag2item WHERE tag2item.tag_uid = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_4

    .line 25
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 p1, 0x3e8

    div-long/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 28
    array-length p2, p1

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p2, :cond_5

    aget-object p4, p1, p3

    .line 29
    invoke-virtual {v0, p4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    return p1

    :pswitch_4
    const/4 p1, 0x0

    if-nez p2, :cond_6

    return p1

    .line 30
    :cond_6
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array p4, v4, [Ljava/lang/String;

    const-string p5, "UPDATE item SET read = 1 WHERE item.read = 0 AND item.keep_unread = 0 AND item.uid NOT IN ( "

    .line 31
    invoke-static {p5, p2, p3}, Ljo;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    aput-object p5, p4, p1

    const-string p1, "UPDATE item SET read = 0 WHERE item.read = 1 AND item.read_time < item.sync_time AND item.uid IN ( "

    invoke-static {p1, p2, p3}, Ljo;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, v9

    const/4 p1, 0x0

    :goto_2
    if-ge p1, v4, :cond_7

    .line 32
    aget-object p2, p4, p1

    .line 33
    invoke-virtual {v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    return p1

    :pswitch_5
    if-eqz p2, :cond_8

    .line 34
    invoke-virtual {p2, p5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_8
    new-array p1, p4, [Ljava/lang/String;

    const-string p2, "UPDATE subscription SET unread_count =  (SELECT CASE WHEN t2.sub_id IS NULL THEN 0 ELSE t2.count END FROM subscription t1 LEFT JOIN (SELECT item.sub_id AS sub_id, COUNT(item._id) AS count FROM item WHERE item.read = 0 GROUP BY item.sub_id) t2 ON t1._id = t2.sub_id  WHERE t1._id = subscription._id)"

    .line 35
    invoke-static {p2}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 36
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_9

    const-string p3, ""

    goto :goto_3

    :cond_9
    const-string p3, "WHERE subscription._id IN ("

    invoke-static {p3, v6, v5}, Ljo;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_3
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string p2, "UPDATE tag SET unread_count = (SELECT CASE WHEN s.unread_count IS NULL THEN 0 ELSE SUM(s.unread_count) END FROM subscription s, tag2sub t2s WHERE s._id = t2s.sub_id AND tag.uid = t2s.tag_uid) WHERE tag.type = 11"

    aput-object p2, p1, v9

    const-string p2, "UPDATE tag SET unread_count = (SELECT CASE WHEN i._id IS NULL THEN 0 ELSE COUNT(i._id) END FROM item i, tag2item t2i WHERE i.uid = t2i.item_uid AND tag.uid = t2i.tag_uid AND t2i.action <> -1 AND i.read = 0) WHERE tag.type <> 11"

    aput-object p2, p1, v4

    const/4 p2, 0x0

    :goto_4
    if-ge p2, p4, :cond_a

    .line 37
    aget-object p3, p1, p2

    .line 38
    invoke-virtual {v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_a
    const/4 p1, 0x0

    return p1

    :pswitch_6
    if-eqz p2, :cond_b

    .line 39
    invoke-virtual {p2, p5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_b
    const-string p1, "UPDATE subscription SET newest_item_time =  (SELECT CASE WHEN t2.sub_id IS NULL THEN 0 ELSE t2.newest_time END FROM subscription t1 LEFT JOIN (SELECT item.sub_id AS sub_id, MAX(item.updated_time) AS newest_time FROM item GROUP BY item.sub_id ORDER BY item.updated_time DESC) t2 ON t1._id = t2.sub_id  WHERE t1._id = subscription._id)"

    .line 40
    invoke-static {p1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 41
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    const-string p2, " WHERE subscription._id IN ("

    .line 42
    invoke-static {p1, p2, v6, v5}, Ljo;->H(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 45
    :cond_d
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p3}, Lcom/noinnion/android/greader/provider/ReaderProvider;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 46
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, p4}, Lcom/noinnion/android/greader/provider/ReaderProvider;->c(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    goto/16 :goto_5

    .line 47
    :cond_e
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p3}, Lcom/noinnion/android/greader/provider/ReaderProvider;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 48
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, p4}, Lcom/noinnion/android/greader/provider/ReaderProvider;->c(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    :cond_f
    move-object v3, v4

    goto/16 :goto_5

    :cond_10
    const-string p1, "item_sync"

    move-object v3, p1

    goto/16 :goto_5

    .line 49
    :cond_11
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p3}, Lcom/noinnion/android/greader/provider/ReaderProvider;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 50
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, p4}, Lcom/noinnion/android/greader/provider/ReaderProvider;->c(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    :cond_12
    move-object v3, v5

    goto :goto_5

    .line 51
    :cond_13
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p3}, Lcom/noinnion/android/greader/provider/ReaderProvider;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 52
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, p4}, Lcom/noinnion/android/greader/provider/ReaderProvider;->c(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    :cond_14
    move-object v3, v6

    goto :goto_5

    .line 53
    :cond_15
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p3}, Lcom/noinnion/android/greader/provider/ReaderProvider;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 54
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, p4}, Lcom/noinnion/android/greader/provider/ReaderProvider;->c(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    :cond_16
    move-object v3, v7

    goto :goto_5

    .line 55
    :cond_17
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p3}, Lcom/noinnion/android/greader/provider/ReaderProvider;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 56
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, p4}, Lcom/noinnion/android/greader/provider/ReaderProvider;->c(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    :cond_18
    move-object v3, v8

    :cond_19
    :goto_5
    if-eqz p5, :cond_1a

    .line 57
    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    goto :goto_6

    :cond_1a
    invoke-virtual {v0, v3, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    :goto_6
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/noinnion/android/greader/provider/ReaderProvider;->d(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/noinnion/android/greader/provider/ReaderProvider;->u:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    const/16 v1, 0x29

    if-ne v0, v1, :cond_0

    const-string p1, "vnd.android.cursor.dir/vnd.com.noinnion.android.greader.reader.provider.item"

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "vnd.android.cursor.item/vnd.com.noinnion.android.greader.reader.provider.item"

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5

    .line 1
    sget-object v0, Lcom/noinnion/android/greader/provider/ReaderProvider;->u:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_5

    const/16 v1, 0x15

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_3

    const/16 v1, 0x29

    if-eq v0, v1, :cond_2

    const/16 v1, 0x33

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lzo6;->h:Landroid/net/Uri;

    const-string v1, "history"

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown URI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4
    :cond_1
    sget-object v0, Ljp6;->e:Landroid/net/Uri;

    const-string v1, "tag2item"

    goto :goto_0

    .line 5
    :cond_2
    sget-object v0, Lap6;->B:Landroid/net/Uri;

    const-string v1, "item"

    goto :goto_0

    .line 6
    :cond_3
    sget-object v0, Lkp6;->e:Landroid/net/Uri;

    const-string v1, "tag2sub"

    goto :goto_0

    .line 7
    :cond_4
    sget-object v0, Llp6;->n:Landroid/net/Uri;

    const-string v1, "tag"

    goto :goto_0

    .line 8
    :cond_5
    sget-object v0, Lip6;->A:Landroid/net/Uri;

    const-string v1, "subscription"

    .line 9
    :goto_0
    iget-object v2, p0, Lcom/noinnion/android/greader/provider/ReaderProvider;->e:Lcom/noinnion/android/greader/provider/ReaderProvider$a;

    invoke-virtual {v2}, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 10
    invoke-virtual {v2, v1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_6

    .line 11
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 12
    :cond_6
    new-instance p2, Landroid/database/SQLException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to insert row into "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public onCreate()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/noinnion/android/greader/provider/ReaderProvider$a;

    invoke-direct {v1, p0, v0}, Lcom/noinnion/android/greader/provider/ReaderProvider$a;-><init>(Lcom/noinnion/android/greader/provider/ReaderProvider;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/noinnion/android/greader/provider/ReaderProvider;->e:Lcom/noinnion/android/greader/provider/ReaderProvider$a;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v5, p3

    move-object/from16 v2, p5

    .line 1
    iget-object v3, v1, Lcom/noinnion/android/greader/provider/ReaderProvider;->e:Lcom/noinnion/android/greader/provider/ReaderProvider$a;

    invoke-virtual {v3}, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 2
    :cond_0
    sget-object v6, Lcom/noinnion/android/greader/provider/ReaderProvider;->u:Landroid/content/UriMatcher;

    invoke-virtual {v6, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_1

    move-object/from16 v7, p4

    .line 3
    invoke-virtual {v3, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v2

    :cond_1
    move-object/from16 v7, p4

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v2, :cond_3

    const-string v10, " limit "

    .line 5
    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    add-int/lit8 v11, v10, 0x7

    .line 6
    invoke-virtual {v2, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    .line 7
    invoke-virtual {v2, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_2

    move-object v10, v4

    goto :goto_0

    :cond_2
    move-object v10, v2

    goto :goto_0

    :cond_3
    move-object v10, v2

    move-object v11, v4

    .line 9
    :goto_0
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v12, ": Check your storage."

    const/4 v13, 0x1

    if-eq v6, v13, :cond_20

    const/4 v14, 0x2

    if-eq v6, v14, :cond_1f

    const/4 v14, 0x3

    if-eq v6, v14, :cond_1e

    const/4 v12, 0x4

    if-eq v6, v12, :cond_1d

    const/16 v4, 0xa

    const-string v12, "subscription"

    const-string v14, "_id = "

    if-eq v6, v4, :cond_1b

    const/16 v4, 0xb

    const-string v15, "tag."

    if-eq v6, v4, :cond_15

    const/16 v4, 0x14

    const-string v12, "tag"

    if-eq v6, v4, :cond_13

    const/16 v4, 0x15

    if-eq v6, v4, :cond_12

    const/16 v4, 0x32

    const-string v12, "tag2item"

    if-eq v6, v4, :cond_11

    const/16 v4, 0x33

    if-eq v6, v4, :cond_e

    const/16 v4, 0x3c

    const-string v12, "history"

    if-eq v6, v4, :cond_d

    const/16 v4, 0x3d

    if-eq v6, v4, :cond_b

    const-string v4, "tag2sub"

    packed-switch v6, :pswitch_data_0

    const-string v4, "item LEFT JOIN subscription ON item.sub_id = subscription._id"

    const-string v12, "tag2item."

    const-string v15, "item"

    packed-switch v6, :pswitch_data_1

    .line 10
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    if-eqz v5, :cond_4

    .line 11
    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v4, "tag2item LEFT JOIN item ON tag2item.item_uid = item.uid LEFT JOIN subscription ON item.sub_id = subscription._id"

    .line 12
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    :goto_1
    if-nez p2, :cond_14

    .line 14
    sget-object v4, Lap6;->H:[Ljava/lang/String;

    goto/16 :goto_c

    :pswitch_1
    if-eqz v5, :cond_6

    .line 15
    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez p2, :cond_5

    .line 16
    sget-object v4, Lap6;->D:[Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object/from16 v4, p2

    :goto_2
    const-string v6, "item, tag2item"

    .line 17
    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_6
    if-eqz v5, :cond_8

    const-string v6, "subscription."

    .line 18
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-nez p2, :cond_7

    .line 19
    sget-object v6, Lap6;->D:[Ljava/lang/String;

    goto :goto_3

    :cond_7
    move-object/from16 v6, p2

    .line 20
    :goto_3
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v4, v6

    goto/16 :goto_c

    :cond_8
    if-nez p2, :cond_9

    .line 21
    sget-object v4, Lap6;->C:[Ljava/lang/String;

    goto :goto_4

    :cond_9
    move-object/from16 v4, p2

    .line 22
    :goto_4
    invoke-virtual {v2, v15}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 23
    :pswitch_2
    invoke-virtual {v2, v15}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :pswitch_3
    if-nez p2, :cond_a

    .line 25
    sget-object v4, Lkp6;->g:[Ljava/lang/String;

    goto :goto_5

    :cond_a
    move-object/from16 v4, p2

    :goto_5
    const-string v6, "(SELECT tag._id AS _id, uid, sort, 0 AS sort2, label AS title, null AS feed_url, null AS html_url, null AS icon_url, unread_count, hidden, 0 AS newest_item_time, sync_time, sync_excluded, type FROM tag UNION SELECT subscription._id, uid, sort, sort2, title, feed_url, html_url, icon_url, unread_count, hidden, newest_item_time, subscription.sync_time, sync_excluded, 100 FROM subscription LEFT JOIN tag2sub ON subscription._id = tag2sub.sub_id WHERE tag2sub.sub_id IS NULL)"

    .line 26
    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 27
    :pswitch_4
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 28
    :pswitch_5
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_b
    if-nez p2, :cond_c

    .line 30
    sget-object v4, Lzo6;->i:[Ljava/lang/String;

    goto :goto_6

    :cond_c
    move-object/from16 v4, p2

    .line 31
    :goto_6
    invoke-virtual {v2, v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 32
    :cond_d
    invoke-virtual {v2, v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_e
    if-eqz v5, :cond_f

    .line 34
    invoke-virtual {v5, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "tag2item, tag"

    .line 35
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_7

    :cond_f
    if-eqz v5, :cond_10

    const-string v4, "item."

    .line 36
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v4, "tag2item, item"

    .line 37
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_7

    .line 38
    :cond_10
    invoke-virtual {v2, v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_7

    .line 39
    :cond_11
    invoke-virtual {v2, v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 41
    :cond_12
    invoke-virtual {v2, v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_7

    .line 42
    :cond_13
    invoke-virtual {v2, v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    :cond_14
    :goto_7
    move-object/from16 v4, p2

    goto :goto_c

    :cond_15
    if-eqz v5, :cond_17

    const-string v4, "tag2sub."

    .line 44
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    if-nez p2, :cond_16

    .line 45
    sget-object v4, Lip6;->C:[Ljava/lang/String;

    goto :goto_8

    :cond_16
    move-object/from16 v4, p2

    :goto_8
    const-string v6, "subscription LEFT JOIN tag2sub ON subscription._id = tag2sub.sub_id"

    .line 46
    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_c

    :cond_17
    if-eqz v5, :cond_19

    .line 47
    invoke-virtual {v5, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19

    if-nez p2, :cond_18

    .line 48
    sget-object v4, Lip6;->C:[Ljava/lang/String;

    goto :goto_9

    :cond_18
    move-object/from16 v4, p2

    :goto_9
    const-string v6, "subscription LEFT JOIN tag2sub ON subscription._id = tag2sub.sub_id LEFT JOIN tag ON tag.uid = tag2sub.tag_uid"

    .line 49
    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_c

    :cond_19
    if-nez p2, :cond_1a

    .line 50
    sget-object v4, Lip6;->B:[Ljava/lang/String;

    goto :goto_a

    :cond_1a
    move-object/from16 v4, p2

    .line 51
    :goto_a
    invoke-virtual {v2, v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_c

    :cond_1b
    if-nez p2, :cond_1c

    .line 52
    sget-object v4, Lip6;->B:[Ljava/lang/String;

    goto :goto_b

    :cond_1c
    move-object/from16 v4, p2

    .line 53
    :goto_b
    invoke-virtual {v2, v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    :goto_c
    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    .line 55
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 56
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v2

    .line 57
    :cond_1d
    iget-object v0, v1, Lcom/noinnion/android/greader/provider/ReaderProvider;->e:Lcom/noinnion/android/greader/provider/ReaderProvider$a;

    invoke-virtual {v0}, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->close()V

    .line 58
    new-instance v0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/noinnion/android/greader/provider/ReaderProvider$a;-><init>(Lcom/noinnion/android/greader/provider/ReaderProvider;Landroid/content/Context;)V

    iput-object v0, v1, Lcom/noinnion/android/greader/provider/ReaderProvider;->e:Lcom/noinnion/android/greader/provider/ReaderProvider$a;

    return-object v4

    .line 59
    :cond_1e
    :try_start_0
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_d
    return-object v4

    .line 61
    :cond_1f
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-object v4

    .line 62
    :cond_20
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_e

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_e
    return-object v4

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/noinnion/android/greader/provider/ReaderProvider;->d(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method
