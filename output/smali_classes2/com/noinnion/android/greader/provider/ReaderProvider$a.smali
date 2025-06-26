.class public Lcom/noinnion/android/greader/provider/ReaderProvider$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/provider/ReaderProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Landroid/database/sqlite/SQLiteDatabase;

.field public h:Z

.field public final synthetic i:Lcom/noinnion/android/greader/provider/ReaderProvider;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/provider/ReaderProvider;Landroid/content/Context;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->i:Lcom/noinnion/android/greader/provider/ReaderProvider;

    const-string p1, "reader.db"

    const/4 v0, 0x0

    const/16 v1, 0x1a

    .line 2
    invoke-direct {p0, p2, p1, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->e:Z

    .line 4
    iput-object v0, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->f:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->g:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->h:Z

    .line 7
    invoke-virtual {p2, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->f:Ljava/lang/String;

    .line 8
    invoke-static {p2}, Liw6;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdcard"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "gReader/db"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 12
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 13
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 14
    iput-boolean v0, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->e:Z

    .line 15
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->f:Ljava/lang/String;

    goto :goto_0

    .line 17
    :cond_1
    iput-boolean v1, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->e:Z

    .line 18
    invoke-virtual {p2, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->f:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 2
    iget-boolean v0, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->g:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->g:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit p0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4
    iget-object v0, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->g:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->g:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit p0

    return-object v0

    .line 6
    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->h:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v0, :cond_6

    .line 7
    :try_start_3
    invoke-virtual {p0}, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "ReaderProvider"

    .line 8
    invoke-static {v1, v0}, Ln56;->y1(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 9
    :try_start_5
    iput-boolean v0, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->h:Z

    .line 10
    iget-object v3, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->f:Ljava/lang/String;

    invoke-static {v3, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 11
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    const/16 v4, 0x1a

    if-ne v3, v4, :cond_3

    .line 12
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 13
    iput-object v0, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->g:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 14
    :try_start_7
    iput-boolean v1, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->h:Z

    if-eq v0, v0, :cond_2

    .line 15
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 16
    :cond_2
    monitor-exit p0

    return-object v0

    .line 17
    :cond_3
    :try_start_8
    new-instance v3, Landroid/database/sqlite/SQLiteException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t upgrade read-only database from version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->f:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_0
    move-exception v0

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_0

    :catch_1
    move-object v0, v2

    .line 18
    :catch_2
    :try_start_9
    iget-object v3, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->i:Lcom/noinnion/android/greader/provider/ReaderProvider;

    invoke-virtual {v3}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Couldn\'t open reader.db for reading: Check your storage."

    invoke-static {v3, v4}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 19
    :try_start_a
    iput-boolean v1, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->h:Z

    if-eqz v0, :cond_4

    .line 20
    iget-object v1, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->g:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v1, :cond_4

    .line 21
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 22
    :cond_4
    monitor-exit p0

    return-object v2

    :catchall_1
    move-exception v2

    .line 23
    :goto_0
    :try_start_b
    iput-boolean v1, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->h:Z

    if-eqz v0, :cond_5

    .line 24
    iget-object v1, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->g:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v1, :cond_5

    .line 25
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 26
    :cond_5
    throw v2

    .line 27
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getReadableDatabase called recursively"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_7
    new-instance v0, Landroid/database/sqlite/SQLiteDiskIOException;

    const-string v1, "Cannot access external storage: not mounted"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteDiskIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit p0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4
    iget-object v0, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->g:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->g:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit p0

    return-object v0

    .line 6
    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->h:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v0, :cond_6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7
    :try_start_3
    iput-boolean v0, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->h:Z

    .line 8
    iget-object v0, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->f:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_3

    .line 10
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_2

    .line 11
    :try_start_4
    invoke-virtual {p0, v2}, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0, v2, v0, v3}, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 13
    :goto_0
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 14
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 15
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 16
    throw v0

    .line 17
    :cond_3
    :goto_1
    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 18
    :try_start_6
    iput-boolean v1, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->h:Z

    .line 19
    iget-object v0, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->g:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v0, :cond_4

    .line 20
    :try_start_7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 21
    :catch_0
    :cond_4
    :try_start_8
    iput-object v2, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->g:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 22
    monitor-exit p0

    return-object v2

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 23
    :try_start_9
    new-instance v3, Landroid/database/sqlite/SQLiteException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 24
    :goto_2
    :try_start_a
    iput-boolean v1, p0, Lcom/noinnion/android/greader/provider/ReaderProvider$a;->h:Z

    if-eqz v2, :cond_5

    .line 25
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 26
    :cond_5
    throw v0

    .line 27
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getWritableDatabase called recursively"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_7
    new-instance v0, Landroid/database/sqlite/SQLiteDiskIOException;

    const-string v1, "Cannot access external storage: not mounted"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteDiskIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    const-string v0, "CREATE TABLE IF NOT EXISTS subscription (_id INTEGER PRIMARY KEY, uid TEXT NOT NULL,title TEXT NOT NULL,feed_url TEXT,html_url TEXT,icon_url TEXT,sortid TEXT,sort INTEGER NOT NULL DEFAULT 0,sort2 INTEGER NOT NULL DEFAULT 0,unread_count INTEGER NOT NULL DEFAULT 0,newest_item_time INTEGER NOT NULL DEFAULT 0,sync_time INTEGER NOT NULL DEFAULT 0,sync_excluded INTEGER NOT NULL DEFAULT 0,image_fit INTEGER NOT NULL DEFAULT 1,javascript INTEGER NOT NULL DEFAULT 1,offline_content INTEGER NOT NULL DEFAULT -1,display_content INTEGER NOT NULL DEFAULT -1,link_format INTEGER NOT NULL DEFAULT -1,auto_readability INTEGER NOT NULL DEFAULT -1,user_agent INTEGER NOT NULL DEFAULT -1,notification INTEGER NOT NULL DEFAULT 0,charset TEXT,hidden INTEGER NOT NULL DEFAULT 0)"

    .line 1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS tag (_id INTEGER PRIMARY KEY, uid TEXT NOT NULL,type INTEGER NOT NULL,label TEXT NOT NULL,sortid TEXT,sort INTEGER NOT NULL DEFAULT 0,unread_count INTEGER NOT NULL DEFAULT 0,sync_time INTEGER NOT NULL DEFAULT 0,sync_excluded INTEGER NOT NULL DEFAULT 0,hidden INTEGER NOT NULL DEFAULT 0)"

    .line 2
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS tag2sub (_id integer primary key, tag_uid text not null,sub_id integer not null,sync_time integer not null default 0)"

    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS item (_id INTEGER PRIMARY KEY, sub_id INTEGER NOT NULL,uid TEXT NOT NULL UNIQUE,title TEXT NOT NULL,content TEXT,author TEXT,link TEXT,image TEXT,video TEXT,audio TEXT,sharer TEXT,published_time INTEGER NOT NULL DEFAULT 0,updated_time INTEGER NOT NULL DEFAULT 0,starred INTEGER NOT NULL DEFAULT 0,cached INTEGER NOT NULL DEFAULT 0,read INTEGER NOT NULL DEFAULT 0,read_time INTEGER NOT NULL DEFAULT 0,keep_unread INTEGER NOT NULL DEFAULT 0,sync_time INTEGER NOT NULL DEFAULT 0)"

    .line 4
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS item_sync (_id INTEGER PRIMARY KEY, uid TEXT NOT NULL)"

    .line 5
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS tag2item (_id INTEGER PRIMARY KEY, tag_uid TEXT NOT NULL,item_uid TEXT NOT NULL,action INTEGER NOT NULL DEFAULT 0,sync_time INTEGER NOT NULL DEFAULT 0)"

    .line 6
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS history (_id INTEGER PRIMARY KEY, type INTEGER NOT NULL,params TEXT NOT NULL,sync_time INTEGER NOT NULL DEFAULT 0,done INTEGER NOT NULL DEFAULT 0)"

    .line 7
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 8
    sget-object v0, Lip6;->E:[[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_0

    aget-object v5, v0, v3

    const-string v6, "subscription"

    .line 9
    invoke-static {v6, v5, v4}, Lcom/noinnion/android/greader/provider/ReaderProvider;->a(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Llp6;->o:[[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    const-string v6, "tag"

    .line 11
    invoke-static {v6, v5, v4}, Lcom/noinnion/android/greader/provider/ReaderProvider;->a(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 12
    :cond_1
    sget-object v0, Lkp6;->f:[[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    const-string v6, "tag2sub"

    .line 13
    invoke-static {v6, v5, v4}, Lcom/noinnion/android/greader/provider/ReaderProvider;->a(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 14
    :cond_2
    sget-object v0, Lap6;->L:[[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_3

    aget-object v5, v0, v3

    const-string v6, "item"

    .line 15
    invoke-static {v6, v5, v4}, Lcom/noinnion/android/greader/provider/ReaderProvider;->a(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 16
    :cond_3
    sget-object v0, Lbp6;->g:[[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_4

    aget-object v5, v0, v3

    const-string v6, "item_sync"

    .line 17
    invoke-static {v6, v5, v4}, Lcom/noinnion/android/greader/provider/ReaderProvider;->a(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 18
    :cond_4
    sget-object v0, Ljp6;->g:[[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_5

    aget-object v5, v0, v3

    const-string v6, "tag2item"

    .line 19
    invoke-static {v6, v5, v4}, Lcom/noinnion/android/greader/provider/ReaderProvider;->a(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 20
    :cond_5
    sget-object v0, Lzo6;->k:[[Ljava/lang/String;

    array-length v1, v0

    :goto_6
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    const-string v5, "history"

    .line 21
    invoke-static {v5, v3, v4}, Lcom/noinnion/android/greader/provider/ReaderProvider;->a(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p2}, Lip6;->h(I)[Ljava/lang/String;

    move-result-object p3

    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p3, v2

    .line 2
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p2}, Llp6;->f(I)[Ljava/lang/String;

    move-result-object p3

    array-length v0, p3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v3, p3, v2

    .line 4
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5
    :cond_1
    sget-object p3, Lkp6;->e:Landroid/net/Uri;

    .line 6
    invoke-static {p2}, Lap6;->r(I)[Ljava/lang/String;

    move-result-object p3

    array-length v0, p3

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_2

    aget-object v3, p3, v2

    .line 7
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 8
    :cond_2
    sget-object p3, Lbp6;->h:[Ljava/lang/String;

    .line 9
    array-length v0, p3

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_3

    aget-object v3, p3, v2

    .line 10
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 11
    :cond_3
    sget-object p3, Ljp6;->e:Landroid/net/Uri;

    const/16 p3, 0xb

    if-ge p2, p3, :cond_4

    const-string p2, "CREATE TABLE IF NOT EXISTS tag2item_new (_id INTEGER PRIMARY KEY, tag_uid TEXT NOT NULL,item_uid TEXT NOT NULL,action INTEGER NOT NULL DEFAULT 0,sync_time INTEGER NOT NULL DEFAULT 0);"

    const-string p3, "ALTER TABLE tag2item ADD COLUMN item_uid TEXT NOT NULL DEFAULT \'\';"

    const-string v0, "DROP TABLE tag2item;"

    const-string v2, "ALTER TABLE tag2item_new RENAME TO tag2item;"

    .line 12
    filled-new-array {p2, p3, v0, v2}, [Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_4
    new-array p2, v1, [Ljava/lang/String;

    .line 13
    :goto_4
    array-length p3, p2

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p3, :cond_5

    aget-object v2, p2, v0

    .line 14
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 15
    :cond_5
    sget-object p2, Lzo6;->l:[Ljava/lang/String;

    .line 16
    array-length p3, p2

    :goto_6
    if-ge v1, p3, :cond_6

    aget-object v0, p2, v1

    .line 17
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    return-void
.end method
