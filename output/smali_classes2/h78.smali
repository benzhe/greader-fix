.class public final Lh78;
.super Ln78;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh78$a;
    }
.end annotation


# instance fields
.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "Ljava/lang/String;",
            "Lh78$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ln78;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lh78;->d:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lh78;->e(Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Ll78;

    const-string v1, "Unable to load TZDB time-zone rules"

    invoke-direct {v0, v1, p1}, Ll78;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public b(Ljava/lang/String;Z)Lk78;
    .locals 4

    const-string p2, "zoneId"

    .line 1
    invoke-static {p1, p2}, Lkt7;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object p2, p0, Lh78;->d:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {p2}, Ljava/util/concurrent/ConcurrentNavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lh78$a;

    .line 3
    iget-object v0, p2, Lh78$a;->b:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    iget-object v1, p2, Lh78$a;->c:[S

    aget-short v0, v1, v0

    .line 5
    iget-object v1, p2, Lh78$a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 6
    instance-of v2, v1, [B

    if-eqz v2, :cond_1

    .line 7
    check-cast v1, [B

    .line 8
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 9
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 10
    invoke-static {v1, v2}, Lf78;->b(BLjava/io/DataInput;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    iget-object v2, p2, Lh78$a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 12
    :cond_1
    move-object v0, v1

    check-cast v0, Lk78;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_2

    return-object p2

    .line 13
    :cond_2
    new-instance p2, Ll78;

    const-string v0, "Unknown time-zone ID: "

    invoke-static {v0, p1}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ll78;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_0
    move-exception v0

    .line 14
    new-instance v1, Ll78;

    const-string v2, "Invalid binary time-zone data: TZDB:"

    const-string v3, ", version: "

    invoke-static {v2, p1, v3}, Ljo;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p2, Lh78$a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ll78;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public c()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lh78;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final e(Ljava/io/InputStream;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result p1

    const-string v1, "File format not recognised"

    const/4 v2, 0x1

    if-ne p1, v2, :cond_9

    .line 3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TZDB"

    .line 4
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result p1

    .line 6
    new-array v1, p1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    .line 9
    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    .line 10
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 11
    :cond_1
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lh78;->c:Ljava/util/List;

    .line 12
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    .line 13
    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_2

    .line 14
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v7

    new-array v7, v7, [B

    .line 15
    invoke-virtual {v0, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 16
    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 17
    :cond_2
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v3, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>([Ljava/lang/Object;)V

    .line 18
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, p1}, Ljava/util/HashSet;-><init>(I)V

    const/4 v6, 0x0

    :goto_3
    if-ge v6, p1, :cond_4

    .line 19
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v7

    .line 20
    new-array v8, v7, [Ljava/lang/String;

    .line 21
    new-array v9, v7, [S

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v7, :cond_3

    .line 22
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v11

    aget-object v11, v4, v11

    aput-object v11, v8, v10

    .line 23
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v11

    aput-short v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 24
    :cond_3
    new-instance v7, Lh78$a;

    aget-object v10, v1, v6

    invoke-direct {v7, v10, v8, v9, v3}, Lh78$a;-><init>(Ljava/lang/String;[Ljava/lang/String;[SLjava/util/concurrent/atomic/AtomicReferenceArray;)V

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 25
    :cond_4
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh78$a;

    .line 26
    iget-object v1, p0, Lh78;->d:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 27
    iget-object v2, v0, Lh78$a;->a:Ljava/lang/String;

    .line 28
    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh78$a;

    if-eqz v1, :cond_6

    .line 29
    iget-object v1, v1, Lh78$a;->a:Ljava/lang/String;

    iget-object v2, v0, Lh78$a;->a:Ljava/lang/String;

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_6

    .line 31
    :cond_5
    new-instance p1, Ll78;

    const-string v1, "Data already loaded for TZDB time-zone rules version: "

    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 32
    iget-object v0, v0, Lh78$a;->a:Ljava/lang/String;

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ll78;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_6
    const/4 v2, 0x1

    goto :goto_5

    :cond_7
    return v2

    .line 34
    :cond_8
    new-instance p1, Ljava/io/StreamCorruptedException;

    invoke-direct {p1, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_9
    new-instance p1, Ljava/io/StreamCorruptedException;

    invoke-direct {p1, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TZDB"

    return-object v0
.end method
